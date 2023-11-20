#include "includes.h"

/********************************/
u8	WriteCommand_CmdClearSync			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetAnyEventMaster	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetAnyEventScroll	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetAnyEventText		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetEventMaster		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetEventScroll		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetEventText		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetMaster			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetScroll			( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSetText				( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdSync				( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdWaitAnyEventMaster	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdWaitAnyEventScroll	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdWaitAnyEventText	( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdWaitEventMaster		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdWaitEventScroll		( CommandPtr command, ParamBlockPtr paramBlock );
u8	WriteCommand_CmdWaitEventText		( CommandPtr command, ParamBlockPtr paramBlock );

/********************************/
u8	WriteCommand_AddGlobalCmds ( void )
	{
	CommandTypeList_Add	( "ClearSync",			WriteCommand_CmdClearSync );
	CommandTypeList_Add	( "SetAnyEventMaster",	WriteCommand_CmdSetAnyEventMaster );
	CommandTypeList_Add	( "SetAnyEventScroll",	WriteCommand_CmdSetAnyEventScroll );
	CommandTypeList_Add	( "SetAnyEventText",	WriteCommand_CmdSetAnyEventText );
	CommandTypeList_Add	( "SetEventMaster",		WriteCommand_CmdSetEventMaster );
	CommandTypeList_Add	( "SetEventScroll",		WriteCommand_CmdSetEventScroll );
	CommandTypeList_Add	( "SetEventText",		WriteCommand_CmdSetEventText );
	CommandTypeList_Add	( "SetMaster",			WriteCommand_CmdSetMaster );
	CommandTypeList_Add	( "SetScroll",			WriteCommand_CmdSetScroll );
	CommandTypeList_Add	( "SetText",			WriteCommand_CmdSetText );
	CommandTypeList_Add	( "Sync",				WriteCommand_CmdSync );
	CommandTypeList_Add	( "WaitAnyEventMaster",	WriteCommand_CmdWaitAnyEventMaster );
	CommandTypeList_Add	( "WaitAnyEventScroll",	WriteCommand_CmdWaitAnyEventScroll );
	CommandTypeList_Add	( "WaitAnyEventText",	WriteCommand_CmdWaitAnyEventText );
	CommandTypeList_Add	( "WaitEventMaster",	WriteCommand_CmdWaitEventMaster );
	CommandTypeList_Add	( "WaitEventScroll",	WriteCommand_CmdWaitEventScroll );
	CommandTypeList_Add	( "WaitEventText",		WriteCommand_CmdWaitEventText );

	return 1;
	}

/********************************/
u8	WriteCommand_CmdClearSync ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_CLEARSYNC\n");
	ParamType_WriteByte(gParams[0]);	// New sync count
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetAnyEventMaster ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_SETANYEVENTMASTER\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetAnyEventScroll ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_SETANYEVENTSCROLL\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetAnyEventText ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_SETANYEVENTTEXT\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetEventMaster ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SETEVENTMASTER\n");
	ParamType_WriteByte(gParams[0]);	// Event
	return 1;
	}
	
/********************************/
u8	WriteCommand_CmdSetEventScroll ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SETEVENTSCROLL\n");
	ParamType_WriteByte(gParams[0]);	// Event
	return 1;
	}
	
/********************************/
u8	WriteCommand_CmdSetEventText ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SETEVENTTEXT\n");
	ParamType_WriteByte(gParams[0]);	// Event
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetMaster ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	
	fprintf(scriptFile, "\tDB\tCMD_SETMASTER\n");
	ParamType_WriteLabel3(gParams[0]);	// Script label
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetScroll ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	
	fprintf(scriptFile, "\tDB\tCMD_SETSCROLL\n");
	ParamType_WriteLabel3(gParams[0]);	// Script label
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSetText ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	
	fprintf(scriptFile, "\tDB\tCMD_SETTEXT\n");
	ParamType_WriteLabel3(gParams[0]);	// Script label
	return 1;
	}

/********************************/
u8	WriteCommand_CmdSync ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 2)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_SYNC\n");
	ParamType_WriteByte(gParams[1]);	// Sync count
	ParamType_WriteByte(gParams[0]);	// Total scripts to sychronize
	return 1;
	}

/********************************/
u8	WriteCommand_CmdWaitAnyEventMaster ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_WAITANYEVENTMASTER\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdWaitAnyEventScroll ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_WAITANYEVENTSCROLL\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdWaitAnyEventText ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!gReset)	return 1;
	fprintf(scriptFile, "\tDB\tCMD_WAITANYEVENTTEXT\n");
	return 1;
	}

/********************************/
u8	WriteCommand_CmdWaitEventMaster ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_WAITEVENTMASTER\n");
	ParamType_WriteByte(gParams[0]);	// Event
	return 1;
	}

/********************************/
u8	WriteCommand_CmdWaitEventScroll ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_WAITEVENTSCROLL\n");
	ParamType_WriteByte(gParams[0]);	// Event
	return 1;
	}

/********************************/
u8	WriteCommand_CmdWaitEventText ( CommandPtr command, ParamBlockPtr paramBlock )
	{
	if(!WriteCommand_GetParams(paramBlock, 1)) return 1;
	if(!gReset)	return WriteScript_Error ("Too many param blocks!");
	fprintf(scriptFile, "\tDB\tCMD_WAITEVENTTEXT\n");
	ParamType_WriteByte(gParams[0]);	// Event
	return 1;
	}

/********************************/
u8	WriteCommand_PrintGlobalCmds ( void )
	{
	printf("GLOBAL SCRIPT COMMANDS:\n");
	printf("\tClearSync\t\t()\n");
	printf("\tSetAnyEventMaster\t\t()\n");
	printf("\tSetAnyEventScroll\t\t()\n");
	printf("\tSetAnyEventText\t\t()\n");
	printf("\tSetEventMaster\t\t()\n");
	printf("\tSetEventScroll\t\t()\n");
	printf("\tSetEventText\t\t()\n");
	printf("\tSetMaster\t\t()\n");
	printf("\tSetScroll\t\t()\n");
	printf("\tSetText\t\t()\n");
	printf("\tSync\t\t()\n");
	printf("\tWaitAnyEventMaster\t\t()\n");
	printf("\tWaitAnyEventScroll\t\t()\n");
	printf("\tWaitAnyEventText\t\t()\n");
	printf("\tWaitEventMaster\t\t()\n");
	printf("\tWaitEventScroll\t\t()\n");
	printf("\tWaitEventText\t\t()\n");
	printf("\n");

	return 1;
	}