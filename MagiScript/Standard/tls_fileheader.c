#include	"tls_standard.h"
#include	"tls_standard_priv.h"


/********************************/
u8	FileHeader_Read ( BinFilePtr binFile, char** fileType, u32* version )
	{
	u32 length;
	char* string;

	BinFile_Read ( binFile, &length, sizeof ( u32 ) );

	if ( version ) ( *version ) = length;

	BinFile_Read ( binFile, &length, sizeof ( u32 ) );

	string = Mem_Alloc ( length );
	if ( !string ) return 0;

	BinFile_Read ( binFile, string, length );

	if ( fileType )	( *fileType ) = string;
	else			Mem_Free ( string );

	return 1;
	}

/********************************/
u8	FileHeader_Write ( BinFilePtr binFile, char* fileType, u32 version )
	{
	u32 length;

	BinFile_Write ( binFile, &version, sizeof ( u32 ) );

	length = String_Measure ( fileType );

	BinFile_Write ( binFile, &length, sizeof ( u32 ) );
	BinFile_Write ( binFile, fileType, length );

	return 1;
	}