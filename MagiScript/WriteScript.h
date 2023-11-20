#ifndef WRITESCRIPT_H
#define WRITESCRIPT_H

/********************************/
extern	List	commandTypeList;
extern	FILE*	scriptFile;
extern	FILE*	errFile;
extern	FILE*	dumpFile;
extern	u8		scriptFileError;

/********************************/
extern	char*	gFileName;
extern	u32		gLine;

/********************************/
u8		WriteScript_Error			( char* message );
u8		WriteScript_Write			( char* fileName );

#endif