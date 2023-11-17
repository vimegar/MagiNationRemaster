;Size:4008
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\OROTHE\CITY\MAP04\OROCITY04.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_OROCITY04_DR_1
	DB	CMD_HEROSETDOOR
		DB	$41
		DB	$24

	DB	CMD_JUMP
		DB	:?_OROCITY01
		DW	(?_OROCITY01&$FFFF)

;********************************
?_OROCITY04_DR_2
	DB	CMD_IF
		DB	EXPR_AND
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$12
		DB	EXPR_EQU
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$04
		DB	:?_OROCITY04_CITYLEAVE
		DW	(?_OROCITY04_CITYLEAVE&$FFFF)

	DB	CMD_END

;********************************
?_OROCITY04_TR_1

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$07),(?AL+$00),(?AL+$0C),(?AL+$0C),(?AL+$04),(?AL+$11),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$0C),(?AL+$00),(?AL+$12),(?AL+$13),(?AL+$04),(?AL+$11),(?AL+$12),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_2

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$08),(?AL+$03),(?AL+$03),(?AL+$04),(?AL+$0D),?HURRY
		DB	(?AU+$0F),(?AL+$00),(?AL+$11),(?AL+$00),(?AL+$12),(?AL+$08),(?AL+$13),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AU+$0E),(?AL+$11),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_3

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$00),(?AL+$11),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AU+$16),(?AL+$00),(?AL+$11),(?AL+$0B),(?AL+$0E),(?AL+$11),(?AL+$03),(?AL+$12),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_4

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AU+$13),(?AL+$11),(?AL+$04),(?AL+$0C),(?AL+$0E),(?AL+$11),(?AL+$12),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_5

	DB	CMD_TEXTWRITE
		DB	(?AU+$04),(?AL+$0C),(?AL+$01),(?AL+$04),(?AL+$11),(?AL+$12),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AU+$03),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$14),(?AL+$02),(?AL+$13),(?AL+$08),(?AL+$0E),(?AL+$0D),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_6

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),?SPCE,(?AL+$12),(?AL+$04),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$01),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$12),?HURRY
		DB	(?AL+$02),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$0D),(?AL+$08),(?AL+$02),(?AL+$0B),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$03),(?AL+$08),(?AL+$05),(?AL+$05),(?AL+$04),(?AL+$11),(?AL+$04),(?AL+$0D),(?AL+$13),?SPCE,(?AU+$03),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0C),?HURRY
		DB	(?AU+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$0C),(?AL+$0E),(?AL+$0E),(?AL+$0D),(?AL+$0B),(?AL+$00),(?AL+$0D),(?AL+$03),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_7

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AU+$01),(?AU+$11),(?AU+$04),(?AU+$00),(?AU+$0A),?HURRY
		DB	(?AU+$12),(?AL+$13),(?AL+$14),(?AL+$05),(?AL+$05),?EXCL,?WAIT
		DB	(?AL+$01),(?AL+$18),?SPCE,(?AU+$04),(?AL+$01),(?AL+$18),(?AL+$0B),(?AL+$0E),(?AL+$0D),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_8

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$0D),(?AL+$02),(?AL+$08),(?AL+$04),(?AL+$0D),(?AL+$13),?HURRY
		DB	(?AU+$13),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$12),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_9

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$09),(?AL+$0E),(?AL+$14),(?AL+$11),(?AL+$0D),(?AL+$04),(?AL+$18),(?AL+$12),?HURRY
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AU+$0E),(?AL+$11),(?AL+$16),(?AL+$08),(?AL+$0D),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_10

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$13),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$18),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$12),(?AL+$04),(?AL+$00),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_11

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),?SPCE,(?AU+$13),(?AL+$00),(?AL+$02),(?AL+$13),(?AL+$08),(?AL+$02),(?AL+$00),(?AL+$0B),?HURRY
		DB	(?AU+$15),(?AL+$08),(?AL+$02),(?AL+$13),(?AL+$0E),(?AL+$11),(?AL+$08),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$13),?HURRY
		DB	(?AU+$07),(?AL+$08),(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$11),(?AL+$18),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_12

	DB	CMD_TEXTWRITE
		DB	(?AU+$09),(?AL+$0E),(?AL+$14),(?AL+$11),(?AL+$0D),(?AL+$04),(?AL+$18),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AU+$08),(?AL+$0C),(?AL+$0C),(?AL+$0E),(?AL+$11),(?AL+$13),(?AL+$00),(?AL+$0B),(?AL+$08),(?AL+$13),(?AL+$18),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_13

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$0F),(?AL+$00),(?AL+$13),(?AL+$07),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AU+$0E),?APST,(?AU+$10),(?AL+$14),(?AL+$00),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_14

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$0B),(?AL+$04),(?AL+$06),(?AL+$04),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AU+$00),(?AL+$06),(?AL+$11),(?AL+$00),(?AL+$0C),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_15

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$14),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),(?AL+$12),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AU+$0C),(?AL+$18),(?AL+$12),(?AL+$13),(?AL+$04),(?AL+$11),(?AL+$18),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_16

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),?SPCE,(?AU+$12),(?AL+$13),(?AL+$14),(?AL+$03),(?AL+$18),?SPCE,(?AL+$08),(?AL+$0D),?HURRY
		DB	(?AU+$0F),(?AL+$07),(?AL+$18),(?AL+$12),(?AL+$08),(?AL+$02),(?AL+$12),?WAIT
		DB	(?AL+$01),(?AL+$18),?SPCE,(?AU+$0E),(?AL+$11),(?AL+$0B),(?AL+$0E),(?AL+$0D),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_17

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AU+$0C),(?AL+$04),?WAIT
		DB	(?AL+$01),(?AL+$18),?SPCE,(?AU+$06),(?AL+$0E),(?AL+$06),(?AL+$0E),(?AL+$11),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_18

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),(?AL+$04),?COLN,?WAIT
		DB	(?AU+$08),(?AU+$0E),(?AU+$14),?SPCE,(?0+$04),?SPCE,(?AU+$09),(?AL+$0E),(?AL+$0A),(?AL+$04),?HURRY
		DB	(?AU+$01),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$12),?WAIT
		DB	?SPCE,?SPCE,?SPCE,?SPCE,?DASH,?DASH,(?AU+$0E),(?AL+$11),(?AL+$0B),(?AL+$0E),(?AL+$0D),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_19

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$04),(?AL+$03),?HURRY
		DB	(?AL+$08),(?AL+$0D),?SPCE,(?AL+$01),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$14),(?AL+$0F),?WAIT
		DB	(?AL+$01),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$12),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$13),(?AL+$0E),(?AL+$11),(?AL+$0D),?HURRY
		DB	(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$0F),(?AL+$00),(?AL+$06),(?AL+$04),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_TR_20

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AL+$00),?SPCE,(?AL+$01),(?AL+$0E),(?AL+$0E),(?AL+$0A),?HURRY
		DB	(?AL+$0B),(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$0B),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?WAIT
		DB	(?AL+$13),(?AL+$00),(?AL+$01),(?AL+$0B),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$08),(?AL+$13),(?AL+$0B),(?AL+$04),?COLN,?WAIT
		DB	(?AU+$04),(?AL+$15),(?AL+$14),?APST,(?AL+$12),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$03),(?AL+$00),(?AL+$18),?PERD,?PERD,?PERD,?WAIT
		DB	(?AL+$00),(?AL+$13),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$09),(?AL+$04),(?AL+$0B),(?AL+$0B),(?AL+$18),(?AL+$01),(?AL+$04),(?AL+$00),(?AL+$0D),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$01),(?AL+$04),(?AL+$00),(?AL+$02),(?AL+$07),?PERD,?WAIT
		DB	?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$0E),(?AL+$07),?SPCE,(?AL+$01),(?AL+$0E),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROCITY04_HISTORIAN_TXT
	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	:_INTRO
		DW	$0000
		DW	(_INTRO&$FFFF)
		DB	:_HISTORIAN
		DW	$0001
		DW	(_HISTORIAN&$FFFF)
		DB	:_MET_BARRIER
		DW	$0002
		DW	(_MET_BARRIER&$FFFF)
		DB	:_DISPELL_X_HUNT
		DW	$0003
		DW	(_DISPELL_X_HUNT&$FFFF)
		DB	:_END
		DW	$0004
		DW	(_END&$FFFF)
		DB	$FF

