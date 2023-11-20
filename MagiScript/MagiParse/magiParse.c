#include <myacc.h>

#define YYPARSEFAST
/* #line 1 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */

/********************************/
#include "includes.h"
#include "magiLex.h"
#include "magiParse.h"
#include "miyconv.h"

#define	YYMERROR magiParseError

/* repeated because of possible precompiled header */
#include <myacc.h>

#define YYPARSEFAST
#include "magiParse.h"

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
/* #line 77 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	;	
			}
		}
		break;
	case 1:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 78 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	;	
			}
		}
		break;
	case 2:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 79 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	;	
			}
		}
		break;
	case 3:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 80 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	Label_New(yyattribute(yy, 1 - 1).string);	
			}
		}
		break;
	case 4:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 81 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	;	
			}
		}
		break;
	case 5:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 82 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	;	
			}
		}
		break;
	case 6:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 83 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	yymexit(yy,1);	
			}
		}
		break;
	case 7:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yy, yya, 4);
#endif
			{
/* #line 89 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	StringList_Add( &equateList, yyattribute(yy, 2 - 3).string, yyattribute(yy, 3 - 3).number);	
			}
		}
		break;
	case 8:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yy, yya, 4);
#endif
			{
/* #line 90 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	;	
			}
		}
		break;
	case 9:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[3];
			yyinitdebug(yy, yya, 3);
#endif
			{
/* #line 95 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	Parse(yyattribute(yy, 2 - 2).string);	
			}
		}
		break;
	case 10:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yy, yya, 4);
#endif
			{
/* #line 100 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	Command_New(yyattribute(yy, 1 - 3).string, yyattribute(yy, 3 - 3).list);	
			}
		}
		break;
	case 11:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[3];
			yyinitdebug(yy, yya, 3);
#endif
			{
/* #line 101 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	Command_New(yyattribute(yy, 1 - 2).string, yyattribute(yy, 2 - 2).list);	
			}
		}
		break;
	case 12:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 104 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).list = ParamBlockList_New(yyattribute(yy, 1 - 1).paramBlock);	
			}
		}
		break;
	case 13:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[3];
			yyinitdebug(yy, yya, 3);
#endif
			{
/* #line 105 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	List_InsertNode(yyattribute(yy, 1 - 2).list, yyattribute(yy, 2 - 2).paramBlock);	
			}
		}
		break;
	case 14:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yy, yya, 4);
#endif
			{
/* #line 108 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).paramBlock = ParamBlock_New(yyattribute(yy, 2 - 3).list);	
			}
		}
		break;
	case 15:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[3];
			yyinitdebug(yy, yya, 3);
#endif
			{
/* #line 109 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).paramBlock = 0;	
			}
		}
		break;
	case 16:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 112 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).list = ParamList_New(yyattribute(yy, 1 - 1).param);	
			}
		}
		break;
	case 17:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yy, yya, 4);
#endif
			{
/* #line 113 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	List_InsertNode(yyattribute(yy, 1 - 3).list, yyattribute(yy, 3 - 3).param);	
			}
		}
		break;
	case 18:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 116 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_STRING, yyattribute(yy, 1 - 1).string, 0, 0, 0);	
			}
		}
		break;
	case 19:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 117 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_STRING, yyattribute(yy, 1 - 1).string, 0, 0, 0);	
			}
		}
		break;
	case 20:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 118 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_NUMBER, 0, yyattribute(yy, 1 - 1).number, 0, 0);	
			}
		}
		break;
	case 21:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 119 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = yyattribute(yy, 1 - 1).param;	
			}
		}
		break;
	case 22:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yy, yya, 4);
#endif
			{
/* #line 124 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = yyattribute(yy, 2 - 3).param;	
			}
		}
		break;
	case 23:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yy, yya, 4);
#endif
			{
/* #line 127 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_OPERATOR, "EXPR_ADD", 0, yyattribute(yy, 1 - 3).param, yyattribute(yy, 3 - 3).param);	
			}
		}
		break;
	case 24:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yy, yya, 4);
#endif
			{
/* #line 128 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_OPERATOR, "EXPR_AND", 0, yyattribute(yy, 1 - 3).param, yyattribute(yy, 3 - 3).param);	
			}
		}
		break;
	case 25:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yy, yya, 4);
#endif
			{
/* #line 129 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_OPERATOR, "EXPR_BITAND", 0, yyattribute(yy, 1 - 3).param, yyattribute(yy, 3 - 3).param);	
			}
		}
		break;
	case 26:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[3];
			yyinitdebug(yy, yya, 3);
#endif
			{
/* #line 130 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_OPERATOR, "EXPR_DEC", 0, yyattribute(yy, 1 - 2).param, 0);	
			}
		}
		break;
	case 27:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yy, yya, 4);
#endif
			{
/* #line 131 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_OPERATOR, "EXPR_EQU", 0, yyattribute(yy, 1 - 3).param, yyattribute(yy, 3 - 3).param);	
			}
		}
		break;
	case 28:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yy, yya, 4);
#endif
			{
/* #line 132 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_OPERATOR, "EXPR_GRTR", 0, yyattribute(yy, 1 - 3).param, yyattribute(yy, 3 - 3).param);	
			}
		}
		break;
	case 29:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yy, yya, 4);
#endif
			{
/* #line 133 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_OPERATOR, "EXPR_GRTREQU", 0, yyattribute(yy, 1 - 3).param, yyattribute(yy, 3 - 3).param);	
			}
		}
		break;
	case 30:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[3];
			yyinitdebug(yy, yya, 3);
#endif
			{
/* #line 134 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_OPERATOR, "EXPR_INC", 0, yyattribute(yy, 1 - 2).param, 0);	
			}
		}
		break;
	case 31:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yy, yya, 4);
#endif
			{
/* #line 135 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_OPERATOR, "EXPR_LESS", 0, yyattribute(yy, 1 - 3).param, yyattribute(yy, 3 - 3).param);	
			}
		}
		break;
	case 32:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yy, yya, 4);
#endif
			{
/* #line 136 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_OPERATOR, "EXPR_LESSEQU", 0, yyattribute(yy, 1 - 3).param, yyattribute(yy, 3 - 3).param);	
			}
		}
		break;
	case 33:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[3];
			yyinitdebug(yy, yya, 3);
#endif
			{
/* #line 137 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_OPERATOR, "EXPR_NOT", 0, yyattribute(yy, 2 - 2).param, 0);	
			}
		}
		break;
	case 34:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[3];
			yyinitdebug(yy, yya, 3);
#endif
			{
/* #line 138 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_WBANK, 	yyattribute(yy, 1 - 2).string, 0, yyattribute(yy, 2 - 2).param, 0);	
			}
		}
		break;
	case 35:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yy, yya, 4);
#endif
			{
/* #line 139 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_OPERATOR, "EXPR_NOTEQU", 0, yyattribute(yy, 1 - 3).param, yyattribute(yy, 3 - 3).param);	
			}
		}
		break;
	case 36:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yy, yya, 4);
#endif
			{
/* #line 140 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_OPERATOR, "EXPR_OR", 0, yyattribute(yy, 1 - 3).param, yyattribute(yy, 3 - 3).param);	
			}
		}
		break;
	case 37:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yy, yya, 4);
#endif
			{
/* #line 141 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_OPERATOR, "EXPR_SUB", 0, yyattribute(yy, 1 - 3).param, yyattribute(yy, 3 - 3).param);	
			}
		}
		break;
	case 38:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 142 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_GAMESTATE, yyattribute(yy, 1 - 1).string, 0, 0, 0);	
			}
		}
		break;
	case 39:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 143 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_FACEHERO, 0, 0, 0, 0);	
			}
		}
		break;
	case 40:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 144 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_GAMECOUNT, 0, 0, 0, 0);	
			}
		}
		break;
	case 41:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 145 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = Param_New(PARAM_EXPR_NUMCONST, 0, yyattribute(yy, 1 - 1).number, 0, 0);	
			}
		}
		break;
	case 42:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 146 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	(*(YYSTYPE YYFAR *) yy->yymvalptr).param = yyattribute(yy, 1 - 1).param;	
			}
		}
		break;
	case 43:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 151 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	;	
			}
		}
		break;
	case 44:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yy, yya, 2);
#endif
			{
/* #line 152 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	;	
			}
		}
		break;
	case 45:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[6];
			yyinitdebug(yy, yya, 6);
#endif
			{
/* #line 155 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	VarDecList_AddBit(yyattribute(yy, 2 - 5).string, yyattribute(yy, 3 - 5).string, yyattribute(yy, 4 - 5).number, yyattribute(yy, 5 - 5).number);	
			}
		}
		break;
	case 46:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yy, yya, 5);
#endif
			{
/* #line 158 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	VarDecList_AddByte(yyattribute(yy, 2 - 4).string, yyattribute(yy, 3 - 4).string, yyattribute(yy, 4 - 4).number);	
			}
		}
		break;
	case 47:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yy, yya, 5);
#endif
			{
/* #line 159 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */
	VarDecList_AddWord(yyattribute(yy, 2 - 4).string, yyattribute(yy, 3 - 4).string, yyattribute(yy, 4 - 4).number);	
			}
		}
		break;
	default:
		yyassert(0);
		break;
	}
}

