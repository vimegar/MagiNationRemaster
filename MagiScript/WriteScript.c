#include "includes.h"

/********************************/
static u8	WriteScript_End			( void );
static u8	WriteScript_Globals		( void );
static u8	WriteScript_Header		( char* fileName );

/********************************/
List	commandTypeList;
FILE*	scriptFile;
FILE*	errFile;
FILE*	dumpFile;
u8		scriptFileError;

/********************************/
char*	gFileName;
u32		gLine;

/********************************/
static u8	WriteScript_End ( void )
	{
	fprintf(scriptFile,";********************************\n");
	fprintf(scriptFile,"\tEND\n");
	fprintf(scriptFile,";********************************");
	return 1;
	}

/********************************/
u8	WriteScript_Error ( char* message )
	{
	printf("ERROR in %s (Line %d): %s\n", gFileName, gLine, message);
	fprintf(errFile,"ERROR in %s (Line %d): %s\n", gFileName, gLine, message);
	scriptFileError = 1;
	return 1;
	}

/********************************/
static u8	WriteScript_Globals ( void )
	{
	StringNodePtr	cursor;
	
	fprintf(scriptFile,";********************************\n");
	fprintf(scriptFile,"; \tGLOBALS\n");
	fprintf(scriptFile,";********************************\n");
	
	for (cursor = globalList.Head; cursor; cursor = cursor->Link.Next)
		if(!StringList_Verify(&labelList, cursor->String))
			fprintf(scriptFile,"\tGLOBAL\t%s\n", cursor->String);
	
	fprintf(scriptFile,"\n");
	
	return 1;
	}

/********************************/
static u8	WriteScript_Header ( char* fileName )
	{
	fprintf(scriptFile,";Size:                           \n");
	fprintf(scriptFile,";********************************\n");
	fprintf(scriptFile,"; %s\n", fileName);
	fprintf(scriptFile,";********************************\n");
	fprintf(scriptFile,";\tAuthor:	MGI PARSE\n");
	fprintf(scriptFile,";\t(c)2000	Interactive Imagination\n");
	fprintf(scriptFile,";\tAll rights reserved\n");
	fprintf(scriptFile,"\n");

	if (dumpFile)
		{
		fprintf(dumpFile,";****************************************************************\n");
		fprintf(dumpFile,"; %s\n", fileName);
		fprintf(dumpFile,";****************************************************************\n");
		}

	return 1;
	}

/********************************/
u8	WriteScript_Write ( char* rootFileName )
	{
	ScriptNodePtr	scriptNode;
	char*			fullPath;
	char*			scriptFileName;

	fullPath = FileName_GetComplete(rootFileName);
	scriptFileName = FileName_SetExt(fullPath, "s");

	scriptFile = fopen(scriptFileName, "w");

	WriteScript_Header(scriptFileName);
	
	for(scriptNode = scriptList.Head;scriptNode;scriptNode = scriptNode->Link.Next)
		{
		gLine = scriptNode->Line;
		gFileName = scriptNode->FileName;
		((u8(*)(Ptr)) scriptNode->Write)(scriptNode->Data);
		}
	
	WriteScript_Globals();
	WriteScript_End();
	fclose(scriptFile);

	if(scriptFileError)
		remove(scriptFileName);
	else
		if(!Pack(scriptFileName))	printf("SIZING FAILED.\n");

	Mem_Free(fullPath);
	Mem_Free(scriptFileName);
	return 1;
	}
