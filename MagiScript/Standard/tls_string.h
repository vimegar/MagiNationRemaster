#ifndef	TLS_STRING_H
#define	TLS_STRING_H

/********************************/
char*	String_Clone		( char* string );
u8		String_Compare		( char* string1, char* string2 );
u32		String_Measure		( char* string );
u8		String_WildCompare	( char* string, char* key, u8 wildCard );

#endif
