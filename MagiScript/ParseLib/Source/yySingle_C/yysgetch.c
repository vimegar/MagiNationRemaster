/************************************************************
yysgetch.c
This file can be freely modified for the generation of
custom code.

Copyright (c) 1999-2000 Bumble-Bee Software Ltd.
************************************************************/

#include <stdio.h>
#include "lex.h"

#ifdef YYPROTOTYPE
int YYCDECL yygetchar(void)
#else
int YYCDECL yygetchar()
#endif
{
	yyassert(yyin != NULL);
	return getc(yyin);
}
