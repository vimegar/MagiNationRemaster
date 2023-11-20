#ifndef _MAGIPACKLEX_H
#define _MAGIPACKLEX_H

#include <mlex.h>

extern YYCONST yymlex_t YYNEAR magiPackLex;

#ifndef YYLEXNAME
#define YYLEXNAME magiPackLex
#endif

#define ST_BYTE 2
#define ST_COLNCOMM 4
#define ST_WORD 6
#ifndef INITIAL
#define INITIAL 0
#endif

#endif
