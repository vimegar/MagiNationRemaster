#include "includes.h"

/********************************/
u8	WriteCommand_CmdBtlNew			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdBtlAttack		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdBtlAuto			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdBtlCastSpell	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdBtlEvaluate		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdBtlFocus		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdBtlNextTurn		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdBtlRingGive		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdBtlSummon		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdBtlSummonDelay	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdBtlUseItem		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdScreenWipe		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetBtlReturn	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetEncounter	( CommandPtr command, ParamBlockPtr paramBlock );

/********************************/
u8	WriteCommand_AddBattleCmds ( void )
	{
	CommandTypeList_Add	( "BtlNew",			WriteCommand_CmdBtlNew );
	CommandTypeList_Add	( "BtlAttack",		WriteCommand_CmdBtlAttack );
	CommandTypeList_Add	( "BtlAuto",		WriteCommand_CmdBtlAuto );
	CommandTypeList_Add	( "BtlCastSpell",	WriteCommand_CmdBtlCastSpell );
	CommandTypeList_Add	( "BtlEvaluate",	WriteCommand_CmdBtlEvaluate );
	CommandTypeList_Add	( "BtlFocus",		WriteCommand_CmdBtlFocus );
	CommandTypeList_Add	( "BtlNextTurn",	WriteCommand_CmdBtlNextTurn );
	CommandTypeList_Add	( "BtlRingGive",	WriteCommand_CmdBtlRingGive);
	CommandTypeList_Add	( "BtlSummon",		WriteCommand_CmdBtlSummon );
	CommandTypeList_Add	( "BtlSummonDelay",	WriteCommand_CmdBtlSummonDelay );
	CommandTypeList_Add	( "BtlUseItem",		WriteCommand_CmdBtlUseItem );
	CommandTypeList_Add	( "ScreenWipe",		WriteCommand_CmdScreenWipe );
	CommandTypeList_Add	( "SetBtlReturn",	WriteCommand_CmdSetBtlReturn );
	CommandTypeList_Add	( "SetEncounter",	WriteCommand_CmdSetEncounter );

	return 1;
	}

/********************************/
u8	WriteCommand_CmdBtlNew ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 4)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_BTLNEW\n");

	ParamType_WriteEquateByte(gParams[0]);		// Arena
	ParamType_WriteEquateByte(gParams[1]);		// Emeny Magi
	ParamType_WriteByte(gParams[2]);			// Level
	ParamType_WriteLabel3(gParams[3]);			// Battle AI script

	return 1;
	}

/********************************/
u8	WriteCommand_CmdBtlAttack ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 3)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_BTLATTACK\n");
	ParamType_WriteEquateByte(gParams[0]);		// Creature to command
	ParamType_WriteAddress2(gParams[1]);		// Command to perform
	ParamType_WriteEquateByte(gParams[2]);		// Targeting mode
	return 1;
	}

/********************************/
u8	WriteCommand_CmdBtlAuto( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_BTLAUTO\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdBtlCastSpell ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 3)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_BTLCASTSPELL\n");
	ParamType_WriteEquateByte(gParams[0]);		// Creature to command
	ParamType_WriteAddress2(gParams[1]);		// Command to perform
	ParamType_WriteEquateByte(gParams[2]);		// Targeting mode
	return 1;
	}

/********************************/
u8	WriteCommand_CmdBtlEvaluate ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_BTLEVALUATE\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdBtlFocus ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_BTLFOCUS\n");
	ParamType_WriteEquateByte(gParams[0]);		// Creature to command
	return 1;
	}

/********************************/
u8	WriteCommand_CmdBtlNextTurn ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_BTLNEXTTURN\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdBtlRingGive ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_BTLRINGGIVE\n");
	ParamType_WriteEquateByte(gParams[0]);		// Creature ID
	ParamType_WriteByte(gParams[1]);			// Level
	return 1;
	}

/********************************/
u8	WriteCommand_CmdBtlSummon ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 4)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_BTLSUMMON\n");
	ParamType_WriteEquateByte(gParams[0]);		// Creature to command
	ParamType_WriteEquateByte(gParams[1]);		// Creature to summon
	ParamType_WriteByte(gParams[2]);			// Creature's level
	ParamType_WriteByte(gParams[3]);			// Creature's energy
	return 1;
	}

/********************************/
u8	WriteCommand_CmdBtlSummonDelay ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 5)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_BTLSUMMONDELAY\n");
	ParamType_WriteEquateByte(gParams[0]);		// Creature to command
	ParamType_WriteEquateByte(gParams[1]);		// Creature to summon
	ParamType_WriteByte(gParams[2]);			// Creature's level
	ParamType_WriteByte(gParams[3]);			// Creature's energy
	ParamType_WriteByte(gParams[4]);			// Delay
	return 1;
	}

/********************************/
u8	WriteCommand_CmdBtlUseItem ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 3)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_BTLUSEITEM\n");
	ParamType_WriteEquateByte(gParams[0]);		// Creature to command
	ParamType_WriteAddress2(gParams[1]);		// Command to perform
	ParamType_WriteEquateByte(gParams[2]);		// Targeting mode
	return 1;
	}

/********************************/
u8	WriteCommand_CmdScreenWipe ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SCREENWIPE\n");
	ParamType_WriteAddress2(gParams[0]);		// Screen wipe func ptr
	ParamType_WriteEquateByte(gParams[1]);		// Battle music
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetBtlReturn ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!paramBlock) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	
	if(!WriteCommand_GetArgumentList(paramBlock, 0))
		return WriteScript_Error("Bite my bottom!");

	switch(gTotalParams)
		{
		case 1:
			StringList_Add ( &globalList, "?_BATTLE_LOST", 0);
		
			fprintf(scriptFile, "\tDB\tCMD_SETBTLRETURN\n");
			ParamType_WriteLabel3(gParams[0]);		// Win script
			fprintf(scriptFile, "\t\tDB\t(:?_BATTLE_LOST&$FF)\n");
			fprintf(scriptFile, "\t\tDW\t(?_BATTLE_LOST&$FFFF)\n");
			return 1;
		
		case 2:
			fprintf(scriptFile, "\tDB\tCMD_SETBTLRETURN\n");
			ParamType_WriteLabel3(gParams[0]);		// Win script
			ParamType_WriteLabel3(gParams[1]);		// Lose script
			return 1;
		}

	return WriteScript_Error("Have I ever told you how beautiful you are?");
	}

/********************************/
u8	WriteCommand_CmdSetEncounter ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SETENCOUNTER\n");
	ParamType_WriteLabel3(gParams[0]);		// Encounter script
	ParamType_WriteAddress2(gParams[1]);	// Frequency of encounters
	return 1;
	}

/********************************/
u8	WriteCommand_PrintBattleCmds ( void )
	{
	printf("BATTLE COMMANDS:\n");
	printf("\tBtlNew\t\t()\n");
	printf("\tBtlAttack\t\t()\n");
	printf("\tBtlAuto\t\t()\n");
	printf("\tBtlCastSpell\t\t()\n");
	printf("\tBtlEvaluate\t\t()\n");
	printf("\tBtlFocus\t\t()\n");
	printf("\tBtlNextTurn\t\t()\n");
	printf("\tBtlRingGive\t\t()\n");
	printf("\tBtlSummon\t\t()\n");
	printf("\tBtlSummonDelay\t\t()\n");
	printf("\tBtlUseItem\t\t()\n");
	printf("\tScreenWipe\t\t()\n");
	printf("\tSetBtlReturn\t\t()\n");
	printf("\tSetEncounter\t\t()\n");
	printf("\n");

	return 1;
	}
