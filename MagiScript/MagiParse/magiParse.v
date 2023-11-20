    0  $accept : file $end

    1  file : fileGuts
    2       | file fileGuts

    3  fileGuts : gsDec
    4           | command
    5           | include
    6           | LABEL
    7           | stringList
    8           | COMMENT
    9           | END

   10  stringList : EQUATE STRING NUM
   11             | EQUATE NUM NUM

   12  include : INCLUDE STRING

   13  command : STRING ':' paramBlockList
   14          | STRING paramBlockList

   15  paramBlockList : paramBlock
   16                 | paramBlockList paramBlock

   17  paramBlock : '(' paramList ')'
   18             | '(' ')'

   19  paramList : param
   20            | paramList ',' param

   21  param : STRING
   22        | TEXTER
   23        | NUM
   24        | expression

   25  expression : '[' exprGuts ']'

   26  exprGuts : exprGuts ADD exprGuts
   27           | exprGuts AND exprGuts
   28           | exprGuts BITAND exprGuts
   29           | exprGuts DEC
   30           | exprGuts EQU exprGuts
   31           | exprGuts GRTR exprGuts
   32           | exprGuts GRTREQU exprGuts
   33           | exprGuts INC
   34           | exprGuts LESS exprGuts
   35           | exprGuts LESSEQU exprGuts
   36           | NOT exprGuts
   37           | WBANK exprGuts
   38           | exprGuts NOTEQU exprGuts
   39           | exprGuts OR exprGuts
   40           | exprGuts SUB exprGuts
   41           | STRING
   42           | FACEHERO
   43           | GAMECOUNT
   44           | NUM
   45           | expression

   46  gsDec : bitDec
   47        | varDec

   48  bitDec : BIT STRING STRING NUM NUM

   49  varDec : BYTE STRING STRING NUM
   50         | WORD STRING STRING NUM


state 0
	$accept : . file $end

	BIT  shift 1
	BYTE  shift 2
	COMMENT  shift 3
	END  shift 4
	EQUATE  shift 5
	INCLUDE  shift 6
	LABEL  shift 7
	STRING  shift 8
	WORD  shift 9

	file goto 10
	fileGuts goto 11
	gsDec goto 12
	command goto 13
	include goto 14
	stringList goto 15
	bitDec goto 16
	varDec goto 17


state 1
	bitDec : BIT . STRING STRING NUM NUM

	STRING  shift 18


state 2
	varDec : BYTE . STRING STRING NUM

	STRING  shift 19


state 3
	fileGuts : COMMENT .  (8)

	.  reduce 8


state 4
	fileGuts : END .  (9)

	.  reduce 9


state 5
	stringList : EQUATE . STRING NUM
	stringList : EQUATE . NUM NUM

	NUM  shift 20
	STRING  shift 21


state 6
	include : INCLUDE . STRING

	STRING  shift 22


state 7
	fileGuts : LABEL .  (6)

	.  reduce 6


state 8
	command : STRING . ':' paramBlockList
	command : STRING . paramBlockList

	'('  shift 23
	':'  shift 24

	paramBlock goto 25
	paramBlockList goto 26


state 9
	varDec : WORD . STRING STRING NUM

	STRING  shift 27


state 10
	$accept : file . $end  (0)
	file : file . fileGuts

	$end  accept
	BIT  shift 1
	BYTE  shift 2
	COMMENT  shift 3
	END  shift 4
	EQUATE  shift 5
	INCLUDE  shift 6
	LABEL  shift 7
	STRING  shift 8
	WORD  shift 9

	fileGuts goto 28
	gsDec goto 12
	command goto 13
	include goto 14
	stringList goto 15
	bitDec goto 16
	varDec goto 17


state 11
	file : fileGuts .  (1)

	.  reduce 1


state 12
	fileGuts : gsDec .  (3)

	.  reduce 3


state 13
	fileGuts : command .  (4)

	.  reduce 4


state 14
	fileGuts : include .  (5)

	.  reduce 5


state 15
	fileGuts : stringList .  (7)

	.  reduce 7


state 16
	gsDec : bitDec .  (46)

	.  reduce 46


state 17
	gsDec : varDec .  (47)

	.  reduce 47


state 18
	bitDec : BIT STRING . STRING NUM NUM

	STRING  shift 29


state 19
	varDec : BYTE STRING . STRING NUM

	STRING  shift 30


