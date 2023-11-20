#include "includes.h"

/********************************/
u8	WriteCommand_CmdHeroFromDoor			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdHeroSetDoor				( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdHeroToDoor				( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThatActorDrawTile		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThatActorDrawTileSpare	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThatActorInit			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThatActorLocRelative	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThatActorSetAI			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThatActorSetLoc			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThatActorSetScript		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThatActorSetVRAMBase	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThatActorStart			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThatActorStop			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThisActorDrawTile		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThisActorDrawTileSpare	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThisActorLocRelative	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThisActorInit			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThisActorNewState		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThisActorRaindrop		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThisActorRestoreState	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThisActorSetAI			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThisActorSetAnim		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThisActorSetAnimDelay	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThisActorSetAnimScroll	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThisActorSetLoc			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThisActorSetVRAMBase	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThisActorStop			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdThisActorWaitTile		( CommandPtr command, ParamBlockPtr paramBlock );

/********************************/
u8	WriteCommand_AddActorCmds ( void )
	{
	CommandTypeList_Add	( "HeroFromDoor",			WriteCommand_CmdHeroFromDoor );
	CommandTypeList_Add	( "HeroSetDoor",			WriteCommand_CmdHeroSetDoor );
	CommandTypeList_Add	( "HeroToDoor",				WriteCommand_CmdHeroToDoor );
	CommandTypeList_Add	( "ThatActorDrawTile",		WriteCommand_CmdThatActorDrawTile );
	CommandTypeList_Add	( "ThatActorDrawTileSpare",	WriteCommand_CmdThatActorDrawTileSpare );
	CommandTypeList_Add	( "ThatActorInit",			WriteCommand_CmdThatActorInit );
	CommandTypeList_Add	( "ThatActorLocRelative",	WriteCommand_CmdThatActorLocRelative );
	CommandTypeList_Add	( "ThatActorSetAI",			WriteCommand_CmdThatActorSetAI );
	CommandTypeList_Add	( "ThatActorSetLoc",		WriteCommand_CmdThatActorSetLoc );
	CommandTypeList_Add	( "ThatActorSetScript",		WriteCommand_CmdThatActorSetScript );
	CommandTypeList_Add	( "ThatActorSetVRAMBase",	WriteCommand_CmdThatActorSetVRAMBase );
	CommandTypeList_Add	( "ThatActorStart",			WriteCommand_CmdThatActorStart );
	CommandTypeList_Add	( "ThatActorStop",			WriteCommand_CmdThatActorStop );
	CommandTypeList_Add	( "ThisActorDrawTile",		WriteCommand_CmdThisActorDrawTile );
	CommandTypeList_Add	( "ThisActorDrawTileSpare",	WriteCommand_CmdThisActorDrawTileSpare );
	CommandTypeList_Add	( "ThisActorLocRelative",	WriteCommand_CmdThisActorLocRelative );
	CommandTypeList_Add	( "ThisActorNewState",		WriteCommand_CmdThisActorNewState );
	CommandTypeList_Add	( "ThisActorRaindrop",		WriteCommand_CmdThisActorRaindrop );
	CommandTypeList_Add	( "ThisActorRestoreState",	WriteCommand_CmdThisActorRestoreState );
	CommandTypeList_Add	( "ThisActorSetAI",			WriteCommand_CmdThisActorSetAI );
	CommandTypeList_Add	( "ThisActorSetAnim",		WriteCommand_CmdThisActorSetAnim );
	CommandTypeList_Add	( "ThisActorSetAnimDelay",	WriteCommand_CmdThisActorSetAnimDelay );
	CommandTypeList_Add	( "ThisActorSetAnimScroll",	WriteCommand_CmdThisActorSetAnimScroll );
	CommandTypeList_Add	( "ThisActorSetLoc",		WriteCommand_CmdThisActorSetLoc );
	CommandTypeList_Add	( "ThisActorSetVRAMBase",	WriteCommand_CmdThisActorSetVRAMBase );
	CommandTypeList_Add	( "ThisActorStop",			WriteCommand_CmdThisActorStop );
	CommandTypeList_Add	( "ThisActorWaitTile",		WriteCommand_CmdThisActorWaitTile);

	return 1;
	}

/********************************/
u8	WriteCommand_CmdHeroFromDoor ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_HEROFROMDOOR\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdHeroSetDoor ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_HEROSETDOOR\n");
	
	ParamType_WriteByte(gParams[0]);	// X Exit Tile
	ParamType_WriteByte(gParams[1]);	// Y Exit Tile

	return 1;
	}

/********************************/
u8	WriteCommand_CmdHeroToDoor ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 4)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_HEROTODOOR\n");
	
	ParamType_WriteByte(gParams[0]);	// X Enter Tile
	ParamType_WriteByte(gParams[2]);	// X Exit Tile
	ParamType_WriteByte(gParams[1]);	// Y Enter Tile
	ParamType_WriteByte(gParams[3]);	// Y Exit Tile

	return 1;
	}

