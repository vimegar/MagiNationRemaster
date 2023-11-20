#include "includes.h"

/********************************/
void	StringNode_Free	( StringNodePtr* stringNode );

/********************************/
List	equateList;
List	fileList;
List	globalList;
List	labelList;

/********************************/
u8	StringList_Add ( ListPtr list, char* string, s32 number )
	{
	StringNodePtr	stringNode;

	if(StringList_SetNumber(list, string, number)) return 1;

	stringNode = Mem_Alloc(sizeof(StringNode));
	if(!stringNode) return 0;

	stringNode->String = String_Clone(string);
	stringNode->Number = number;

	List_InsertNode(list, stringNode);

	return 1;
	}

/********************************/
u8	StringList_Empty ( void )
	{
	List_Empty(&equateList, StringNode_Free);
	List_Empty(&fileList, StringNode_Free);
	List_Empty(&globalList, StringNode_Free);
	List_Empty(&labelList, StringNode_Free);

	return 1;
	}

/********************************/
s32	StringList_GetNumber ( ListPtr list, char* string )
	{
	StringNodePtr stringNode;
	
	stringNode = list->Head;
	while (stringNode)
		{
		if(String_Compare(stringNode->String, string)) return stringNode->Number;
		stringNode = stringNode->Link.Next;
		}
	return 0;
	}

/********************************/
u8	StringList_Init ( void )
	{
	StringNodePtr	stringNode = 0;
	
	List_Init(&equateList, stringNode, &stringNode->Link);
	List_Init(&fileList, stringNode, &stringNode->Link);
	List_Init(&globalList, stringNode, &stringNode->Link);
	List_Init(&labelList, stringNode, &stringNode->Link);

	return 1;
	}

/********************************/
u8	StringList_SetNumber ( ListPtr list, char* string, s32 number )
	{
	StringNodePtr stringNode;

	stringNode = list->Head;
	while (stringNode)
		{
		if(String_Compare(stringNode->String, string))
			{
			stringNode->Number = number;
			return 1;
			}
		stringNode = stringNode->Link.Next;
		}
	return 0;
	}

/********************************/
u8	StringList_Verify ( ListPtr list, char* string )
	{
	StringNodePtr stringNode;
	
	stringNode = list->Head;
	while (stringNode)
		{
		if(String_Compare(stringNode->String, string)) return 1;
		stringNode = stringNode->Link.Next;
		}
	return 0;
	}

/********************************/
void	StringNode_Free ( StringNodePtr* stringNode )
	{
	if ((*stringNode)->String) Mem_Free((*stringNode)->String);
	Mem_Free(*stringNode);
	(*stringNode) = 0;
	}