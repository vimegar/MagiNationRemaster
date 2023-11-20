#include <mlex.h>

#define YYLEXFAST
/* #line 1 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */

/********************************/
#include "includes.h"
#include "magiLex.h"
#include "magiParse.h"
#include "milconv.h"


/* repeated because of possible precompiled header */
#include <mlex.h>

#define YYLEXFAST
#include "magiLex.h"

#ifndef YYTEXT_SIZE
#define YYTEXT_SIZE 100
#endif
#ifndef YYUNPUT_SIZE
#define YYUNPUT_SIZE YYTEXT_SIZE
#endif

/* variables */
#ifndef YYMIN
#ifndef YYNINITSTREAM
#define YYMIN stdin
#else
#define YYMIN NULL
#endif
#endif

#ifndef YYMOUT
#ifndef YYNINITSTREAM
#define YYMOUT stdout
#else
#define YYMOUT NULL
#endif
#endif

#ifndef YYMLEXERR
#ifndef YYNINITSTREAM
#define YYMLEXERR stderr
#else
#define YYMLEXERR NULL
#endif
#endif

#ifndef YYMLEXDEBUGOUT
#ifndef YYNINITSTREAM
#define YYMLEXDEBUGOUT stdout
#else
#define YYMLEXDEBUGOUT NULL
#endif
#endif

/* pointers to functions */
#ifndef YYMINPUT
#define YYMINPUT yyminput
#endif
#ifndef YYMOUTPUT
#define YYMOUTPUT yymoutput
#endif
#ifndef YYMUNPUT
#define YYMUNPUT yymunput
#endif
#ifndef YYMGETCHAR
#define YYMGETCHAR yymgetchar
#endif
#ifndef YYMWRAP
#define YYMWRAP yymwrap
#endif
#ifndef YYMTEXTOVERFLOW
#define YYMTEXTOVERFLOW yymtextoverflow
#endif
#ifndef YYMUNPUTOVERFLOW
#define YYMUNPUTOVERFLOW yymunputoverflow
#endif
#ifndef YYMLEXDATA
#define YYMLEXDATA NULL
#endif

#ifndef YYNBORLANDWARN
#ifdef __BORLANDC__
#pragma warn -rch		/* <warning: unreachable code> off */
#endif
#endif

