;Size:1827
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\UNDERNEATH\TOWN\MAP07\UNDTOWN07.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_UNDTOWN07_DR_0
	DB	CMD_HEROTODOOR
		DB	$03
		DB	$0A
		DB	$09
		DB	$1B

	DB	CMD_JUMP
		DB	:?_UNDTOWN01
		DW	(?_UNDTOWN01&$FFFF)

;********************************
?_UNDTOWN07_TR_1

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$07
		DB	:_DIARY
		DW	(_DIARY&$FFFF)

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),?SPCE,(?AL+$03),(?AL+$08),(?AL+$00),(?AL+$11),(?AL+$18),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AU+$06),(?AL+$0E),(?AL+$06),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$00),(?AL+$13),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$0E),(?AL+$03),(?AL+$00),(?AL+$18),?COLN,?WAIT
		DB	(?AU+$05),(?AL+$08),(?AL+$15),(?AL+$04),?SPCE,(?AL+$0F),(?AL+$0B),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$12),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0C),(?AL+$04),(?AL+$03),?SPCE,(?AL+$05),(?AL+$14),(?AL+$0D),(?AL+$06),(?AL+$14),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$0C),(?AL+$14),(?AL+$12),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$12),(?AL+$13),(?AL+$04),(?AL+$00),(?AL+$0A),?PERD,?WAIT
		DB	(?AU+$01),(?AL+$0B),(?AL+$14),(?AL+$04),?SPCE,(?AL+$0F),(?AL+$14),(?AL+$0B),(?AL+$0F),(?AL+$04),(?AL+$03),?HURRY
		DB	(?AL+$06),(?AL+$0E),(?AL+$14),(?AL+$11),(?AL+$03),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$0F),(?AL+$14),(?AL+$05),(?AL+$05),(?AL+$01),(?AL+$00),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$11),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$03),?PERD,?WAIT
		DB	(?AU+$12),(?AL+$0F),(?AL+$0E),(?AL+$11),(?AL+$04),?SPCE,(?AL+$0F),(?AL+$08),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$0C),(?AL+$0C),(?AL+$0C),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
