#include "includes.h"

/********************************/
u8	WriteCommand_CmdPalArenaFadeAnim		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdPalArenaFadeBase		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdPalClearAnim			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdPalClearBase			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdPalCreatureCycle		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdPalCreatureFade			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdPalCreatureFadeBase		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdPalCreatureLoad			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdPalCreatureFlash		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdPalCreatureXOR			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdPalCycle				( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdPalFade					( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdPalFadeAnim				( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdPalLoad					( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdPalRefresh				( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdPalXOR					( CommandPtr command, ParamBlockPtr paramBlock );

/********************************/
u8	WriteCommand_AddPalFXCmds ( void )
	{
	CommandTypeList_Add	( "PalArenaFadeAnim",		WriteCommand_CmdPalArenaFadeAnim );
	CommandTypeList_Add	( "PalArenaFadeBase",		WriteCommand_CmdPalArenaFadeBase );
	CommandTypeList_Add	( "PalClearAnim",			WriteCommand_CmdPalClearAnim );
	CommandTypeList_Add	( "PalClearBase",			WriteCommand_CmdPalClearBase );
	CommandTypeList_Add	( "PalCreatureCycle",		WriteCommand_CmdPalCreatureCycle );
	CommandTypeList_Add	( "PalCreatureFade",		WriteCommand_CmdPalCreatureFade );
	CommandTypeList_Add	( "PalCreatureFadeBase",	WriteCommand_CmdPalCreatureFadeBase );
	CommandTypeList_Add	( "PalCreatureLoad",		WriteCommand_CmdPalCreatureLoad );
	CommandTypeList_Add	( "PalCreatureFlash",		WriteCommand_CmdPalCreatureFlash );
	CommandTypeList_Add	( "PalCreatureXOR",			WriteCommand_CmdPalCreatureXOR );
	CommandTypeList_Add	( "PalCycle",				WriteCommand_CmdPalCycle );
	CommandTypeList_Add	( "PalFade",				WriteCommand_CmdPalFade );
	CommandTypeList_Add	( "PalFadeAnim",			WriteCommand_CmdPalFadeAnim );
	CommandTypeList_Add	( "PalLoad",				WriteCommand_CmdPalLoad );
	CommandTypeList_Add	( "PalRefresh",				WriteCommand_CmdPalRefresh );
	CommandTypeList_Add	( "PalXOR",					WriteCommand_CmdPalXOR );

	return 1;
	}

/********************************/
u8	WriteCommand_CmdPalArenaFadeAnim ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 5)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_PALARENAFADEANIM\n");

	ParamType_WritePalDelay(gParams[0],gParams[1]);		// Delay

	ParamType_WriteRGBColor(gParams[2],gParams[3],gParams[4]);	// RGB Color

	return 1;
	}

/********************************/
u8	WriteCommand_CmdPalArenaFadeBase ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_PALARENAFADEBASE\n");

	ParamType_WritePalDelay(gParams[0],gParams[1]);		// Delay

	return 1;
	}

/********************************/
u8	WriteCommand_CmdPalClearAnim ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 5)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_PALCLEARANIM\n");

	ParamType_WritePalSpan(gParams[0],gParams[1]);				// Base Pal : Total Pals
	ParamType_WriteRGBColor(gParams[2],gParams[3],gParams[4]);	// RGB Color

	return 1;
	}

/********************************/
u8	WriteCommand_CmdPalClearBase ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 5)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_PALCLEARBASE\n");

	ParamType_WritePalSpan(gParams[0],gParams[1]);				// Base Pal : Total Pals
	ParamType_WriteRGBColor(gParams[2],gParams[3],gParams[4]);	// RGB Color

	return 1;
	}

/********************************/
u8	WriteCommand_CmdPalCreatureCycle ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 3)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_PALCREATURECYCLE\n");

	ParamType_WritePalDelay(gParams[1],gParams[2]);		// Delay
	ParamType_WriteByte(gParams[0]);					// Creature

	return 1;
	}

/********************************/
u8	WriteCommand_CmdPalCreatureFade ( CommandPtr command, ParamBlockPtr paramBlock )
	{	
	if(!WriteCommand_GetArgumentList(paramBlock, 6)) return 1;
	if(!((gTotalParams == 3)||(gTotalParams == 6)))
		{
		WriteScript_Error ("Wrong number of arguments!");
		return 1;
		}
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_PALCREATUREFADE\n");

	ParamType_WritePalDelay(gParams[1],gParams[2]);					// Delay
	
	if(gTotalParams == 3)
		fprintf (scriptFile,"\t\tDW\t$8000\n");						// Arena Color Flag
	else
		ParamType_WriteRGBColor(gParams[3],gParams[4],gParams[5]);	// RGB Color
	
	ParamType_WriteByte(gParams[0]);								// Creature

	return 1;
	}

