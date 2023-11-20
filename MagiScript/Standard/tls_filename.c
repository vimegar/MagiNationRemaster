#include	"tls_standard.h"
#include	"tls_standard_priv.h"


/********************************/
char	pathBuffer [ FILENAME_MAXPATH ];
char*	nameBuffer = pathBuffer;

/********************************/
char*	FileName_Create ( char* path, char* name, char* extension )
	{
	_makepath ( pathBuffer, 0, path, name, extension );
	return String_Clone ( pathBuffer );
	}

/********************************/
char*	FileName_GetComplete ( char* fileName )
	{
	if ( _fullpath( pathBuffer, fileName, FILENAME_MAXPATH ) == NULL )
		return 0;

	return String_Clone ( pathBuffer );
	}

/********************************/
char*	FileName_GetExtension ( char* fileName )
	{
	if ( _fullpath( pathBuffer, fileName, FILENAME_MAXPATH ) == NULL )
		return 0;

	_splitpath( pathBuffer, 0, 0, 0, pathBuffer );
	return String_Clone ( pathBuffer );
	}

/********************************/
char*	FileName_GetName ( char* fileName )
	{
	char* cursor;
	char* complete;

	if ( !( complete = FileName_GetComplete ( fileName ) ) ) return 0;

	_splitpath( complete, 0, 0, pathBuffer, 0 );
	cursor = pathBuffer + ( String_Measure ( pathBuffer ) - 1 );
	_splitpath( complete, 0, 0, 0, cursor );

	Mem_Free ( complete );
	return String_Clone ( pathBuffer );
	}

/********************************/
char*	FileName_GetPath ( char* fileName )
	{
	char* cursor;
	char* complete;

	if ( !( complete = FileName_GetComplete ( fileName ) ) ) return 0;

	_splitpath( complete, pathBuffer, 0, 0, 0 );
	cursor = pathBuffer + ( String_Measure ( pathBuffer ) - 1 );
	_splitpath( complete, 0, cursor, 0, 0 );

	Mem_Free ( complete );
	return String_Clone ( pathBuffer );
	}

/********************************/
char*	FileName_SetExt ( char* fileName, char* ext )
	{
	u32		count;
	u32		stringSize;
	u32		extSize;
	char*	buffer;
	
	for(count = 0; (fileName[count] && (fileName[count] != '.')); count++);
	
	stringSize = count+1;
	extSize = String_Measure(ext)+1;
	
	buffer = Mem_Alloc(stringSize + extSize);
	if(!buffer) return 0;
	
	for(count = 0; (fileName[count] && (fileName[count] != '.')); count++)
		buffer[count] = fileName[count];
	
	buffer[count] = '.';
	count++;
	
	for(count = 0;ext[count]; count++)
		buffer[count+stringSize] = ext[count];

	buffer[count+stringSize] = 0;
	return buffer;
	}