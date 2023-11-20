#ifndef PARAMLIST_H
#define PARAMLIST_H

/********************************/
enum
	{
	PARAM_STRING,
	PARAM_NUMBER,
	PARAM_EXPR_FACEHERO,
	PARAM_EXPR_GAMESTATE,
	PARAM_EXPR_GAMECOUNT,
	PARAM_EXPR_NUMCONST,
	PARAM_EXPR_OPERATOR,
	PARAM_EXPR_WBANK,
	};

/********************************/
typedef struct Param
	{
	Link	Link;
	u8		Type;
	s32		Number;
	char*	String;
	
	struct Param*	Left;
	struct Param*	Right;
	
	} Param, *ParamPtr;

/********************************/
typedef struct ParamBlock
	{
	Link		Link;
	ListPtr		ParamList;
	
	u32			Line;
	char*		FileName;
	
	} ParamBlock, *ParamBlockPtr;

/********************************/
extern	List	paramList;

/********************************/
u8			Param_Compare	( ParamPtr param1, ParamPtr param2 );
u8			Param_Delete	( ParamPtr param );
ParamPtr	Param_New		( u8 type, char* string, s32 number, Ptr left, Ptr right );

u8				ParamBlock_Delete		( ParamBlockPtr paramBlock );
ParamBlockPtr	ParamBlock_New			( ListPtr paramList );

u8				ParamBlockList_Delete	( ListPtr list );
ListPtr			ParamBlockList_New		( ParamBlockPtr paramBlock );

u8				ParamList_Delete		( ListPtr list );
ListPtr			ParamList_New			( ParamPtr param );

#endif