/********************************/
u8	WriteCommand_CmdPalCreatureFadeBase ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 3)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_PALCREATUREFADEBASE\n");

	ParamType_WritePalDelay(gParams[1],gParams[2]);		// Delay
	ParamType_WriteByte(gParams[0]);			// Creature

	return 1;
	}

/********************************/
u8	WriteCommand_CmdPalCreatureLoad ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_PALCREATURELOAD\n");

	ParamType_WriteAddress2(gParams[1]);		// Palette Address
	ParamType_WriteAddressBank(gParams[1]);		// Palette Bank
	ParamType_WriteByte(gParams[0]);			// Creature

	return 1;
	}

/********************************/
u8	WriteCommand_CmdPalCreatureFlash ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 4)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_PALCREATUREFLASH\n");

	ParamType_WritePalDelay(gParams[1],gParams[2]);	// Delay
	ParamType_WriteEquateByte(gParams[3]);			// Combo
	ParamType_WriteByte(gParams[0]);				// Creature

	return 1;
	}

/********************************/
u8	WriteCommand_CmdPalCreatureXOR ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_PALCREATUREXOR\n");

	ParamType_WriteByte(gParams[0]);				// Creature

	return 1;
	}

/********************************/
u8	WriteCommand_CmdPalCycle ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 5)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_PALCYCLE\n");

	ParamType_WritePalDelay(gParams[2],gParams[3]);		// Delay
	ParamType_WritePalSpan(gParams[0],gParams[1]);		// Base Pal : Total Pals
	ParamType_WriteEquateByte(gParams[4]);				// Cycle type

	return 1;
	}

/********************************/
u8	WriteCommand_CmdPalFade ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 4)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_PALFADE\n");

	ParamType_WritePalDelay(gParams[2],gParams[3]);		// Delay
	ParamType_WritePalSpan(gParams[0],gParams[1]);		// Base Pal : Total Pals

	return 1;
	}

/********************************/
u8	WriteCommand_CmdPalFadeAnim ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 7)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_PALFADEANIM\n");

	ParamType_WritePalSpan(gParams[0],gParams[1]);		// Base Pal : Total Pals
	ParamType_WritePalDelay(gParams[2],gParams[3]);		// Delay
	ParamType_WriteRGBColor(gParams[4],gParams[5],gParams[6]);	// RGB Color

	return 1;
	}

/********************************/
u8	WriteCommand_CmdPalLoad ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 3)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_PALLOAD\n");

	ParamType_WriteAddress2(gParams[2]);			// Palette Address
	ParamType_WriteAddressBank(gParams[2]);			// Palette Bank
	ParamType_WritePalSpan(gParams[0],gParams[1]);	// Base Pal : Total Pals

	return 1;
	}

/********************************/
u8	WriteCommand_CmdPalRefresh ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_PALREFRESH\n");

	ParamType_WritePalSpan(gParams[0],gParams[1]);	// Base Pal : Total Pals

	return 1;
	}

/********************************/
u8	WriteCommand_CmdPalXOR ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");

	fprintf(scriptFile, "\tDB\tCMD_PALXOR\n");

	ParamType_WritePalSpan(gParams[0],gParams[1]);	// Base Pal : Total Pals

	return 1;
	}

/********************************/
u8	WriteCommand_PrintPalFXCmds ( void )
	{
	printf("PAL FX COMMANDS:\n");
	printf("\tPalArenaFadeAnim\t\t(startPal,totalPals,red,green,blue)\n");
	printf("\tPalArenaFadeBase\t\t(startPal,totalPals,red,green,blue)\n");
	printf("\tPalClearAnim\t\t(startPal,totalPals,red,green,blue)\n");
	printf("\tPalClearBase\t\t(startPal,totalPals,red,green,blue)\n");
	printf("\tPalCreatureCycle\t\t(creature,frames,delay)\n");
	printf("\tPalCreatureFade\t\t(creature,frames,delay,red,green,blue)\n");
	printf("\tPalCreatureFadeBase\t\t(creature,frames,delay,red,green,blue)\n");
	printf("\tPalCreatureLoad\t\t(creature,palette)\n");
	printf("\tPalCreatureFlash\t\t(creature,frames,delay,flashType)\n");
	printf("\tPalCreatureXOR\t\t(creature)\n");
	printf("\tPalCycle\t\t(startPal,totalPals,frames,delay,cycleType)\n");
	printf("\tPalFade\t\t(startPal,totalPals,frames,delay)\n");
	printf("\tPalFadeAnim\t\t(startPal,totalPals,frames,delay,red,green,blue)\n");
	printf("\tPalLoad\t\t(startPal,totalPals,palette)\n");
	printf("\tPalRefresh\t\t(startPal,totalPals)\n");
	printf("\tPalXOR\t\t(startPal,totalPals)\n");
	printf("\n");

	return 1;
	}
