#include <myacc.h>

#define YYPARSEFAST
/* #line 1 "C:\\Work\\MagiScript\\MagiParse\\magiPackParse.y" */

/********************************/
#include "includes.h"
#include "magiPackLex.h"
#include "magiPackParse.h"
#include "milconv.h"

#define	YYMERROR magiPackError

/* repeated because of possible precompiled header */
#include <myacc.h>

#define YYPARSEFAST
#include "magiPackParse.h"

#ifndef YYSTYPE
#define YYSTYPE int
#endif
#ifndef YYSTACK_SIZE
#define YYSTACK_SIZE 100
#endif

/* yyattribute */
#ifdef YYDEBUG
#ifdef YYPROTOTYPE
static YYSTYPE YYFAR *yyattribute1(yymparse_t YYFAR *yy, int index)
#else
static YYSTYPE YYFAR *yyattribute1(yy, index)
yymparse_t YYFAR *yy;
int index;
#endif
{
	YYSTYPE YYFAR *p;
	yyassert(yy != NULL);

	p = &((YYSTYPE YYFAR *) yy->yymattributestackptr)[yy->yymtop + index];
	return p;
}
#define yyattribute(yy, index) (*yyattribute1(yy, index))
#else
#define yyattribute(yy, index) (((YYSTYPE YYFAR *) yy->yymattributestackptr)[yy->yymtop + (index)])
#endif

#ifdef YYDEBUG
#ifdef YYPROTOTYPE
static void yyinitdebug(yymparse_t YYFAR *yy, YYSTYPE YYFAR **p, int count)
#else
static void yyinitdebug(yy, p, count)
yymparse_t YYFAR *yy;
YYSTYPE YYFAR **p;
int count;
#endif
{
	int i;
	yyassert(yy != NULL);
	yyassert(p != NULL);
	yyassert(count >= 1);

	for (i = 0; i < count; i++) {
		p[i] = &((YYSTYPE YYFAR *) yy->yymattributestackptr)[yy->yymtop + i - (count - 1)];
	}
}
#endif

/* variables */
#ifndef YYMPARSEERR
#ifndef YYNINITSTREAM
#define YYMPARSEERR stderr
#else
#define YYMPARSEERR NULL
#endif
#endif

#ifndef YYMPARSEDEBUGOUT
#ifndef YYNINITSTREAM
#define YYMPARSEDEBUGOUT stdout
#else
#define YYMPARSEDEBUGOUT NULL
#endif
#endif

/* pointers to functions */
#ifndef YYMSTACKOVERFLOW
#define YYMSTACKOVERFLOW yymstackoverflow
#endif
#ifndef YYMERROR
#define YYMERROR yymerror
#endif
#ifndef YYMSYNTAXERROR
#define YYMSYNTAXERROR yymsyntaxerror
#endif
#ifndef YYMDISCARD
#define YYMDISCARD yymdiscard
#endif
#ifndef YYMGETTOKEN
#define YYMGETTOKEN yymgettoken
#endif
#ifndef YYMPARSEDATA
#define YYMPARSEDATA NULL
#endif

#ifdef YYPROTOTYPE
static void YYCDECL yyparseaction(yymparse_t YYFAR *yy, int action)
#else
static void YYCDECL yyparseaction(yy, action)
yymparse_t YYFAR *yy;
int action;
#endif
{
	switch (action) {
	case 0:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 23 "C:\\Work\\MagiScript\\MagiParse\\magiPackParse.y" */
	yymexit(yy,1);	
			}
		}
		break;
	default:
		yyassert(0);
		break;
	}
}

/* #line 26 "C:\\Work\\MagiScript\\MagiParse\\magiPackParse.y" */


/********************************/
void	magiPackError ( yymparse_t* yy, const char* text )
	{
	printf ("There are no errors.\n");
	}


#ifdef YYDEBUG
static YYCONST yysymbol_t YYNEARFAR YYBASED_CODE yysymbol[] = {
	{ "$end", 0 },
	{ "error", 256 },
	{ "FINI", 257 },
	{ NULL, 0 }
};

static YYCONST char *YYCONST YYNEARFAR YYBASED_CODE yyrule[] = {
	"$accept: file",
	"file: fileGuts",
	"file: file fileGuts",
	"fileGuts: FINI"
};
#endif

static YYCONST yyreduction_t YYNEARFAR YYBASED_CODE yyreduction[] = {
	{ 0, 1, -1 },
	{ 1, 1, -1 },
	{ 1, 2, -1 },
	{ 2, 1, 0 }
};

