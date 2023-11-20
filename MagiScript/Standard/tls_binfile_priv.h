#ifndef	TLS_BINFILE_PRIV_H
#define	TLS_BINFILE_PRIV_H

/********************************/
typedef struct Stream
	{
	Link	Link;
	char*	FileName;
	u32		RefCount;
	u32		Size;
	FILE*	Port;

	} Stream, *StreamPtr;

#endif