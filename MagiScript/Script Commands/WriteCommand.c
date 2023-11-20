#include "includes.h"

/********************************/
static u8	WriteCommand_StandardErrors	( ParamBlockPtr paramBlock, u8 paramCount );

/********************************/
ParamPtr			gParams [ MAX_PARAMS ];
u8					gReset;
u8					gTotalParams;

/********************************/
u8	WriteCommand_GetArgumentList( ParamBlockPtr paramBlock, u8 paramCount )
	{
	ParamPtr param;
	
	if(!paramBlock) return 0;
	
	gTotalParams = 0;
	param = paramBlock->ParamList->Head;
	while(param)
		{
		gParams[gTotalParams] = param;
		gTotalParams++;
		param = param->Link.Next;
		}

	return 1;
	}

/********************************/
u8	WriteCommand_GetParams ( ParamBlockPtr paramBlock, u8 paramCount )
	{
	if(!WriteCommand_GetArgumentList(paramBlock, paramCount)) return 0;
	if(paramCount) return WriteCommand_StandardErrors(paramBlock, paramCount);
	return 1;
	}

/********************************/
u8	WriteCommand_Init ( void )
	{
	WriteCommand_AddActorCmds();
	WriteCommand_AddAudioCmds();
	WriteCommand_AddBattleCmds();
	WriteCommand_AddFileFormatCmds();
	WriteCommand_AddFightFXCmds();
	WriteCommand_AddFlowControlCmds();
	WriteCommand_AddFrameCmds();
	WriteCommand_AddGlobalCmds();
	WriteCommand_AddLoadCmds();
	WriteCommand_AddPalFXCmds();
	WriteCommand_AddScrollCmds();
	WriteCommand_AddSystemCmds();
	WriteCommand_AddTextCmds();
	WriteCommand_AddTriggerCmds();
	WriteCommand_AddXRAMCmds();

	return 1;
	}

/********************************/
u8	WriteCommand_PrintCmds ( void )
	{
	WriteCommand_PrintActorCmds();
	WriteCommand_PrintAudioCmds();
	WriteCommand_PrintBattleCmds();
	WriteCommand_PrintFileFormatCmds();
	WriteCommand_PrintFightFXCmds();
	WriteCommand_PrintFlowControlCmds();
	WriteCommand_PrintFrameCmds();
	WriteCommand_PrintGlobalCmds();
	WriteCommand_PrintLoadCmds();
	WriteCommand_PrintPalFXCmds();
	WriteCommand_PrintScrollCmds();
	WriteCommand_PrintSystemCmds();
	WriteCommand_PrintTextCmds();
	WriteCommand_PrintTriggerCmds();
	WriteCommand_PrintXRAMCmds();

	return 1;
	}

/********************************/
u8	WriteCommand_Next ( void )
	{
	u32 count;

	gReset = 0;
	for(count = 0; count < MAX_PARAMS; count++)
		gParams[count] = 0;

	return 1;
	}

/********************************/
u8	WriteCommand_Reset ( void )
	{
	u32 count;
	
	gReset = 1;
	for(count = 0; count < MAX_PARAMS; count++)
		gParams[count] = 0;

	return 1;
	}

/********************************/
static u8	WriteCommand_StandardErrors ( ParamBlockPtr paramBlock, u8 paramCount )
	{
	u32	count;
	
	if(gTotalParams < paramCount)
		{
		WriteScript_Error("Param block incomplete.");
		return 0;
		}
	if(gTotalParams > paramCount)
		{
		WriteScript_Error("Too many params.");
		return 0;
		}
	
	for (count = 0; count < paramCount; count++)
		if(!gParams[count])
			{
			WriteScript_Error("Internal Error. Param not passed.");
			return 0;
			}
	
	return 1;
	}
