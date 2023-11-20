#ifndef	BITMAP_H
#define	BITMAP_H

/********************************/
typedef struct	Bitmap
	{
	u16		Width;
	u16		Height;

	RGBAColor**	Pixels;

	} Bitmap, *BitmapPtr;

/********************************/
void	Bitmap_Empty	( BitmapPtr bitmap );
u8		Bitmap_Init		( BitmapPtr bitmap, u16 width, u16 height );
u8		Bitmap_Read		( BitmapPtr bitmap, char* fileName );
Ptr		Bitmap_Unpack	( BinFilePtr binFile, void(**free)(Ptr) );
u8		Bitmap_Write	( BitmapPtr bitmap, char* fileName );

#endif