/* #line 162 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */


/********************************/
void	magiParseError ( yymparse_t* yy, const char* text )
	{
	WriteScript_Error ("An interesting SYNTAX ERROR has appeared! What are you going to do?");
	}


#ifdef YYDEBUG
static YYCONST yysymbol_t YYNEARFAR YYBASED_CODE yysymbol[] = {
	{ "$end", 0 },
	{ "\'(\'", 40 },
	{ "\')\'", 41 },
	{ "\',\'", 44 },
	{ "\':\'", 58 },
	{ "\'[\'", 91 },
	{ "\']\'", 93 },
	{ "error", 256 },
	{ "BIT", 257 },
	{ "BITAND", 258 },
	{ "BYTE", 259 },
	{ "COMMENT", 260 },
	{ "END", 261 },
	{ "EQUATE", 262 },
	{ "FACEHERO", 263 },
	{ "GAMECOUNT", 264 },
	{ "INCLUDE", 265 },
	{ "LABEL", 266 },
	{ "NUM", 267 },
	{ "STRING", 268 },
	{ "TEXTER", 269 },
	{ "WORD", 270 },
	{ "WBANK", 271 },
	{ "ADD", 272 },
	{ "AND", 273 },
	{ "DEC", 274 },
	{ "EQU", 275 },
	{ "GRTR", 276 },
	{ "GRTREQU", 277 },
	{ "INC", 278 },
	{ "LESS", 279 },
	{ "LESSEQU", 280 },
	{ "NOT", 281 },
	{ "NOTEQU", 282 },
	{ "OR", 283 },
	{ "SUB", 284 },
	{ NULL, 0 }
};

