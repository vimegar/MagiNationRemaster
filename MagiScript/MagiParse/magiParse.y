%{
/********************************/
#include "includes.h"
#include "magiLex.h"
#include "magiParse.h"
#include "miyconv.h"

#define	YYMERROR magiParseError
%}

%name	magiParse

%union
	{
	u32				number;
	char			string [ 255 ];
	ListPtr			list;
	ParamPtr		param;
	ParamBlockPtr	paramBlock;
	}

%type	<param>			expression
%type	<param>			exprGuts
%type	<param>			param
%type	<paramBlock>	paramBlock
%type	<list>			paramBlockList
%type	<list>			paramList

%token				BIT
%token				BITAND
%token				BYTE
%token				COMMENT
%token				END
%token				EQUATE
%token				FACEHERO
%token				GAMECOUNT
%token				INCLUDE
%token	<string>	LABEL
%token	<number>	NUM
%token	<string>	STRING
%token	<string>	TEXTER
%token				WORD
%token	<string>	WBANK

%token		ADD
%token		AND
%token		BITAND
%token		DEC
%token		EQU
%token		GRTR
%token		GRTREQU
%token		INC
%token		LESS
%token		LESSEQU
%token		NOT
%token		NOTEQU
%token		OR
%token		SUB
%token		WBANK

%left		ADD SUB
%left		OR
%left		AND BITAND
%left		LESS LESSEQU
%left		GRTR GRTREQU
%left		EQU NOTEQU
%nonassoc	NOT INC DEC WBANK

%%

/********************************/
// FILE
file:			fileGuts
	|			file fileGuts
	;

fileGuts:		gsDec						{	;	}
	|			command						{	;	}
	|			include						{	;	}
	|			LABEL						{	Label_New($1);	}
	|			stringList					{	;	}
	|			COMMENT						{	;	}
	|			END							{	yymexit(yy,1);	}
	;

/********************************/
// STRING LIST

stringList:		EQUATE STRING NUM			{	StringList_Add( &equateList, $2, $3);	}
	|			EQUATE NUM NUM				{	;	}
	;

/********************************/
// INCLUDE, REFERENCE
include:		INCLUDE	STRING				{	Parse($2);	}
	;

/********************************/
// SCRIPT
command:		STRING	':'	 paramBlockList	{	Command_New($1, $3);	}
	|			STRING	paramBlockList		{	Command_New($1, $2);	}
	;

paramBlockList:	paramBlock					{	$$ = ParamBlockList_New($1);	}
	|			paramBlockList paramBlock	{	List_InsertNode($1, $2);	}
	;

paramBlock:		'(' paramList ')'			{	$$ = ParamBlock_New($2);	}
	|			'(' ')'						{	$$ = 0;	}
	;

paramList:		param						{	$$ = ParamList_New($1);	}
	|			paramList ',' param			{	List_InsertNode($1, $3);	}
	;

param:			STRING						{	$$ = Param_New(PARAM_STRING, $1, 0, 0, 0);	}
	|			TEXTER						{	$$ = Param_New(PARAM_STRING, $1, 0, 0, 0);	}
	|			NUM							{	$$ = Param_New(PARAM_NUMBER, 0, $1, 0, 0);	}
	|			expression					{	$$ = $1;	}
	;

/********************************/
// EXPRESSION
expression:		'[' exprGuts ']'			{	$$ = $2;	}
	;

exprGuts:		exprGuts ADD exprGuts		{	$$ = Param_New(PARAM_EXPR_OPERATOR, "EXPR_ADD", 0, $1, $3);	}
	|			exprGuts AND exprGuts		{	$$ = Param_New(PARAM_EXPR_OPERATOR, "EXPR_AND", 0, $1, $3);	}
	|			exprGuts BITAND exprGuts	{	$$ = Param_New(PARAM_EXPR_OPERATOR, "EXPR_BITAND", 0, $1, $3);	}
	|			exprGuts DEC				{	$$ = Param_New(PARAM_EXPR_OPERATOR, "EXPR_DEC", 0, $1, 0);	}
	|			exprGuts EQU exprGuts		{	$$ = Param_New(PARAM_EXPR_OPERATOR, "EXPR_EQU", 0, $1, $3);	}
	|			exprGuts GRTR exprGuts		{	$$ = Param_New(PARAM_EXPR_OPERATOR, "EXPR_GRTR", 0, $1, $3);	}
	|			exprGuts GRTREQU exprGuts	{	$$ = Param_New(PARAM_EXPR_OPERATOR, "EXPR_GRTREQU", 0, $1, $3);	}
	|			exprGuts INC				{	$$ = Param_New(PARAM_EXPR_OPERATOR, "EXPR_INC", 0, $1, 0);	}
	|			exprGuts LESS exprGuts		{	$$ = Param_New(PARAM_EXPR_OPERATOR, "EXPR_LESS", 0, $1, $3);	}
	|			exprGuts LESSEQU exprGuts	{	$$ = Param_New(PARAM_EXPR_OPERATOR, "EXPR_LESSEQU", 0, $1, $3);	}
	|			NOT exprGuts				{	$$ = Param_New(PARAM_EXPR_OPERATOR, "EXPR_NOT", 0, $2, 0);	}
	|			WBANK exprGuts				{	$$ = Param_New(PARAM_EXPR_WBANK, 	$1, 0, $2, 0);	}
	|			exprGuts NOTEQU exprGuts	{	$$ = Param_New(PARAM_EXPR_OPERATOR, "EXPR_NOTEQU", 0, $1, $3);	}
	|			exprGuts OR exprGuts		{	$$ = Param_New(PARAM_EXPR_OPERATOR, "EXPR_OR", 0, $1, $3);	}
	|			exprGuts SUB exprGuts		{	$$ = Param_New(PARAM_EXPR_OPERATOR, "EXPR_SUB", 0, $1, $3);	}
	|			STRING						{	$$ = Param_New(PARAM_EXPR_GAMESTATE, $1, 0, 0, 0);	}
	|			FACEHERO					{	$$ = Param_New(PARAM_EXPR_FACEHERO, 0, 0, 0, 0);	}
	|			GAMECOUNT					{	$$ = Param_New(PARAM_EXPR_GAMECOUNT, 0, 0, 0, 0);	}
	|			NUM							{	$$ = Param_New(PARAM_EXPR_NUMCONST, 0, $1, 0, 0);	}
	|			expression					{	$$ = $1;	}
	;

/********************************/
// DECLARATIONS
gsDec:			bitDec						{	;	}
	|			varDec						{	;	}
	;

bitDec:			BIT STRING STRING NUM NUM	{	VarDecList_AddBit($2, $3, $4, $5);	}
	;		

varDec:			BYTE STRING STRING NUM		{	VarDecList_AddByte($2, $3, $4);	}
	|			WORD STRING STRING NUM		{	VarDecList_AddWord($2, $3, $4);	}
	;

%%

/********************************/
void	magiParseError ( yymparse_t* yy, const char* text )
	{
	WriteScript_Error ("An interesting SYNTAX ERROR has appeared! What are you going to do?");
	}

