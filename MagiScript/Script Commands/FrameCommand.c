#include "includes.h"

/********************************/
u8	WriteCommand_CmdFrame			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdFrameBlock		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdFrameGhost		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdOverlayFrame	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdOverlayInit		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdOverlayGhost	( CommandPtr command, ParamBlockPtr paramBlock );

/********************************/
u8	WriteCommand_AddFrameCmds ( void )
	{
	CommandTypeList_Add	( "Frame",			WriteCommand_CmdFrame );
	CommandTypeList_Add	( "FrameBlock",		WriteCommand_CmdFrameBlock );
	CommandTypeList_Add	( "FrameGhost",		WriteCommand_CmdFrameGhost );
	CommandTypeList_Add	( "OverlayFrame",	WriteCommand_CmdOverlayFrame );
	CommandTypeList_Add	( "OverlayInit",	WriteCommand_CmdOverlayInit );
	CommandTypeList_Add	( "OverlayGhost",	WriteCommand_CmdOverlayGhost );

	return 1;
	}

/********************************/
u8	WriteCommand_CmdFrame ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	frameCount;
	
	if(!paramBlock)
		{
		fprintf(scriptFile, "\t\tDB\t$00\n");
		return 1;
		}
	
	if(!WriteCommand_GetParams(paramBlock, 4)) return 1;
	
	if (gReset)
		{
		fprintf(scriptFile, "\tDB\tCMD_FRAME\n");
		return 0;
		}
	else
		{
		ParamType_WriteByte(gParams[0]);		// Duration
		ParamType_WriteByte(gParams[1]);		// X Tile
		ParamType_WriteByte(gParams[2]);		// Y Tile
		ParamType_WriteAddress2(gParams[3]);	// Frame Address
		}
	return 1;
	}

/********************************/
u8	WriteCommand_CmdFrameBlock ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	u32	totalEntries;
	ParamBlockPtr cursor;
	
	if (gReset)
		{
		if(!WriteCommand_GetParams(paramBlock, 3)) return 1;
		
		totalEntries = 0;
		cursor = paramBlock;
		
		cursor = cursor->Link.Next;
		while(cursor)
			{
			totalEntries++;
			cursor = cursor->Link.Next;
			}
		
		totalEntries = (u32)(totalEntries << 1);
		
		fprintf(scriptFile, "\tDB\tCMD_FRAMEBLOCK\n");
		fprintf(scriptFile,"\t\tDB\t$%02X\n", (totalEntries & 0xFF));
		ParamType_WriteByte(gParams[0]);		// Repeat count
		ParamType_WriteByte(gParams[1]);		// X Delta
		ParamType_WriteByte(gParams[2]);		// Y Delta
		
		return 1;
		}
	else
		{
		if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
		ParamType_WriteAddress2(gParams[0]);		// Frame addr
		}
		
	return 1;
	}

/********************************/
u8	WriteCommand_CmdFrameGhost ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 3)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_FRAMEGHOST\n");
	ParamType_WriteByte(gParams[0]);	// Repeat
	ParamType_WriteByte(gParams[1]);	// X Delta
	ParamType_WriteByte(gParams[2]);	// Y Delta
	return 1;
	}

/********************************/
u8	WriteCommand_CmdOverlayFrame ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	frameCount;
	
	if(!paramBlock)
		{
		fprintf(scriptFile, "\t\tDB\t$00\n");
		return 1;
		}
	
	if(!WriteCommand_GetParams(paramBlock, 4)) return 1;
	
	if (gReset)
		{
		fprintf(scriptFile, "\tDB\tCMD_OVERLAYFRAME\n");
		return 0;
		}
	else
		{
		ParamType_WriteByte(gParams[0]);		// Duration
		ParamType_WriteByte(gParams[1]);		// X Tile
		ParamType_WriteByte(gParams[2]);		// Y Tile
		ParamType_WriteAddress2(gParams[3]);	// Frame Address
		}
	return 1;
	}

/********************************/
u8	WriteCommand_CmdOverlayInit ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;

	if(!WriteCommand_GetParams(paramBlock, 5)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_OVERLAYINIT\n");
	
	ParamType_WriteAddress2(gParams[0]);	// ACTOR Address
	ParamType_WriteByte(gParams[1]);		// X Loc
	ParamType_WriteByte(gParams[2]);		// Y Loc
	ParamType_WriteByte(gParams[3]);		// Sprite base
	ParamType_WriteLabel3(gParams[4]);		// Script

	return 1;
	}

/********************************/
u8	WriteCommand_CmdOverlayGhost ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	return 1;
	}

/********************************/
u8	WriteCommand_PrintFrameCmds ( void )
	{
	printf("FRAME COMMANDS:\n");
	printf("\tFrame\t\t()\n");
	printf("\tFrameBlock\t\t()\n");
	printf("\tFrameGhost\t\t()\n");
	printf("\tOverlayFrame\t\t()\n");
	printf("\tOverlayInit\t\t()\n");
	printf("\tOverlayGhost\t\t()\n");
	printf("\n");

	return 1;
	}