;********************************
_INTRO

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$0E),(?AL+$16),?APST,(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$16),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),?QUST,?WAIT
		DB	?EOF


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AL+$0E),(?AL+$0B),(?AL+$03),?PERD,?WAIT
		DB	?EOF


	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$16),(?AL+$08),(?AL+$12),(?AL+$07),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$18),?APST,(?AL+$03),?HURRY
		DB	(?AL+$0B),(?AL+$04),(?AL+$13),?SPCE,(?AL+$0C),(?AL+$04),?SPCE,(?AL+$06),(?AL+$0E),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$13),?WAIT
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$00),?SPCE,(?AL+$12),(?AL+$16),(?AL+$08),(?AL+$0C),?HURRY
		DB	(?AL+$0E),(?AL+$0D),(?AL+$02),(?AL+$04),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$16),(?AL+$07),(?AL+$08),(?AL+$0B),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THISACTORRESTORESTATE

;********************************
_HISTORIAN

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?SPCE,(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$04),(?AL+$13),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$00),(?AL+$12),(?AL+$0A),?SPCE,(?AL+$0C),(?AL+$04),?WAIT
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_OROTHE_TEXT
		DW	(?_HISTORIAN_OROTHE_TEXT&$FFFF)

;********************************
_MET_BARRIER
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)
		DB	$03


	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?SPCE,(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$04),(?AL+$13),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$00),(?AL+$12),(?AL+$0A),?SPCE,(?AL+$0C),(?AL+$04),?WAIT
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$03),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$00),(?AL+$01),(?AL+$0E),(?AL+$14),(?AL+$13),?WAIT
		DB	(?AL+$01),(?AL+$00),(?AL+$11),(?AL+$11),(?AL+$08),(?AL+$04),(?AL+$11),(?AL+$12),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$00),(?AL+$11),(?AL+$11),(?AL+$08),(?AL+$04),(?AL+$11),(?AL+$12),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?HURRY
		DB	(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AL+$04),(?AL+$0B),(?AL+$04),(?AL+$02),(?AL+$13),(?AL+$11),(?AL+$08),(?AL+$02),?SPCE,(?AL+$05),(?AL+$08),(?AL+$04),(?AL+$0B),(?AL+$03),?HURRY
		DB	(?AL+$01),(?AL+$0B),(?AL+$0E),(?AL+$02),(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$0C),(?AL+$18),?WAIT
		DB	(?AL+$0F),(?AL+$11),(?AL+$0E),(?AL+$06),(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$12),?SPCE,(?AL+$08),(?AL+$0D),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$06),(?AL+$04),(?AL+$18),(?AL+$12),(?AL+$04),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$04),(?AL+$13),?APST,(?AL+$02),(?AL+$0B),(?AL+$04),(?AL+$11),(?AL+$08),(?AL+$02),?COMM,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$12),(?AL+$00),(?AL+$18),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$04),(?AL+$11),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),(?AL+$0D),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	(?AU+$00),?SPCE,(?AL+$16),(?AL+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$03),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$13),?HURRY
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),(?AL+$0D),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$07),?EXCL,?SPCE,?SPCE,(?AU+$00),(?AL+$0D),?HURRY
		DB	?EOF

	DB	CMD_TEXTWRITE
		DB	(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$13),(?AL+$0C),(?AL+$04),(?AL+$0D),(?AL+$13),?EXCL,?WAIT
		DB	(?AU+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$05),(?AL+$14),(?AL+$0B),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$12),(?AL+$14),(?AL+$0F),(?AL+$0F),(?AL+$0E),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$0C),(?AL+$0C),(?AL+$0C),(?AL+$0C),?PERD,?PERD,?PERD,?WAIT
		DB	?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$13),(?AL+$04),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$12),(?AL+$04),(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?SPCE,(?AL+$01),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),(?AL+$13),?HURRY
		DB	(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$01),(?AL+$18),?SPCE,(?AU+$0C),(?AL+$0E),(?AL+$01),(?AL+$08),(?AL+$12),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$12),(?AL+$13),(?AL+$14),(?AL+$03),(?AL+$18),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$11),(?AL+$13),(?AL+$12),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$11),(?AL+$04),(?AL+$0B),(?AL+$08),(?AL+$02),(?AL+$12),?WAIT
		DB	(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0D),(?AL+$04),(?AL+$00),(?AL+$11),(?AL+$01),(?AL+$18),?HURRY
		DB	(?AL+$11),(?AL+$14),(?AL+$08),(?AL+$0D),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0B),(?AL+$03),(?AL+$08),(?AL+$04),(?AL+$11),(?AL+$12),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$03),?WAIT
		DB	(?AL+$0C),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$15),(?AL+$08),(?AL+$12),(?AL+$08),(?AL+$13),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$0C),?COMM,?SPCE,(?AL+$13),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),?EXCL,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$18),?SPCE,(?AL+$12),(?AL+$00),(?AL+$18),?SPCE,(?AL+$08),(?AL+$13),?APST,(?AL+$12),?HURRY
		DB	(?AL+$13),(?AL+$0E),(?AL+$0E),?SPCE,(?AL+$03),(?AL+$00),(?AL+$0D),(?AL+$06),(?AL+$04),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$12),?COMM,?WAIT
		DB	(?AL+$12),(?AL+$0E),?SPCE,(?AU+$08),?SPCE,(?AL+$00),(?AL+$0C),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$0F),(?AL+$11),(?AL+$08),(?AL+$12),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$11),?SPCE,(?AL+$14),(?AL+$0D),(?AL+$13),(?AL+$08),(?AL+$0B),?WAIT
		DB	(?AL+$16),(?AL+$04),?SPCE,(?AL+$11),(?AL+$04),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$02),(?AL+$00),(?AL+$0F),(?AL+$08),(?AL+$13),(?AL+$0E),(?AL+$0B),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$0E),?SPCE,(?AL+$07),(?AL+$00),(?AL+$12),?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$01),(?AL+$04),(?AL+$04),(?AL+$0D),?HURRY
		DB	(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$13),(?AL+$07),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$01),(?AL+$0B),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$07),?SPCE,(?AL+$18),(?AL+$04),(?AL+$12),?EXCL,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$0D),(?AL+$14),(?AL+$0C),(?AL+$01),(?AL+$04),(?AL+$11),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AL+$08),(?AL+$0D),(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$03),(?AL+$08),(?AL+$01),(?AL+$0B),(?AL+$04),?HURRY
		DB	(?AL+$00),(?AL+$11),(?AL+$13),(?AL+$08),(?AL+$05),(?AL+$00),(?AL+$02),(?AL+$13),(?AL+$12),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$04),(?AL+$12),?EXCL,?WAIT
		DB	(?AU+$14),(?AL+$0D),(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$13),(?AL+$14),(?AL+$0D),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$0B),(?AL+$18),?COMM,?HURRY
		DB	(?AU+$0C),(?AL+$0E),(?AL+$01),(?AL+$08),(?AL+$12),?SPCE,(?AL+$16),(?AL+$08),(?AL+$12),(?AL+$07),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$11),(?AL+$04),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?HURRY
		DB	(?AL+$04),(?AL+$00),(?AL+$11),(?AL+$0B),(?AL+$18),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AU+$08),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$0E),(?AL+$03),?SPCE,(?AL+$02),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$02),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?HURRY
		DB	(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$14),(?AL+$12),(?AL+$04),(?AL+$05),(?AL+$14),(?AL+$0B),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$11),(?AL+$14),(?AL+$08),(?AL+$0D),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_IF
		DB	EXPR_XRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$0022)&$FFFF
		DB	:_ALREADY_GOT_ONE
		DW	(_ALREADY_GOT_ONE&$FFFF)

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$02),(?AL+$07),(?AL+$04),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$08),(?AL+$13),?HURRY
		DB	(?AL+$0E),(?AL+$14),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?COMM,?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AL+$01),(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),?HURRY
		DB	(?AL+$08),(?AL+$13),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$0A),(?AL+$12),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THISACTORRESTORESTATE