static YYCONST char *YYCONST YYNEARFAR YYBASED_CODE yyrule[] = {
	"$accept: file",
	"file: fileGuts",
	"file: file fileGuts",
	"fileGuts: gsDec",
	"fileGuts: command",
	"fileGuts: include",
	"fileGuts: LABEL",
	"fileGuts: stringList",
	"fileGuts: COMMENT",
	"fileGuts: END",
	"stringList: EQUATE STRING NUM",
	"stringList: EQUATE NUM NUM",
	"include: INCLUDE STRING",
	"command: STRING \':\' paramBlockList",
	"command: STRING paramBlockList",
	"paramBlockList: paramBlock",
	"paramBlockList: paramBlockList paramBlock",
	"paramBlock: \'(\' paramList \')\'",
	"paramBlock: \'(\' \')\'",
	"paramList: param",
	"paramList: paramList \',\' param",
	"param: STRING",
	"param: TEXTER",
	"param: NUM",
	"param: expression",
	"expression: \'[\' exprGuts \']\'",
	"exprGuts: exprGuts ADD exprGuts",
	"exprGuts: exprGuts AND exprGuts",
	"exprGuts: exprGuts BITAND exprGuts",
	"exprGuts: exprGuts DEC",
	"exprGuts: exprGuts EQU exprGuts",
	"exprGuts: exprGuts GRTR exprGuts",
	"exprGuts: exprGuts GRTREQU exprGuts",
	"exprGuts: exprGuts INC",
	"exprGuts: exprGuts LESS exprGuts",
	"exprGuts: exprGuts LESSEQU exprGuts",
	"exprGuts: NOT exprGuts",
	"exprGuts: WBANK exprGuts",
	"exprGuts: exprGuts NOTEQU exprGuts",
	"exprGuts: exprGuts OR exprGuts",
	"exprGuts: exprGuts SUB exprGuts",
	"exprGuts: STRING",
	"exprGuts: FACEHERO",
	"exprGuts: GAMECOUNT",
	"exprGuts: NUM",
	"exprGuts: expression",
	"gsDec: bitDec",
	"gsDec: varDec",
	"bitDec: BIT STRING STRING NUM NUM",
	"varDec: BYTE STRING STRING NUM",
	"varDec: WORD STRING STRING NUM"
};
#endif