#ifdef YYPROTOTYPE
static int YYCDECL yylexaction(yymlex_t YYFAR *yy, int action)
#else
static int YYCDECL yylexaction(yy, action)
yymlex_t YYFAR *yy;
int action;
#endif
{
/* #line 17 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */

YYSTYPE *yymlvalptr = (YYSTYPE *) yy->yymdata;
yyassert(yymlvalptr != NULL);
#define yylval (*yymlvalptr)

	yy->yymreturnflg = 1;
	switch (action) {
	case 1:
		{
/* #line 25 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return BIT;
		}
		break;
	case 2:
		{
/* #line 26 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return BYTE;
		}
		break;
	case 3:
		{
/* #line 27 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return EQUATE;
		}
		break;
	case 4:
		{
/* #line 28 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return INCLUDE;
		}
		break;
	case 5:
		{
/* #line 29 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return WORD;
		}
		break;
	case 6:
		{
/* #line 31 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return AND;
		}
		break;
	case 7:
		{
/* #line 32 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return BITAND;
		}
		break;
	case 8:
	case 9:
		{
/* #line 34 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return OR;
		}
		break;
	case 10:
		{
/* #line 35 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return NOTEQU;
		}
		break;
	case 11:
		{
/* #line 36 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return NOT;
		}
		break;
	case 12:
		{
/* #line 37 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return INC;
		}
		break;
	case 13:
		{
/* #line 38 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return ADD;
		}
		break;
	case 14:
		{
/* #line 39 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return DEC;
		}
		break;
	case 15:
		{
/* #line 40 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return SUB;
		}
		break;
	case 16:
		{
/* #line 42 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return GRTREQU;
		}
		break;
	case 17:
		{
/* #line 43 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return GRTR;
		}
		break;
	case 18:
		{
/* #line 45 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return LESSEQU;
		}
		break;
	case 19:
		{
/* #line 46 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return LESS;
		}
		break;
	case 20:
	case 21:
		{
/* #line 49 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return EQU;
		}
		break;
	case 22:
		{
/* #line 51 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */

								strcpy ( yylval.string, &yytext[1] );
								return WBANK;
								
		}
		break;
	case 23:
		{
/* #line 56 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */

								yylval.number = 0xFFFF;
								return NUM;
								
		}
		break;
	case 24:
		{
/* #line 60 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */

								yylval.number = 0;
								return NUM;
								
		}
		break;
	case 25:
	case 26:
		{
/* #line 66 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return GAMECOUNT;
		}
		break;
	case 27:
		{
/* #line 68 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return FACEHERO;
		}
		break;
	case 28:
		{
/* #line 70 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */

								strcpy ( yylval.string, yytext );
								return LABEL;
								
		}
		break;
	case 29:
		{
/* #line 75 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */

								strcpy ( yylval.string, &yytext[1] );
								return STRING;
								
		}
		break;
	case 30:
		{
/* #line 80 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */

								if(StringList_Verify(&equateList, yytext))
									{
									yylval.number = StringList_GetNumber(&equateList, yytext);
									return NUM;
									}
								strcpy ( yylval.string, yytext );
								return STRING;
								
		}
		break;
	case 31:
		{
/* #line 90 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */

								yylval.number = (1<<(atoi(&yytext[1])));
								return NUM;
								
		}
		break;
/* #line 94 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
						
	case 32:
		{
/* #line 95 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */

								yylval.number = atoi(yytext);
								return NUM;
								
		}
		break;
	case 33:
		{
/* #line 103 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
BEGIN ST_TEXTER;
		}
		break;
	case 34:
		{
/* #line 104 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
BEGIN INITIAL;
		}
		break;
	case 35:
		{
/* #line 105 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */

										strcpy ( yylval.string, yytext );
										return TEXTER;
										
		}
		break;
	case 36:
		{
/* #line 112 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
BEGIN ST_COMMENT;
		}
		break;
	case 37:
		{
/* #line 113 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return END;
		}
		break;
	case 38:
		{
/* #line 114 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */

								BEGIN INITIAL;
								return COMMENT;
								
		}
		break;
	case 39:
		{
/* #line 118 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
gLine++;
		}
		break;
	case 40:
		{
/* #line 119 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
;
		}
		break;
	case 41:
		{
/* #line 123 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
BEGIN ST_SLASHCOM;
		}
		break;
	case 42:
		{
/* #line 124 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return END;
		}
		break;
	case 43:
		{
/* #line 125 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */

								gLine++;
								BEGIN INITIAL;
								return COMMENT;
								
		}
		break;
	case 44:
		{
/* #line 130 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
;
		}
		break;
	case 45:
		{
/* #line 134 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
gLine++;
		}
		break;
	case 46:
		{
/* #line 135 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
;
		}
		break;
	case 47:
		{
/* #line 136 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return yytext[0];
		}
		break;
	case 48:
		{
/* #line 137 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */
return END;
		}
		break;
	default:
		yyassert(0);
		break;
	}
	yy->yymreturnflg = 0;
	return 0;
}

#ifndef YYNBORLANDWARN
#ifdef __BORLANDC__
#pragma warn .rch		/* <warning: unreachable code> to the old state */
#endif
#endif


/* #line 139 "C:\\Work\\MagiScript\\MagiParse\\magiLex.l" */




static YYCONST yymatch_t YYNEARFAR YYBASED_CODE yymatch[] = {
	0
};