;********************************
_DISPELL_X_HUNT

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$03),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?WAIT
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$0C),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),?SPCE,(?AL+$00),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_OROTHE_TEXT
		DW	(?_HISTORIAN_OROTHE_TEXT&$FFFF)

;********************************
_END

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$0F),(?AL+$0B),(?AL+$04),(?AL+$00),(?AL+$12),(?AL+$04),?HURRY
		DB	(?AL+$0B),(?AL+$04),(?AL+$00),(?AL+$15),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THISACTORRESTORESTATE

;********************************
_ALREADY_GOT_ONE
	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$02),(?AL+$13),(?AL+$14),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$08),?APST,(?AL+$15),(?AL+$04),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$03),(?AL+$18),?WAIT
		DB	(?AL+$01),(?AL+$04),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_JUMPLOCAL
		DW	(_DISPELL_X_HUNT&$FFFF)

;********************************
?_OROCITY04_DISPELL_X_TXT
	DB	CMD_INVENTORYTAKE
		DB	INV_TYPE_ITEM
		DB	INV_BLURRY_SCROLL
		DB	$01

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_SPELL
		DB	INV_DISPELX
		DB	$01

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)
		DB	$04

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$0C),(?AL+$0C),?PERD,?PERD,?PERD,?SPCE,(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?QUST,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$0E),(?AL+$03),(?AL+$03),?PERD,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$08),(?AL+$0D),(?AL+$0A),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),?HURRY
		DB	(?AL+$16),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),(?AL+$0F),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$05),?PERD,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$0B),(?AL+$04),(?AL+$13),(?AL+$13),(?AL+$04),(?AL+$11),(?AL+$12),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),?SPCE,(?AL+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?EXCL,?WAIT
		DB	(?AU+$00),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$12),(?AL+$02),(?AL+$11),(?AL+$0E),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$03),(?AL+$11),(?AL+$08),(?AL+$04),(?AL+$12),?COMM,?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$08),(?AL+$0D),(?AL+$0A),?WAIT
		DB	(?AL+$11),(?AL+$04),?DASH,(?AL+$12),(?AL+$07),(?AL+$00),(?AL+$0F),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AL+$08),(?AL+$13),(?AL+$12),(?AL+$04),(?AL+$0B),(?AL+$05),?EXCL,?WAIT
		DB	(?AU+$12),(?AL+$04),(?AL+$04),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$08),(?AL+$13),?HURRY
		DB	(?AL+$12),(?AL+$07),(?AL+$08),(?AL+$0C),(?AL+$0C),(?AL+$04),(?AL+$11),(?AL+$12),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE


	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$00),?SPCE,(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$11),(?AL+$13),?PERD,?WAIT
		DB	(?AU+$08),(?AL+$0D),?SPCE,(?AL+$00),(?AL+$0D),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$02),(?AL+$08),(?AL+$04),(?AL+$0D),(?AL+$13),?HURRY
		DB	(?AL+$0B),(?AL+$00),(?AL+$0D),(?AL+$06),(?AL+$14),(?AL+$00),(?AL+$06),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$15),(?AL+$04),(?AL+$11),(?AL+$18),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$02),(?AL+$08),(?AL+$04),(?AL+$0D),(?AL+$13),?EXCL,?WAIT
		DB	?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?QUST,?WAIT
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$06),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),?SPCE,(?AU+$0A),(?AL+$11),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$0D),(?AL+$12),?HURRY
		DB	(?AL+$00),(?AL+$01),(?AL+$0E),(?AL+$15),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AU+$07),(?AU+$00),(?AU+$13),?EXCL,?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AU+$03),(?AL+$08),(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$0B),?SPCE,(?AU+$17),?EXCL,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$0D),(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),(?AL+$13),?SPCE,(?AU+$08),?WAIT
		DB	(?AL+$16),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),?SPCE,(?AL+$12),(?AL+$14),(?AL+$02),(?AL+$07),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$0C),(?AL+$18),?WAIT
		DB	(?AL+$0B),(?AL+$08),(?AL+$05),(?AL+$04),(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?EXCL,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$12),(?AL+$0E),?WAIT
		DB	(?AL+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$05),(?AL+$14),(?AL+$0B),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$08),(?AL+$13),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AL+$03),(?AL+$08),(?AL+$12),(?AL+$12),(?AL+$0E),(?AL+$0B),(?AL+$15),(?AL+$04),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0C),(?AL+$0E),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$06),(?AL+$08),(?AL+$02),(?AL+$00),(?AL+$0B),?HURRY
		DB	(?AL+$01),(?AL+$08),(?AL+$0D),(?AL+$03),(?AL+$08),(?AL+$0D),(?AL+$06),?EXCL,?WAIT
		DB	(?AU+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?HURRY
		DB	(?AL+$0E),(?AL+$0D),(?AL+$0B),(?AL+$18),?SPCE,(?AL+$0C),(?AL+$04),(?AL+$00),(?AL+$0D),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_DELAY
		DB	$20

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AU+$07),?SPCE,(?AU+$0D),(?AU+$0E),?EXCL,?WAIT
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$0B),(?AL+$04),(?AL+$00),(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$0F),(?AL+$0B),(?AL+$00),(?AL+$02),(?AL+$04),?SPCE,(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$0E),(?AL+$0D),(?AL+$02),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$16),(?AL+$11),(?AL+$0E),(?AL+$0D),(?AL+$06),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$13),(?AL+$11),(?AL+$14),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AL+$0C),(?AL+$04),?EXCL,?SPCE,?SPCE,(?AU+$07),(?AL+$08),(?AL+$03),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$0B),(?AL+$04),(?AL+$00),(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$16),(?AL+$07),(?AL+$08),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?PERD,?WAIT
		DB	(?AU+$01),(?AL+$0E),(?AL+$13),(?AL+$07),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$11),?HURRY
		DB	(?AL+$05),(?AL+$14),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$08),(?AL+$0D),?SPCE,(?AL+$09),(?AL+$04),(?AL+$0E),(?AL+$0F),(?AL+$00),(?AL+$11),(?AL+$03),(?AL+$18),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$0A),(?AL+$00),(?AL+$18),?PERD,?PERD,?PERD,?SPCE,(?AL+$08),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$12),(?AL+$00),(?AL+$18),?SPCE,(?AL+$12),(?AL+$0E),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THISACTORRESTORESTATE