_DIARY
	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$0E),(?AL+$0E),?EXCL,?WAIT
		DB	(?AU+$00),?SPCE,(?AL+$03),(?AL+$08),(?AL+$00),(?AL+$11),(?AL+$18),?EXCL,?WAIT
		DB	(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$02),(?AL+$0A),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$0E),?SPCE,(?AU+$08),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDTOWN07_TR_2

	DB	CMD_TEXTWRITE
		DB	(?AU+$05),(?AL+$11),(?AL+$14),(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$13),(?AL+$08),(?AL+$0E),(?AL+$0D),?HURRY
		DB	(?AU+$01),(?AL+$00),(?AL+$11),(?AL+$11),(?AL+$00),(?AL+$06),(?AL+$04),?EXCL,?WAIT
		DB	(?AU+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$13),(?AL+$07),(?AL+$0E),(?AL+$12),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$14),(?AL+$11),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$03),?SPCE,(?AL+$01),(?AL+$18),?WAIT
		DB	(?AL+$03),(?AL+$08),(?AL+$05),(?AL+$05),(?AL+$08),(?AL+$02),(?AL+$14),(?AL+$0B),(?AL+$13),?HURRY
		DB	(?AL+$0F),(?AL+$04),(?AL+$0E),(?AL+$0F),(?AL+$0B),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDTOWN07_TR_3

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$08),(?AL+$02),(?AL+$04),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$0D),(?AL+$04),(?AL+$00),(?AL+$13),?PERD,?WAIT
		DB	(?AU+$04),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$18),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$11),(?AL+$0D),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$13),(?AL+$14),(?AL+$02),(?AL+$0A),(?AL+$04),(?AL+$03),?SPCE,(?AL+$08),(?AL+$0D),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDTOWN07_TR_4

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$04),(?AL+$12),(?AL+$12),(?AL+$18),?PERD,?WAIT
		DB	(?AU+$07),(?AL+$0C),(?AL+$0C),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$08),(?AL+$12),?SPCE,(?AL+$12),(?AL+$04),(?AL+$0B),(?AL+$04),(?AL+$02),(?AL+$13),(?AL+$08),(?AL+$15),(?AL+$04),(?AL+$0B),(?AL+$18),?WAIT
		DB	(?AL+$02),(?AL+$0B),(?AL+$04),(?AL+$00),(?AL+$0D),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDTOWN07_TR_5

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$14),(?AL+$12),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),?WAIT
		DB	(?AL+$02),(?AL+$07),(?AL+$00),(?AL+$08),(?AL+$11),(?AL+$12),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$0D),(?AL+$04),(?AL+$17),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDTOWN07_TR_6

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$18),?APST,(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$18),(?AL+$16),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDTOWN07_TXT_1
	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0000)
		DB	$04

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$008C)
		DB	$20


	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$07),?COMM,?SPCE,(?AL+$16),(?AL+$07),(?AL+$0E),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$18),?SPCE,(?AL+$0D),(?AL+$00),(?AL+$0C),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$0E),(?AL+$16),?COMM,?SPCE,(?AL+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$11),(?AL+$00),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$0C),(?AL+$04),(?AL+$04),(?AL+$13),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$18),(?AL+$0E),(?AL+$0D),(?AL+$04),?WAIT
		DB	(?AL+$0D),(?AL+$04),(?AL+$16),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$16),(?AL+$0D),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?HURRY
		DB	(?AU+$0C),(?AL+$18),?SPCE,(?AL+$0D),(?AL+$00),(?AL+$0C),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AU+$14),(?AL+$0B),(?AL+$0A),?WAIT
		DB	(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AU+$08),?SPCE,(?AL+$0C),(?AL+$08),(?AL+$0D),(?AL+$04),?HURRY
		DB	(?AU+$00),(?AL+$0D),(?AL+$08),(?AL+$0C),(?AL+$08),(?AL+$13),(?AL+$04),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$16),(?AL+$0D),?WAIT
		DB	(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?SPCE,(?AU+$08),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?HURRY
		DB	(?AL+$00),(?AL+$02),(?AL+$13),(?AL+$14),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?WAIT
		DB	(?AL+$16),(?AL+$00),(?AL+$08),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$0C),(?AL+$18),?HURRY
		DB	(?AL+$05),(?AL+$11),(?AL+$08),(?AL+$04),(?AL+$0D),(?AL+$03),?SPCE,(?AU+$16),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?WAIT
		DB	(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$16),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?HURRY
		DB	(?AL+$07),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$18),(?AL+$04),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?SPCE,(?AU+$16),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AL+$05),(?AL+$11),(?AL+$08),(?AL+$04),(?AL+$0D),(?AL+$03),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$03),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AU+$16),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$04),(?AL+$13),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$13),?SPCE,(?AL+$00),(?AL+$13),?WAIT
		DB	(?AU+$0D),(?AL+$00),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$12),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$07),(?AL+$04),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$0E),(?AL+$0B),?QUST,?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),?SPCE,(?AL+$0C),(?AL+$18),?WAIT
		DB	(?AL+$12),(?AL+$08),(?AL+$12),(?AL+$13),(?AL+$04),(?AL+$11),?SPCE,(?AL+$07),(?AL+$00),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$07),(?AL+$0E),(?AL+$13),(?AL+$12),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$07),(?AL+$08),(?AL+$0C),?PERD,?WAIT
		DB	(?AU+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$13),(?AL+$04),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$12),(?AL+$00),(?AL+$08),(?AL+$03),?SPCE,(?AL+$12),(?AL+$0E),?COMM,?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$0E),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?HURRY
		DB	(?AL+$12),(?AL+$08),(?AL+$12),(?AL+$13),(?AL+$04),(?AL+$11),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$11),?SPCE,(?AL+$0D),(?AL+$00),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AU+$06),(?AL+$11),(?AL+$14),(?AL+$0A),?PERD,?SPCE,(?AU+$12),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$16),(?AL+$0D),(?AL+$12),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$0C),(?AL+$14),(?AL+$12),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),?HURRY
		DB	(?AU+$05),(?AL+$00),(?AL+$11),(?AL+$0C),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AL+$0E),(?AL+$14),(?AL+$13),(?AL+$12),(?AL+$08),(?AL+$03),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AL+$13),(?AL+$0E),(?AL+$16),(?AL+$0D),?PERD,?SPCE,(?AU+$12),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$07),(?AL+$00),(?AL+$11),(?AL+$15),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$01),(?AL+$04),(?AL+$12),(?AL+$13),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),(?AL+$12),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$13),(?AL+$00),(?AL+$12),(?AL+$13),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_DELAY
		DB	$40


	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$0B),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$0B),(?AL+$18),?COMM,?HURRY
		DB	(?AL+$12),(?AL+$07),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AL+$01),(?AL+$04),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$12),(?AL+$0E),?WAIT
		DB	(?AL+$13),(?AL+$08),(?AL+$11),(?AL+$04),(?AL+$03),?PERD,?PERD,?PERD,?WAIT
		DB	(?AL+$07),(?AL+$00),(?AL+$11),(?AL+$15),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),(?AL+$12),?SPCE,(?AL+$08),(?AL+$12),?WAIT
		DB	(?AL+$07),(?AL+$00),(?AL+$11),(?AL+$03),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$0A),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),?SPCE,(?AL+$12),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$0C),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?SPCE,(?AL+$01),(?AL+$04),?HURRY
		DB	(?AL+$0F),(?AL+$14),(?AL+$12),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$12),(?AL+$04),(?AL+$0B),(?AL+$05),?WAIT
		DB	(?AL+$13),(?AL+$0E),(?AL+$0E),?SPCE,(?AL+$07),(?AL+$00),(?AL+$11),(?AL+$03),?PERD,?SPCE,(?AU+$16),(?AL+$07),(?AL+$04),(?AL+$0D),?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$13),(?AL+$00),(?AL+$0B),(?AL+$0A),(?AL+$04),(?AL+$03),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),?WAIT
		DB	(?AL+$04),(?AL+$00),(?AL+$11),(?AL+$0B),(?AL+$08),(?AL+$04),(?AL+$11),?SPCE,(?AL+$12),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$00),(?AL+$08),(?AL+$03),?SPCE,(?AL+$12),(?AL+$07),(?AL+$04),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?WAIT
		DB	(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$01),(?AL+$0B),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$0B),(?AL+$04),(?AL+$04),(?AL+$0F),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$01),(?AL+$04),(?AL+$02),(?AL+$00),(?AL+$14),(?AL+$12),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$14),(?AL+$03),?HURRY
		DB	(?AL+$0D),(?AL+$0E),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$01),(?AL+$04),(?AL+$0B),(?AL+$0E),(?AL+$16),?WAIT
		DB	(?AL+$07),(?AL+$04),(?AL+$11),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$12),(?AL+$04),?PERD,?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$13),(?AL+$11),(?AL+$08),(?AL+$04),(?AL+$03),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?WAIT
		DB	(?AU+$06),(?AL+$0E),(?AL+$06),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$02),(?AL+$07),(?AL+$04),(?AL+$02),(?AL+$0A),?HURRY
		DB	(?AL+$08),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$07),(?AL+$04),?APST,(?AL+$12),?WAIT
		DB	(?AU+$12),(?AU+$0E),?SPCE,(?AL+$03),(?AL+$00),(?AL+$11),(?AL+$0D),?HURRY
		DB	(?AL+$12),(?AL+$04),(?AL+$0B),(?AL+$05),?DASH,(?AL+$00),(?AL+$01),(?AL+$12),(?AL+$0E),(?AL+$11),(?AL+$01),(?AL+$04),(?AL+$03),?EXCL,?WAIT
		DB	(?AU+$12),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$16),(?AL+$07),(?AL+$18),?HURRY
		DB	(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AL+$16),(?AL+$00),(?AL+$08),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?WAIT
		DB	(?AU+$16),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$0E),(?AL+$06),(?AL+$0E),(?AL+$11),?COMM,?SPCE,(?AL+$07),(?AL+$14),(?AL+$07),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$00),?SPCE,(?AL+$01),(?AL+$14),(?AL+$05),(?AL+$05),(?AL+$0E),(?AL+$0E),(?AL+$0D),?PERD,?WAIT
		DB	(?AU+$07),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$0E),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$13),(?AL+$0E),(?AL+$16),(?AL+$0D),?PERD,?PERD,?PERD,?SPCE,(?AL+$00),?SPCE,(?AL+$01),(?AL+$08),(?AL+$06),?COMM,?HURRY
		DB	(?AL+$0D),(?AL+$00),(?AL+$11),(?AL+$02),(?AL+$08),(?AL+$12),(?AL+$12),(?AL+$08),(?AL+$12),(?AL+$13),(?AL+$08),(?AL+$02),?COMM,?WAIT
		DB	(?AL+$02),(?AL+$0E),(?AL+$0C),(?AL+$0F),(?AL+$0B),(?AL+$04),(?AL+$13),(?AL+$04),(?AL+$0B),(?AL+$18),?HURRY
		DB	(?AL+$03),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$0E),?PERD,?SPCE,(?AU+$08),?WAIT
		DB	(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?WAIT
		DB	(?AL+$13),(?AL+$0E),(?AL+$16),(?AL+$0D),(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$0E),(?AL+$0F),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),?HURRY
		DB	(?AL+$08),(?AL+$0D),?SPCE,(?AL+$07),(?AL+$08),(?AL+$0C),?PERD,?SPCE,(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$05),(?AL+$0E),(?AL+$0E),(?AL+$0B),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_DELAY
		DB	$40


	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$07),?COMM,?SPCE,(?AU+$08),?APST,(?AL+$0C),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$0C),(?AL+$01),(?AL+$0B),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?SPCE,(?AU+$12),(?AL+$0E),(?AL+$11),(?AL+$11),(?AL+$18),?WAIT
		DB	(?AL+$00),(?AL+$01),(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?PERD,?HURRY
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$0A),(?AL+$12),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?WAIT
		DB	(?AL+$13),(?AL+$00),(?AL+$0B),(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?HURRY
		DB	(?AL+$0C),(?AL+$04),?COMM,?SPCE,(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN07_TXT_2

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$0E),(?AL+$0F),(?AL+$04),?COMM,?SPCE,(?AU+$16),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$08),(?AL+$12),(?AL+$0D),?APST,(?AL+$13),?WAIT
		DB	(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$04),(?AL+$13),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN07_TXT_3

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN07
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTOWN07&$FFFF)
		DB	:MAP_UNDTOWN07

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTOWN07&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_UNDTOWN07&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$04
		DB	$03
		DW	$D022
		DB	$00
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$04
		DB	$04
		DW	$D02C
		DB	$00
		DB	:?_ULK_STAND_DR_ANIM
		DW	(?_ULK_STAND_DR_ANIM&$FFFF)
		DB	:?_UNDTOWN07_ULK_TALKER
		DW	(?_UNDTOWN07_ULK_TALKER&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_ULK
		DW	(BIT_ULK&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_IF
		DB	EXPR_NOTEQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$07
		DB	:_SKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

;********************************
_SKIP
	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_undtown

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_UNDTOWN07_ULK_TALKER
	DB	CMD_THISACTORSETANIM
		DB	:?_ULK_STAND_DR_ANIM
		DW	(?_ULK_STAND_DR_ANIM&$FFFF)

	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:_ULK_IS_SAD
		DW	(_ULK_IS_SAD&$FFFF)

	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$01
		DB	:_ULK_TALKS_LESS
		DW	(_ULK_TALKS_LESS&$FFFF)

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0000)
		DB	$01

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN07_TXT_1
		DW	(?_UNDTOWN07_TXT_1&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_ULK
		DW	(?_FACE_ULK&$FFFF)

;********************************
_ULK_TALKS_LESS
	DB	CMD_SETTEXT
		DB	:?_UNDTOWN07_TXT_2
		DW	(?_UNDTOWN07_TXT_2&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_ULK
		DW	(?_FACE_ULK&$FFFF)

;********************************
_ULK_IS_SAD
	DB	CMD_SETTEXT
		DB	:?_UNDTOWN07_TXT_3
		DW	(?_UNDTOWN07_TXT_3&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_ULK
		DW	(?_FACE_ULK&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_UNDTOWN01
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	MAP_UNDTOWN07
	GLOBAL	HS_UNDTOWN07
	GLOBAL	TR_UNDTOWN07
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR00
	GLOBAL	?TALKER_AI
	GLOBAL	?_ULK_STAND_DR_ANIM
	GLOBAL	BIT_ULK
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	?_FACE_ULK

;********************************
	END
;********************************