/********************************/
u8	WriteCommand_CmdThatActorDrawTile ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 6)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_THATACTORDRAWTILE\n");
	
	ParamType_WriteActor(gParams[0]);		// ACTOR Address
	
	ParamType_WriteByte(gParams[2]);		// Y TILE
	ParamType_WriteByte(gParams[1]);		// X TILE
	
	tileAddr = (((gParams[2]->Number * gParams[3]->Number) + gParams[1]->Number) & 0xFFFF);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Tile Addr

	ParamType_WriteEquateByte(gParams[5]);	// COLL CODE
	ParamType_WriteByte(gParams[4]);		// PATTERN CODE

	return 1;
	}

/********************************/
u8	WriteCommand_CmdThatActorDrawTileSpare ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 6)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_THATACTORDRAWTILESPARE\n");
	
	ParamType_WriteActor(gParams[0]);		// ACTOR Address
	
	tileAddr = (((gParams[2]->Number * gParams[3]->Number) + gParams[1]->Number) & 0xFFFF);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Tile Addr

	ParamType_WriteEquateByte(gParams[5]);	// COLL CODE
	ParamType_WriteByte(gParams[4]);		// PATTERN CODE

	return 1;
	}

/********************************/
u8	WriteCommand_CmdThatActorInit ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 8)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_THATACTORINIT\n");
	
	ParamType_WriteActor(gParams[0]);		// ACTOR Address
	ParamType_WriteAddress2(gParams[1]);	// ACTOR AI
	ParamType_WriteByte(gParams[2]);		// X Loc
	ParamType_WriteByte(gParams[3]);		// Y Loc

	tileAddr = (((gParams[3]->Number * gParams[4]->Number) + gParams[2]->Number) + 0xD000);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Tile Addr

	ParamType_WriteByte(gParams[5]);		// Sprite base
	ParamType_WriteLabel3(gParams[6]);		// Script
	ParamType_WriteLabel3(gParams[7]);		// Interrupt Script

	return 1;
	}

/********************************/
u8	WriteCommand_CmdThatActorLocRelative ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_THATACTORLOCRELATIVE\n");
	ParamType_WriteActor(gParams[0]);		// ACTOR
	ParamType_WriteActor(gParams[1]);		// ACTOR
	return 1;
	}

/********************************/
u8	WriteCommand_CmdThatActorSetAI ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_THATACTORSETAI\n");
	ParamType_WriteActor(gParams[0]);		// ACTOR
	ParamType_WriteAddress2(gParams[1]);	// ACTOR AI
	return 1;
	}

/********************************/
u8	WriteCommand_CmdThatActorSetLoc ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 6)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_THATACTORSETLOC\n");
	ParamType_WriteActor(gParams[0]);		// ACTOR
	ParamType_WriteByte(gParams[3]);		// X Off
	ParamType_WriteByte(gParams[4]);		// Y Off
	ParamType_WriteByte(gParams[1]);		// X Tile
	ParamType_WriteByte(gParams[2]);		// Y Tile
	
	tileAddr = (((gParams[2]->Number * gParams[5]->Number) + gParams[1]->Number) + 0xD000);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Tile Addr
	
	return 1;
	}

