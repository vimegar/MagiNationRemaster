#include	"tls_standard.h"
#include	"tls_standard_priv.h"


/********************************/
FILE*	errorStream		= 0;
FILE*	messageStream	= 0;

/********************************/
void	ErrorStream_Set ( FILE* stream )
	{
	errorStream = stream;
	}

/********************************/
void	MessageStream_Set ( FILE* stream )
	{
	messageStream = stream;
	}