state 20
	stringList : EQUATE NUM . NUM

	NUM  shift 31


state 21
	stringList : EQUATE STRING . NUM

	NUM  shift 32


state 22
	include : INCLUDE STRING .  (12)

	.  reduce 12


state 23
	paramBlock : '(' . paramList ')'
	paramBlock : '(' . ')'

	')'  shift 33
	'['  shift 34
	NUM  shift 35
	STRING  shift 36
	TEXTER  shift 37

	expression goto 38
	param goto 39
	paramList goto 40


state 24
	command : STRING ':' . paramBlockList

	'('  shift 23

	paramBlock goto 25
	paramBlockList goto 41


state 25
	paramBlockList : paramBlock .  (15)

	.  reduce 15


state 26
	command : STRING paramBlockList .  (14)
	paramBlockList : paramBlockList . paramBlock

	'('  shift 23
	.  reduce 14

	paramBlock goto 42


state 27
	varDec : WORD STRING . STRING NUM

	STRING  shift 43


state 28
	file : file fileGuts .  (2)

	.  reduce 2


state 29
	bitDec : BIT STRING STRING . NUM NUM

	NUM  shift 44


state 30
	varDec : BYTE STRING STRING . NUM

	NUM  shift 45


state 31
	stringList : EQUATE NUM NUM .  (11)

	.  reduce 11


state 32
	stringList : EQUATE STRING NUM .  (10)

	.  reduce 10


state 33
	paramBlock : '(' ')' .  (18)

	.  reduce 18


state 34
	expression : '[' . exprGuts ']'

	'['  shift 34
	FACEHERO  shift 46
	GAMECOUNT  shift 47
	NUM  shift 48
	STRING  shift 49
	WBANK  shift 50
	NOT  shift 51

	expression goto 52
	exprGuts goto 53


state 35
	param : NUM .  (23)

	.  reduce 23


state 36
	param : STRING .  (21)

	.  reduce 21


state 37
	param : TEXTER .  (22)

	.  reduce 22


state 38
	param : expression .  (24)

	.  reduce 24


state 39
	paramList : param .  (19)

	.  reduce 19


state 40
	paramBlock : '(' paramList . ')'
	paramList : paramList . ',' param

	')'  shift 54
	','  shift 55


state 41
	command : STRING ':' paramBlockList .  (13)
	paramBlockList : paramBlockList . paramBlock

	'('  shift 23
	.  reduce 13

	paramBlock goto 42


state 42
	paramBlockList : paramBlockList paramBlock .  (16)

	.  reduce 16


state 43
	varDec : WORD STRING STRING . NUM

	NUM  shift 56


state 44
	bitDec : BIT STRING STRING NUM . NUM

	NUM  shift 57


state 45
	varDec : BYTE STRING STRING NUM .  (49)

	.  reduce 49


state 46
	exprGuts : FACEHERO .  (42)

	.  reduce 42


state 47
	exprGuts : GAMECOUNT .  (43)

	.  reduce 43


state 48
	exprGuts : NUM .  (44)

	.  reduce 44


state 49
	exprGuts : STRING .  (41)

	.  reduce 41


state 50
	exprGuts : WBANK . exprGuts

	'['  shift 34
	FACEHERO  shift 46
	GAMECOUNT  shift 47
	NUM  shift 48
	STRING  shift 49
	WBANK  shift 50
	NOT  shift 51

	expression goto 52
	exprGuts goto 58


state 51
	exprGuts : NOT . exprGuts

	'['  shift 34
	FACEHERO  shift 46
	GAMECOUNT  shift 47
	NUM  shift 48
	STRING  shift 49
	WBANK  shift 50
	NOT  shift 51

	expression goto 52
	exprGuts goto 59


state 52
	exprGuts : expression .  (45)

	.  reduce 45


