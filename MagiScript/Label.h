#ifndef LABEL_H
#define LABEL_H

/********************************/
typedef struct Label
	{
	ScriptNode	ScriptNode;
	
	char*		Name;
	
	} Label, *LabelPtr;

/********************************/
u8		Label_New	( char* name );

#endif