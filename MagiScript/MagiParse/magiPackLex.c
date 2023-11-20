#include <mlex.h>

#define YYLEXFAST
/* #line 1 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */

/********************************/
#include "includes.h"
#include "magiPackLex.h"
#include "magiPackParse.h"
#include "milconv.h"


/* repeated because of possible precompiled header */
#include <mlex.h>

#define YYLEXFAST
#include "magiPackLex.h"

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
/* #line 17 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */


	yy->yymreturnflg = 1;
	switch (action) {
	case 1:
	case 2:
		{
/* #line 24 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */
BEGIN ST_BYTE;
		}
		break;
	case 3:
		{
/* #line 26 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */
return FINI;
		}
		break;
	case 4:
		{
/* #line 27 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */
BEGIN INITIAL;
		}
		break;
	case 5:
		{
/* #line 28 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */
gFileSize += 1;
		}
		break;
	case 6:
	case 7:
		{
/* #line 33 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */
BEGIN ST_WORD;
		}
		break;
	case 8:
		{
/* #line 35 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */
return FINI;
		}
		break;
	case 9:
		{
/* #line 36 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */
BEGIN INITIAL;
		}
		break;
	case 10:
		{
/* #line 37 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */
gFileSize += 2;
		}
		break;
	case 11:
		{
/* #line 41 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */
BEGIN ST_COLNCOMM;
		}
		break;
	case 12:
		{
/* #line 42 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */
return FINI;
		}
		break;
	case 13:
		{
/* #line 43 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */
BEGIN INITIAL;
		}
		break;
	case 14:
		{
/* #line 44 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */
;
		}
		break;
	case 15:
		{
/* #line 48 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */
;
		}
		break;
	case 16:
		{
/* #line 49 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */
;
		}
		break;
	case 17:
		{
/* #line 50 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */
return FINI;
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


/* #line 52 "C:\\Work\\MagiScript\\MagiParse\\magiPackLex.l" */




static YYCONST yymatch_t YYNEARFAR YYBASED_CODE yymatch[] = {
	0
};

#define YYTRANSITIONMAX 300
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
	{ 0, 0 },
	{ 19, 3 },
	{ 20, 20 },
	{ 22, 5 },
	{ 0, 0 },
	{ 24, 7 },
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
	{ 20, 20 },
	{ 20, 20 },
	{ 0, 0 },
	{ 0, 0 },
	{ 20, 20 },
	{ 0, 0 },
	{ 20, 20 },
	{ 0, 0 },
	{ 20, 20 },
	{ 20, 20 },
	{ 0, 3 },
	{ 20, 20 },
	{ 21, 20 },
	{ 20, 20 },
	{ 0, 7 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 0, 0 },
	{ 20, 20 },
	{ 0, 0 },
	{ 20, 20 },
	{ 20, 20 },
	{ 0, 0 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 16, 14 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 20, 20 },
	{ 0, 0 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 20, 20 },
	{ 25, 25 },
	{ 13, 9 },
	{ 0, 0 },
	{ 0, 0 },
	{ 14, 9 },
	{ 17, 16 },
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
	{ 15, 9 },
	{ 25, 25 },
	{ 25, 25 },
	{ 0, 0 },
	{ 18, 16 },
	{ 25, 25 },
	{ 0, 0 },
	{ 25, 25 },
	{ 0, 0 },
	{ 25, 25 },
	{ 25, 25 },
	{ 0, 0 },
	{ 25, 25 },
	{ 26, 25 },
	{ 25, 25 },
	{ 0, 0 },
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
	{ 25, 25 },
	{ 25, 25 },
	{ 0, 0 },
	{ 25, 25 },
	{ 0, 0 },
	{ 25, 25 },
	{ 25, 25 },
	{ 0, 0 },
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
	{ 25, 25 },
	{ 25, 25 },
	{ 25, 25 },
	{ 25, 25 },
	{ 25, 25 },
	{ 25, 25 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 25, 25 },
	{ 0, 0 },
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
	{ 25, 25 },
	{ 25, 25 },
	{ 25, 25 },
	{ 25, 25 },
	{ 25, 25 },
	{ 25, 25 },
	{ 11, 1 },
	{ 11, 1 },
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
	{ 11, 1 },
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
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 10, 1 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 9, 1 }
};

static YYCONST yystate_t YYNEARFAR YYBASED_CODE yystate[] = {
	{ 0, 0, 0 },
	{ -12, 231, 17 },
	{ 1, 0, 17 },
	{ 20, 1, 3 },
	{ 3, 0, 3 },
	{ -23, 3, 12 },
	{ 5, 0, 12 },
	{ 25, 5, 8 },
	{ 7, 0, 8 },
	{ 16, 61, 16 },
	{ 0, 0, 11 },
	{ 0, 0, 15 },
	{ 0, 0, 16 },
	{ 0, 0, 1 },
	{ 0, 24, 0 },
	{ 0, 0, 6 },
	{ 0, 65, 0 },
	{ 0, 0, 2 },
	{ 0, 0, 7 },
	{ 0, 0, 4 },
	{ 25, 3, 5 },
	{ 0, 0, 5 },
	{ 0, 0, 13 },
	{ 0, 0, 14 },
	{ 0, 0, 9 },
	{ 16, 117, 10 },
	{ 0, 0, 10 }
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
