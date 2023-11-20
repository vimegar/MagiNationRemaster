#ifndef	TLS_DIRECTORY_H
#define	TLS_DIRECTORY_H

/********************************/
u8		Directory_Create		( char* dirName );
u8		Directory_Delete		( char* dirName );
char*	Directory_GetCurrent	( void );
u8		Directory_ListFiles		( ListPtr stringList );
u8		Directory_ListSubDirs	( ListPtr stringList );
u8		Directory_SetCurrent	( char* pathName );

#endif
