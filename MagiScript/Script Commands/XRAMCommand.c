#include "includes.h"

/********************************/
u8	WriteCommand_CmdExprXRAMBit		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdExprXRAMByte	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdExprXRAMWord	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdNextGamecount	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetGamecount	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetWRAMByte		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetWRAMWord		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetXRAMBit		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetXRAMByte		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetXRAMWord		( CommandPtr command, ParamBlockPtr paramBlock );

/********************************/
u8	WriteCommand_AddXRAMCmds ( void )
	{
	CommandTypeList_Add	( "ExprXRAMBit",	WriteCommand_CmdExprXRAMBit );
	CommandTypeList_Add	( "ExprXRAMByte",	WriteCommand_CmdExprXRAMByte );
	CommandTypeList_Add	( "ExprXRAMWord",	WriteCommand_CmdExprXRAMWord );
	CommandTypeList_Add	( "NextGamecount",	WriteCommand_CmdNextGamecount );
	CommandTypeList_Add	( "SetGamecount",	WriteCommand_CmdSetGamecount );
	CommandTypeList_Add	( "SetWRAMByte",	WriteCommand_CmdSetWRAMByte );
	CommandTypeList_Add	( "SetWRAMWord",	WriteCommand_CmdSetWRAMWord );
	CommandTypeList_Add	( "SetXRAMBit",		WriteCommand_CmdSetXRAMBit );
	CommandTypeList_Add	( "SetXRAMByte",	WriteCommand_CmdSetXRAMByte );
	CommandTypeList_Add	( "SetXRAMWord",	WriteCommand_CmdSetXRAMWord );

	return 1;
	}

/********************************/
u8	WriteCommand_CmdExprXRAMBit ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_EXPRXRAMBIT\n");
	ParamType_WriteXRAMBit(gParams[0]);		// XRAM Bit
	ParamType_WriteExpression(gParams[1]);	// Expression
	return 1;
	}

/********************************/
u8	WriteCommand_CmdExprXRAMByte ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_EXPRXRAMBYTE\n");
	ParamType_WriteXRAMByte(gParams[0]);	// XRAM Byte
	ParamType_WriteExpression(gParams[1]);	// Expression
	return 1;
	}

/********************************/
u8	WriteCommand_CmdExprXRAMWord ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_EXPRXRAMWORD\n");
	ParamType_WriteXRAMWord(gParams[0]);	// XRAM Word
	ParamType_WriteExpression(gParams[1]);	// Expression
	return 1;
	}

/********************************/
u8	WriteCommand_CmdNextGamecount ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_NEXTGAMECOUNT\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetGamecount ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SETGAMECOUNT\n");
	ParamType_WriteWord(gParams[0]);		// Gamecount
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetXRAMBit ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	if(gParams[1]->Number)
		{
		fprintf(scriptFile, "\tDB\tCMD_XRAMBITOR\n");
		ParamType_WriteXRAMBit(gParams[0]);		// XRAM bit
		}
	else
		{
		fprintf(scriptFile, "\tDB\tCMD_XRAMBITAND\n");
		ParamType_WriteXRAMBitNot(gParams[0]);	// XRAM bit
		}
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetWRAMByte ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 3)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SETWRAMBYTE\n");
	ParamType_WriteXRAMByte(gParams[0]);	// XRAM byte
	ParamType_WriteEquateByte(gParams[1]);	// Bank
	ParamType_WriteByte(gParams[2]);		// Byte
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetWRAMWord ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 3)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SETWRAMWORD\n");
	ParamType_WriteXRAMWord(gParams[0]);	// XRAM byte
	ParamType_WriteEquateByte(gParams[1]);	// Bank
	ParamType_WriteWord(gParams[2]);		// Word
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetXRAMByte ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SETXRAMBYTE\n");
	ParamType_WriteXRAMByte(gParams[0]);	// XRAM byte
	ParamType_WriteByte(gParams[1]);		// Byte
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetXRAMWord ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SETXRAMWORD\n");
	ParamType_WriteXRAMWord(gParams[0]);	// XRAM byte
	ParamType_WriteWord(gParams[1]);		// Word
	return 1;
	}

/********************************/
u8	WriteCommand_PrintXRAMCmds ( void )
	{
	printf("XRAM COMMANDS:\n");
	printf("\tExprXRAMBit\t\t()\n");
	printf("\tExprXRAMByte\t\t()\n");
	printf("\tExprXRAMWord\t\t()\n");
	printf("\tNextGamecount\t\t()\n");
	printf("\tSetGamecount\t\t()\n");
	printf("\tSetWRAMByte\t\t()\n");
	printf("\tSetWRAMWord\t\t()\n");
	printf("\tSetXRAMBit\t\t()\n");
	printf("\tSetXRAMByte\t\t()\n");
	printf("\tSetXRAMWord\t\t()\n");
	printf("\n");

	return 1;
	}