#include "includes.h"

/********************************/
u8	CommandTypeList_Add ( char* name, Ptr write )
	{
	CommandTypePtr commandType;
	
	commandType = Mem_Alloc(sizeof(CommandType));
	if(!commandType) return 0;
	
	commandType->Name = String_Clone(name);
	commandType->Write = write;
	
	List_InsertNode(&commandTypeList, commandType);
	return 1;
	}

/********************************/
u8	CommandTypeList_Empty ( void )
	{
	CommandTypePtr	cursor;
	CommandTypePtr	kill;
	
	cursor = commandTypeList.Head;
	while(cursor)
		{
		kill = cursor;
		cursor = cursor->Link.Next;
		List_RemoveNode(&commandTypeList, kill);
		Mem_Free(kill->Name);
		Mem_Free(kill);
		}

	return 1;
	}

/********************************/
CommandTypePtr	CommandTypeList_Find ( char* name )
	{
	CommandTypePtr	cursor;
	
	cursor = commandTypeList.Head;
	while(cursor)
		{
		if(String_Compare(name, cursor->Name)) return cursor;
		cursor = cursor->Link.Next;
		}
	return 0;
	}

/********************************/
u8	CommandTypeList_Init ( void )
	{
	CommandTypePtr	commandType = 0;
	
	List_Init(&commandTypeList, commandType, &commandType->Link);
	commandType = 0;

	return 1;
	}