static YYCONST yyreduction_t YYNEARFAR YYBASED_CODE yyreduction[] = {
	{ 0, 1, -1 },
	{ 1, 1, -1 },
	{ 1, 2, -1 },
	{ 2, 1, 0 },
	{ 2, 1, 1 },
	{ 2, 1, 2 },
	{ 2, 1, 3 },
	{ 2, 1, 4 },
	{ 2, 1, 5 },
	{ 2, 1, 6 },
	{ 3, 3, 7 },
	{ 3, 3, 8 },
	{ 4, 2, 9 },
	{ 5, 3, 10 },
	{ 5, 2, 11 },
	{ 6, 1, 12 },
	{ 6, 2, 13 },
	{ 7, 3, 14 },
	{ 7, 2, 15 },
	{ 8, 1, 16 },
	{ 8, 3, 17 },
	{ 9, 1, 18 },
	{ 9, 1, 19 },
	{ 9, 1, 20 },
	{ 9, 1, 21 },
	{ 10, 3, 22 },
	{ 11, 3, 23 },
	{ 11, 3, 24 },
	{ 11, 3, 25 },
	{ 11, 2, 26 },
	{ 11, 3, 27 },
	{ 11, 3, 28 },
	{ 11, 3, 29 },
	{ 11, 2, 30 },
	{ 11, 3, 31 },
	{ 11, 3, 32 },
	{ 11, 2, 33 },
	{ 11, 2, 34 },
	{ 11, 3, 35 },
	{ 11, 3, 36 },
	{ 11, 3, 37 },
	{ 11, 1, 38 },
	{ 11, 1, 39 },
	{ 11, 1, 40 },
	{ 11, 1, 41 },
	{ 11, 1, 42 },
	{ 12, 1, 43 },
	{ 12, 1, 44 },
	{ 13, 5, 45 },
	{ 14, 4, 46 },
	{ 14, 4, 47 }
};

