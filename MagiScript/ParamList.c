#include "includes.h"

/********************************/
u8	Param_Compare ( ParamPtr param1, ParamPtr param2 )
	{
	if (!(param1 && param2)) return 0;
	if (param1->Type != param2->Type) return 0;
	
	switch(param1->Type)
		{
		case	PARAM_STRING:
			return String_Compare(param1->String, param2->String);
		case	PARAM_NUMBER:
			return (param1->Number == param2->Number);
		}
	
	return 0;
	}

/********************************/
u8	Param_Delete ( ParamPtr param )
	{
	if(!param) return 0;
	
	if(param->Left) Param_Delete (param->Left);
	if(param->Right) Param_Delete (param->Right);
	
	Mem_Free(param->String);
	Mem_Free(param);

	return 1;
	}

/********************************/
ParamPtr	Param_New ( u8 type, char* string, s32 number, Ptr left, Ptr right )
	{
	ParamPtr	param;
	
	param = Mem_Alloc(sizeof(Param));
	if(!param) return 0;
	
	param->String = String_Clone(string);
	param->Type = type;
	param->Number = number;
	param->Left = left;
	param->Right = right;
	
	return param;
	}

/********************************/
u8	ParamBlock_Delete ( ParamBlockPtr paramBlock )
	{
	if(!paramBlock) return 0;
	Mem_Free(paramBlock->FileName);
	ParamList_Delete(paramBlock->ParamList);
	Mem_Free(paramBlock);

	return 1;
	}

/********************************/
ParamBlockPtr	ParamBlock_New ( ListPtr paramList )
	{
	ParamBlockPtr	paramBlock;
	
	paramBlock = Mem_Alloc(sizeof(ParamBlock));
	if(!paramBlock) return 0;
	
	paramBlock->ParamList = paramList;
	paramBlock->Line = gLine;
	paramBlock->FileName = String_Clone(gFileName);
	
	return paramBlock;
	}

/********************************/
u8	ParamBlockList_Delete ( ListPtr list )
	{
	ParamBlockPtr	cursor;
	ParamBlockPtr	kill;
	
	if(!list) return 0;
	
	cursor = list->Head;
	while(cursor)
		{
		kill = cursor;
		cursor = cursor->Link.Next;
		List_RemoveNode(list, kill);
		ParamBlock_Delete(kill);
		}
	Mem_Free(list);

	return 1;
	}

/********************************/
ListPtr	ParamBlockList_New ( ParamBlockPtr paramBlock )
	{
	ListPtr		list;
	
	list = Mem_Alloc(sizeof(List));
	if (!list ) return 0;
	List_Init (list, paramBlock, &paramBlock->Link);
	List_InsertNode(list, paramBlock);
	return list;
	}

/********************************/
u8	ParamList_Delete ( ListPtr list )
	{
	ParamPtr	cursor;
	ParamPtr	kill;
	
	if(!list) return 0;
	
	cursor = list->Head;
	while(cursor)
		{
		kill = cursor;
		cursor = cursor->Link.Next;
		List_RemoveNode(list, kill);
		Param_Delete(kill);
		}
	Mem_Free(list);

	return 1;
	}

/********************************/
ListPtr	ParamList_New ( ParamPtr param )
	{
	ListPtr		list;
	
	list = Mem_Alloc(sizeof(List));
	if (!list ) return 0;
	List_Init (list, param, &param->Link);
	List_InsertNode(list, param);
	return list;
	}


