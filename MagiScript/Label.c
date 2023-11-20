#include "includes.h"

/********************************/
u8 		Label_Delete	( ScriptNodePtr scriptNode );
u8 		Label_Write		( Ptr data );

/********************************/
u8 Label_Delete ( ScriptNodePtr scriptNode )
	{
	LabelPtr label;
	
	if(!scriptNode) return 0;
	
	label = scriptNode->Data;
	
	Mem_Free(label->ScriptNode.FileName);
	Mem_Free(label->Name);
	Mem_Free(label);
	
	return 1;
	}
	
/********************************/
u8 Label_New ( char* name )
	{
	LabelPtr	label;
	
	label = Mem_Alloc(sizeof(Label));
	if(!label) return 0;
	
	label->ScriptNode.Data = label;
	label->ScriptNode.Delete = Label_Delete;
	label->ScriptNode.Write = Label_Write;
	label->ScriptNode.Line = gLine;
	label->ScriptNode.FileName = String_Clone(gFileName);
	
	label->Name = String_Clone(name);
	
	StringList_Add(&labelList, name, 0);
	
	ScriptList_Add(&label->ScriptNode);
	return 1;
	}

/********************************/
u8 Label_Write ( Ptr data )
	{
	LabelPtr label = (LabelPtr)data;
	fprintf(scriptFile, ";********************************\n");
	fprintf(scriptFile, "%s\n", label->Name);

	//if(dumpFile)
	//	{
	//	fprintf(dumpFile, "\n%s\n", label->Name);
	//	}

	return 1;
	}