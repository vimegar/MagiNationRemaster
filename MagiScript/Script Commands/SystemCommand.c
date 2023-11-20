#include "includes.h"

/********************************/
u8	WriteCommand_CmdBGScreenNew			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdInventoryGive		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdInventoryTake		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdJumpLoadScript		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdLoadGame			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdMenuHistorian		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdMenuMusic			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdMenuRingBank		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdMenuRingSmith		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdMenuRingUpgrade		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdMenuShop			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdNewGame				( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSaveGame			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSceneNew			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSceneReady			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetItemScript		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetLoadScript		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSoftReset			( CommandPtr command, ParamBlockPtr paramBlock );

/********************************/
u8	WriteCommand_AddSystemCmds ( void )
	{
	CommandTypeList_Add	( "BGScreenNew",		WriteCommand_CmdBGScreenNew );
	CommandTypeList_Add	( "InventoryGive",		WriteCommand_CmdInventoryGive );
	CommandTypeList_Add	( "InventoryTake",		WriteCommand_CmdInventoryTake );
	CommandTypeList_Add	( "JumpLoadScript",		WriteCommand_CmdJumpLoadScript );
	CommandTypeList_Add	( "LoadGame",			WriteCommand_CmdLoadGame );
	CommandTypeList_Add	( "MenuHistorian",		WriteCommand_CmdMenuHistorian );
	CommandTypeList_Add	( "MenuMusic",			WriteCommand_CmdMenuMusic );
	CommandTypeList_Add	( "MenuRingBank",		WriteCommand_CmdMenuRingBank );
	CommandTypeList_Add	( "MenuRingSmith",		WriteCommand_CmdMenuRingSmith );
	CommandTypeList_Add	( "MenuRingUpgrade",	WriteCommand_CmdMenuRingUpgrade );
	CommandTypeList_Add	( "MenuShop",			WriteCommand_CmdMenuShop );
	CommandTypeList_Add	( "NewGame",			WriteCommand_CmdNewGame );
	CommandTypeList_Add	( "SaveGame",			WriteCommand_CmdSaveGame );
	CommandTypeList_Add	( "SceneNew",			WriteCommand_CmdSceneNew );
	CommandTypeList_Add	( "SceneReady",			WriteCommand_CmdSceneReady );
	CommandTypeList_Add	( "SetItemScript",		WriteCommand_CmdSetItemScript );
	CommandTypeList_Add	( "SetLoadScript",		WriteCommand_CmdSetLoadScript );
	CommandTypeList_Add	( "SoftReset",			WriteCommand_CmdSoftReset );

	return 1;
	}

/********************************/
u8	WriteCommand_CmdBGScreenNew ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_BGSCREENNEW\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdInventoryGive ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 3)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_INVENTORYGIVE\n");

	ParamType_WriteEquateByte(gParams[0]);		// Item type
	ParamType_WriteEquateByte(gParams[1]);		// Item ID
	ParamType_WriteByte(gParams[2]);			// Item Quantity

	return 1;
	}

/********************************/
u8	WriteCommand_CmdInventoryTake ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 3)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_INVENTORYTAKE\n");

	ParamType_WriteEquateByte(gParams[0]);		// Item type
	ParamType_WriteEquateByte(gParams[1]);		// Item ID
	ParamType_WriteByte(gParams[2]);			// Item Quantity

	return 1;
	}

/********************************/
u8	WriteCommand_CmdJumpLoadScript ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_JUMPLOADSCRIPT\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdLoadGame ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_LOADGAME\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdMenuHistorian ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_MENUHISTORIAN\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdMenuMusic ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	totalEntries;
	ParamBlockPtr cursor;
	
	if (gReset)
		{
		fprintf(scriptFile, "\tDB\tCMD_MENUMUSIC\n");
		
		totalEntries = 0;
		cursor = paramBlock;
		if(!cursor) return 1;
		while(cursor)
			{
			totalEntries++;
			cursor = cursor->Link.Next;
			}

		fprintf (scriptFile,"\t\tDW\t$%04X\n", (((totalEntries*14)+1) & 0xFFFF));	// Total bytes
		fprintf (scriptFile,"\t\tDB\t$%02X\n", (totalEntries & 0xFF));				// Total entries
		
		return 0;
		}
	else
		{
		if(!WriteCommand_GetParams(paramBlock, 2)) return 1;

		ParamType_WriteEquateByte(gParams[0]);	// Song
		ParamType_WriteASCII(gParams[1],13);	// Song name
		}
		
	return 1;
	}

