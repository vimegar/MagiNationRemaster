#include "includes.h"

/********************************/
u8	WriteCommand_CmdDelay			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdDelayRandom		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdEnd				( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdIf				( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdInitSkip		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdJump			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdJumpLocal		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdJumpRandom		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdPass			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdRangeSwitch		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdReset			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSwitch			( CommandPtr command, ParamBlockPtr paramBlock );

/********************************/
u8	WriteCommand_AddFlowControlCmds ( void )
	{
	CommandTypeList_Add	( "Delay",			WriteCommand_CmdDelay );
	CommandTypeList_Add	( "DelayRandom",	WriteCommand_CmdDelayRandom );
	CommandTypeList_Add	( "End",			WriteCommand_CmdEnd );
	CommandTypeList_Add	( "If",				WriteCommand_CmdIf );
	CommandTypeList_Add	( "InitSkip",		WriteCommand_CmdInitSkip );
	CommandTypeList_Add	( "Jump",			WriteCommand_CmdJump );
	CommandTypeList_Add	( "JumpLocal",		WriteCommand_CmdJumpLocal );
	CommandTypeList_Add	( "JumpRandom",		WriteCommand_CmdJumpRandom );
	CommandTypeList_Add	( "Pass",			WriteCommand_CmdPass );
	CommandTypeList_Add	( "RangeSwitch",	WriteCommand_CmdRangeSwitch );
	CommandTypeList_Add	( "Reset",			WriteCommand_CmdReset );
	CommandTypeList_Add	( "Switch",			WriteCommand_CmdSwitch );

	return 1;
	}

/********************************/
u8	WriteCommand_CmdDelay ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_DELAY\n");
	ParamType_WriteByte(gParams[0]);		// Delay count
	return 1;
	}

/********************************/
u8	WriteCommand_CmdDelayRandom ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_DELAYRANDOM\n");
	ParamType_WriteAddress2(gParams[0]);		// Random delay table
	return 1;
	}

/********************************/
u8	WriteCommand_CmdEnd ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_END\n");
	return 1;
	}
	
/********************************/
u8	WriteCommand_CmdIf ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_IF\n");
	ParamType_WriteExpression(gParams[0]);	// Expression
	ParamType_WriteLabel3(gParams[1]);		// Dest jump address
	return 1;
	}

/********************************/
u8	WriteCommand_CmdInitSkip ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_INITSKIP\n");
	ParamType_WriteLabel2(gParams[0]);	// Dest jump address
	return 1;
	}

/********************************/
u8	WriteCommand_CmdJump ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_JUMP\n");
	ParamType_WriteLabel3(gParams[0]);	// Dest jump address
	return 1;
	}

/********************************/
u8	WriteCommand_CmdJumpLocal ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_JUMPLOCAL\n");
	ParamType_WriteLabel2(gParams[0]);	// Dest jump address
	return 1;
	}

/********************************/
u8	WriteCommand_CmdJumpRandom ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	totalEntries;
	ParamBlockPtr cursor;

	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;

	if (gReset)
		{
		totalEntries = 0;
		cursor = paramBlock;

		while(cursor)
			{
			totalEntries++;
			cursor = cursor->Link.Next;
			}

		fprintf(scriptFile, "\tDB\tCMD_JUMPRANDOM\n");
		fprintf (scriptFile,"\t\tDB\t$%02X\n", (totalEntries & 0xFF));
		}
	
	ParamType_WriteLabel3(gParams[0]);		// Script addr

	return 1;
	}

/********************************/
u8	WriteCommand_CmdPass ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_PASS\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdRangeSwitch ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!paramBlock)
		{
		fprintf(scriptFile, "\t\tDB\t$FF\n");
		return 1;
		}
	
	if (gReset)
		{
		fprintf(scriptFile, "\tDB\tCMD_RANGESWITCH\n");
		if(!WriteCommand_GetParams(paramBlock, 1)) return 0;
		ParamType_WriteExpression(gParams[0]);	// Expression
		return 1;
		}

	if(!WriteCommand_GetParams(paramBlock, 3)) return 1;
	ParamType_WriteLabelBank(gParams[2]);	// Bank/Flag

	if(gParams[0]->Type == PARAM_STRING)
			ParamType_WriteEquateWord(gParams[0]);		// Condition
	else	ParamType_WriteWord(gParams[0]);			// Condition

	if(gParams[0]->Type == PARAM_STRING)
			ParamType_WriteEquateWord(gParams[1]);		// Condition
	else	ParamType_WriteWord(gParams[1]);			// Condition

	ParamType_WriteLabel2(gParams[2]);		// Label
		
	return 1;
	}

/********************************/
u8	WriteCommand_CmdReset ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_RESET\n");
	ParamType_WriteLabel3(gParams[0]);	// Reset label
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSwitch ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!paramBlock)
		{
		fprintf(scriptFile, "\t\tDB\t$FF\n");
		return 1;
		}
	
	if (gReset)
		{
		fprintf(scriptFile, "\tDB\tCMD_SWITCH\n");
		if(!WriteCommand_GetParams(paramBlock, 1)) return 0;
		ParamType_WriteExpression(gParams[0]);	// Expression
		return 1;
		}

	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	ParamType_WriteLabelBank(gParams[1]);	// Bank/Flag
	

	if(gParams[0]->Type == PARAM_STRING)
			ParamType_WriteEquateWord(gParams[0]);		// Condition
	else	ParamType_WriteWord(gParams[0]);			// Condition


	ParamType_WriteLabel2(gParams[1]);		// Label
		
	return 1;
	}

/********************************/
u8	WriteCommand_PrintFlowControlCmds ( void )
	{
	printf("FLOW CONTROL COMMANDS:\n");
	printf("\tDelay\t\t()\n");
	printf("\tDelayRandom\t\t()\n");
	printf("\tEnd\t\t()\n");
	printf("\tIf\t\t()\n");
	printf("\tInitSkip\t\t()\n");
	printf("\tJump\t\t()\n");
	printf("\tJumpLocal\t\t()\n");
	printf("\tJumpRandom\t\t()\n");
	printf("\tPass\t\t()\n");
	printf("\tRangeSwitch\t\t()\n");
	printf("\tReset\t\t()\n");
	printf("\tSwitch\t\t()\n");
	printf("\n");

	return 1;
	}
