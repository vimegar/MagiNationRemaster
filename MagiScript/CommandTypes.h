#ifndef COMMANDTYPES_H
#define COMMANDTYPES_H

/********************************/
typedef struct CommandType
	{
	Link			Link;
	char*			Name;
	Ptr				Write;	// u8(*Write)(CommandPtr command, ParamBlockPtr paramBlock);
	
	} CommandType, *CommandTypePtr;

/********************************/
u8				CommandTypeList_Add		( char* name, Ptr write );
u8				CommandTypeList_Empty	( void );
CommandTypePtr	CommandTypeList_Find	( char* name );
u8				CommandTypeList_Init	( void );

#endif