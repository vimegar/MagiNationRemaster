#ifndef COMMAND_H
#define COMMAND_H

/********************************/
typedef struct Command
	{
	ScriptNode	ScriptNode;
	
	Link			Link;
	ListPtr			ParamBlockList;
	char*			Name;
	CommandTypePtr	CommandType;
	
	} Command, *CommandPtr;

/********************************/
u8		Command_New		( char* name, ListPtr paramBlockList );

#endif