static YYCONST yytokenaction_t YYNEARFAR YYBASED_CODE yytokenaction[] = {
	{ 10, YYAT_ACCEPT, 0 },
	{ 53, YYAT_SHIFT, 60 },
	{ 44, YYAT_SHIFT, 57 },
	{ 85, YYAT_SHIFT, 61 },
	{ 77, YYAT_SHIFT, 64 },
	{ 77, YYAT_SHIFT, 65 },
	{ 77, YYAT_SHIFT, 66 },
	{ 77, YYAT_SHIFT, 67 },
	{ 77, YYAT_SHIFT, 68 },
	{ 77, YYAT_SHIFT, 69 },
	{ 77, YYAT_SHIFT, 70 },
	{ 83, YYAT_SHIFT, 64 },
	{ 77, YYAT_SHIFT, 71 },
	{ 40, YYAT_SHIFT, 54 },
	{ 76, YYAT_SHIFT, 61 },
	{ 83, YYAT_SHIFT, 68 },
	{ 40, YYAT_SHIFT, 55 },
	{ 55, YYAT_SHIFT, 34 },
	{ 85, YYAT_SHIFT, 63 },
	{ 85, YYAT_SHIFT, 64 },
	{ 85, YYAT_SHIFT, 65 },
	{ 85, YYAT_SHIFT, 66 },
	{ 85, YYAT_SHIFT, 67 },
	{ 85, YYAT_SHIFT, 68 },
	{ 85, YYAT_SHIFT, 69 },
	{ 85, YYAT_SHIFT, 70 },
	{ 84, YYAT_SHIFT, 61 },
	{ 85, YYAT_SHIFT, 71 },
	{ 85, YYAT_SHIFT, 72 },
	{ 76, YYAT_SHIFT, 63 },
	{ 76, YYAT_SHIFT, 64 },
	{ 76, YYAT_SHIFT, 65 },
	{ 76, YYAT_SHIFT, 66 },
	{ 76, YYAT_SHIFT, 67 },
	{ 76, YYAT_SHIFT, 68 },
	{ 76, YYAT_SHIFT, 69 },
	{ 76, YYAT_SHIFT, 70 },
	{ 43, YYAT_SHIFT, 56 },
	{ 76, YYAT_SHIFT, 71 },
	{ 76, YYAT_SHIFT, 72 },
	{ 41, YYAT_SHIFT, 23 },
	{ 84, YYAT_SHIFT, 63 },
	{ 84, YYAT_SHIFT, 64 },
	{ 84, YYAT_SHIFT, 65 },
	{ 84, YYAT_SHIFT, 66 },
	{ 84, YYAT_SHIFT, 67 },
	{ 84, YYAT_SHIFT, 68 },
	{ 84, YYAT_SHIFT, 69 },
	{ 84, YYAT_SHIFT, 70 },
	{ 78, YYAT_SHIFT, 64 },
	{ 84, YYAT_SHIFT, 71 },
	{ 73, YYAT_SHIFT, 46 },
	{ 73, YYAT_SHIFT, 47 },
	{ 78, YYAT_SHIFT, 68 },
	{ 30, YYAT_SHIFT, 45 },
	{ 73, YYAT_SHIFT, 48 },
	{ 73, YYAT_SHIFT, 49 },
	{ 73, YYAT_ERROR, 0 },
	{ 29, YYAT_SHIFT, 44 },
	{ 73, YYAT_SHIFT, 50 },
	{ 75, YYAT_SHIFT, 64 },
	{ 75, YYAT_SHIFT, 65 },
	{ 75, YYAT_SHIFT, 66 },
	{ 75, YYAT_SHIFT, 67 },
	{ 75, YYAT_SHIFT, 68 },
	{ 75, YYAT_SHIFT, 69 },
	{ 75, YYAT_SHIFT, 70 },
	{ 27, YYAT_SHIFT, 43 },
	{ 75, YYAT_SHIFT, 71 },
	{ 73, YYAT_SHIFT, 51 },
	{ 82, YYAT_SHIFT, 64 },
	{ 82, YYAT_SHIFT, 65 },
	{ 82, YYAT_SHIFT, 66 },
	{ 82, YYAT_SHIFT, 67 },
	{ 82, YYAT_SHIFT, 68 },
	{ 5, YYAT_SHIFT, 20 },
	{ 5, YYAT_SHIFT, 21 },
	{ 26, YYAT_SHIFT, 23 },
	{ 82, YYAT_SHIFT, 71 },
	{ 81, YYAT_SHIFT, 64 },
	{ 81, YYAT_SHIFT, 65 },
	{ 81, YYAT_SHIFT, 66 },
	{ 81, YYAT_SHIFT, 67 },
	{ 81, YYAT_SHIFT, 68 },
	{ 80, YYAT_SHIFT, 64 },
	{ 80, YYAT_SHIFT, 65 },
	{ 24, YYAT_SHIFT, 23 },
	{ 81, YYAT_SHIFT, 71 },
	{ 80, YYAT_SHIFT, 68 },
	{ 79, YYAT_SHIFT, 64 },
	{ 79, YYAT_SHIFT, 65 },
	{ 23, YYAT_SHIFT, 33 },
	{ 80, YYAT_SHIFT, 71 },
	{ 79, YYAT_SHIFT, 68 },
	{ 21, YYAT_SHIFT, 32 },
	{ 20, YYAT_SHIFT, 31 },
	{ 19, YYAT_SHIFT, 30 },
	{ 79, YYAT_SHIFT, 71 },
	{ 18, YYAT_SHIFT, 29 },
	{ 9, YYAT_SHIFT, 27 },
	{ 8, YYAT_SHIFT, 24 },
	{ 6, YYAT_SHIFT, 22 },
	{ 2, YYAT_SHIFT, 19 },
	{ 1, YYAT_SHIFT, 18 },
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
	{ 53, YYAT_SHIFT, 61 },
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
	{ 53, YYAT_SHIFT, 62 },
	{ 53, YYAT_SHIFT, 63 },
	{ 53, YYAT_SHIFT, 64 },
	{ 53, YYAT_SHIFT, 65 },
	{ 53, YYAT_SHIFT, 66 },
	{ 53, YYAT_SHIFT, 67 },
	{ 53, YYAT_SHIFT, 68 },
	{ 53, YYAT_SHIFT, 69 },
	{ 53, YYAT_SHIFT, 70 },
	{ -1, YYAT_ERROR, 0 },
	{ 53, YYAT_SHIFT, 71 },
	{ 53, YYAT_SHIFT, 72 },
	{ 53, YYAT_SHIFT, 73 },
	{ 55, YYAT_SHIFT, 35 },
	{ 55, YYAT_SHIFT, 36 },
	{ 55, YYAT_SHIFT, 37 },
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
	{ 10, YYAT_SHIFT, 1 },
	{ -1, YYAT_ERROR, 0 },
	{ 10, YYAT_SHIFT, 2 },
	{ 10, YYAT_SHIFT, 3 },
	{ 10, YYAT_SHIFT, 4 },
	{ 10, YYAT_SHIFT, 5 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ 10, YYAT_SHIFT, 6 },
	{ 10, YYAT_SHIFT, 7 },
	{ -1, YYAT_ERROR, 0 },
	{ 10, YYAT_SHIFT, 8 },
	{ -1, YYAT_ERROR, 0 },
	{ 10, YYAT_SHIFT, 9 }
};
#define YYTOKENACTION_SIZE 271

