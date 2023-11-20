%{
/********************************/
#include "includes.h"
#include "magiLex.h"
#include "magiParse.h"
#include "milconv.h"

%}

%name	magiLex

%x	ST_COMMENT
%x	ST_SLASHCOM
%x	ST_TEXTER

%%
%{
YYSTYPE *yymlvalptr = (YYSTYPE *) yy->yymdata;
yyassert(yymlvalptr != NULL);
#define yylval (*yymlvalptr)
%}

/********************************/
// TOKENS
"%BIT"							return BIT;
"%BYTE"							return BYTE;
"%EQUATE"						return EQUATE;		
"%INCLUDE"						return INCLUDE;			
"%WORD"							return WORD;

"&&"							return AND;
"&"								return BITAND;
"||"	|
"|"								return OR;
"!="							return NOTEQU;
"!"								return NOT;
"++"							return INC;
"+"								return ADD;
"--"							return DEC;
"-"								return SUB;

">="							return GRTREQU;
">"								return GRTR;

"<="							return LESSEQU;
"<"								return LESS;

"=="	|
"="								return EQU;

":"[a-zA-Z0-9_?]+				{
								strcpy ( yylval.string, &yytext[1] );
								return WBANK;
								}

"TRUE"							{
								yylval.number = 0xFFFF;
								return NUM;
								}
"FALSE"							{
								yylval.number = 0;
								return NUM;
								}

"GAMECOUNT"	|
"GC"							return GAMECOUNT;

"FACEHERO"						return FACEHERO;

^("?_"|"_")+[a-zA-Z0-9_?]*		{
								strcpy ( yylval.string, yytext );
								return LABEL;
								}

#[a-zA-Z_?\\]+[.a-zA-Z0-9_?\\]*	{
								strcpy ( yylval.string, &yytext[1] );
								return STRING;
								}

[a-zA-Z_?\\]+[.a-zA-Z0-9_?\\]*	{
								if(StringList_Verify(&equateList, yytext))
									{
									yylval.number = StringList_GetNumber(&equateList, yytext);
									return NUM;
									}
								strcpy ( yylval.string, yytext );
								return STRING;
								}

"^"-?[0-9]+						{
								yylval.number = (1<<(atoi(&yytext[1])));
								return NUM;
								}
						
-?[0-9]+						{
								yylval.number = atoi(yytext);
								return NUM;
								}

/********************************/
// TEXTER

"\""									BEGIN ST_TEXTER;
<ST_TEXTER>"\""							BEGIN INITIAL;
<ST_TEXTER>[ \t[a-zA-Z0-9.,:!?'-=$#%]+	{
										strcpy ( yylval.string, yytext );
										return TEXTER;
										}

/********************************/
// COMMENT
"/*"							BEGIN ST_COMMENT;
<ST_COMMENT><<EOF>>				return END;
<ST_COMMENT>"*/"				{
								BEGIN INITIAL;
								return COMMENT;
								}
<ST_COMMENT>\n					gLine++;
<ST_COMMENT>.					;

/********************************/
// SLASHCOM
"//"							BEGIN ST_SLASHCOM;
<ST_SLASHCOM><<EOF>>			return END;
<ST_SLASHCOM>\n					{
								gLine++;
								BEGIN INITIAL;
								return COMMENT;
								}						
<ST_SLASHCOM>.					;

/********************************/
// JUNK
\n								gLine++;
[ \t]							;
.								return yytext[0];
<<EOF>>							return END;

%%