/********************************/
u8	WriteCommand_CmdThatActorSetScript ( CommandPtr command, ParamBlockPtr paramBlock )
	{;
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_THATACTORSETSCRIPT\n");
	ParamType_WriteActor(gParams[0]);		// ACTOR
	ParamType_WriteLabel3(gParams[1]);		// Script
	return 1;
	}

/********************************/
u8	WriteCommand_CmdThatActorSetVRAMBase ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_THATACTORSETVRAMBASE\n");
	ParamType_WriteActor(gParams[0]);		// ACTOR
	ParamType_WriteByte(gParams[1]);		// VRAM BASE
	return 1;
	}

/********************************/
u8	WriteCommand_CmdThatActorStart ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_THATACTORSTART\n");
	ParamType_WriteActor(gParams[0]);		// ACTOR
	return 1;
	}

/********************************/
u8	WriteCommand_CmdThatActorStop ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_THATACTORSTOP\n");
	ParamType_WriteActor(gParams[0]);		// ACTOR
	return 1;
	}

/********************************/
u8	WriteCommand_CmdThisActorDrawTile ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 5)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_THISACTORDRAWTILE\n");
	ParamType_WriteByte(gParams[1]);	// Y TILE
	ParamType_WriteByte(gParams[0]);	// X TILE
	
	tileAddr = (((gParams[1]->Number * gParams[2]->Number) + gParams[0]->Number) & 0xFFFF);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Tile Addr

	ParamType_WriteByte(gParams[4]);	// COLL CODE
	ParamType_WriteByte(gParams[3]);	// PATTERN CODE

	return 1;
	}

/********************************/
u8	WriteCommand_CmdThisActorDrawTileSpare ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 5)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_THISACTORDRAWTILESPARE\n");
	
	tileAddr = (((gParams[1]->Number * gParams[2]->Number) + gParams[0]->Number) & 0xFFFF);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Tile Addr

	ParamType_WriteByte(gParams[4]);	// COLL CODE
	ParamType_WriteByte(gParams[3]);	// PATTERN CODE

	return 1;
	}

/********************************/
u8	WriteCommand_CmdThisActorInit ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 7)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_THISACTORINIT\n");
	
	ParamType_WriteAddress2(gParams[0]);	// ACTOR AI
	ParamType_WriteByte(gParams[1]);		// X Loc
	ParamType_WriteByte(gParams[2]);		// Y Loc

	tileAddr = (((gParams[2]->Number * gParams[3]->Number) + gParams[1]->Number) + 0xD000);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Tile Addr

	ParamType_WriteByte(gParams[4]);		// Sprite base
	ParamType_WriteLabel3(gParams[5]);		// Script
	ParamType_WriteLabel3(gParams[6]);		// Interrupt Script


	return 1;
	}

/********************************/
u8	WriteCommand_CmdThisActorLocRelative ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_THISACTORLOCRELATIVE\n");
	ParamType_WriteActor(gParams[0]);		// ACTOR
	return 1;
	}

/********************************/
u8	WriteCommand_CmdThisActorNewState ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_THISACTORNEWSTATE\n");
	ParamType_WriteAddress2(gParams[0]);	// ACTOR AI
	return 1;
	}

/********************************/
u8	WriteCommand_CmdThisActorRaindrop ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_THISACTORRAINDROP\n");
	ParamType_WriteEquateByte(gParams[0]);	// COLL CODE
	return 1;
	}

/********************************/
u8	WriteCommand_CmdThisActorRestoreState ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_THISACTORRESTORESTATE\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdThisActorSetAI ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_THISACTORSETAI\n");
	ParamType_WriteAddress2(gParams[0]);	// ACTOR AI
	return 1;
	}

/********************************/
u8	WriteCommand_CmdThisActorSetAnim ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_THISACTORSETANIM\n");
	ParamType_WriteLabel3(gParams[0]);		// Script
	return 1;
	}

