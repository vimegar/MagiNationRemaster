#ifndef	STRINGLIST_H
#define	STRINGLIST_H

/********************************/
typedef struct StringNode
	{
	Link	Link;

	u32		Size;
	char*	String;

	} StringNode, *StringNodePtr;

/********************************/
StringNodePtr	StringList_Add		( ListPtr list, char* string );
u8				StringList_Delete	( ListPtr list, char* string );
u8				StringList_Empty	( ListPtr list );
char*			StringList_Find		( ListPtr list, char* string );
u8				StringList_Init		( ListPtr list );
u8				StringList_Print	( ListPtr list );

#endif
