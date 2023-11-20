#include "includes.h"

/********************************/
u8	WriteCommand_CmdFightBlowAway		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdFightLoadArena		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdFightLoadCreature	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdFightMeltFast		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdFightMeltSlow		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdFightNew			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdFightPan			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdFightRecoil			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdFightRecoilFast		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdFightScroll			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdFightShake			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdFightSink			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdFightTremble		( CommandPtr command, ParamBlockPtr paramBlock );

/********************************/
u8	WriteCommand_AddFightFXCmds ( void )
	{
	CommandTypeList_Add	( "FightBlowAway",		WriteCommand_CmdFightBlowAway );
	CommandTypeList_Add	( "FightLoadArena",		WriteCommand_CmdFightLoadArena );
	CommandTypeList_Add	( "FightLoadCreature",	WriteCommand_CmdFightLoadCreature );
	CommandTypeList_Add	( "FightMeltFast",		WriteCommand_CmdFightMeltFast );
	CommandTypeList_Add	( "FightMeltSlow",		WriteCommand_CmdFightMeltSlow );
	CommandTypeList_Add	( "FightNew",			WriteCommand_CmdFightNew );
	CommandTypeList_Add	( "FightPan",			WriteCommand_CmdFightPan );
	CommandTypeList_Add	( "FightRecoil",		WriteCommand_CmdFightRecoil );
	CommandTypeList_Add	( "FightRecoilFast",	WriteCommand_CmdFightRecoilFast );
	CommandTypeList_Add	( "FightScroll",		WriteCommand_CmdFightScroll );
	CommandTypeList_Add	( "FightShake",			WriteCommand_CmdFightShake );
	CommandTypeList_Add	( "FightSink",			WriteCommand_CmdFightSink );
	CommandTypeList_Add	( "FightTremble",		WriteCommand_CmdFightTremble );

	return 1;
	}

/********************************/
u8	WriteCommand_CmdFightBlowAway ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_FIGHTBLOWAWAY\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdFightLoadArena ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_FIGHTLOADARENA\n");
	ParamType_WriteEquateByte(gParams[0]);	// Arena
	return 1;
	}

/********************************/
u8	WriteCommand_CmdFightLoadCreature ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_FIGHTLOADCREATURE\n");
	ParamType_WriteEquateByte(gParams[0]);	// Creature
	return 1;
	}

/********************************/
u8	WriteCommand_CmdFightMeltFast ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_FIGHTMELTFAST\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdFightMeltSlow ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_FIGHTMELTSLOW\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdFightNew ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 3)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_FIGHTNEW\n");

	ParamType_WriteEquateByte(gParams[0]);	// Arena
	ParamType_WriteEquateByte(gParams[1]);	// Creature 0
	ParamType_WriteEquateByte(gParams[2]);	// Creature 1

	return 1;
	}

/********************************/
u8	WriteCommand_CmdFightPan ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_FIGHTPAN\n");

	ParamType_WriteByte(gParams[0]);		// Direction
	ParamType_WriteAddress2(gParams[1]);	// Addr of pan table

	return 1;
	}

/********************************/
u8	WriteCommand_CmdFightRecoil ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_FIGHTRECOIL\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdFightRecoilFast ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_FIGHTRECOILFAST\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdFightScroll ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	//if(!gReset)	return 1;
	//fprintf(scriptFile, "\tDB\tCMD_FIGHTSCROLL\n");
	
	//4 each scroll
	//0/1 - Direction, byte
	//delta - Byte
	//duration - Byte
	
	return 1;
	}

/********************************/
u8	WriteCommand_CmdFightShake ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_FIGHTSHAKE\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdFightSink ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_FIGHTSINK\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdFightTremble ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_FIGHTTREMBLE\n");
	return 1;
	}

/********************************/
u8	WriteCommand_PrintFightFXCmds ( void )
	{
	printf("FIGHT FX COMMANDS:\n");
	printf("\tFightBlowAway\t\t()\n");
	printf("\tFightLoadArena\t\t()\n");
	printf("\tFightLoadCreature\t\t()\n");
	printf("\tFightMeltFast\t\t()\n");
	printf("\tFightMeltSlow\t\t()\n");
	printf("\tFightNew\t\t(arena,creature0,creature1)\n");
	printf("\tFightPan\t\t(direction,panTable)\n");
	printf("\tFightRecoil\t\t()\n");
	printf("\tFightRecoilFast\t\t()\n");
	printf("\tFightScroll\t\t()\n");
	printf("\tFightShake\t\t()\n");
	printf("\tFightSink\t\t()\n");
	printf("\tFightTremble\t\t()\n");
	printf("\n");

	return 1;
	}