/********************************/
u8	WriteCommand_CmdMenuRingBank ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_MENURINGBANK\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdMenuRingSmith ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	totalEntries;
	ParamBlockPtr cursor;
	
	if (gReset)
		{
		if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
		fprintf(scriptFile, "\tDB\tCMD_MENURINGSMITH\n");

		ParamType_WriteLabel3(gParams[0]);		// Bank is full
		ParamType_WriteLabel3(gParams[1]);		// Bail script
		
		totalEntries = 0;
		cursor = paramBlock;
		
		cursor = cursor->Link.Next;
		while(cursor)
			{
			totalEntries++;
			cursor = cursor->Link.Next;
			}

		fprintf (scriptFile,"\t\tDW\t$%04X\n", (((totalEntries*8)+1) & 0xFFFF));	// Total bytes
		fprintf (scriptFile,"\t\tDB\t$%02X\n", (totalEntries & 0xFF));				// Total entries
		
		return 1;
		}
	else
		{
		if(!WriteCommand_GetParams(paramBlock, 7)) return 1;
		
		ParamType_WriteEquateByte(gParams[0]);	// Creature
		ParamType_WriteEquateByte(gParams[3]);	// Infused Type 1
		ParamType_WriteByte(gParams[4]);		// Quantity
		ParamType_WriteEquateByte(gParams[5]);	// Infused Type 2
		ParamType_WriteByte(gParams[6]);		// Quantity
		ParamType_WriteWord(gParams[1]);		// Cost
		ParamType_WriteByte(gParams[2]);		// Level
		}
		
	return 1;
	}

/********************************/
u8	WriteCommand_CmdMenuShop ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	totalEntries;
	ParamBlockPtr cursor;
	
	if (gReset)
		{
		if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
		fprintf(scriptFile, "\tDB\tCMD_MENUSHOP\n");
		
		ParamType_WriteLabel3(gParams[0]);		// Bail script
		
		totalEntries = 0;
		cursor = paramBlock;
		
		cursor = cursor->Link.Next;
		while(cursor)
			{
			totalEntries++;
			cursor = cursor->Link.Next;
			}

		fprintf (scriptFile,"\t\tDW\t$%04X\n", (((totalEntries*3)+1) & 0xFFFF));	// Total bytes
		fprintf (scriptFile,"\t\tDB\t$%02X\n", (totalEntries & 0xFF));
		
		return 1;
		}
	else
		{
		if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
		
		ParamType_WriteEquateByte(gParams[0]);	// Item type
		ParamType_WriteWord(gParams[1]);		// Cost
		}
		
	return 1;
	}

/********************************/
u8	WriteCommand_CmdMenuRingUpgrade ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	totalEntries;
	ParamBlockPtr cursor;
	
	if (gReset)
		{
		fprintf(scriptFile, "\tDB\tCMD_MENURINGUPGRADE\n");
		
		totalEntries = 0;
		cursor = paramBlock;
		if(!cursor) return 1;
		while(cursor)
			{
			totalEntries++;
			cursor = cursor->Link.Next;
			}

		fprintf (scriptFile,"\t\tDW\t$%04X\n", ((totalEntries+1) & 0xFFFF));	// Total bytes
		fprintf (scriptFile,"\t\tDB\t$%02X\n", (totalEntries & 0xFF));			// Total entries
		
		return 0;
		}
	else
		{
		if(!WriteCommand_GetParams(paramBlock, 1)) return 1;

		ParamType_WriteEquateByte(gParams[0]);		// Creature
		}
		
	return 1;
	}

/********************************/
u8	WriteCommand_CmdNewGame ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_NEWGAME\n");
	ParamType_WriteEquateByte(gParams[0]);		// New game plus flag
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSaveGame ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SAVEGAME\n");
	ParamType_WriteByte(gParams[0]);			// Restore energy?
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSceneNew ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_SCENENEW\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSceneReady ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_SCENEREADY\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetItemScript ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SETITEMSCRIPT\n");
	ParamType_WriteLabel3(gParams[0]);			// Script
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetLoadScript ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("You must like being hurt.");
	fprintf(scriptFile, "\tDB\tCMD_SETLOADSCRIPT\n");
	ParamType_WriteLabel3(gParams[0]);		// Load script
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSoftReset ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_SOFTRESET\n");
	return 1;
	}

/********************************/
u8	WriteCommand_PrintSystemCmds ( void )
	{
	printf("SYSTEM COMMANDS:\n");
	printf("\tBGScreenNew\t\t()\n");
	printf("\tInventoryGive\t\t()\n");
	printf("\tInventoryTake\t\t()\n");
	printf("\tJumpLoadScript\t\t()\n");
	printf("\tLoadGame\t\t()\n");
	printf("\tMenuHistorian\t\t()\n");
	printf("\tMenuMusic\t\t()\n");
	printf("\tMenuRingBank\t\t()\n");
	printf("\tMenuRingSmith\t\t()\n");
	printf("\tMenuRingUpgrade\t\t()\n");
	printf("\tMenuShop\t\t()\n");
	printf("\tNewGame\t\t()\n");
	printf("\tSaveGame\t\t()\n");
	printf("\tSceneNew\t\t()\n");
	printf("\tSceneReady\t\t()\n");
	printf("\tSetItemScript\t\t()\n");
	printf("\tSetLoadScript\t\t()\n");
	printf("\tSoftReset\t\t()\n");
	printf("\n");

	return 1;
	}