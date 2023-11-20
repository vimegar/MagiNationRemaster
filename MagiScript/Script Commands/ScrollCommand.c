#include "includes.h"

/********************************/
u8	WriteCommand_CmdCameraSeek			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdCameraSeekActor		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdCopyTileBlock		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdCopyTileSpare		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdDrawTile			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdDrawTileSpare		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdHeroSetCamera		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdScrollMap			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetCamera			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetCollMask			( CommandPtr command, ParamBlockPtr paramBlock );

/********************************/
u8	WriteCommand_AddScrollCmds ( void )
	{
	CommandTypeList_Add	( "CameraSeek",			WriteCommand_CmdCameraSeek );
	CommandTypeList_Add	( "CameraSeekActor",	WriteCommand_CmdCameraSeekActor );
	CommandTypeList_Add	( "CopyTileBlock",		WriteCommand_CmdCopyTileBlock );
	CommandTypeList_Add	( "CopyTileSpare",		WriteCommand_CmdCopyTileSpare );
	CommandTypeList_Add	( "DrawTile",			WriteCommand_CmdDrawTile );
	CommandTypeList_Add	( "DrawTileSpare",		WriteCommand_CmdDrawTileSpare );
	CommandTypeList_Add	( "HeroSetCamera",		WriteCommand_CmdHeroSetCamera );
	CommandTypeList_Add	( "ScrollMap",			WriteCommand_CmdScrollMap );
	CommandTypeList_Add	( "SetCamera",			WriteCommand_CmdSetCamera );
	CommandTypeList_Add	( "SetCollMask",		WriteCommand_CmdSetCollMask );

	return 1;
	}

/********************************/
u8	WriteCommand_CmdCameraSeek ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 3)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_CAMERASEEK\n");
	ParamType_WriteByte(gParams[0]);	// X Dest
	ParamType_WriteByte(gParams[1]); 	// Y Dest
	ParamType_WriteByte(gParams[2]); 	// Delta
	return 1;
	}

/********************************/
u8	WriteCommand_CmdCameraSeekActor ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_CAMERASEEKACTOR\n");
	ParamType_WriteAddress2(gParams[0]);	// ACTOR Address
	ParamType_WriteByte(gParams[1]); 		// Delta
	return 1;
	}

/********************************/
u8	WriteCommand_CmdCopyTileBlock( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 7)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_COPYTILEBLOCK\n");
	
	tileAddr = (((gParams[2]->Number * gParams[0]->Number) + gParams[1]->Number) + 0xD000);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Source Tile Addr
	
	ParamType_WriteByte(gParams[3]);		// Width
	ParamType_WriteByte(gParams[4]);		// Height
	
	tileAddr = (((gParams[6]->Number * gParams[0]->Number) + gParams[5]->Number) + 0xD000);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Dest Tile Addr

	ParamType_WriteByte(gParams[6]);		// Y Dest Loc
	ParamType_WriteByte(gParams[5]);		// X Dest Loc
	
	return 1;
	}

/********************************/
u8	WriteCommand_CmdCopyTileSpare( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 7)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_COPYTILESPARE\n");
	
	tileAddr = (((gParams[2]->Number * gParams[0]->Number) + gParams[1]->Number) + 0xD000);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Source Tile Addr
	
	ParamType_WriteByte(gParams[3]);		// Width
	ParamType_WriteByte(gParams[4]);		// Height
	
	tileAddr = (((gParams[6]->Number * gParams[0]->Number) + gParams[5]->Number) + 0xD000);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Dest Tile Addr

	ParamType_WriteByte(gParams[6]);		// Y Dest Loc
	ParamType_WriteByte(gParams[5]);		// X Dest Loc
	
	return 1;
	}

/********************************/
u8	WriteCommand_CmdDrawTile ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32 tileAddr;

	if(!WriteCommand_GetParams(paramBlock, 5)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_DRAWTILE\n");
	ParamType_WriteByte(gParams[1]);		// Y TILE
	ParamType_WriteByte(gParams[0]);		// X TILE
	
	tileAddr = (((gParams[1]->Number * gParams[2]->Number) + gParams[0]->Number)  + 0xD000);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Tile Addr

	ParamType_WriteEquateByte(gParams[4]);	// COLL CODE
	ParamType_WriteByte(gParams[3]);		// PATTERN CODE
	return 1;
	}

/********************************/
u8	WriteCommand_CmdDrawTileSpare ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32 tileAddr;

	if(!WriteCommand_GetParams(paramBlock, 5)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_DRAWTILESPARE\n");
	ParamType_WriteByte(gParams[1]);		// Y TILE
	ParamType_WriteByte(gParams[0]);		// X TILE
	
	tileAddr = (((gParams[1]->Number * gParams[2]->Number) + gParams[0]->Number)  + 0xD000);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Tile Addr

	ParamType_WriteEquateByte(gParams[4]);	// COLL CODE
	ParamType_WriteByte(gParams[3]);		// PATTERN CODE
	return 1;
	}

/********************************/
u8	WriteCommand_CmdHeroSetCamera ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_HEROSETCAMERA\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdScrollMap ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!paramBlock)
		{
		fprintf(scriptFile, "\t\tDB\t$00\n");
		return 1;
		}
	
	if(!WriteCommand_GetParams(paramBlock, 3)) return 1;
	
	if (gReset)
		{
		fprintf(scriptFile, "\tDB\tCMD_SCROLLMAP\n");
		return 0;
		}
	else
		{
		ParamType_WriteByte(gParams[0]);		// Delay
		ParamType_WriteByte(gParams[1]);		// X Delta
		ParamType_WriteByte(gParams[2]);		// Y Delta
		}
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetCamera ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SETCAMERA\n");
	ParamType_WriteByte(gParams[0]);	// X Tile
	ParamType_WriteByte(gParams[1]); 	// Y Tile
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetCollMask ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u8	bitCodes;

	if(!WriteCommand_GetParams(paramBlock, 4)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SETCOLLMASK\n");

	bitCodes = 0;
	
	if (gParams[0]->Number) 	bitCodes += 1;
	if (gParams[1]->Number) 	bitCodes += 2;
	if (gParams[2]->Number) 	bitCodes += 4;
	if (gParams[3]->Number) 	bitCodes += 8;

	fprintf (scriptFile,"\t\tDB\t$%02X\n", (bitCodes & 0xFF));

	return 1;
	}

/********************************/
u8	WriteCommand_PrintScrollCmds ( void )
	{
	printf("SCROLL COMMANDS:\n");
	printf("\tCameraSeek\t\t()\n");
	printf("\tCameraSeekActor\t\t()\n");
	printf("\tCopyTileBlock\t\t()\n");
	printf("\tCopyTileSpare\t\t()\n");
	printf("\tDrawTile\t\t()\n");
	printf("\tDrawTileSpare\t\t()\n");
	printf("\tHeroSetCamera\t\t()\n");
	printf("\tScrollMap\t\t()\n");
	printf("\tSetCamera\t\t()\n");
	printf("\tSetCollMask\t\t()\n");
	printf("\n");

	return 1;
	}