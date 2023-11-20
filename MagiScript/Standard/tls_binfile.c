#include	"tls_standard.h"
#include	"tls_standard_priv.h"


/********************************/
static StreamPtr	BinFile_FindStream		( char* fileName );
static StreamPtr	BinFile_GetStream		( char* fileName );
static u8			BinFile_InitFileSystem	( void );
static u8			BinFile_ReleaseStream	( char* fileName );

/********************************/
static	List	streamList;
static	u8		initFlag	= 0;

/********************************/
u8	BinFile_Close ( BinFilePtr binFile )
	{
	u8 error;

	if ( !binFile ) return 0;

	if ( binFile->FinalWrite )	error = binFile->FinalWrite ( binFile );
	else						error = 1;

	BinFile_ReleaseStream ( binFile->Stream->FileName );

	return error;
	}

/********************************/
u8	BinFile_CopyBytes ( BinFilePtr source, BinFilePtr dest, u32 size )
	{
	u32 count;
	u8	buffer;

	for ( count = 0; count < size; count++ )
		{
		BinFile_Read ( source, &buffer, 1 );
		BinFile_Write ( dest, &buffer, 1 );
		}

	return 1;
	}

/********************************/
u8	BinFile_Create ( BinFilePtr binFile, char* fileName )
	{
	BinFile_InitFileSystem ( );

	binFile->Stream = 0;
	binFile->FinalWrite = 0;
	binFile->UserData = 0;

	binFile->Stream = BinFile_GetStream ( fileName );
	if ( !binFile->Stream ) return 0;
	if ( binFile->Stream->Port )
		fclose ( binFile->Stream->Port );

	binFile->Stream->Port = fopen ( fileName, "wb+" );
	if ( !binFile->Stream->Port )
		{
		BinFile_ReleaseStream ( fileName );
		return 0;
		}

	binFile->Stream->Size = 0;
	binFile->Cursor = 0;
	
	return 1;
	}

/********************************/
static StreamPtr	BinFile_FindStream ( char* fileName )
	{
	StreamPtr stream;

	if ( !fileName ) return 0;

	stream = streamList.Head;
	while ( stream )
		{
		if ( stream->FileName )
			if ( !strcmp ( stream->FileName, fileName ) ) return stream;

		stream = stream->Link.Next;
		}

	return 0;
	}

/********************************/
u32	BinFile_GetCursor ( BinFilePtr binFile )
	{
	return binFile->Cursor;
	}

/********************************/
u32	BinFile_GetSize ( BinFilePtr binFile )
	{
	long int size;

	if ( !binFile->Stream->Port ) return 0;

	if ( fseek ( binFile->Stream->Port, 0, SEEK_END ) ) return 0;
	size = ftell ( binFile->Stream->Port );	

	if ( size < 0 ) return 0;

	return ( u32 )size;
	}

/********************************/
static StreamPtr	BinFile_GetStream ( char* fileName )
	{
	StreamPtr	stream = 0;
	u32			length;

	stream = BinFile_FindStream ( fileName );
	if ( stream ) return stream;

	length = strlen ( fileName ) + 1;
	stream = Mem_Alloc ( sizeof ( Stream ) + length );
	if ( !stream ) return 0;

	stream->RefCount = 1;
	stream->FileName = ( char* )(( u32 )stream + sizeof ( Stream ));
	strcpy ( stream->FileName, fileName );

	List_InsertNode ( &streamList, stream );

	return stream;
	}

/********************************/
static u8	BinFile_InitFileSystem ( void )
	{
	StreamPtr stream = 0;

	if ( !initFlag )
		{
		initFlag = 1;
		List_Init ( &streamList, stream, &stream->Link );
		}

	return 1;
	}

/********************************/
u8	BinFile_Open ( BinFilePtr binFile, char* fileName )
	{
	BinFile_InitFileSystem ( );

	binFile->Stream = 0;
	binFile->FinalWrite = 0;
	binFile->UserData = 0;

	binFile->Stream = BinFile_GetStream ( fileName );
	if ( !binFile->Stream ) return 0;
	if ( !binFile->Stream->Port )
		{
		binFile->Stream->Port = fopen ( fileName, "rb+" );
		binFile->Stream->Size = BinFile_GetSize ( binFile );
		}

	if ( !binFile->Stream->Port )
		{
		BinFile_ReleaseStream ( fileName );
		return 0;
		}

	binFile->Cursor = 0;

	return 1;
	}

/********************************/
u8	BinFile_Read ( BinFilePtr binFile, Ptr buffer, u32 size )
	{
	u32	read;
	u8	pad = 0;

	if ( ( binFile->Cursor + size ) > binFile->Stream->Size ) return 0;

	if ( fseek ( binFile->Stream->Port, binFile->Cursor, SEEK_SET ) ) return 0;

	if ( buffer ) read = fread ( buffer, size, 1, binFile->Stream->Port );
	else
		for ( read = 0; read < size; read++ )
			if ( !fread ( &pad, 1, 1, binFile->Stream->Port ) )break;

	binFile->Cursor += size;

	if ( read != size ) return 0;
	return 1;
	}

/********************************/
static u8	BinFile_ReleaseStream ( char* fileName )
	{
	StreamPtr	stream;

	if ( !fileName ) return 0;

	stream = BinFile_FindStream ( fileName );
	if ( stream )
		{
		stream->RefCount--;

		if ( !stream->RefCount )
			{
			List_RemoveNode ( &streamList, stream );
			if ( stream->Port ) fclose ( stream->Port );
			Mem_Free ( stream );
			}
		}

	return 1;
	}

/********************************/
u8	BinFile_SetCursor ( BinFilePtr binFile, u32 offset )
	{
	if ( offset < binFile->Stream->Size )	binFile->Cursor = offset;
	else									binFile->Cursor = binFile->Stream->Size;

	return 1;
	}

/********************************/
u8	BinFile_Write ( BinFilePtr binFile, Ptr buffer, u32 size )
	{
	u32	written;
	u8	pad = 0;

	if ( fseek ( binFile->Stream->Port, binFile->Cursor, SEEK_SET ) ) return 0;

	if ( buffer ) written = fwrite ( buffer, size, 1, binFile->Stream->Port );
	else
		for ( written = 0; written < size; written++ )
			if ( !fwrite ( &pad, 1, 1, binFile->Stream->Port ) )break;

	binFile->Cursor += size;
	if ( binFile->Cursor > binFile->Stream->Size ) binFile->Stream->Size = binFile->Cursor;

	if ( written != size ) return 0;
	return 1;
	}
