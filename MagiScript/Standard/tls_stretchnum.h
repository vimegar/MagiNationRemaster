#ifndef	TLS_STRETCHNUM_H
#define	TLS_STRETCHNUM_H

/********************************/
#define		STRETCHINT_MAXBYTES		sizeof ( s32 )
#define		STRETCHINT_BUFFMASK		0x7F
#define		STRETCHINT_BITSHIFT		7
#define		STRETCHINT_MAX32		268435455

/********************************/
u8	StretchInt_ReadMax32	( BinFilePtr binFile, u32* integer );
u8	StretchInt_WriteMax32	( BinFilePtr binFile, u32 integer );

#endif