;********************************
?_OROCITY04_ORLON_TXT

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$18),?SPCE,(?AU+$0E),(?AL+$11),(?AL+$0B),(?AL+$0E),(?AL+$0D),?COMM,?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),?WAIT
		DB	(?AL+$0C),(?AL+$04),?SPCE,(?AL+$00),?SPCE,(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ORLON

	DB	CMD_TEXTWRITE
		DB	(?AU+$0F),(?AU+$0E),(?AU+$0E),(?AU+$05),?EXCL,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ORLON

	DB	CMD_TEXTWRITE
		DB	(?AU+$0A),(?AL+$08),(?AL+$03),(?AL+$03),(?AL+$08),(?AL+$0D),(?AL+$06),?EXCL,?HURRY
		DB	(?AU+$0E),(?AL+$0D),(?AL+$0B),(?AL+$18),?SPCE,(?AL+$0A),(?AL+$08),(?AL+$03),(?AL+$03),(?AL+$08),(?AL+$0D),(?AL+$06),?EXCL,?WAIT
		DB	(?AU+$12),(?AL+$0E),?SPCE,(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$03),(?AL+$0E),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?QUST,?WAIT
		DB	?EOF

;********************************
_MAIN_MENU
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?SPCE,(?AU+$05),(?AL+$0E),(?AL+$11),(?AL+$06),(?AL+$04),?SPCE,?SPCE,(?AU+$04),(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$0F),?HURRY
		DB	?SPCE,(?AU+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?SPCE,?SPCE,(?AU+$03),(?AL+$0E),(?AL+$0D),(?AL+$04)
		DB	?EOF

	DB	CMD_TEXTMENU
		DB	$04
		DB	:_RINGSMITH
		DW	(_RINGSMITH&$FFFF)
		DB	:_UPGRADE
		DW	(_UPGRADE&$FFFF)
		DB	:_RINGBANK
		DW	(_RINGBANK&$FFFF)
		DB	:_END
		DW	(_END&$FFFF)

;********************************
_UPGRADE
	DB	CMD_TEXTCLOSE

	DB	CMD_MENURINGUPGRADE
		DW	$000E
		DB	$0D
		DB	SHARBLOOT
		DB	ORPUS
		DB	PARALIT
		DB	ABAQUIST
		DB	BWILL
		DB	PLATHEUS
		DB	SPHOR
		DB	SEA_JILE
		DB	KARAK
		DB	KELTHET
		DB	CORALHYREN
		DB	DEEP_HYREN
		DB	MEGATHAN

	DB	CMD_JUMP
		DB	:_MAIN_MENU
		DW	(_MAIN_MENU&$FFFF)

;********************************
_RINGBANK
	DB	CMD_TEXTCLOSE

	DB	CMD_MENURINGBANK

	DB	CMD_JUMP
		DB	:_MAIN_MENU
		DW	(_MAIN_MENU&$FFFF)

;********************************
_RINGSMITH
	DB	CMD_TEXTICON
		DW	ICON_ORLON

	DB	CMD_JUMPRANDOM
		DB	$03
		DB	:_JOKE01
		DW	(_JOKE01&$FFFF)
		DB	:_JOKE02
		DW	(_JOKE02&$FFFF)
		DB	:_JOKE03
		DW	(_JOKE03&$FFFF)

;********************************
_JOKE01
	DB	CMD_TEXTWRITE
		DB	(?AU+$03),(?AL+$0E),(?AL+$04),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$05),(?AL+$00),(?AL+$02),(?AL+$04),?HURRY
		DB	(?AL+$07),(?AL+$14),(?AL+$11),(?AL+$13),?QUST,?WAIT
		DB	?APST,(?AU+$02),(?AL+$00),(?AL+$14),(?AL+$12),(?AL+$04),?SPCE,(?AL+$08),(?AL+$13),?APST,(?AL+$12),?HURRY
		DB	(?AU+$0A),(?AU+$08),(?AU+$0B),(?AU+$0B),(?AU+$08),(?AU+$0D),?APST,?SPCE,(?AL+$0C),(?AL+$04),?EXCL,?WAIT
		DB	(?AU+$00),(?AU+$07),(?AU+$07),?SPCE,(?AU+$07),(?AU+$00),?SPCE,(?AU+$07),(?AU+$00),?SPCE,(?AU+$07),(?AU+$00),?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_JUMPLOCAL
		DW	(_RINGSMITH2&$FFFF)

;********************************
_JOKE02
	DB	CMD_TEXTWRITE
		DB	(?AU+$04),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$18),?SPCE,(?AL+$0A),(?AL+$08),(?AL+$03),?SPCE,(?AL+$07),(?AL+$00),(?AL+$12),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$11),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$01),(?AL+$04),?SPCE,(?AL+$14),(?AL+$06),(?AL+$0B),(?AL+$18),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$00),(?AL+$01),(?AL+$14),(?AL+$12),(?AL+$04),(?AL+$03),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0F),(?AL+$11),(?AL+$08),(?AL+$15),(?AL+$08),(?AL+$0B),(?AL+$04),(?AL+$06),(?AL+$04),?EXCL,?WAIT
		DB	(?AU+$07),(?AU+$00),?SPCE,(?AU+$07),(?AU+$00),(?AU+$00),?SPCE,(?AU+$07),(?AU+$00),(?AU+$00),(?AU+$00),?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_JUMPLOCAL
		DW	(_RINGSMITH2&$FFFF)

