#include	"tls_standard.h"
#include	"tls_standard_priv.h"


/********************************/
Ptr	Mem_Alloc ( u32 size )
	{
	Ptr data;
	data = calloc ( 1, size );
	if ( !data )
		Error_Print ( "ERROR: Memory Allocation\n" );

	return data;
	}

/********************************/
Ptr	Mem_AllocArray2D ( u32 size, u32 xSize, u32 ySize )
	{
	Ptr	*array;
	u32	xElement;
	u32	x;
	u32	yStep;
	
	xElement =  (xSize * sizeof(Ptr));

	array = (Ptr *)Mem_Alloc((size * xSize * ySize) + xElement);
	if(!array)
		{
		Error_Print ( "ERROR: 2D Array Allocation" );
		return 0;
		}

	xElement += (u32)array;
	yStep = (size * ySize);

	for(x = 0; x < xSize; x++)
		{
		array[x] = (Ptr)xElement;
		xElement += yStep;
		}

	return (Ptr)array;

	}

/********************************/
Ptr	Mem_AllocArray3D ( u32 size, u32 xSize, u32 ySize, u32 zSize )
	{
	Ptr	**array;
	u32	xElement;
	u32	zElement;
	u32	x;
	u32	y;
	u32	yStep;
	u32	zStep;

	zElement = ((xSize + (xSize * ySize)) * sizeof(Ptr));

	array = (Ptr **)Mem_Alloc((size * xSize * ySize * zSize) + zElement);
	if(!array)
		{
		Error_Print ( "ERROR: 3D Array Allocation" );
		return 0;
		}

	xElement = (u32)array + (xSize * sizeof(Ptr));
	zElement += (u32)array;

	yStep = (sizeof(Ptr) * ySize);
	zStep = (size * zSize);

	for(x = 0; x < xSize; x++)
		{
		array[x] = (Ptr)xElement;
		xElement += yStep;

		for(y = 0; y < ySize; y++)
			{
			array[x][y] = (Ptr)zElement;
			zElement += zStep;
			}
		}

	return (Ptr)array;
	}

/********************************/
void	Mem_Free ( Ptr obj )
	{
	free ( obj );
	}

/********************************/
void	Mem_FreeHandle ( Ptr* obj )
	{
	if ( !( *obj ) ) return;
	Mem_Free ( *obj );
	( *obj ) = 0;
	}