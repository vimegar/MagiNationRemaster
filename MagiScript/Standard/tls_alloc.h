#ifndef	TLS_ALLOC_H
#define	TLS_ALLOC_H

/********************************/
Ptr		Mem_Alloc			( u32 size );
Ptr		Mem_AllocArray2D	( u32 size, u32 xSize, u32 ySize );
Ptr		Mem_AllocArray3D	( u32 size, u32 xSize, u32 ySize, u32 zSize );
void	Mem_Free			( Ptr obj );
void	Mem_FreeHandle		( Ptr* obj );

#endif
