/************************************************************
yycsyner.cpp
This file can be freely modified for the generation of
custom code.

Copyright (c) 1999-2000 Bumble-Bee Software Ltd.
************************************************************/

#include "cyacc.h"

void yyparser::yysyntaxerror()
{
	yyerror("syntax error");
}
