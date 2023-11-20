#include "includes.h"

/********************************/
u8	WriteCommand_CmdTextByte		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdTextClear		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdTextClose		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdTextIcon		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdTextMenu		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdTextOpen		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdTextWord		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdTextWrite		( CommandPtr command, ParamBlockPtr paramBlock );

/********************************/
u8	WriteCommand_AddTextCmds ( void )
	{
	CommandTypeList_Add	( "TextByte",		WriteCommand_CmdTextByte );
	CommandTypeList_Add	( "TextClear",		WriteCommand_CmdTextClear );
	CommandTypeList_Add	( "TextClose",		WriteCommand_CmdTextClose );
	CommandTypeList_Add	( "TextIcon",		WriteCommand_CmdTextIcon );
	CommandTypeList_Add	( "TextMenu",		WriteCommand_CmdTextMenu );
	CommandTypeList_Add	( "TextOpen",		WriteCommand_CmdTextOpen );
	CommandTypeList_Add	( "TextWord",		WriteCommand_CmdTextWord );
	CommandTypeList_Add	( "TextWrite",		WriteCommand_CmdTextWrite );

	return 1;
	}

/********************************/
u8	WriteCommand_CmdTextByte ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_TEXTBYTE\n");
	ParamType_WriteXRAMByte(gParams[0]);	// XRAM byte
	return 1;
	}

/********************************/
u8	WriteCommand_CmdTextClear ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_TEXTCLEAR\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdTextClose ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_TEXTCLOSE\n");

	if(dumpFile)
		fprintf(dumpFile, "\tEND TEXT\n");

	return 1;
	}
	
/********************************/
u8	WriteCommand_CmdTextIcon ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_TEXTICON\n");
	ParamType_WriteEquateWord(gParams[0]);	// Icon address

	if(dumpFile)
		if(gParams[0]->String)
			fprintf(dumpFile, "\t\t%s\n",gParams[0]->String);

	return 1;
	}

/********************************/
u8	WriteCommand_CmdTextMenu ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	u32	frameCount;
	
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	
	if (gReset)
		{
		fprintf(scriptFile, "\tDB\tCMD_TEXTMENU\n");
		ParamType_WriteByte(gParams[0]);	// Total menu options
		return 1;
		}
	else
		{
		ParamType_WriteLabel3(gParams[0]);	// Dest jump address
		}

	return 1;
	}

/********************************/
u8	WriteCommand_CmdTextOpen ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	//if(!gReset)	return 1;
	//fprintf(scriptFile, "\tDB\tCMD_TEXTOPEN\n");

	if(dumpFile)
		fprintf(dumpFile, "\tBEGIN TEXT\n");

	return 1;
	}

/********************************/
u8	WriteCommand_CmdTextWord ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_TEXTWORD\n");
	ParamType_WriteXRAMWord(gParams[0]);	// XRAM byte
	return 1;
	}

/********************************/
u8	WriteCommand_CmdTextWrite ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!paramBlock)
		{
		fprintf(scriptFile, "\t\tDB\t?EOF\n");
		return 1;
		}
	
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if (gReset)
		fprintf(scriptFile, "\tDB\tCMD_TEXTWRITE\n");
	ParamType_WriteTexter(gParams[0]);	// Text string

	if(dumpFile)
		if(gParams[0]->String)
			fprintf(dumpFile, "\t\t\"%s\"\n",gParams[0]->String);

	return 1;
	}

/********************************/
u8	WriteCommand_PrintTextCmds ( void )
	{
	printf("TEXT COMMANDS:\n");
	printf("\tTextByte\t\t()\n");
	printf("\tTextClear\t\t()\n");
	printf("\tTextClose\t\t()\n");
	printf("\tTextIcon\t\t()\n");
	printf("\tTextMenu\t\t()\n");
	printf("\tTextOpen\t\t()\n");
	printf("\tTextWord\t\t()\n");
	printf("\tTextWrite\t\t()\n");
	printf("\n");

	return 1;
	}