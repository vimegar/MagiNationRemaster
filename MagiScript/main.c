#include "parser.h"

/********************************/
int	main ( int totalCommands, char **strings )
	{
	char* rootFileName;
	
	if ( totalCommands < 2 )
		{
		WriteCommand_PrintCmds ();
		return 0;
		}
	else						rootFileName = strings[1];
	
	CommandTypeList_Init();
	VarDecList_Init();
	ScriptList_Init();
	StringList_Init();
	
	printf("PARSING FILE: %s\n", rootFileName);
	errFile = fopen("mgiERROR.err", "a");
	dumpFile = fopen("mgiDUMP.txt", "r");
	
	if(dumpFile)
		{
		freopen("mgiDUMP.txt", "a", dumpFile);
		printf("DUMP FILE OPENED.\n");
		}

	WriteCommand_Init();
	if(!Parse(rootFileName))
		printf("PARSE FAILED.\n");
	else
		WriteScript_Write(rootFileName);

	fclose(errFile);
	fclose(dumpFile);
	printf("PARSE COMPLETE.\n\n");
	
	CommandTypeList_Empty();
	VarDecList_Empty();
	ScriptList_Empty();
	StringList_Empty();

	return 0;
	}