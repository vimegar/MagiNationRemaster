#include	"tls_standard.h"
#include	"tls_standard_priv.h"


/********************************/
u8	Directory_Create ( char* dirName )
	{
	if( _mkdir( dirName ) != 0 ) return 0;

	return 1;
	}

/********************************/
u8	Directory_Delete ( char* dirName )
	{
	if( _rmdir( dirName ) != 0 ) return 0;

	return 1;
	}

/********************************/
char*	Directory_GetCurrent ( void )
	{
	if( _getcwd( pathBuffer, _MAX_PATH ) == NULL ) return 0;

	return String_Clone ( pathBuffer );
	}

/********************************/
u8	Directory_ListFiles ( ListPtr stringList )
	{
	struct _finddata_t c_file;
	long hFile;

	if( (hFile = _findfirst( "*", &c_file )) == -1L ) return 0;

	do
		{
		if ( c_file.attrib & _A_SUBDIR ) continue;

		StringList_Add ( stringList, c_file.name );
		}
		while( _findnext( hFile, &c_file ) == 0 );

	_findclose( hFile );

	return 1;
	}

/********************************/
u8	Directory_ListSubDirs ( ListPtr stringList )
	{
	struct _finddata_t c_file;
	long hFile;

	if( (hFile = _findfirst( "*", &c_file )) == -1L ) return 0;

	do
		{
		if ( !( c_file.attrib & _A_SUBDIR ) ) continue;

		StringList_Add ( stringList, c_file.name );
		}
		while( _findnext( hFile, &c_file ) == 0 );

	_findclose( hFile );

	return 1;
	}

/********************************/
u8	Directory_SetCurrent ( char* pathName )
	{
	if ( _chdir( pathName ) != 0) return 0;
 
	return 1;
	}