state 53
	expression : '[' exprGuts . ']'
	exprGuts : exprGuts . ADD exprGuts
	exprGuts : exprGuts . AND exprGuts
	exprGuts : exprGuts . BITAND exprGuts
	exprGuts : exprGuts . DEC
	exprGuts : exprGuts . EQU exprGuts
	exprGuts : exprGuts . GRTR exprGuts
	exprGuts : exprGuts . GRTREQU exprGuts
	exprGuts : exprGuts . INC
	exprGuts : exprGuts . LESS exprGuts
	exprGuts : exprGuts . LESSEQU exprGuts
	exprGuts : exprGuts . NOTEQU exprGuts
	exprGuts : exprGuts . OR exprGuts
	exprGuts : exprGuts . SUB exprGuts

	']'  shift 60
	BITAND  shift 61
	ADD  shift 62
	AND  shift 63
	DEC  shift 64
	EQU  shift 65
	GRTR  shift 66
	GRTREQU  shift 67
	INC  shift 68
	LESS  shift 69
	LESSEQU  shift 70
	NOTEQU  shift 71
	OR  shift 72
	SUB  shift 73


state 54
	paramBlock : '(' paramList ')' .  (17)

	.  reduce 17


state 55
	paramList : paramList ',' . param

	'['  shift 34
	NUM  shift 35
	STRING  shift 36
	TEXTER  shift 37

	expression goto 38
	param goto 74


state 56
	varDec : WORD STRING STRING NUM .  (50)

	.  reduce 50


state 57
	bitDec : BIT STRING STRING NUM NUM .  (48)

	.  reduce 48


state 58
	exprGuts : exprGuts . ADD exprGuts
	exprGuts : exprGuts . AND exprGuts
	exprGuts : exprGuts . BITAND exprGuts
	exprGuts : exprGuts . DEC
	exprGuts : exprGuts . EQU exprGuts
	exprGuts : exprGuts . GRTR exprGuts
	exprGuts : exprGuts . GRTREQU exprGuts
	exprGuts : exprGuts . INC
	exprGuts : exprGuts . LESS exprGuts
	exprGuts : exprGuts . LESSEQU exprGuts
	exprGuts : WBANK exprGuts .  (37)
	exprGuts : exprGuts . NOTEQU exprGuts
	exprGuts : exprGuts . OR exprGuts
	exprGuts : exprGuts . SUB exprGuts

	.  reduce 37


state 59
	exprGuts : exprGuts . ADD exprGuts
	exprGuts : exprGuts . AND exprGuts
	exprGuts : exprGuts . BITAND exprGuts
	exprGuts : exprGuts . DEC
	exprGuts : exprGuts . EQU exprGuts
	exprGuts : exprGuts . GRTR exprGuts
	exprGuts : exprGuts . GRTREQU exprGuts
	exprGuts : exprGuts . INC
	exprGuts : exprGuts . LESS exprGuts
	exprGuts : exprGuts . LESSEQU exprGuts
	exprGuts : NOT exprGuts .  (36)
	exprGuts : exprGuts . NOTEQU exprGuts
	exprGuts : exprGuts . OR exprGuts
	exprGuts : exprGuts . SUB exprGuts

	.  reduce 36


state 60
	expression : '[' exprGuts ']' .  (25)

	.  reduce 25


state 61
	exprGuts : exprGuts BITAND . exprGuts

	'['  shift 34
	FACEHERO  shift 46
	GAMECOUNT  shift 47
	NUM  shift 48
	STRING  shift 49
	WBANK  shift 50
	NOT  shift 51

	expression goto 52
	exprGuts goto 75


state 62
	exprGuts : exprGuts ADD . exprGuts

	'['  shift 34
	FACEHERO  shift 46
	GAMECOUNT  shift 47
	NUM  shift 48
	STRING  shift 49
	WBANK  shift 50
	NOT  shift 51

	expression goto 52
	exprGuts goto 76


state 63
	exprGuts : exprGuts AND . exprGuts

	'['  shift 34
	FACEHERO  shift 46
	GAMECOUNT  shift 47
	NUM  shift 48
	STRING  shift 49
	WBANK  shift 50
	NOT  shift 51

	expression goto 52
	exprGuts goto 77


state 64
	exprGuts : exprGuts DEC .  (29)

	.  reduce 29


state 65
	exprGuts : exprGuts EQU . exprGuts

	'['  shift 34
	FACEHERO  shift 46
	GAMECOUNT  shift 47
	NUM  shift 48
	STRING  shift 49
	WBANK  shift 50
	NOT  shift 51

	expression goto 52
	exprGuts goto 78


state 66
	exprGuts : exprGuts GRTR . exprGuts

	'['  shift 34
	FACEHERO  shift 46
	GAMECOUNT  shift 47
	NUM  shift 48
	STRING  shift 49
	WBANK  shift 50
	NOT  shift 51

	expression goto 52
	exprGuts goto 79


