#ifndef	TLS_ERRSTREAM_H
#define	TLS_ERRSTREAM_H

/********************************/
#define	Error_Print( x )	( ( errorStream ) ? fprintf ( errorStream, x ): 0  )
#define	Message_Print( x )	( ( messageStream ) ? fprintf ( messageStream, x ) : 0 )

/********************************/
extern	FILE*	errorStream;
extern	FILE*	messageStream;

/********************************/
void	ErrorStream_Set		( FILE* stream );
void	MessageStream_Set	( FILE* stream );

#endif
