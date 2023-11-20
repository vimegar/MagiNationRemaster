#include	"tls_standard.h"
#include	"tls_standard_priv.h"


/********************************/
char*	String_Clone ( char* string )
	{
	u32		size;
	char*	newString;

	if(!string) return 0;

	size = strlen ( string );
	newString = Mem_Alloc ( size + 1 );
	if ( !newString )
		{
		Error_Print ( "ERROR: String Clone\n" );
		return 0;
		}

	newString [ size ] = 0;

	while ( size )
		{
		size--;
		newString [ size ] = string [ size ];
		}

	return newString;
	}

/********************************/
u8	String_Compare ( char* string1, char* string2 )
	{
	if ( !strcmp ( string1, string2 ) ) return 1;
	return 0;
	}

/********************************/
u32	String_Measure ( char* string )
	{
	u32 count;

	for ( count = 0; ( ( string [ count ] ) &&
						( string [ count ] != '\n' ) &&
						( string [ count ] != '\0' ) ); count++ );
	count++;

	return count;
	}

/********************************/
u8	String_WildCompare ( char* string, char* key, u8 wildCard )
	{
	char*	currentKey;
	char*	nextKey;
	char*	cursor;
	u32		length;
	u8		wild;
	u8		match;

	if ( !( string && key ) ) return 0;
	if ( !key [ 0 ] ) return 0;

	currentKey = key;
	cursor = string;
	match = 1;
	while ( match )
		{
		wild = 0;
		while ( currentKey [ 0 ] == wildCard )
			{
			currentKey++;
			wild = 1;
			}

		nextKey = strchr ( currentKey, wildCard );
		if ( nextKey ) nextKey [ 0 ] = 0;

		length = strlen ( currentKey );
		if ( wild )
			{
			cursor = strstr ( cursor, currentKey );
			if ( !cursor ) match = 0;
			else cursor = ( char* )( ( u32 )cursor + length );
			}
		else
			{
			if ( ( !length ) && ( cursor [ 0 ] ) ) match = 0;
			if ( strncmp ( currentKey, cursor, length ) ) match = 0;
			else cursor = ( char* )( ( u32 )cursor + length );
			}

		if ( !length ) break;

		currentKey = ( char* )( ( u32 )currentKey + length ); 
		if ( nextKey ) nextKey [ 0 ] = wildCard;
		}	

	if ( nextKey ) nextKey [ 0 ] = wildCard;
	return match;
	}