state 67
	exprGuts : exprGuts GRTREQU . exprGuts

	'['  shift 34
	FACEHERO  shift 46
	GAMECOUNT  shift 47
	NUM  shift 48
	STRING  shift 49
	WBANK  shift 50
	NOT  shift 51

	expression goto 52
	exprGuts goto 80


state 68
	exprGuts : exprGuts INC .  (33)

	.  reduce 33


state 69
	exprGuts : exprGuts LESS . exprGuts

	'['  shift 34
	FACEHERO  shift 46
	GAMECOUNT  shift 47
	NUM  shift 48
	STRING  shift 49
	WBANK  shift 50
	NOT  shift 51

	expression goto 52
	exprGuts goto 81


state 70
	exprGuts : exprGuts LESSEQU . exprGuts

	'['  shift 34
	FACEHERO  shift 46
	GAMECOUNT  shift 47
	NUM  shift 48
	STRING  shift 49
	WBANK  shift 50
	NOT  shift 51

	expression goto 52
	exprGuts goto 82


state 71
	exprGuts : exprGuts NOTEQU . exprGuts

	'['  shift 34
	FACEHERO  shift 46
	GAMECOUNT  shift 47
	NUM  shift 48
	STRING  shift 49
	WBANK  shift 50
	NOT  shift 51

	expression goto 52
	exprGuts goto 83


state 72
	exprGuts : exprGuts OR . exprGuts

	'['  shift 34
	FACEHERO  shift 46
	GAMECOUNT  shift 47
	NUM  shift 48
	STRING  shift 49
	WBANK  shift 50
	NOT  shift 51

	expression goto 52
	exprGuts goto 84


state 73
	exprGuts : exprGuts SUB . exprGuts

	'['  shift 34
	FACEHERO  shift 46
	GAMECOUNT  shift 47
	NUM  shift 48
	STRING  shift 49
	WBANK  shift 50
	NOT  shift 51

	expression goto 52
	exprGuts goto 85


state 74
	paramList : paramList ',' param .  (20)

	.  reduce 20


state 75
	exprGuts : exprGuts . ADD exprGuts
	exprGuts : exprGuts . AND exprGuts
	exprGuts : exprGuts BITAND exprGuts .  (28)
	exprGuts : exprGuts . BITAND exprGuts
	exprGuts : exprGuts . DEC
	exprGuts : exprGuts . EQU exprGuts
	exprGuts : exprGuts . GRTR exprGuts
	exprGuts : exprGuts . GRTREQU exprGuts
	exprGuts : exprGuts . INC
	exprGuts : exprGuts . LESS exprGuts
	exprGuts : exprGuts . LESSEQU exprGuts
	exprGuts : exprGuts . NOTEQU exprGuts
	exprGuts : exprGuts . OR exprGuts
	exprGuts : exprGuts . SUB exprGuts

	DEC  shift 64
	EQU  shift 65
	GRTR  shift 66
	GRTREQU  shift 67
	INC  shift 68
	LESS  shift 69
	LESSEQU  shift 70
	NOTEQU  shift 71
	.  reduce 28


state 76
	exprGuts : exprGuts ADD exprGuts .  (26)
	exprGuts : exprGuts . ADD exprGuts
	exprGuts : exprGuts . AND exprGuts
	exprGuts : exprGuts . BITAND exprGuts
	exprGuts : exprGuts . DEC
	exprGuts : exprGuts . EQU exprGuts
	exprGuts : exprGuts . GRTR exprGuts
	exprGuts : exprGuts . GRTREQU exprGuts
	exprGuts : exprGuts . INC
	exprGuts : exprGuts . LESS exprGuts
	exprGuts : exprGuts . LESSEQU exprGuts
	exprGuts : exprGuts . NOTEQU exprGuts
	exprGuts : exprGuts . OR exprGuts
	exprGuts : exprGuts . SUB exprGuts

	BITAND  shift 61
	AND  shift 63
	DEC  shift 64
	EQU  shift 65
	GRTR  shift 66
	GRTREQU  shift 67
	INC  shift 68
	LESS  shift 69
	LESSEQU  shift 70
	NOTEQU  shift 71
	OR  shift 72
	.  reduce 26


