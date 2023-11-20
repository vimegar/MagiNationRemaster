#include "includes.h"

/********************************/
u8		WriteCommand_CmdFileHotspots		( CommandPtr command, ParamBlockPtr paramBlock );
u8		WriteCommand_CmdFileTreasure		( CommandPtr command, ParamBlockPtr paramBlock );
u8		WriteCommand_CmdFileMapLayout		( CommandPtr command, ParamBlockPtr paramBlock );
u8		WriteCommand_CmdFileVRAMLayout		( CommandPtr command, ParamBlockPtr paramBlock );

/********************************/
u8	WriteCommand_AddFileFormatCmds ( void )
	{
	CommandTypeList_Add	( "FileHotspots",		WriteCommand_CmdFileHotspots );
	CommandTypeList_Add	( "FileMapLayout",		WriteCommand_CmdFileMapLayout );
	CommandTypeList_Add	( "FileTriggers",		WriteCommand_CmdFileHotspots );
	CommandTypeList_Add	( "FileVRAMLayout",		WriteCommand_CmdFileVRAMLayout );

	return 1;
	}

/********************************/
u8	WriteCommand_CmdFileHotspots ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	u32	totalEntries;
	ParamBlockPtr cursor;
	
	if (gReset)
		{
		if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
		ParamType_WriteAddress(gParams[0]);		// File Name
		
		totalEntries = 0;
		cursor = paramBlock;
		
		cursor = cursor->Link.Next;
		while(cursor)
			{
			totalEntries++;
			cursor = cursor->Link.Next;
			}

		fprintf (scriptFile,"\t\tDB\t$%02X\n", (totalEntries & 0xFF));
		
		return 1;
		}
	else
		{
		if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
		
		ParamType_WriteEquateByte(gParams[0]);	// Type
		ParamType_WriteLabelBank(gParams[1]);	// Script bank
		ParamType_WriteLabel2(gParams[1]);		// Script addr
		}
		
	return 1;
	}

/********************************/
u8	WriteCommand_CmdFileMapLayout ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 6)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	ParamType_WriteAddress(gParams[0]);		// File Name
	
	ParamType_WriteAddress2(gParams[1]);	// Pal file equate
	ParamType_WriteAddressBank(gParams[1]);	// Pal file equate
	
	ParamType_WriteAddress2(gParams[2]);	// Vram file equate
	ParamType_WriteAddressBank(gParams[2]);	// Vram file equate
	
	ParamType_WriteAddress2(gParams[3]);	// Pattern file equate
	ParamType_WriteAddressBank(gParams[3]);	// Pattern file equate
	
	ParamType_WriteAddress2(gParams[4]);	// Tilemap file equate
	ParamType_WriteAddressBank(gParams[4]);	// Tilemap file equate
	
	ParamType_WriteAddress2(gParams[5]);	// Coll file equate
	ParamType_WriteAddressBank(gParams[5]);	// Coll file equate
	
	return 1;
	}

/********************************/
u8	WriteCommand_CmdFileVRAMLayout ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	switch(List_CountNodes(paramBlock->ParamList))
		{
		case 1:
			ParamType_WriteByte(gParams[0]);		// Total
			break;
		case 4:
			ParamType_WriteWord(gParams[0]);		// Dest
			ParamType_WriteAddress2(gParams[1]);	// Source
			ParamType_WriteByte(gParams[2]);		// Width in pixels
			ParamType_WriteByte(gParams[3]);		// Height in tiles (8x8)
			ParamType_WriteAddressBank(gParams[1]);	// Source bank
			break;
		default:
			return 1;
		}
		
	return 1;
	}

/********************************/
u8	WriteCommand_PrintFileFormatCmds ( void )
	{
	printf("FILE FORMAT COMMANDS:\n");
	printf("\tFileHotspots\t\t(fileName)(direction,script)\n");
	printf("\tFileMapLayout\t\t(fileName,PAL,VRM,PAT,SCR,COL)\n");
	printf("\tFileTreasure\t\t(fileName)(type,script)\n");
	printf("\tFileVRAMLayout\t\t()\n");
	printf("\n");

	return 1;
	}