;********************************
_JOKE03
	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$0C),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?COMM,?HURRY
		DB	(?AL+$03),(?AL+$0E),(?AL+$04),(?AL+$12),?SPCE,(?AL+$12),(?AL+$07),(?AL+$04),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?WAIT
		DB	(?AL+$00),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$14),(?AL+$03),?SPCE,(?AL+$01),(?AL+$00),(?AL+$11),(?AL+$0A),?QUST,?WAIT
		DB	(?AU+$01),(?AU+$16),(?AU+$00),(?AU+$07),?SPCE,(?AU+$07),(?AU+$00),(?AU+$07),?EXCL,?EXCL,?WAIT
		DB	?EOF

;********************************
_RINGSMITH2
	DB	CMD_TEXTCLOSE

	DB	CMD_MENURINGSMITH
		DB	:_BANK_FULL
		DW	(_BANK_FULL&$FFFF)
		DB	:_MAIN_MENU
		DW	(_MAIN_MENU&$FFFF)
		DW	$0061
		DB	$0C
		DB	SHARBLOOT
		DB	SHARBLOOT
		DB	$02
		DB	CREATURE_NULL
		DB	$00
		DW	$0064
		DB	$23
		DB	ORPUS
		DB	ORPUS
		DB	$02
		DB	AGOVO
		DB	$01
		DW	$0064
		DB	$23
		DB	PARALIT
		DB	PARALIT
		DB	$03
		DB	PARMALAG
		DB	$01
		DW	$0064
		DB	$23
		DB	ABAQUIST
		DB	ABAQUIST
		DB	$04
		DB	VULBOR
		DB	$01
		DW	$0064
		DB	$26
		DB	BWILL
		DB	BWILL
		DB	$02
		DB	BRUB
		DB	$01
		DW	$0064
		DB	$23
		DB	PLATHEUS
		DB	PLATHEUS
		DB	$04
		DB	CREATURE_NULL
		DB	$00
		DW	$0096
		DB	$26
		DB	SPHOR
		DB	SPHOR
		DB	$03
		DB	SHARBLOOT
		DB	$01
		DW	$0096
		DB	$26
		DB	SEA_JILE
		DB	SEA_JILE
		DB	$02
		DB	SABREBACK
		DB	$01
		DW	$0096
		DB	$26
		DB	KARAK
		DB	KARAK
		DB	$02
		DB	PARALIT
		DB	$01
		DW	$0096
		DB	$26
		DB	CORALHYREN
		DB	CORALHYREN
		DB	$03
		DB	PARALIT
		DB	$01
		DW	$01F4
		DB	$32
		DB	DEEP_HYREN
		DB	DEEP_HYREN
		DB	$05
		DB	ORPUS
		DB	$01
		DW	$0258
		DB	$32
		DB	MEGATHAN
		DB	MEGATHAN
		DB	$05
		DB	ORATHAN_F
		DB	$01
		DW	$028A
		DB	$32

