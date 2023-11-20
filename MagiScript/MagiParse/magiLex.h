#ifndef _MAGILEX_H
#define _MAGILEX_H

#include <mlex.h>

extern YYCONST yymlex_t YYNEAR magiLex;

#ifndef YYLEXNAME
#define YYLEXNAME magiLex
#endif

#define ST_COMMENT 2
#define ST_SLASHCOM 4
#define ST_TEXTER 6
#ifndef INITIAL
#define INITIAL 0
#endif

#endif