static YYCONST yystateaction_t YYNEARFAR YYBASED_CODE yystateaction[] = {
	{ 104, 1, YYAT_DEFAULT, 10 },
	{ -165, 1, YYAT_DEFAULT, 27 },
	{ -166, 1, YYAT_DEFAULT, 27 },
	{ 0, 0, YYAT_REDUCE, 8 },
	{ 0, 0, YYAT_REDUCE, 9 },
	{ -192, 1, YYAT_DEFAULT, 44 },
	{ -167, 1, YYAT_DEFAULT, 27 },
	{ 0, 0, YYAT_REDUCE, 6 },
	{ 42, 1, YYAT_DEFAULT, 24 },
	{ -169, 1, YYAT_DEFAULT, 27 },
	{ 0, 1, YYAT_DEFAULT, 27 },
	{ 0, 0, YYAT_REDUCE, 1 },
	{ 0, 0, YYAT_REDUCE, 3 },
	{ 0, 0, YYAT_REDUCE, 4 },
	{ 0, 0, YYAT_REDUCE, 5 },
	{ 0, 0, YYAT_REDUCE, 7 },
	{ 0, 0, YYAT_REDUCE, 46 },
	{ 0, 0, YYAT_REDUCE, 47 },
	{ -170, 1, YYAT_DEFAULT, 27 },
	{ -172, 1, YYAT_DEFAULT, 27 },
	{ -172, 1, YYAT_DEFAULT, 44 },
	{ -173, 1, YYAT_DEFAULT, 44 },
	{ 0, 0, YYAT_REDUCE, 12 },
	{ 50, 1, YYAT_DEFAULT, 55 },
	{ 46, 1, YYAT_ERROR, 0 },
	{ 0, 0, YYAT_REDUCE, 15 },
	{ 37, 1, YYAT_REDUCE, 14 },
	{ -201, 1, YYAT_ERROR, 0 },
	{ 0, 0, YYAT_REDUCE, 2 },
	{ -209, 1, YYAT_DEFAULT, 44 },
	{ -213, 1, YYAT_DEFAULT, 44 },
	{ 0, 0, YYAT_REDUCE, 11 },
	{ 0, 0, YYAT_REDUCE, 10 },
	{ 0, 0, YYAT_REDUCE, 18 },
	{ 0, 0, YYAT_DEFAULT, 73 },
	{ 0, 0, YYAT_REDUCE, 23 },
	{ 0, 0, YYAT_REDUCE, 21 },
	{ 0, 0, YYAT_REDUCE, 22 },
	{ 0, 0, YYAT_REDUCE, 24 },
	{ 0, 0, YYAT_REDUCE, 19 },
	{ -28, 1, YYAT_ERROR, 0 },
	{ 0, 1, YYAT_REDUCE, 13 },
	{ 0, 0, YYAT_REDUCE, 16 },
	{ -230, 1, YYAT_DEFAULT, 44 },
	{ -265, 1, YYAT_ERROR, 0 },
	{ 0, 0, YYAT_REDUCE, 49 },
	{ 0, 0, YYAT_REDUCE, 42 },
	{ 0, 0, YYAT_REDUCE, 43 },
	{ 0, 0, YYAT_REDUCE, 44 },
	{ 0, 0, YYAT_REDUCE, 41 },
	{ 0, 0, YYAT_DEFAULT, 73 },
	{ 0, 0, YYAT_DEFAULT, 73 },
	{ 0, 0, YYAT_REDUCE, 45 },
	{ -92, 1, YYAT_ERROR, 0 },
	{ 0, 0, YYAT_REDUCE, 17 },
	{ -74, 1, YYAT_DEFAULT, 44 },
	{ 0, 0, YYAT_REDUCE, 50 },
	{ 0, 0, YYAT_REDUCE, 48 },
	{ 0, 0, YYAT_REDUCE, 37 },
	{ 0, 0, YYAT_REDUCE, 36 },
	{ 0, 0, YYAT_REDUCE, 25 },
	{ 0, 0, YYAT_DEFAULT, 73 },
	{ 0, 0, YYAT_DEFAULT, 73 },
	{ 0, 0, YYAT_DEFAULT, 73 },
	{ 0, 0, YYAT_REDUCE, 29 },
	{ 0, 0, YYAT_DEFAULT, 73 },
	{ 0, 0, YYAT_DEFAULT, 73 },
	{ 0, 0, YYAT_DEFAULT, 73 },
	{ 0, 0, YYAT_REDUCE, 33 },
	{ 0, 0, YYAT_DEFAULT, 73 },
	{ 0, 0, YYAT_DEFAULT, 73 },
	{ 0, 0, YYAT_DEFAULT, 73 },
	{ 0, 0, YYAT_DEFAULT, 73 },
	{ -212, 1, YYAT_DEFAULT, 55 },
	{ 0, 0, YYAT_REDUCE, 20 },
	{ -214, 1, YYAT_REDUCE, 28 },
	{ -244, 1, YYAT_REDUCE, 26 },
	{ -270, 1, YYAT_REDUCE, 27 },
	{ -225, 1, YYAT_REDUCE, 30 },
	{ -185, 1, YYAT_REDUCE, 31 },
	{ -190, 1, YYAT_REDUCE, 32 },
	{ -195, 1, YYAT_REDUCE, 34 },
	{ -204, 1, YYAT_REDUCE, 35 },
	{ -263, 1, YYAT_REDUCE, 38 },
	{ -232, 1, YYAT_REDUCE, 39 },
	{ -255, 1, YYAT_REDUCE, 40 }
};

