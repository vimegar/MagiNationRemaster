#ifndef SCRIPTLIST_H
#define SCRIPTLIST_H

/********************************/
typedef struct ScriptNode
	{
	Link	Link;
	Ptr		Data;
	Ptr		Write;		// u8(*Write)(Ptr data);
	Ptr		Delete;		// u8(*Delete)(ScriptNodePtr scriptNode);
	
	u32		Line;
	char*	FileName;
	
	} ScriptNode, *ScriptNodePtr;

/********************************/
extern	List	scriptList;
extern	u32		paramBlockCounter;
extern	u32		paramCounter;

/********************************/
u8		ScriptList_Add		( ScriptNodePtr scriptNode );
u8		ScriptList_Empty	( );
u8		ScriptList_Init		( );

#endif