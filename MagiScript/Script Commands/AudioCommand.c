#include "includes.h"

/********************************/
u8	WriteCommand_CmdFanfare			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSFX				( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSFX2			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSongFadeIn		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSongFadeOut		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSongPause		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSongResume		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSongSetVolume	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSongStart		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSongStop		( CommandPtr command, ParamBlockPtr paramBlock );


/********************************/
u8	WriteCommand_AddAudioCmds ( void )
	{
	CommandTypeList_Add	( "Fanfare",		WriteCommand_CmdFanfare );
	CommandTypeList_Add	( "SFX",			WriteCommand_CmdSFX );
	CommandTypeList_Add	( "SFX2",			WriteCommand_CmdSFX2 );
	CommandTypeList_Add	( "SongFadeIn",		WriteCommand_CmdSongFadeIn );
	CommandTypeList_Add	( "SongFadeOut",	WriteCommand_CmdSongFadeOut );
	CommandTypeList_Add	( "SongPause",		WriteCommand_CmdSongPause );
	CommandTypeList_Add	( "SongResume",		WriteCommand_CmdSongResume );
	CommandTypeList_Add	( "SongSetVolume",	WriteCommand_CmdSongSetVolume );
	CommandTypeList_Add	( "SongStart",		WriteCommand_CmdSongStart );
	CommandTypeList_Add	( "SongStop",		WriteCommand_CmdSongStop );

	return 1;
	}

/********************************/
u8	WriteCommand_CmdFanfare ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_FANFARESTARTt\n");
	ParamType_WriteEquateByte(gParams[0]);		// Fanfare ID
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSFX ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SFX\n");
	ParamType_WriteEquateByte(gParams[0]);	// SFX ID
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSFX2 ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SFX2\n");
	ParamType_WriteEquateByte(gParams[0]);	// SFX2 ID
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSongFadeIn ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_FADEINSONG\n");
	ParamType_WriteByte(gParams[0]);		// Delay
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSongFadeOut ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_FADEOUTSONG\n");
	ParamType_WriteByte(gParams[0]);		// Delay
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSongPause ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_SONGPAUSE\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSongResume ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_SONGRESUME\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSongSetVolume ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SETSONGVOLUME\n");
	if(gParams[0]->Type != PARAM_NUMBER) return WriteScript_Error("Type mismatch.");
	if(gParams[0]->Number > 15) gParams[0]->Number = 15;
	fprintf (scriptFile,"\t\tDB\t$%02X\n", (gParams[0]->Number & 0xFF));	// Volume
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSongStart ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SONGSTART\n");
	ParamType_WriteEquateByte(gParams[0]);		// Song ID
	return 1;
	}
	
/********************************/
u8	WriteCommand_CmdSongStop ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_SONGSTOP\n");
	return 1;
	}

/********************************/
u8	WriteCommand_PrintAudioCmds ( void )
	{
	printf("AUDIO COMMANDS:\n");
	printf("\tFanfare\t\t(fanfareID)\n");
	printf("\tSFX\t\t(sfxID)\n");
	printf("\tSFX2\t\t(sfxID)\n");
	printf("\tSongFadeIn\t\t(delay)\n");
	printf("\tSongFadeOut\t\t(delay)\n");
	printf("\tSongPause\t\t()\n");
	printf("\tSongResume\t\t()\n");
	printf("\tSongSetVolume\t\t(volume)\n");
	printf("\tSongStart\t\t(songID)\n");
	printf("\tSongStop\t\t()\n");
	printf("\n");

	return 1;
	}
