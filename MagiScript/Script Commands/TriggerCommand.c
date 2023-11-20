#include "includes.h"

/********************************/
u8	WriteCommand_CmdToggleAlways	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdToggleOnce		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdTriggerAlways	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdTriggerOnce		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdTriggerTreasure	( CommandPtr command, ParamBlockPtr paramBlock );

/********************************/
u8	WriteCommand_AddTriggerCmds ( void )
	{
	CommandTypeList_Add	( "ToggleAlways",		WriteCommand_CmdToggleAlways );
	CommandTypeList_Add	( "ToggleOnce",			WriteCommand_CmdToggleOnce );
	CommandTypeList_Add	( "TriggerAlways",		WriteCommand_CmdTriggerAlways );
	CommandTypeList_Add	( "TriggerOnce",		WriteCommand_CmdTriggerOnce );
	CommandTypeList_Add	( "TriggerTreasure",	WriteCommand_CmdTriggerTreasure );

	return 1;
	}

/********************************/
u8	WriteCommand_CmdToggleAlways ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 7)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_TOGGLEALWAYS\n");
	
	ParamType_WriteXRAMBit(gParams[0]);						// Which bit
	ParamType_WriteLabel3(gParams[1]);						// Alternate script
	ParamType_WriteByte(gParams[2]);						// Tile ID
	ParamType_WriteByte(gParams[3]);						// Tile ID
	
	tileAddr = (((gParams[5]->Number * gParams[6]->Number) + gParams[4]->Number) + 0xD000);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Map Tile Addr

	return 1;
	}

/********************************/
u8	WriteCommand_CmdToggleOnce ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 7)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_TOGGLEONCE\n");
	
	ParamType_WriteXRAMBit(gParams[0]);						// Which bit
	ParamType_WriteLabel3(gParams[1]);						// Alternate script
	ParamType_WriteByte(gParams[2]);						// Tile ID
	ParamType_WriteByte(gParams[3]);						// Tile ID

	tileAddr = (((gParams[5]->Number * gParams[6]->Number) + gParams[4]->Number) + 0xD000);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Map Tile Addr

	return 1;
	}

/********************************/
u8	WriteCommand_CmdTriggerAlways ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 6)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_TRIGGERALWAYS\n");
	
	ParamType_WriteXRAMBit(gParams[0]);						// Which bit
	ParamType_WriteLabel3(gParams[1]);						// Alternate script
	ParamType_WriteByte(gParams[2]);						// Tile ID
	
	tileAddr = (((gParams[4]->Number * gParams[5]->Number) + gParams[3]->Number) + 0xD000);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Map Tile Addr

	return 1;
	}

/********************************/
u8	WriteCommand_CmdTriggerOnce ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 6)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_TRIGGERONCE\n");
	
	ParamType_WriteXRAMBit(gParams[0]);						// Which bit
	ParamType_WriteLabel3(gParams[1]);						// Alternate script
	ParamType_WriteByte(gParams[2]);						// Tile ID
	
	tileAddr = (((gParams[4]->Number * gParams[5]->Number) + gParams[3]->Number) + 0xD000);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Map Tile Addr

	return 1;
	}

/********************************/
u8	WriteCommand_CmdTriggerTreasure ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	tileAddr;
	
	if(!WriteCommand_GetParams(paramBlock, 6)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_TRIGGERTREASURE\n");
	
	ParamType_WriteXRAMBit(gParams[0]);						// Which bit

	ParamType_WriteEquateByte(gParams[1]);					// Item type
	ParamType_WriteEquateByte(gParams[2]);					// Item ID

	tileAddr = (((gParams[4]->Number * gParams[5]->Number) + gParams[3]->Number) + 0xD000);
	fprintf(scriptFile, "\t\tDW\t$%04X\n", tileAddr);		// Map Tile Addr

	return 1;
	}

/********************************/
u8	WriteCommand_PrintTriggerCmds ( void )
	{
	printf("TRIGGER COMMANDS:\n");
	printf("\tToggleAlways\t\t(XRAMByte,script,patternID,xTile,yTile,mapWidth)\n");
	printf("\tToggleOnce\t\t(XRAMByte,script,patternID,xTile,yTile,mapWidth)\n");
	printf("\tTriggerAlways\t\t(XRAMByte,script,patternID,xTile,yTile,mapWidth)\n");
	printf("\tTriggerOnce\t\t(XRAMByte,script,patternID,xTile,yTile,mapWidth)\n");
	printf("\tTriggerTreasure\t\t(XRAMByte,xTile,yTile,mapWidth)\n");
	printf("\n");

	return 1;
	}