;********************************
_DONE

	DB	CMD_TEXTICON
		DW	ICON_ORLON

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$04),(?AL+$12),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THATACTORSETSCRIPT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_OROISLANDS04_MAKE_RING
		DW	(?_OROISLANDS04_MAKE_RING&$FFFF)

	DB	CMD_WAITANYEVENTMASTER


	DB	CMD_TEXTICON
		DW	ICON_ORLON

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?HURRY
		DB	?FORMAT,?WAIT
		DB	(?AL+$05),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0A),(?AL+$18),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_JUMP
		DB	:_MAIN_MENU
		DW	(_MAIN_MENU&$FFFF)

;********************************
_BANK_FULL

	DB	CMD_TEXTICON
		DW	ICON_ORLON

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$0E),(?AL+$11),(?AL+$11),(?AL+$18),?EXCL,?WAIT
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AU+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AU+$01),(?AL+$00),(?AL+$0D),(?AL+$0A),?HURRY
		DB	(?AL+$08),(?AL+$12),?SPCE,(?AL+$05),(?AL+$14),(?AL+$0B),(?AL+$0B),?PERD,?WAIT
		DB	?EOF

	DB	CMD_JUMPLOCAL
		DW	(_MAIN_MENU&$FFFF)

;********************************
_END

	DB	CMD_TEXTICON
		DW	ICON_ORLON

	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$04),?SPCE,(?AL+$02),(?AL+$00),(?AL+$11),(?AL+$04),(?AL+$05),(?AL+$14),(?AL+$0B),?PERD,?HURRY
		DB	(?AU+$00),(?AL+$0D),(?AL+$08),(?AL+$0C),(?AL+$08),(?AL+$13),(?AL+$04),?SPCE,(?AL+$02),(?AL+$00),(?AL+$14),(?AL+$12),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AL+$12),(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$07),(?AL+$04),(?AL+$00),(?AL+$03),?HURRY
		DB	(?AL+$12),(?AL+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$13),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$04),(?AL+$12),?QUST,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ORLON

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$14),(?AL+$11),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_OROCITY04_CITYLEAVE_TXT_1

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?QUST,?QUST,?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SYNC
		DB	$00
		DB	$03

	DB	CMD_END