#define YYTRANSITIONMAX 596
static YYCONST yytransition_t YYNEARFAR YYBASED_CODE yytransition[] = {
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 99, 99 },
	{ 96, 5 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 99, 99 },
	{ 99, 99 },
	{ 98, 7 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 35, 10 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 49, 24 },
	{ 99, 99 },
	{ 23, 1 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 58, 44 },
	{ 61, 46 },
	{ 67, 58 },
	{ 68, 59 },
	{ 23, 1 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 99, 99 },
	{ 29, 2 },
	{ 28, 2 },
	{ 60, 45 },
	{ 69, 60 },
	{ 70, 61 },
	{ 75, 68 },
	{ 76, 69 },
	{ 77, 70 },
	{ 80, 76 },
	{ 81, 77 },
	{ 84, 80 },
	{ 59, 45 },
	{ 85, 81 },
	{ 87, 84 },
	{ 88, 85 },
	{ 89, 88 },
	{ 23, 89 },
	{ 44, 19 },
	{ 45, 20 },
	{ 46, 21 },
	{ 36, 11 },
	{ 47, 21 },
	{ 39, 14 },
	{ 29, 2 },
	{ 12, 2 },
	{ 26, 2 },
	{ 22, 2 },
	{ 79, 73 },
	{ 9, 2 },
	{ 10, 2 },
	{ 64, 55 },
	{ 62, 53 },
	{ 78, 72 },
	{ 63, 54 },
	{ 13, 2 },
	{ 66, 57 },
	{ 14, 2 },
	{ 55, 32 },
	{ 27, 2 },
	{ 25, 2 },
	{ 25, 2 },
	{ 25, 2 },
	{ 25, 2 },
	{ 25, 2 },
	{ 25, 2 },
	{ 25, 2 },
	{ 25, 2 },
	{ 25, 2 },
	{ 25, 2 },
	{ 18, 2 },
	{ 57, 34 },
	{ 16, 2 },
	{ 17, 2 },
	{ 15, 2 },
	{ 90, 2 },
	{ 56, 33 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 20, 2 },
	{ 21, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 19, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 73, 65 },
	{ 23, 2 },
	{ 82, 78 },
	{ 24, 2 },
	{ 91, 2 },
	{ 86, 83 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 23, 2 },
	{ 48, 48 },
	{ 11, 2 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 71, 63 },
	{ 83, 79 },
	{ 74, 66 },
	{ 65, 56 },
	{ 72, 64 },
	{ 48, 48 },
	{ 40, 15 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 41, 16 },
	{ 48, 48 },
	{ 42, 17 },
	{ 37, 12 },
	{ 48, 48 },
	{ 95, 92 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 48, 48 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 38, 13 },
	{ 51, 27 },
	{ 93, 3 },
	{ 0, 0 },
	{ 0, 0 },
	{ 23, 90 },
	{ 52, 27 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 0, 0 },
	{ 92, 3 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 90 },
	{ 23, 91 },
	{ 0, 0 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 91, 91 },
	{ 0, 0 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 0, 0 },
	{ 23, 91 },
	{ 0, 0 },
	{ 0, 0 },
	{ 91, 91 },
	{ 0, 0 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 91, 91 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 43, 43 },
	{ 0, 0 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 43, 43 },
	{ 0, 0 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 43, 43 },
	{ 0, 22 },
	{ 0, 0 },
	{ 0, 22 },
	{ 0, 22 },
	{ 0, 22 },
	{ 0, 22 },
	{ 0, 22 },
	{ 0, 22 },
	{ 0, 22 },
	{ 0, 22 },
	{ 0, 22 },
	{ 0, 22 },
	{ 50, 50 },
	{ 50, 50 },
	{ 50, 50 },
	{ 50, 50 },
	{ 50, 50 },
	{ 50, 50 },
	{ 50, 50 },
	{ 50, 50 },
	{ 50, 50 },
	{ 50, 50 },
	{ 25, 25 },
	{ 25, 25 },
	{ 25, 25 },
	{ 25, 25 },
	{ 25, 25 },
	{ 25, 25 },
	{ 25, 25 },
	{ 25, 25 },
	{ 25, 25 },
	{ 25, 25 },
	{ 31, 9 },
	{ 53, 31 },
	{ 0, 0 },
	{ 32, 9 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 33, 9 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 54, 31 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 34, 9 }
};

