#include "includes.h"

/********************************/
u8 		Command_Delete	( ScriptNodePtr scriptNode );
u8 		Command_Write	( Ptr data );

/********************************/
static u8	Write_ParamBlock	( CommandTypePtr commandType, ParamBlockPtr paramBlock );

/********************************/
u8 Command_Delete ( ScriptNodePtr scriptNode )
	{
	CommandPtr command;
	
	if(!scriptNode) return 0;
	
	command = scriptNode->Data;
	
	Mem_Free(command->ScriptNode.FileName);
	Mem_Free(command->Name);
	ParamBlockList_Delete(command->ParamBlockList);
	Mem_Free(command);
	
	return 1;
	}
	
/********************************/
u8 Command_New ( char* name, ListPtr paramBlockList )
	{
	CommandPtr	command;
	
	command = Mem_Alloc(sizeof(Command));
	if(!command) return 0;
	
	command->ScriptNode.Data = command;
	command->ScriptNode.Delete = Command_Delete;
	command->ScriptNode.Write = Command_Write;
	command->ScriptNode.Line = gLine;
	command->ScriptNode.FileName = String_Clone(gFileName);
	
	command->Name = String_Clone(name);
	command->CommandType = CommandTypeList_Find(name);
	command->ParamBlockList = paramBlockList;
	
	ScriptList_Add(&command->ScriptNode);
	
	return 1;
	}

/********************************/
u8 Command_Write ( Ptr data )
	{
	ParamBlockPtr paramBlock;
	
	CommandPtr command = (CommandPtr)data;
	
	WriteCommand_Reset();

	if(!command->CommandType)
		return WriteScript_Error("No such command.");

	paramBlock = command->ParamBlockList->Head;
	while(paramBlock)
		{
		gLine = paramBlock->Line;
		gFileName = paramBlock->FileName;
		if(((u8(*)(CommandPtr,ParamBlockPtr))command->CommandType->Write)(command, paramBlock))
			paramBlock = paramBlock->Link.Next;
		WriteCommand_Next();
		}
	
	((u8(*)(CommandPtr,ParamBlockPtr))command->CommandType->Write)(command, 0);
	
	fprintf(scriptFile,"\n");
	
	return 1;
	}