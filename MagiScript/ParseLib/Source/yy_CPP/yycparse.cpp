/************************************************************
yycparse.cpp
This file can be freely modified for the generation of
custom code.

Copyright (c) 1999-2000 Bumble-Bee Software Ltd.
************************************************************/

#include "cyacc.h"

int yyparser::yyparse()
{
	int n = yysetup();
	if (n != 0) {
		return n;
	}
	return yywork();
}