static YYCONST yytokenaction_t YYNEARFAR YYBASED_CODE yytokenaction[] = {
	{ 2, YYAT_ACCEPT, 0 },
	{ 0, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ 2, YYAT_SHIFT, 1 }
};
#define YYTOKENACTION_SIZE 258

static YYCONST yystateaction_t YYNEARFAR YYBASED_CODE yystateaction[] = {
	{ 1, 1, YYAT_DEFAULT, 2 },
	{ 0, 0, YYAT_REDUCE, 3 },
	{ 0, 1, YYAT_ERROR, 0 },
	{ 0, 0, YYAT_REDUCE, 1 },
	{ 0, 0, YYAT_REDUCE, 2 }
};

static YYCONST yynontermgoto_t YYNEARFAR YYBASED_CODE yynontermgoto[] = {
	{ 0, 2 },
	{ 0, 3 },
	{ 2, 4 }
};
#define YYNONTERMGOTO_SIZE 3

static YYCONST yystategoto_t YYNEARFAR YYBASED_CODE yystategoto[] = {
	{ -1, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 }
};

#define YYDESTRUCTORPTR NULL

#define YYTOKENDESTPTR NULL
#define YYTOKENDEST_SIZE 0
#define YYTOKENDESTBASE 0

YYCONST yymparse_t YYNEAR YYPARSENAME = {
	0,							/* yymlookahead */
	1,							/* yymstackgrow */
	0,							/* yymexitflg */
	0,							/* yymretireflg */
	0,							/* yymerrorflg */
	0,							/* yympopflg */
	1,							/* yymwipe */
	-1,							/* yymtop */
	-1,							/* yymchar */
	0,							/* yymskip */
	0,							/* yymerrorcount */
	0,							/* yymexitcode */
	0,							/* yymretirecode */
	0,							/* yymerrorpop */
	YYMPARSEERR,				/* yymerr */
	NULL,						/* yymstackptr */
	NULL,						/* yymsstackptr */
	YYSTACK_SIZE,				/* yymstack_size */
	YYSTACK_SIZE,				/* yymsstack_size */

	sizeof(YYSTYPE),			/* yymattribute_size */

	NULL,						/* yymvalptr */
	NULL,						/* yymlvalptr  */
	NULL,						/* yymattributestackptr */
	NULL,						/* yymsattributestackptr */
	YYMSTACKOVERFLOW,			/* yymstackoverflow */
	YYMERROR,					/* yymerror */
	YYMSYNTAXERROR,				/* yymsyntaxerror */
	YYMDISCARD,					/* yymdiscard */
	YYMGETTOKEN,				/* yymgettoken */
	yyparseaction,				/* yymparseaction */

	/* tables */
#ifndef YYPARSECOMPACT
	yystateaction,				/* yymstateaction */
	yytokenaction,				/* yymtokenaction */
	YYTOKENACTION_SIZE,			/* yymtokenaction_size */
	yystategoto,				/* yymstategoto */
	yynontermgoto,				/* yymnontermgoto */
	YYNONTERMGOTO_SIZE,			/* yymnontermgoto_size */
	YYTOKENDESTPTR,				/* yymtokendestptr */
	YYTOKENDEST_SIZE,			/* yymtokendest_size */
	YYTOKENDESTBASE,			/* yymtokendestbase */
	NULL,						/* yymcstateaction */
	NULL,						/* yymctokenaction */
	NULL,						/* yymcstategoto */
	NULL,						/* yymcnontermgoto */
	NULL,						/* yymctokendestptr */
#else
	NULL,						/* yymstateaction */
	NULL,						/* yymtokenaction */
	0,							/* yymtokenaction_size */
	NULL,						/* yymstategoto */
	NULL,						/* yymnontermgoto */
	0,							/* yymnontermgoto_size */
	NULL,						/* yymtokendestptr */
	0,							/* yymtokendest_size */
	0,							/* yymtokendestbase */
	yycstateaction,				/* yymcstateaction */
	yyctokenaction,				/* yymctokenaction */
	yycstategoto,				/* yymcstategoto */
	yycnontermgoto,				/* yymcnontermgoto */
	YYCTOKENDESTPTR,			/* yymctokendestptr */
#endif
	yyreduction,				/* yymreduction */
	YYDESTRUCTORPTR,			/* yymdestructorptr */
	YYMPARSEDATA				/* yymdata */

	/* debugging */
#ifdef YYDEBUG
	,
	0,							/* yymdebug */
	0,							/* yymdebugstack */
	0,							/* yymdebugflush */
	YYMPARSEDEBUGOUT,			/* yymdebugout */
	yysymbol,					/* yymsymbol */
	yyrule						/* yymrule */
#endif
};
