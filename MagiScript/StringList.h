#ifndef STRINGLIST_H
#define STRINGLIST_H

/********************************/
typedef struct StringNode
	{
	Link			Link;
	char*			String;
	s32				Number;
	
	} StringNode, *StringNodePtr;

/********************************/
extern	List	equateList;
extern	List	fileList;
extern	List	globalList;
extern	List	labelList;

/********************************/
u8		StringList_Add			( ListPtr list, char* string, s32 number );
u8		StringList_Empty		( void );
s32		StringList_GetNumber	( ListPtr list, char* string );
u8		StringList_Init			( void );
u8		StringList_SetNumber	( ListPtr list, char* string, s32 number );
u8		StringList_Verify		( ListPtr list, char* string );

#endif