;********************************
?_OROCITY04_CITYLEAVE_TXT_2

	DB	CMD_TEXTICON
		DW	ICON_ORLON

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$18),?COMM,?SPCE,(?AU+$01),(?AL+$0B),(?AL+$14),?COMM,?SPCE,(?AL+$07),(?AL+$0E),(?AL+$16),?APST,(?AL+$12),?HURRY
		DB	(?AL+$08),(?AL+$13),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$08),(?AL+$0D),(?AL+$06),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_TEXTICON
		DW	ICON_BLU

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$11),(?AL+$11),?COMM,?SPCE,(?AL+$06),(?AL+$0E),(?AL+$0E),(?AL+$03),?PERD,?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$08),(?AL+$0D),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$04),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$18),(?AL+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$02),(?AL+$08),(?AL+$13),(?AL+$18),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$00),(?AL+$01),(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$0B),(?AL+$04),(?AL+$00),(?AL+$15),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ORLON

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$02),(?AL+$00),(?AL+$12),(?AL+$04),?COMM,?HURRY
		DB	(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?WAIT
		DB	(?AL+$06),(?AL+$14),(?AL+$18),(?AL+$12),?SPCE,(?AL+$0B),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SYNC
		DB	$01
		DB	$02

	DB	CMD_END

;********************************
?_OROCITY04_CITYLEAVE_TXT_3

	DB	CMD_TEXTICON
		DW	ICON_BLU

	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$04),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$06),(?AL+$0E),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$12),(?AL+$16),(?AL+$08),(?AL+$0C),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_OROCITY04
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_OROCITY04&$FFFF)
		DB	:MAP_OROCITY04

	DB	CMD_LOADHOTSPOTS
		DW	(HS_OROCITY04&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_OROCITY04&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D069
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$06
		DB	$04
		DW	$D056
		DB	$60
		DB	:?_OLDMAN05_STAND_UP_ANIM
		DW	(?_OLDMAN05_STAND_UP_ANIM&$FFFF)
		DB	:_OROCITY04_HISTORIAN
		DW	(_OROCITY04_HISTORIAN&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$10
		DB	$0C
		DW	$D100
		DB	$00
		DB	:?_ORLON_STAND_DL_ANIM
		DW	(?_ORLON_STAND_DL_ANIM&$FFFF)
		DB	:_OROCITY04_ORLON
		DW	(_OROCITY04_ORLON&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0E
		DB	$13
		DW	$D18A
		DB	$80
		DB	:?_OROCITY04_BLU
		DW	(?_OROCITY04_BLU&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$20
		DB	:BIT_OLDMAN05
		DW	(BIT_OLDMAN05&$FFFF)
		DW	$8600
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_ORLON
		DW	(BIT_ORLON&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$28
		DB	:BIT_ORLONRING
		DW	(BIT_ORLONRING&$FFFF)
		DW	$8300
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_BLU
		DW	(BIT_BLU&$FFFF)
		DW	$8800
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_IF
		DB	EXPR_LESS
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$01
		DB	:_SKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

;********************************
_SKIP
	DB	CMD_HEROFROMDOOR

	DB	CMD_SONGSTART
		DB	SONGID_ororuins

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
_OROCITY04_HISTORIAN
	DB	CMD_SETTEXT
		DB	:?_OROCITY04_HISTORIAN_TXT
		DW	(?_OROCITY04_HISTORIAN_TXT&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_OLDMAN05
		DW	(?_FACE_OLDMAN05&$FFFF)

;********************************
_OROCITY04_ORLON
	DB	CMD_SETTEXT
		DB	:?_OROCITY04_ORLON_TXT
		DW	(?_OROCITY04_ORLON_TXT&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_ORLON
		DW	(?_FACE_ORLON&$FFFF)

;********************************
?_OROCITY04_CITYLEAVE
	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_OROCITY04_CITYLEAVE_TONY
		DW	(?_OROCITY04_CITYLEAVE_TONY&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_OROCITY04_CITYLEAVE_ORLON
		DW	(?_OROCITY04_CITYLEAVE_ORLON&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_END

;********************************
?_OROCITY04_CITYLEAVE_TONY
	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$10

	DB	CMD_SETTEXT
		DB	:?_OROCITY04_CITYLEAVE_TXT_1
		DW	(?_OROCITY04_CITYLEAVE_TXT_1&$FFFF)

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_HERO_RUN_UP_ANIM
		DW	(?_HERO_RUN_UP_ANIM&$FFFF)
		DB	$10
		DB	$00
		DB	$FE
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	$00
		DB	$00
		DB	:?_HERO_WALK_UP_ANIM
		DW	(?_HERO_WALK_UP_ANIM&$FFFF)
		DB	$18
		DB	$00
		DB	$00
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$00
		DB	$03

	DB	CMD_SETTEXT
		DB	:?_OROCITY04_CITYLEAVE_TXT_2
		DW	(?_OROCITY04_CITYLEAVE_TXT_2&$FFFF)

	DB	CMD_SYNC
		DB	$02
		DB	$03

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_SYNC
		DB	$03
		DB	$02

	DB	CMD_SETTEXT
		DB	:?_OROCITY04_CITYLEAVE_TXT_3
		DW	(?_OROCITY04_CITYLEAVE_TXT_3&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_DELAY
		DB	$50

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_PALCLEARBASE
		DB	$07
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$20
		DB	$07

	DB	CMD_JUMP
		DB	:?_OROCITY01_CITYLEAVE
		DW	(?_OROCITY01_CITYLEAVE&$FFFF)

;********************************
?_OROCITY04_CITYLEAVE_ORLON
	DB	CMD_THISACTORSETANIM
		DB	:?_ORLON_STAND_DL_ANIM
		DW	(?_ORLON_STAND_DL_ANIM&$FFFF)

	DB	CMD_SYNC
		DB	$01
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ORLON_WALK_DOWN_ANIM
		DW	(?_ORLON_WALK_DOWN_ANIM&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_SYNC
		DB	$02
		DB	$03

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ORLON_WALK_LEFT_ANIM
		DW	(?_ORLON_WALK_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_ORLON_WALK_DOWN_ANIM
		DW	(?_ORLON_WALK_DOWN_ANIM&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_SYNC
		DB	$03
		DB	$02

	DB	CMD_END

;********************************
?_OROCITY04_BLU
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_BLU_WALK_UP_ANIM
		DW	(?_BLU_WALK_UP_ANIM&$FFFF)
		DB	$40
		DB	:?_BLU_WALK_RIGHT_ANIM
		DW	(?_BLU_WALK_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_BLU_WALK_UP_ANIM
		DW	(?_BLU_WALK_UP_ANIM&$FFFF)
		DB	$18
		DB	:?_BLU_STAND_UP_ANIM
		DW	(?_BLU_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$00
		DB	$03

	DB	CMD_SYNC
		DB	$02
		DB	$03

	DB	CMD_THISACTORSETANIM
		DB	:?_BLU_STAND_DL_ANIM
		DW	(?_BLU_STAND_DL_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_BLU_WALK_DOWN_ANIM
		DW	(?_BLU_WALK_DOWN_ANIM&$FFFF)
		DB	$18
		DB	:?_BLU_WALK_LEFT_ANIM
		DW	(?_BLU_WALK_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_BLU_WALK_DOWN_ANIM
		DW	(?_BLU_WALK_DOWN_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_OROCITY01
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	?_HISTORIAN_OROTHE_TEXT
	GLOBAL	XRAM_INVENTORY_ITEMS
	GLOBAL	ACTOR01
	GLOBAL	ACTOR_RAM
	GLOBAL	?_OROISLANDS04_MAKE_RING
	GLOBAL	MAP_OROCITY04
	GLOBAL	HS_OROCITY04
	GLOBAL	TR_OROCITY04
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR00
	GLOBAL	?TALKER_AI
	GLOBAL	?_OLDMAN05_STAND_UP_ANIM
	GLOBAL	?_ORLON_STAND_DL_ANIM
	GLOBAL	ACTOR02
	GLOBAL	?ANIM_AI
	GLOBAL	BIT_OLDMAN05
	GLOBAL	BIT_ORLON
	GLOBAL	BIT_ORLONRING
	GLOBAL	BIT_BLU
	GLOBAL	?_FACE_OLDMAN05
	GLOBAL	?_FACE_ORLON
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_HERO_RUN_UP_ANIM
	GLOBAL	?_HERO_STAND_RIGHT_ANIM
	GLOBAL	?_HERO_WALK_UP_ANIM
	GLOBAL	?_HERO_WALK_DOWN_ANIM
	GLOBAL	?_OROCITY01_CITYLEAVE
	GLOBAL	?_ORLON_WALK_DOWN_ANIM
	GLOBAL	?_ORLON_WALK_LEFT_ANIM
	GLOBAL	?_BLU_WALK_UP_ANIM
	GLOBAL	?_BLU_WALK_RIGHT_ANIM
	GLOBAL	?_BLU_STAND_UP_ANIM
	GLOBAL	?_BLU_STAND_DL_ANIM
	GLOBAL	?_BLU_WALK_DOWN_ANIM
	GLOBAL	?_BLU_WALK_LEFT_ANIM

;********************************
	END
;********************************