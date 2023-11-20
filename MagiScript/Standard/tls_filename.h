#ifndef	TLS_FILENAME_H
#define	TLS_FILENAME_H

/********************************/
#define	FILENAME_MAXPATH	256

/********************************/
extern	char*	nameBuffer;

/********************************/
char*	FileName_Create			( char* path, char* name, char* extension );
char*	FileName_GetComplete	( char* fileName );
char*	FileName_GetExtension	( char* fileName );
char*	FileName_GetName		( char* fileName );
char*	FileName_GetPath		( char* fileName );
char*	FileName_SetExt			( char* fileName, char* ext );

#endif
