#include "includes.h"

/********************************/
List	scriptList;
u32		paramBlockCounter;
u32		paramCounter;

/********************************/
u8	ScriptList_Add ( ScriptNodePtr scriptNode )
	{
	List_InsertNode(&scriptList, scriptNode);
	return 1;
	}

/********************************/
u8	ScriptList_Empty ( )
	{
	ScriptNodePtr	cursor;
	ScriptNodePtr	kill;
	
	cursor = scriptList.Head;
	while(cursor)
		{
		kill = cursor;
		cursor = cursor->Link.Next;
		List_RemoveNode(&scriptList, kill);
		if(kill->Delete)	((u8(*)(ScriptNodePtr))kill->Delete)(kill);
		else				Mem_Free(kill);
		}
	
	return 1;
	}

/********************************/
u8	ScriptList_Init ( )
	{
	ScriptNodePtr	scriptNode = 0;
	
	List_Init (&scriptList, scriptNode, &scriptNode->Link);

	return 1;
	}