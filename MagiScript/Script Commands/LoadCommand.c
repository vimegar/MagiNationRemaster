#include "includes.h"

/********************************/
u8	WriteCommand_CmdLoadBGScreen	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdLoadHotspots	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdLoadMap			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdLoadPalette		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdLoadSCR			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdLoadSpareMap	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdLoadTriggers	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdLoadVRAM		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdLoadVRAMTiles	( CommandPtr command, ParamBlockPtr paramBlock );

/********************************/
u8	WriteCommand_AddLoadCmds ( void )
	{
	CommandTypeList_Add	( "LoadBGScreen",		WriteCommand_CmdLoadBGScreen );
	CommandTypeList_Add	( "LoadHotspots",		WriteCommand_CmdLoadHotspots );
	CommandTypeList_Add	( "LoadMap",			WriteCommand_CmdLoadMap );
	CommandTypeList_Add	( "LoadPalette",		WriteCommand_CmdLoadPalette );
	CommandTypeList_Add	( "LoadSCR",			WriteCommand_CmdLoadSCR );
	CommandTypeList_Add	( "LoadSpareMap",		WriteCommand_CmdLoadSpareMap );
	CommandTypeList_Add	( "LoadTriggers",		WriteCommand_CmdLoadTriggers );
	CommandTypeList_Add	( "LoadVRAM",			WriteCommand_CmdLoadVRAM );
	CommandTypeList_Add	( "LoadVRAMTiles",		WriteCommand_CmdLoadVRAMTiles );

	return 1;
	}

/********************************/
u8	WriteCommand_CmdLoadBGScreen ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_LOADBGSCREEN\n");
	ParamType_WriteAddress2(gParams[0]);	// BG address
	ParamType_WriteAddressBank(gParams[0]); // BG bank
	return 1;
	}

/********************************/
u8	WriteCommand_CmdLoadHotspots ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_LOADHOTSPOTS\n");
	ParamType_WriteAddress2(gParams[0]);	// Hotspot table address
	return 1;
	}

/********************************/
u8	WriteCommand_CmdLoadMap ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_LOADMAP\n");
	ParamType_WriteAddress2(gParams[0]);	// Map address
	ParamType_WriteAddressBank(gParams[0]); // Map bank
	return 1;
	}

/********************************/
u8	WriteCommand_CmdLoadPalette ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_LOADPALETTE\n");
	ParamType_WriteAddress2(gParams[0]);	// OBJ Pal address
	ParamType_WriteAddressBank(gParams[0]); // OBJ Pal bank
	return 1;
	}

/********************************/
u8	WriteCommand_CmdLoadSCR ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_LOADSCR\n");
	ParamType_WriteAddress2(gParams[0]);	// SCR address
	ParamType_WriteAddressBank(gParams[0]); // SCR bank
	ParamType_WriteAddress2(gParams[1]);	// COL address
	ParamType_WriteAddressBank(gParams[1]); // COL bank
	return 1;
	}

/********************************/
u8	WriteCommand_CmdLoadSpareMap ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_LOADSPAREMAP\n");
	ParamType_WriteAddress2(gParams[0]);	// SCR address
	ParamType_WriteAddressBank(gParams[0]); // SCR bank
	ParamType_WriteAddress2(gParams[1]);	// COL address
	ParamType_WriteAddressBank(gParams[1]); // COL bank
	return 1;
	}

/********************************/
u8	WriteCommand_CmdLoadTriggers ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_LOADTRIGGERS\n");
	ParamType_WriteAddress2(gParams[0]);	// Trigger table address
	return 1;
	}

/********************************/
u8	WriteCommand_CmdLoadVRAM ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_LOADVRAM\n");
	ParamType_WriteAddress2(gParams[0]);	// VRAM address
	ParamType_WriteAddressBank(gParams[0]); // VRAM bank
	ParamType_WriteAddress2(gParams[1]);	// PAL address
	ParamType_WriteAddressBank(gParams[1]); // PAL bank
	return 1;
	}

/********************************/
u8	WriteCommand_CmdLoadVRAMTiles ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u16		dest;
	
	if(!WriteCommand_GetParams(paramBlock, 4)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_LOADVRAMTILES\n");
	ParamType_WriteByte(gParams[0]);		// Total sprites
	ParamType_WriteAddress3(gParams[1]);	// Source address
	
	if(gParams[2]->Type != PARAM_NUMBER) return WriteScript_Error("Type mismatch.");
	dest = gParams[2]->Number;
	dest = ((dest * 0x10) + 0x8000);
	fprintf (scriptFile,"\t\tDW\t$%04X\n", dest);	// Dest address
	
	if(gParams[3]->Type != PARAM_NUMBER) return WriteScript_Error("Type mismatch.");

	if((gParams[3]->Number != 0)&&(gParams[3]->Number != 1))
		return WriteScript_Error("No such VRAM Bank.");
	ParamType_WriteByte(gParams[3]);		// VRAM Bank
	
	return 1;
	}

/********************************/
u8	WriteCommand_PrintLoadCmds ( void )
	{
	printf("LOAD COMMANDS:\n");
	printf("\tLoadBGScreen\t\t()\n");
	printf("\tLoadHotspots\t\t(hotspots)\n");
	printf("\tLoadMap\t\t()\n");
	printf("\tLoadSpareMap\t\t()\n");
	printf("\tLoadPalette\t\t()\n");
	printf("\tLoadSCR\t\t()\n");
	printf("\tLoadTriggers\t\t(triggers)\n");
	printf("\tLoadVRAM\t\t()\n");
	printf("\tLoadVRAMTiles\t\t()\n");
	printf("\n");

	return 1;
	}