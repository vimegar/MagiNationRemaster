%{
/********************************/
#include "includes.h"
#include "magiPackLex.h"
#include "magiPackParse.h"
#include "milconv.h"

#define	YYMERROR magiPackError
%}

%name			magiPackParse
%token			FINI


%%

/********************************/
// FILE
file:			fileGuts
	|			file fileGuts			
	;

fileGuts:		FINI			{	yymexit(yy,1);	}
	;

%%

/********************************/
void	magiPackError ( yymparse_t* yy, const char* text )
	{
	printf ("There are no errors.\n");
	}

