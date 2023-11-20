#ifndef	TLS_FILEHEADER_H
#define	TLS_FILEHEADER_H

/********************************/
u8		FileHeader_Read		( BinFilePtr binFile, char** fileType, u32* version );
u8		FileHeader_Write	( BinFilePtr binFile, char* fileType, u32 version );

#endif
