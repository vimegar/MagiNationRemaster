%{
/********************************/
#include "includes.h"
#include "magiPackLex.h"
#include "magiPackParse.h"
#include "milconv.h"

%}

%name	magiPackLex

%x		ST_BYTE
%x		ST_COLNCOMM
%x		ST_WORD

%%
%{
%}

/********************************/
// BYTE

"DB"	|
"DEFB"									BEGIN ST_BYTE;

<ST_BYTE><<EOF>>						return FINI;
<ST_BYTE>\n								BEGIN INITIAL;
<ST_BYTE>[\t a-zA-Z0-9?!$&:_/+\-()<>]+,?	gFileSize += 1;

/********************************/
// WORD
"DW"	|
"DEFW"									BEGIN ST_WORD;

<ST_WORD><<EOF>>						return FINI;
<ST_WORD>\n								BEGIN INITIAL;
<ST_WORD>[\t a-zA-Z0-9?!$&:_/+\-()<>]+,?	gFileSize += 2;

/********************************/
// COMMENT
";"										BEGIN ST_COLNCOMM;
<ST_COLNCOMM><<EOF>>					return FINI;
<ST_COLNCOMM>\n							BEGIN INITIAL;						
<ST_COLNCOMM>.							;

/********************************/
// JUNK
[ \t\n]									;
.										;
<<EOF>>									return FINI;

%%


