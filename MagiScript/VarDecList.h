#ifndef VARDECLIST_H
#define VARDECLIST_H

/********************************/
enum
	{
	VARDEC_BIT,
	VARDEC_BYTE,
	VARDEC_WORD,
	};

/********************************/
typedef struct VarDec
	{
	Link			Link;
	
	u8				Type;
	u16				Base;
	u8				Mask;
	char*			Name;
	char*			String;
	
	} VarDec, *VarDecPtr;

/********************************/
u8			VarDecList_AddBit	( char* name, char* string, u16 base, u8 mask );
u8			VarDecList_AddByte	( char* name, char* string, u16 base );
u8			VarDecList_AddWord	( char* name, char* string, u16 base );
u8			VarDecList_Empty	( );
VarDecPtr	VarDecList_Find		( char* name );
u8			VarDecList_Init		( );

#endif