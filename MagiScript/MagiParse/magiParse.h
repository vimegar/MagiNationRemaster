#ifndef _MAGIPARSE_H
#define _MAGIPARSE_H

#include <myacc.h>

extern YYCONST yymparse_t YYNEAR magiParse;

#ifndef YYPARSENAME
#define YYPARSENAME magiParse
#endif

#ifndef YYSTYPE
union tagYYSTYPE {
/* #line 14 "C:\\Work\\MagiScript\\MagiParse\\magiParse.y" */

	u32				number;
	char			string [ 255 ];
	ListPtr			list;
	ParamPtr		param;
	ParamBlockPtr	paramBlock;
	
};

#define YYSTYPE union tagYYSTYPE
#endif

#define BIT 257
#define BITAND 258
#define BYTE 259
#define COMMENT 260
#define END 261
#define EQUATE 262
#define FACEHERO 263
#define GAMECOUNT 264
#define INCLUDE 265
#define LABEL 266
#define NUM 267
#define STRING 268
#define TEXTER 269
#define WORD 270
#define WBANK 271
#define ADD 272
#define AND 273
#define DEC 274
#define EQU 275
#define GRTR 276
#define GRTREQU 277
#define INC 278
#define LESS 279
#define LESSEQU 280
#define NOT 281
#define NOTEQU 282
#define OR 283
#define SUB 284
#endif