state 77
	exprGuts : exprGuts . ADD exprGuts
	exprGuts : exprGuts AND exprGuts .  (27)
	exprGuts : exprGuts . AND exprGuts
	exprGuts : exprGuts . BITAND exprGuts
	exprGuts : exprGuts . DEC
	exprGuts : exprGuts . EQU exprGuts
	exprGuts : exprGuts . GRTR exprGuts
	exprGuts : exprGuts . GRTREQU exprGuts
	exprGuts : exprGuts . INC
	exprGuts : exprGuts . LESS exprGuts
	exprGuts : exprGuts . LESSEQU exprGuts
	exprGuts : exprGuts . NOTEQU exprGuts
	exprGuts : exprGuts . OR exprGuts
	exprGuts : exprGuts . SUB exprGuts

	DEC  shift 64
	EQU  shift 65
	GRTR  shift 66
	GRTREQU  shift 67
	INC  shift 68
	LESS  shift 69
	LESSEQU  shift 70
	NOTEQU  shift 71
	.  reduce 27


state 78
	exprGuts : exprGuts . ADD exprGuts
	exprGuts : exprGuts . AND exprGuts
	exprGuts : exprGuts . BITAND exprGuts
	exprGuts : exprGuts . DEC
	exprGuts : exprGuts EQU exprGuts .  (30)
	exprGuts : exprGuts . EQU exprGuts
	exprGuts : exprGuts . GRTR exprGuts
	exprGuts : exprGuts . GRTREQU exprGuts
	exprGuts : exprGuts . INC
	exprGuts : exprGuts . LESS exprGuts
	exprGuts : exprGuts . LESSEQU exprGuts
	exprGuts : exprGuts . NOTEQU exprGuts
	exprGuts : exprGuts . OR exprGuts
	exprGuts : exprGuts . SUB exprGuts

	DEC  shift 64
	INC  shift 68
	.  reduce 30


state 79
	exprGuts : exprGuts . ADD exprGuts
	exprGuts : exprGuts . AND exprGuts
	exprGuts : exprGuts . BITAND exprGuts
	exprGuts : exprGuts . DEC
	exprGuts : exprGuts . EQU exprGuts
	exprGuts : exprGuts GRTR exprGuts .  (31)
	exprGuts : exprGuts . GRTR exprGuts
	exprGuts : exprGuts . GRTREQU exprGuts
	exprGuts : exprGuts . INC
	exprGuts : exprGuts . LESS exprGuts
	exprGuts : exprGuts . LESSEQU exprGuts
	exprGuts : exprGuts . NOTEQU exprGuts
	exprGuts : exprGuts . OR exprGuts
	exprGuts : exprGuts . SUB exprGuts

	DEC  shift 64
	EQU  shift 65
	INC  shift 68
	NOTEQU  shift 71
	.  reduce 31


state 80
	exprGuts : exprGuts . ADD exprGuts
	exprGuts : exprGuts . AND exprGuts
	exprGuts : exprGuts . BITAND exprGuts
	exprGuts : exprGuts . DEC
	exprGuts : exprGuts . EQU exprGuts
	exprGuts : exprGuts . GRTR exprGuts
	exprGuts : exprGuts GRTREQU exprGuts .  (32)
	exprGuts : exprGuts . GRTREQU exprGuts
	exprGuts : exprGuts . INC
	exprGuts : exprGuts . LESS exprGuts
	exprGuts : exprGuts . LESSEQU exprGuts
	exprGuts : exprGuts . NOTEQU exprGuts
	exprGuts : exprGuts . OR exprGuts
	exprGuts : exprGuts . SUB exprGuts

	DEC  shift 64
	EQU  shift 65
	INC  shift 68
	NOTEQU  shift 71
	.  reduce 32


state 81
	exprGuts : exprGuts . ADD exprGuts
	exprGuts : exprGuts . AND exprGuts
	exprGuts : exprGuts . BITAND exprGuts
	exprGuts : exprGuts . DEC
	exprGuts : exprGuts . EQU exprGuts
	exprGuts : exprGuts . GRTR exprGuts
	exprGuts : exprGuts . GRTREQU exprGuts
	exprGuts : exprGuts . INC
	exprGuts : exprGuts LESS exprGuts .  (34)
	exprGuts : exprGuts . LESS exprGuts
	exprGuts : exprGuts . LESSEQU exprGuts
	exprGuts : exprGuts . NOTEQU exprGuts
	exprGuts : exprGuts . OR exprGuts
	exprGuts : exprGuts . SUB exprGuts

	DEC  shift 64
	EQU  shift 65
	GRTR  shift 66
	GRTREQU  shift 67
	INC  shift 68
	NOTEQU  shift 71
	.  reduce 34


