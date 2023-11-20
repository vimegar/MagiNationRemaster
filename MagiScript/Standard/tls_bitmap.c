#include	"tls_standard.h"
#include	"tls_standard_priv.h"

/********************************/
void	Bitmap_Free		( BitmapPtr bitmap );

/********************************/
void	Bitmap_Empty ( BitmapPtr bitmap )
	{
	Mem_Free ( bitmap->Pixels );
	bitmap->Pixels = 0;
	}

/********************************/
void	Bitmap_Free ( BitmapPtr bitmap )
	{
	Bitmap_Empty ( bitmap );
	Mem_Free ( bitmap );
	}

/********************************/
u8	Bitmap_Init ( BitmapPtr bitmap, u16 width, u16 height )
	{
	bitmap->Pixels = Mem_AllocArray2D ( sizeof ( RGBAColor ), width, height );
	if ( !bitmap->Pixels ) return 0;

	bitmap->Width = width;
	bitmap->Height = height;

	return 1;
	}

/********************************/
u8	Bitmap_Read ( BitmapPtr bitmap, char* fileName )
	{
	BinFile		binFile;
	u32			xCount, yCount;
	RGBAColor	pixel;

	if ( !BinFile_Open ( &binFile, fileName ) ) return 0;

	// WIDTH
	BinFile_Read ( &binFile, &bitmap->Width, sizeof ( short ));
	// HEIGHT
	BinFile_Read ( &binFile, &bitmap->Height, sizeof ( short ));

	Bitmap_Init ( bitmap, bitmap->Width, bitmap->Height );

	for ( yCount = 0; yCount < bitmap->Height; yCount++ )
		for ( xCount = 0; xCount < bitmap->Width; xCount++ )
			{
			BinFile_Read ( &binFile, &pixel.Red, sizeof ( u8 ));
			BinFile_Read ( &binFile, &pixel.Green, sizeof ( u8 ));
			BinFile_Read ( &binFile, &pixel.Blue, sizeof ( u8 ));
			BinFile_Read ( &binFile, &pixel.Alpha, sizeof ( u8 ));

			bitmap->Pixels [ xCount ] [ yCount ] = pixel;
			}

	BinFile_Close ( &binFile );

	return 1;
	}

/********************************/
Ptr	Bitmap_Unpack ( BinFilePtr binFile, void(**free)(Ptr) )
	{
	BitmapPtr	bitmap;
	u32			xCount, yCount;
	RGBAColor	pixel;

	(*free) = (void(*)(void*))Bitmap_Free;

	bitmap = Mem_Alloc ( sizeof ( Bitmap ));
	if ( !bitmap ) return 0;

	// WIDTH
	BinFile_Read ( binFile, &bitmap->Width, sizeof ( short ));
	// HEIGHT
	BinFile_Read ( binFile, &bitmap->Height, sizeof ( short ));

	if ( !Bitmap_Init ( bitmap, bitmap->Width, bitmap->Height ))
		{
		Bitmap_Free ( bitmap );
		return 0;
		}

	for ( yCount = 0; yCount < bitmap->Height; yCount++ )
		for ( xCount = 0; xCount < bitmap->Width; xCount++ )
			{
			BinFile_Read ( binFile, &pixel.Red, sizeof ( u8 ));
			BinFile_Read ( binFile, &pixel.Green, sizeof ( u8 ));
			BinFile_Read ( binFile, &pixel.Blue, sizeof ( u8 ));
			BinFile_Read ( binFile, &pixel.Alpha, sizeof ( u8 ));

			bitmap->Pixels [ xCount ] [ yCount ] = pixel;
			}

	return bitmap;
	}

/********************************/
u8	Bitmap_Write ( BitmapPtr bitmap, char* fileName )
	{
	BinFile	binFile;
	u32		xCount, yCount;
	RGBAColor	pixel;

	if ( !BinFile_Create ( &binFile, fileName ) ) return 0;

	// WIDTH
	BinFile_Write ( &binFile, &bitmap->Width, sizeof ( short ));
	// HEIGHT
	BinFile_Write ( &binFile, &bitmap->Height, sizeof ( short ));

	for ( yCount = 0; yCount < bitmap->Height; yCount++ )
		for ( xCount = 0; xCount < bitmap->Width; xCount++ )
			{
			pixel = bitmap->Pixels [ xCount ] [ yCount ];

			BinFile_Write ( &binFile, &pixel.Red, sizeof ( u8));
			BinFile_Write ( &binFile, &pixel.Green, sizeof ( u8));
			BinFile_Write ( &binFile, &pixel.Blue, sizeof ( u8));
			BinFile_Write ( &binFile, &pixel.Alpha, sizeof ( u8));
			}

	BinFile_Close ( &binFile );

	return 1;
	}