/************************************************************
yyswrap.c
This file can be freely modified for the generation of
custom code.

Copyright (c) 1999-2000 Bumble-Bee Software Ltd.
************************************************************/

#include "lex.h"

#ifdef YYPROTOTYPE
int YYCDECL yywrap(void)
#else
int YYCDECL yywrap()
#endif
{
	return 1;
}