/********************************/
u8	WriteCommand_CmdThisActorSetAnimDelay ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!paramBlock)
		{
		fprintf(scriptFile, "\t\tDB\t$00\n");
		return 1;
		}
	
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	
	if (gReset)
		{
		fprintf(scriptFile, "\tDB\tCMD_THISACTORSETANIMDELAY\n");
		return 0;
		}
	else
		{
		ParamType_WriteLabel3(gParams[0]);		// Script
		ParamType_WriteByte(gParams[1]);		// Delay
		}
	return 1;
	}

/********************************/
u8	WriteCommand_CmdThisActorSetAnimScroll ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!paramBlock)
		{
		fprintf(scriptFile, "\t\tDB\t$00\n");
		return 1;
		}
	
	if(!WriteCommand_GetParams(paramBlock, 4)) return 1;
	
	if (gReset)
		{
		fprintf(scriptFile, "\tDB\tCMD_THISACTORSETANIMSCROLL\n");
		return 0;
		}
	else
		{
		ParamType_WriteLabel3(gParams[0]);		// Script
		ParamType_WriteByte(gParams[1]);		// Repeat
		ParamType_WriteByte(gParams[2]);		// XDelta
		ParamType_WriteByte(gParams[3]);		// YDelta
		}
	return 1;
	}

/********************************/
u8	WriteCommand_CmdThisActorSetLoc ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;

	if(!WriteCommand_GetParams(paramBlock, 5)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_THISACTORSETLOC\n");
	ParamType_WriteByte(gParams[2]);		// X Off
	ParamType_WriteByte(gParams[3]);		// Y Off
	ParamType_WriteByte(gParams[0]);		// X Tile
	ParamType_WriteByte(gParams[1]);		// Y Tile

	tileAddr = (((gParams[1]->Number * gParams[4]->Number) + gParams[0]->Number) + 0xD000);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Tile Addr

	return 1;
	}

/********************************/
u8	WriteCommand_CmdThisActorSetVRAMBase ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_THISACTORSETVRAMBASE\n");
	ParamType_WriteByte(gParams[0]);		// VRAM BASE
	return 1;
	}

/********************************/
u8	WriteCommand_CmdThisActorStop ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_THISACTORSTOP\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdThisActorWaitTile ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_THISACTORWAITTILE\n");
	ParamType_WriteByte(gParams[0]);		// PATTERN CODE
	return 1;
	}

/********************************/
u8	WriteCommand_PrintActorCmds ( void )
	{
	printf("ACTOR COMMANDS:\n");
	printf("\tHeroFromDoor\t\t()\n");
	printf("\tHeroSetDoor\t\t()\n");
	printf("\tHeroToDoor\t\t()\n");
	printf("\tThatActorDrawTile\t\t()\n");
	printf("\tThatActorDrawTileSpare\t\t()\n");
	printf("\tThatActorInit\t\t()\n");
	printf("\tThatActorLocRelative\t\t()\n");
	printf("\tThatActorSetAI\t\t()\n");
	printf("\tThatActorSetLoc\t\t()\n");
	printf("\tThatActorSetScript\t\t()\n");
	printf("\tThatActorStart\t\t()\n");
	printf("\tThatActorStop\t\t()\n");
	printf("\tThisActorDrawTile\t\t()\n");
	printf("\tThisActorDrawTileSpare\t\t()\n");
	printf("\tThisActorLocRelative\t\t()\n");
	printf("\tThisActorNewState\t\t()\n");
	printf("\tThisActorRaindrop\t\t()\n");
	printf("\tThisActorRestoreState\t\t()\n");
	printf("\tThisActorSetAI\t\t()\n");
	printf("\tThisActorSetAnim\t\t()\n");
	printf("\tThisActorSetAnimDelay\t\t()\n");
	printf("\tThisActorSetAnimScroll\t\t()\n");
	printf("\tThisActorSetLoc\t\t()\n");
	printf("\tThisActorStop\t\t()\n");
	printf("\tThisActorWaitTile\t\t()\n");
	printf("\n");

	return 1;
	}