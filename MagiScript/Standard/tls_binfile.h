#ifndef	TLS_BINFILE_H
#define	TLS_BINFILE_H


/********************************/
typedef struct BinFile
	{
	struct	Stream*		Stream;
	u32					Cursor;

	u8		( *FinalWrite ) ( struct BinFile* binFile );
	Ptr		UserData;

	} BinFile, *BinFilePtr;

/********************************/
u8		BinFile_Close		( BinFilePtr binFile );
u8		BinFile_CopyBytes	( BinFilePtr source, BinFilePtr dest, u32 size );
u8		BinFile_Create		( BinFilePtr binFile, char* fileName );
u32		BinFile_GetCursor	( BinFilePtr binFile );
u32		BinFile_GetSize		( BinFilePtr binFile );
u8		BinFile_Open		( BinFilePtr binFile, char* fileName );
u8		BinFile_Read		( BinFilePtr binFile, Ptr buffer, u32 size );
u8		BinFile_SetCursor	( BinFilePtr binFile, u32 offset );
u8		BinFile_Write		( BinFilePtr binFile, Ptr buffer, u32 size );

#endif