static YYCONST yynontermgoto_t YYNEARFAR YYBASED_CODE yynontermgoto[] = {
	{ 10, 28 },
	{ 10, 15 },
	{ 10, 14 },
	{ 10, 13 },
	{ 73, 52 },
	{ 73, 85 },
	{ 55, 74 },
	{ 55, 38 },
	{ 24, 41 },
	{ 24, 25 },
	{ 10, 12 },
	{ 10, 16 },
	{ 10, 17 },
	{ 23, 40 },
	{ 23, 39 },
	{ 0, 10 },
	{ 0, 11 },
	{ 72, 84 },
	{ 71, 83 },
	{ 70, 82 },
	{ 69, 81 },
	{ 67, 80 },
	{ 66, 79 },
	{ 65, 78 },
	{ 63, 77 },
	{ 62, 76 },
	{ 61, 75 },
	{ 51, 59 },
	{ 50, 58 },
	{ 41, 42 },
	{ 34, 53 },
	{ 8, 26 }
};
#define YYNONTERMGOTO_SIZE 32

static YYCONST yystategoto_t YYNEARFAR YYBASED_CODE yystategoto[] = {
	{ 14, 10 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 25, 24 },
	{ 0, -1 },
	{ -2, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 5, 55 },
	{ 2, -1 },
	{ 0, -1 },
	{ 0, 41 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 19, 73 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 22, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 17, 73 },
	{ 16, 73 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ -3, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 15, 73 },
	{ 14, 73 },
	{ 13, 73 },
	{ 0, -1 },
	{ 12, 73 },
	{ 11, 73 },
	{ 10, 73 },
	{ 0, -1 },
	{ 9, 73 },
	{ 8, 73 },
	{ 7, 73 },
	{ 6, 73 },
	{ -6, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
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
