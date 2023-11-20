#include "includes.h"

/********************************/
u8	VarDecList_Add	( char* name, u8 type, char* string, u16 base, u8 mask );

/********************************/
static	List	varDecList;

/********************************/
u8	VarDecList_Add ( char* name, u8 type, char* string, u16 base, u8 mask )
	{
	VarDecPtr	varDec;
	
	varDec = Mem_Alloc(sizeof(VarDec));
	if(!varDec) return 0;
	
	varDec->Name = String_Clone(name);
	varDec->String = String_Clone(string);
	varDec->Type = type;
	varDec->Base = base;
	varDec->Mask = mask;
	
	List_InsertNode(&varDecList, varDec);
	
	return 1;
	}

/********************************/
u8	VarDecList_AddBit ( char* name, char* string, u16 base, u8 mask )
	{
	sprintf(nameBuffer,"Variable %s previously defined.",name); 
	if(VarDecList_Find(name)) return WriteScript_Error(nameBuffer);
	return VarDecList_Add(name, VARDEC_BIT, string, base, mask);
	}

/********************************/
u8	VarDecList_AddByte ( char* name, char* string, u16 base )
	{
	sprintf(nameBuffer,"Variable %s previously defined.",name); 
	if(VarDecList_Find(name)) return WriteScript_Error(nameBuffer);
	return VarDecList_Add(name, VARDEC_BYTE, string, base, 0);
	}

/********************************/
u8	VarDecList_AddWord ( char* name, char* string, u16 base )
	{
	sprintf(nameBuffer,"Variable %s previously defined.",name); 
	if(VarDecList_Find(name)) return WriteScript_Error(nameBuffer);
	return VarDecList_Add(name, VARDEC_WORD, string, base, 0);
	}

/********************************/
u8	VarDecList_Empty ( )
	{
	VarDecPtr	cursor;
	VarDecPtr	kill;
	
	cursor = varDecList.Head;
	while(cursor)
		{
		kill = cursor;
		cursor = cursor->Link.Next;
		List_RemoveNode(&varDecList, kill);
		Mem_Free(kill->Name);
		Mem_Free(kill->String);
		Mem_Free(kill);
		}
	
	return 1;
	}

/********************************/
VarDecPtr	VarDecList_Find ( char* name )
	{
	VarDecPtr	cursor;
	
	cursor = varDecList.Head;
	while(cursor)
		{
		if(String_Compare(cursor->Name, name)) return cursor;
		cursor = cursor->Link.Next;
		}
		
	return 0;
	}

/********************************/
u8	VarDecList_Init ( )
	{
	VarDecPtr	varDec = 0;
	
	List_Init (&varDecList, varDec, &varDec->Link);

	return 1;
	}
