/************************************************************
yycpdest.cpp
This file can be freely modified for the generation of
custom code.

Copyright (c) 1999-2000 Bumble-Bee Software Ltd.
************************************************************/

#include "cyacc.h"
#include <stdlib.h>

void yyparser::yydestroy()
{
	yycleanup();
	free(yysstackptr);
	yysstackptr = NULL;
	free(yysattributestackptr);
	yysattributestackptr = NULL;

	free(yylvalptr);
	yylvalptr = NULL;
	free(yyvalptr);
	yyvalptr = NULL;
}