static YYCONST yystate_t YYNEARFAR YYBASED_CODE yystate[] = {
	{ 0, 0, 0 },
	{ 2, 2, 48 },
	{ -30, 115, 48 },
	{ -94, 317, 37 },
	{ 3, 0, 37 },
	{ -97, 1, 42 },
	{ 5, 0, 42 },
	{ 99, 1, 0 },
	{ 7, 0, 0 },
	{ 83, 508, 47 },
	{ 0, 1, 7 },
	{ 0, 20, 9 },
	{ 17, 225, 11 },
	{ 0, 282, 13 },
	{ 25, 101, 15 },
	{ 17, 195, 17 },
	{ 17, 222, 19 },
	{ 0, 224, 21 },
	{ 43, 0, 47 },
	{ 89, 59, 30 },
	{ 89, 77, 30 },
	{ 89, 78, 30 },
	{ 48, 496, 47 },
	{ 89, 0, 30 },
	{ 50, 18, 47 },
	{ 50, 516, 32 },
	{ 0, 0, 33 },
	{ 92, 284, 47 },
	{ 0, 0, 45 },
	{ 0, 0, 46 },
	{ 0, 0, 47 },
	{ 0, 502, 0 },
	{ 0, 80, 0 },
	{ 0, 101, 0 },
	{ 0, 95, 0 },
	{ 0, 0, 6 },
	{ 0, 0, 8 },
	{ 0, 0, 10 },
	{ 0, 0, 12 },
	{ 0, 0, 14 },
	{ 0, 0, 16 },
	{ 0, 0, 18 },
	{ 0, 0, 20 },
	{ 83, 419, 22 },
	{ 89, 8, 30 },
	{ 89, 59, 30 },
	{ 89, 17, 30 },
	{ 89, 0, 26 },
	{ 91, 192, 29 },
	{ 50, 0, 0 },
	{ 0, 506, 31 },
	{ 0, 0, 36 },
	{ 0, 0, 41 },
	{ 72, 71, 0 },
	{ 72, 73, 0 },
	{ 73, 69, 0 },
	{ 0, 186, 0 },
	{ 0, 77, 0 },
	{ 89, 26, 30 },
	{ 89, 13, 30 },
	{ 89, 58, 30 },
	{ 89, 59, 30 },
	{ 0, 0, 1 },
	{ 83, 181, 0 },
	{ 0, 189, 0 },
	{ 0, 130, 0 },
	{ 79, 184, 0 },
	{ 89, 0, 23 },
	{ 89, 60, 30 },
	{ 89, 58, 30 },
	{ 89, 64, 30 },
	{ 0, 0, 2 },
	{ 0, 72, 0 },
	{ 0, 66, 0 },
	{ 0, 0, 5 },
	{ 89, 0, 24 },
	{ 89, 63, 30 },
	{ 89, 54, 30 },
	{ 83, 139, 0 },
	{ 0, 183, 0 },
	{ 89, 52, 30 },
	{ 89, 51, 30 },
	{ 0, 0, 3 },
	{ 0, 142, 0 },
	{ 89, 58, 30 },
	{ 89, 60, 30 },
	{ 0, 0, 4 },
	{ 89, 0, 27 },
	{ 89, 55, 30 },
	{ 90, 45, 25 },
	{ 91, 267, 30 },
	{ 83, 344, 28 },
	{ 0, 241, 40 },
	{ 0, 0, 39 },
	{ 0, 0, 40 },
	{ 0, 0, 38 },
	{ 0, 0, 43 },
	{ 0, 0, 44 },
	{ 0, 0, 34 },
	{ 92, 1, 35 }
};

static YYCONST yybackup_t YYNEARFAR YYBASED_CODE yybackup[] = {
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0
};

YYCONST yymlex_t YYNEAR YYLEXNAME = {
	0,					/* yymmoreflg */
	0,					/* yymrejectflg */
	0,					/* yymreturnflg */
	1,					/* yymtextgrow */
	1,					/* yymunputgrow */
	1,					/* yymeol */
	1,					/* yymoldeol */
	0,					/* yymstart */
	YYMIN,				/* yymin */
	YYMOUT,				/* yymout */
	YYMLEXERR,			/* yymerr */
	0,					/* yymleng */
	1,					/* yymlineno */
	0,					/* yymunputindex */
	NULL,				/* yymtext */
	NULL,				/* yymstext */
	YYTEXT_SIZE,		/* yymtext_size */
	YYTEXT_SIZE,		/* yymstext_size */
	NULL,				/* yymstatebuf */
	NULL,				/* yymsstatebuf */
	NULL,				/* yymunputbufptr */
	NULL,				/* yymsunputbufptr */
	YYUNPUT_SIZE,		/* yymunput_size */
	YYUNPUT_SIZE,		/* yymsunput_size */
	YYMINPUT,			/* yyminput */
	YYMOUTPUT,			/* yymoutput */
	YYMUNPUT,			/* yymunput */
	YYMWRAP,			/* yymwrap */
	YYMGETCHAR,			/* yymgetchar */
	YYMTEXTOVERFLOW,	/* yymtextoverflow */
	YYMUNPUTOVERFLOW,	/* yymunputoverflow */
	yylexaction,		/* yymlexaction */
#ifndef YYLEXCOMPACT
	yytransition,		/* yymtransition */
	YYTRANSITIONMAX,	/* yymtransitionmax */
	NULL,				/* yymctransition */
#else
	NULL,				/* yymtransition */
	0,					/* yymtransitionmax */
	yyctransition,		/* yymctransition */
#endif
	yymatch,			/* yymmatch */
	yystate,			/* yymstate */
	yybackup,			/* yymbackup */
	YYMLEXDATA			/* yymdata */

	/* debugging */
#ifdef YYDEBUG
	,
	0,					/* yymdebug */
	0,					/* yymdebugflush */
	YYMLEXDEBUGOUT		/* yymdebugout */
#endif
};