state 82
	exprGuts : exprGuts . ADD exprGuts
	exprGuts : exprGuts . AND exprGuts
	exprGuts : exprGuts . BITAND exprGuts
	exprGuts : exprGuts . DEC
	exprGuts : exprGuts . EQU exprGuts
	exprGuts : exprGuts . GRTR exprGuts
	exprGuts : exprGuts . GRTREQU exprGuts
	exprGuts : exprGuts . INC
	exprGuts : exprGuts . LESS exprGuts
	exprGuts : exprGuts LESSEQU exprGuts .  (35)
	exprGuts : exprGuts . LESSEQU exprGuts
	exprGuts : exprGuts . NOTEQU exprGuts
	exprGuts : exprGuts . OR exprGuts
	exprGuts : exprGuts . SUB exprGuts

	DEC  shift 64
	EQU  shift 65
	GRTR  shift 66
	GRTREQU  shift 67
	INC  shift 68
	NOTEQU  shift 71
	.  reduce 35


state 83
	exprGuts : exprGuts . ADD exprGuts
	exprGuts : exprGuts . AND exprGuts
	exprGuts : exprGuts . BITAND exprGuts
	exprGuts : exprGuts . DEC
	exprGuts : exprGuts . EQU exprGuts
	exprGuts : exprGuts . GRTR exprGuts
	exprGuts : exprGuts . GRTREQU exprGuts
	exprGuts : exprGuts . INC
	exprGuts : exprGuts . LESS exprGuts
	exprGuts : exprGuts . LESSEQU exprGuts
	exprGuts : exprGuts NOTEQU exprGuts .  (38)
	exprGuts : exprGuts . NOTEQU exprGuts
	exprGuts : exprGuts . OR exprGuts
	exprGuts : exprGuts . SUB exprGuts

	DEC  shift 64
	INC  shift 68
	.  reduce 38


state 84
	exprGuts : exprGuts . ADD exprGuts
	exprGuts : exprGuts . AND exprGuts
	exprGuts : exprGuts . BITAND exprGuts
	exprGuts : exprGuts . DEC
	exprGuts : exprGuts . EQU exprGuts
	exprGuts : exprGuts . GRTR exprGuts
	exprGuts : exprGuts . GRTREQU exprGuts
	exprGuts : exprGuts . INC
	exprGuts : exprGuts . LESS exprGuts
	exprGuts : exprGuts . LESSEQU exprGuts
	exprGuts : exprGuts . NOTEQU exprGuts
	exprGuts : exprGuts OR exprGuts .  (39)
	exprGuts : exprGuts . OR exprGuts
	exprGuts : exprGuts . SUB exprGuts

	BITAND  shift 61
	AND  shift 63
	DEC  shift 64
	EQU  shift 65
	GRTR  shift 66
	GRTREQU  shift 67
	INC  shift 68
	LESS  shift 69
	LESSEQU  shift 70
	NOTEQU  shift 71
	.  reduce 39


state 85
	exprGuts : exprGuts . ADD exprGuts
	exprGuts : exprGuts . AND exprGuts
	exprGuts : exprGuts . BITAND exprGuts
	exprGuts : exprGuts . DEC
	exprGuts : exprGuts . EQU exprGuts
	exprGuts : exprGuts . GRTR exprGuts
	exprGuts : exprGuts . GRTREQU exprGuts
	exprGuts : exprGuts . INC
	exprGuts : exprGuts . LESS exprGuts
	exprGuts : exprGuts . LESSEQU exprGuts
	exprGuts : exprGuts . NOTEQU exprGuts
	exprGuts : exprGuts . OR exprGuts
	exprGuts : exprGuts SUB exprGuts .  (40)
	exprGuts : exprGuts . SUB exprGuts

	BITAND  shift 61
	AND  shift 63
	DEC  shift 64
	EQU  shift 65
	GRTR  shift 66
	GRTREQU  shift 67
	INC  shift 68
	LESS  shift 69
	LESSEQU  shift 70
	NOTEQU  shift 71
	OR  shift 72
	.  reduce 40


36 tokens, 15 nonterminals
51 grammar rules, 86 states
