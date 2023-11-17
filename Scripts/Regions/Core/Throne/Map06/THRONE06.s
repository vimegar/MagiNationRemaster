;Size:2489
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\CORE\THRONE\MAP06\THRONE06.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_THRONE06_DR_1
	DB	CMD_HEROSETDOOR
		DB	$39
		DB	$05

	DB	CMD_JUMP
		DB	:?_THRONE05
		DW	(?_THRONE05&$FFFF)

;********************************
?_THRONE06_DR_2
	DB	CMD_HEROSETDOOR
		DB	$09
		DB	$11

	DB	CMD_JUMP
		DB	:?_THRONE01
		DW	(?_THRONE01&$FFFF)

;********************************
?_THRONE06_TXT_01

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	?EXCL,?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_THRONE06_TXT_02

	DB	CMD_TEXTICON
		DW	ICON_VALKAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?COMM,?SPCE,(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$03),?QUST,?WAIT
		DB	(?AU+$16),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$16),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AU+$02),(?AL+$0E),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_VALKAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?PERD,?PERD,?PERD,?SPCE,(?AU+$02),(?AL+$0E),(?AL+$11),(?AL+$04),?QUST,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0B),(?AL+$00),(?AL+$12),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$11),(?AL+$04),(?AL+$0C),(?AL+$04),(?AL+$0C),(?AL+$01),(?AL+$04),(?AL+$11),?SPCE,(?AL+$08),(?AL+$12),?WAIT
		DB	(?AL+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0F),(?AL+$00),(?AL+$11),(?AL+$13),(?AL+$18),?PERD,?PERD,?PERD,?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$05),(?AL+$0B),(?AL+$0E),(?AL+$00),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$06),(?AL+$14),(?AL+$18),?SPCE,(?AL+$0F),(?AL+$0E),(?AL+$08),(?AL+$0D),(?AL+$13),(?AL+$04),(?AL+$03),?SPCE,(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$0C),(?AL+$04),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?PERD,?PERD,?PERD,?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$11),(?AL+$04),(?AL+$0C),(?AL+$04),(?AL+$0C),(?AL+$01),(?AL+$04),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$14),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$0D),(?AL+$0E),(?AL+$16),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$0C),(?AL+$0E),(?AL+$11),(?AL+$00),(?AL+$06),?SPCE,(?AL+$0F),(?AL+$11),(?AL+$0E),(?AL+$01),(?AL+$00),(?AL+$01),(?AL+$0B),(?AL+$18),?HURRY
		DB	(?AL+$12),(?AL+$04),(?AL+$0D),(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?COMM,?WAIT
		DB	(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AU+$00),(?AL+$06),(?AL+$11),(?AL+$00),(?AL+$0C),?HURRY
		DB	(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),(?AL+$04),(?AL+$03),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$0D),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
?_THRONE06_TXT_03

	DB	CMD_TEXTICON
		DW	ICON_VALKAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$0E),(?AL+$11),(?AL+$00),(?AL+$06),?QUST,?SPCE,(?AU+$00),(?AL+$06),(?AL+$11),(?AL+$00),(?AL+$0C),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),?SPCE,(?AL+$0C),(?AL+$08),(?AL+$0D),(?AL+$03),?PERD,?WAIT
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$0A),(?AL+$00),(?AL+$18),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$06),(?AL+$0E),(?AL+$0D),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$03

	DB	CMD_END

;********************************
?_THRONE06_TXT_04

	DB	CMD_TEXTICON
		DW	ICON_VALKAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),?PERD,?PERD,?PERD,?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$0B),(?AL+$03),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$04),(?AL+$00),(?AL+$07),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_VALKAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$0E),(?AL+$16),?PERD,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$0D),?HURRY
		DB	(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$04

	DB	CMD_END

;********************************
?_THRONE06_TXT_05

	DB	CMD_TEXTICON
		DW	ICON_VALKAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$16),(?AL+$00),(?AL+$18),?HURRY
		DB	(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$32

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$14),(?AU+$07),(?AU+$07),(?AU+$07),?PERD,?PERD,?PERD,?SPCE,(?AU+$0D),(?AU+$0E),?EXCL,?EXCL,?WAIT
		DB	(?AU+$0D),(?AU+$0E),?COMM,?SPCE,(?AL+$0D),(?AL+$0E),?COMM,?SPCE,(?AL+$0D),(?AL+$0E),?PERD,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$16),(?AL+$00),(?AL+$18),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AU+$13),(?AU+$07),(?AU+$00),(?AU+$13),?SPCE,(?AL+$16),(?AL+$00),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_VALKAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$07),?PERD,?SPCE,(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$0A),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$12),(?AL+$04),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0B),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$05

	DB	CMD_END

;********************************
?_THRONE06_TXT_06

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?SPCE,(?AL+$02),(?AL+$0B),(?AL+$0E),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$0A),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?COMM,?HURRY
		DB	(?AU+$0A),(?AL+$18),(?AL+$11),(?AL+$0E),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0B),(?AL+$04),(?AL+$00),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$03),(?AL+$0E),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AL+$06),(?AL+$0B),(?AL+$00),(?AL+$03),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$02),(?AL+$13),?WAIT
		DB	(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$16),(?AL+$08),(?AL+$12),(?AL+$07),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$11),(?AL+$04),(?AL+$0C),(?AL+$00),(?AL+$08),(?AL+$0D),?SPCE,(?AL+$07),(?AL+$08),(?AL+$03),(?AL+$03),(?AL+$04),(?AL+$0D),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$12),(?AL+$04),(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$13),?HURRY
		DB	(?AL+$08),(?AL+$12),?SPCE,(?AL+$12),(?AL+$00),(?AL+$05),(?AL+$04),?SPCE,(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?WAIT
		DB	(?AL+$0C),(?AL+$04),?COMM,?SPCE,(?AU+$0C),(?AL+$00),(?AL+$09),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$00),(?AL+$0C),?SPCE,(?AL+$08),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$01),(?AL+$13),(?AL+$04),(?AL+$03),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$06

	DB	CMD_END

;********************************
?_THRONE06_TXT_07

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?COMM,?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$0F),(?AL+$11),(?AL+$0E),(?AL+$0F),(?AL+$07),(?AL+$04),(?AL+$02),(?AL+$18),?SPCE,(?AL+$07),(?AL+$00),(?AL+$12),?WAIT
		DB	(?AL+$0D),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$01),(?AL+$04),(?AL+$04),(?AL+$0D),?HURRY
		DB	(?AL+$05),(?AL+$14),(?AL+$0B),(?AL+$05),(?AL+$08),(?AL+$0B),(?AL+$0B),(?AL+$04),(?AL+$03),?PERD,?WAIT
		DB	(?AU+$0D),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$11),(?AL+$04),(?AL+$0C),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$11),(?AL+$04),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$0C),(?AL+$04),?EXCL,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0F),(?AL+$00),(?AL+$13),(?AL+$07),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$11),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0E),(?AL+$11),?PERD,?WAIT
		DB	(?AU+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$02),(?AL+$0E),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AU+$06),(?AL+$0B),(?AL+$18),(?AL+$0F),(?AL+$07),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$0B),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$01),(?AL+$04),?SPCE,(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$0D),?WAIT
		DB	(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?HURRY
		DB	(?AL+$07),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$0B),(?AL+$03),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$00),(?AL+$01),(?AL+$0E),(?AL+$14),(?AL+$13),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$11),(?AL+$04),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0F),(?AL+$00),(?AL+$0B),(?AL+$00),(?AL+$02),(?AL+$04),?COMM,?WAIT
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$14),(?AL+$11),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$14),(?AL+$0D),(?AL+$03),(?AL+$0E),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$03),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$14),(?AL+$02),(?AL+$13),(?AL+$08),(?AL+$0E),(?AL+$0D),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AU+$0C),(?AL+$0E),(?AL+$11),(?AL+$00),(?AL+$06),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AU+$00),(?AL+$06),(?AL+$11),(?AL+$00),(?AL+$0C),?SPCE,(?AL+$03),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$0C),(?AL+$18),?SPCE,(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$06),(?AL+$03),(?AL+$0E),(?AL+$0C),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$07

	DB	CMD_END

;********************************
?_THRONE06_TXT_08

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$05),(?AL+$00),(?AL+$11),(?AL+$04),(?AL+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?EXCL,?WAIT
		DB	(?AU+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$00),?SPCE,(?AL+$12),(?AL+$00),(?AL+$05),(?AL+$04),?HURRY
		DB	(?AL+$09),(?AL+$0E),(?AL+$14),(?AL+$11),(?AL+$0D),(?AL+$04),(?AL+$18),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$0C),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$08

	DB	CMD_END

;********************************
?_THRONE06
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$01

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_THRONE06&$FFFF)
		DB	:MAP_THRONE06

	DB	CMD_LOADPALETTE
		DW	(PAL_STONEMAGI&$FFFF)
		DB	:PAL_STONEMAGI

	DB	CMD_LOADHOTSPOTS
		DW	(HS_THRONE06&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$00
		DB	$00
		DW	$D000
		DB	$00
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0D
		DB	$08
		DW	$D09D
		DB	$00
		DB	:?_STONE_WYLOCE_ANIM
		DW	(?_STONE_WYLOCE_ANIM&$FFFF)
		DB	:?_WYSTOSEE
		DW	(?_WYSTOSEE&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$07
		DB	$07
		DW	$D085
		DB	$04
		DB	:?_STONE_VALKAN_ANIM
		DW	(?_STONE_VALKAN_ANIM&$FFFF)
		DB	:?_VASTOSEE
		DW	(?_VASTOSEE&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0A
		DB	$0A
		DW	$D0BE
		DB	$09
		DB	:?_STONE_GOGOR_ANIM
		DW	(?_STONE_GOGOR_ANIM&$FFFF)
		DB	:?_GOSTOSEE
		DW	(?_GOSTOSEE&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$09
		DB	$07
		DW	$D087
		DB	$0D
		DB	:?_STONE_GIRL03_ANIM
		DW	(?_STONE_GIRL03_ANIM&$FFFF)
		DB	:?_G3STOSEE1
		DW	(?_G3STOSEE1&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0B
		DB	$07
		DW	$D089
		DB	$0D
		DB	:?_STONE_GIRL03_ANIM
		DW	(?_STONE_GIRL03_ANIM&$FFFF)
		DB	:?_G3STOSEE2
		DW	(?_G3STOSEE2&$FFFF)

	DB	CMD_IF
		DB	EXPR_NOTEQU
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0080)&$FFFF
		DB	EXPR_BYTECONST,$05
		DB	:_SKIP
		DW	(_SKIP&$FFFF)

;********************************
_TCSTONE
	DB	CMD_THATACTORSTART
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

;********************************
_SKIP
	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$04
		DB	:BIT_STONEWYLOCE
		DW	(BIT_STONEWYLOCE&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$05
		DB	:BIT_STONEVALKAN
		DW	(BIT_STONEVALKAN&$FFFF)
		DW	$8040
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$04
		DB	:BIT_STONEGOGOR
		DW	(BIT_STONEGOGOR&$FFFF)
		DW	$8090
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$04
		DB	:BIT_STONEGIRL03
		DW	(BIT_STONEGIRL03&$FFFF)
		DW	$80D0
		DB	$00

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_destruction

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_WYSTOSEE
	DB	CMD_THISACTORSETANIM
		DB	:?_STONE_WYLOCE_ANIM
		DW	(?_STONE_WYLOCE_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_SAY_ITS_JAELA
		DW	(?_SAY_ITS_JAELA&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
?_VASTOSEE
	DB	CMD_THISACTORSETANIM
		DB	:?_STONE_VALKAN_ANIM
		DW	(?_STONE_VALKAN_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_SAY_ITS_VALKAN
		DW	(?_SAY_ITS_VALKAN&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
?_GOSTOSEE
	DB	CMD_THISACTORSETANIM
		DB	:?_STONE_GOGOR_ANIM
		DW	(?_STONE_GOGOR_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_SAY_ITS_GOGOR
		DW	(?_SAY_ITS_GOGOR&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
?_G3STOSEE1
	DB	CMD_THISACTORSETANIM
		DB	:?_STONE_GIRL03_ANIM
		DW	(?_STONE_GIRL03_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_SAY_ITS_COUSIN1
		DW	(?_SAY_ITS_COUSIN1&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
?_G3STOSEE2
	DB	CMD_THISACTORSETANIM
		DB	:?_STONE_GIRL03_ANIM
		DW	(?_STONE_GIRL03_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_SAY_ITS_COUSIN2
		DW	(?_SAY_ITS_COUSIN2&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
?_SAY_ITS_JAELA

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	?SPCE,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_SAY_ITS_VALKAN

	DB	CMD_TEXTICON
		DW	ICON_VALKAN

	DB	CMD_TEXTWRITE
		DB	?SPCE,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_SAY_ITS_GOGOR

	DB	CMD_TEXTICON
		DW	ICON_GOGOR

	DB	CMD_TEXTWRITE
		DB	?SPCE,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_SAY_ITS_COUSIN1

	DB	CMD_TEXTICON
		DW	ICON_TRYNCSN01

	DB	CMD_TEXTWRITE
		DB	?SPCE,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_SAY_ITS_COUSIN2

	DB	CMD_TEXTICON
		DW	ICON_TRYNCSN02

	DB	CMD_TEXTWRITE
		DB	?SPCE,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_THRONE06_ENDING
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_THRONE06&$FFFF)
		DB	:MAP_THRONE06

	DB	CMD_LOADPALETTE
		DW	(PAL_STONEHERO&$FFFF)
		DB	:PAL_STONEHERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0C
		DB	$04
		DW	$D054
		DB	$00
		DB	:?_THRONE06_HERO_END
		DW	(?_THRONE06_HERO_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0D
		DB	$08
		DW	$D09D
		DB	$00
		DB	:?_THRONE06_WYLOCE_END
		DW	(?_THRONE06_WYLOCE_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$07
		DB	$07
		DW	$D085
		DB	$32
		DB	:?_THRONE06_VALKAN_END
		DW	(?_THRONE06_VALKAN_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0A
		DB	$0A
		DW	$D0BE
		DB	$5D
		DB	:?_THRONE06_GOGOR_END
		DW	(?_THRONE06_GOGOR_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$09
		DB	$07
		DW	$D087
		DB	$95
		DB	:?_THRONE06_TC1_END
		DW	(?_THRONE06_TC1_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0B
		DB	$07
		DW	$D089
		DB	$95
		DB	:?_THRONE06_TC2_END
		DW	(?_THRONE06_TC2_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0C
		DB	$04
		DW	$D054
		DB	$00
		DB	:?_THRONE06_WYLOCE_END2
		DW	(?_THRONE06_WYLOCE_END2&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_IF
		DB	EXPR_NOTEQU
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0080)&$FFFF
		DB	EXPR_BYTECONST,$05
		DB	:_SKIP
		DW	(_SKIP&$FFFF)

;********************************
_TCSTONE
	DB	CMD_THATACTORSTART
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

;********************************
_SKIP
	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$32
		DB	:BIT_WYLOCE
		DW	(BIT_WYLOCE&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$2B
		DB	:BIT_VALKAN
		DW	(BIT_VALKAN&$FFFF)
		DW	$8320
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$38
		DB	:BIT_GOGOR
		DW	(BIT_GOGOR&$FFFF)
		DW	$85D0
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_GIRL03
		DW	(BIT_GIRL03&$FFFF)
		DW	$8950
		DB	$00

	DB	CMD_SETCAMERA
		DB	$0A
		DB	$08

	DB	CMD_SONGSTART
		DB	SONGID_wencetheme

	DB	CMD_SCENEREADY

	DB	CMD_PALLOAD
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO
		DB	$87

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$60
		DB	$0F

	DB	CMD_HEROSETDOOR
		DB	$09
		DB	$0C

	DB	CMD_JUMP
		DB	:?_THRONE01_FINALCHOICESORTA
		DW	(?_THRONE01_FINALCHOICESORTA&$FFFF)

;********************************
?_THRONE06_HERO_END
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_BACK_DOWN_ANIM
		DW	(?_HERO_BACK_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$60
		DB	:?_HERO_STAND_UL_ANIM
		DW	(?_HERO_STAND_UL_ANIM&$FFFF)
		DB	$04
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$04
		DB	:?_HERO_STAND_DL_ANIM
		DW	(?_HERO_STAND_DL_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$02
		DB	$03

	DB	CMD_WAITEVENTTEXT
		DB	$32

	DB	CMD_SYNC
		DB	$03
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_RUN_RIGHT_ANIM
		DW	(?_HERO_RUN_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_DL_ANIM
		DW	(?_HERO_STAND_DL_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$04
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$05
		DB	$02

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_DL_ANIM
		DW	(?_HERO_STAND_DL_ANIM&$FFFF)

	DB	CMD_SYNC
		DB	$06
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_STAND_UL_ANIM
		DW	(?_HERO_STAND_UL_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_WALK_UP_ANIM
		DW	(?_HERO_WALK_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETEVENTMASTER
		DB	$01

	DB	CMD_DELAY
		DB	$20

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_END

;********************************
?_THRONE06_WYLOCE_END
	DB	CMD_THISACTORSETANIM
		DB	:?_WYLOCE_STAND_DOWN_ANIM
		DW	(?_WYLOCE_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$40

	DB	CMD_PALFADE
		DB	$E0
		DB	$A5

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WYLOCE_STAND_DOWN_ANIM
		DW	(?_WYLOCE_STAND_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_WYLOCE_STAND_DR_ANIM
		DW	(?_WYLOCE_STAND_DR_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_THRONE06_TXT_01
		DW	(?_THRONE06_TXT_01&$FFFF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WYLOCE_STAND_DL_ANIM
		DW	(?_WYLOCE_STAND_DL_ANIM&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WYLOCE_STAND_RIGHT_ANIM
		DW	(?_WYLOCE_STAND_RIGHT_ANIM&$FFFF)
		DB	$0C
		DB	:?_WYLOCE_STAND_LEFT_ANIM
		DW	(?_WYLOCE_STAND_LEFT_ANIM&$FFFF)
		DB	$0C
		DB	:?_WYLOCE_STAND_RIGHT_ANIM
		DW	(?_WYLOCE_STAND_RIGHT_ANIM&$FFFF)
		DB	$0C
		DB	:?_WYLOCE_STAND_LEFT_ANIM
		DW	(?_WYLOCE_STAND_LEFT_ANIM&$FFFF)
		DB	$0C
		DB	$00

	DB	CMD_SYNC
		DB	$01
		DB	$03

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WYLOCE_STAND_UP_ANIM
		DW	(?_WYLOCE_STAND_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_WYLOCE_RUN_UP_ANIM
		DW	(?_WYLOCE_RUN_UP_ANIM&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_THRONE06_WYLOCE_END2
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WYLOCE_WALK_DOWN_ANIM
		DW	(?_WYLOCE_WALK_DOWN_ANIM&$FFFF)
		DB	$20
		DB	:?_WYLOCE_STAND_RIGHT_ANIM
		DW	(?_WYLOCE_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$04
		DB	$02

	DB	CMD_SETTEXT
		DB	:?_THRONE06_TXT_06
		DW	(?_THRONE06_TXT_06&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$06

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WYLOCE_STAND_DOWN_ANIM
		DW	(?_WYLOCE_STAND_DOWN_ANIM&$FFFF)
		DB	$40
		DB	:?_WYLOCE_STAND_DR_ANIM
		DW	(?_WYLOCE_STAND_DR_ANIM&$FFFF)
		DB	$08
		DB	:?_WYLOCE_STAND_RIGHT_ANIM
		DW	(?_WYLOCE_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_THRONE06_TXT_07
		DW	(?_THRONE06_TXT_07&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$07

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_WYLOCE_WALK_DOWN_ANIM
		DW	(?_WYLOCE_WALK_DOWN_ANIM&$FFFF)
		DB	$20
		DB	$00
		DB	$01
		DB	:?_WYLOCE_WALK_LEFT_ANIM
		DW	(?_WYLOCE_WALK_LEFT_ANIM&$FFFF)
		DB	$20
		DB	$00
		DB	$00
		DB	:?_WYLOCE_STAND_LEFT_ANIM
		DW	(?_WYLOCE_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	$00
		DB	$00
		DB	:?_WYLOCE_STAND_UR_ANIM
		DW	(?_WYLOCE_STAND_UR_ANIM&$FFFF)
		DB	$00
		DB	$00
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_THRONE06_TXT_08
		DW	(?_THRONE06_TXT_08&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$08

	DB	CMD_SYNC
		DB	$05
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WYLOCE_STAND_UL_ANIM
		DW	(?_WYLOCE_STAND_UL_ANIM&$FFFF)
		DB	$08
		DB	:?_WYLOCE_STAND_DL_ANIM
		DW	(?_WYLOCE_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_WYLOCE_WALK_DOWN_ANIM
		DW	(?_WYLOCE_WALK_DOWN_ANIM&$FFFF)
		DB	$50
		DB	:?_WYLOCE_STAND_DOWN_ANIM
		DW	(?_WYLOCE_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$06
		DB	$02

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_THRONE06_VALKAN_END
	DB	CMD_THISACTORSETANIM
		DB	:?_VALKAN_STAND_DOWN_ANIM
		DW	(?_VALKAN_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_SYNC
		DB	$01
		DB	$03

	DB	CMD_PALFADE
		DB	$E0
		DB	$81

	DB	CMD_SETEVENTMASTER
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_VALKAN_STAND_DL_ANIM
		DW	(?_VALKAN_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_VALKAN_STAND_DR_ANIM
		DW	(?_VALKAN_STAND_DR_ANIM&$FFFF)
		DB	$08
		DB	:?_VALKAN_STAND_DL_ANIM
		DW	(?_VALKAN_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_VALKAN_STAND_DR_ANIM
		DW	(?_VALKAN_STAND_DR_ANIM&$FFFF)
		DB	$08
		DB	:?_VALKAN_STAND_DL_ANIM
		DW	(?_VALKAN_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_VALKAN_STAND_DR_ANIM
		DW	(?_VALKAN_STAND_DR_ANIM&$FFFF)
		DB	$08
		DB	:?_VALKAN_STAND_DL_ANIM
		DW	(?_VALKAN_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_VALKAN_STAND_DR_ANIM
		DW	(?_VALKAN_STAND_DR_ANIM&$FFFF)
		DB	$08
		DB	:?_VALKAN_STAND_DL_ANIM
		DW	(?_VALKAN_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_VALKAN_STAND_UL_ANIM
		DW	(?_VALKAN_STAND_UL_ANIM&$FFFF)
		DB	$08
		DB	:?_VALKAN_STAND_UP_ANIM
		DW	(?_VALKAN_STAND_UP_ANIM&$FFFF)
		DB	$08
		DB	:?_VALKAN_STAND_UR_ANIM
		DW	(?_VALKAN_STAND_UR_ANIM&$FFFF)
		DB	$08
		DB	:?_VALKAN_STAND_RIGHT_ANIM
		DW	(?_VALKAN_STAND_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_VALKAN_STAND_DR_ANIM
		DW	(?_VALKAN_STAND_DR_ANIM&$FFFF)
		DB	$10
		DB	:?_VALKAN_STAND_DOWN_ANIM
		DW	(?_VALKAN_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$02
		DB	$03

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_VALKAN_STAND_RIGHT_ANIM
		DW	(?_VALKAN_STAND_RIGHT_ANIM&$FFFF)
		DB	$30
		DB	:?_VALKAN_RUN_UP_ANIM
		DW	(?_VALKAN_RUN_UP_ANIM&$FFFF)
		DB	$08
		DB	:?_VALKAN_RUN_RIGHT_ANIM
		DW	(?_VALKAN_RUN_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_VALKAN_STAND_UR_ANIM
		DW	(?_VALKAN_STAND_UR_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_THRONE06_TXT_02
		DW	(?_THRONE06_TXT_02&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$03

	DB	CMD_THATACTORSETSCRIPT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_THRONE06_TC1_ENDB
		DW	(?_THRONE06_TC1_ENDB&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_THRONE06_TC2_ENDB
		DW	(?_THRONE06_TC2_ENDB&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_THRONE06_TXT_04
		DW	(?_THRONE06_TXT_04&$FFFF)

	DB	CMD_SCROLLMAP
		DB	$20
		DB	$00
		DB	$FF
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$04

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_VALKAN_STAND_UP_ANIM
		DW	(?_VALKAN_STAND_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_VALKAN_WALK_RIGHT_ANIM
		DW	(?_VALKAN_WALK_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_VALKAN_STAND_UP_ANIM
		DW	(?_VALKAN_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_THRONE06_TXT_05
		DW	(?_THRONE06_TXT_05&$FFFF)

	DB	CMD_SYNC
		DB	$03
		DB	$02

	DB	CMD_DELAY
		DB	$60

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_VALKAN_STAND_UL_ANIM
		DW	(?_VALKAN_STAND_UL_ANIM&$FFFF)
		DB	$08
		DB	:?_VALKAN_STAND_LEFT_ANIM
		DW	(?_VALKAN_STAND_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_VALKAN_STAND_DL_ANIM
		DW	(?_VALKAN_STAND_DL_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$05

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_VALKAN_WALK_DOWN_ANIM
		DW	(?_VALKAN_WALK_DOWN_ANIM&$FFFF)
		DB	$40
		DB	:?_VALKAN_WALK_LEFT_ANIM
		DW	(?_VALKAN_WALK_LEFT_ANIM&$FFFF)
		DB	$50
		DB	:?_VALKAN_WALK_DOWN_ANIM
		DW	(?_VALKAN_WALK_DOWN_ANIM&$FFFF)
		DB	$40
		DB	:?_VALKAN_STAND_DOWN_ANIM
		DW	(?_VALKAN_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_THRONE06_GOGOR_END
	DB	CMD_THISACTORSETANIM
		DB	:?_GOGOR_STAND_DOWN_ANIM
		DW	(?_GOGOR_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_STAND_DOWN_ANIM
		DW	(?_GOGOR_STAND_DOWN_ANIM&$FFFF)
		DB	$40
		DB	:?_GOGOR_RUN_DOWN_ANIM
		DW	(?_GOGOR_RUN_DOWN_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_STAND_DOWN_ANIM
		DW	(?_GOGOR_STAND_DOWN_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_STAND_DL_ANIM
		DW	(?_GOGOR_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_STAND_DR_ANIM
		DW	(?_GOGOR_STAND_DR_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_STAND_DL_ANIM
		DW	(?_GOGOR_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_STAND_DR_ANIM
		DW	(?_GOGOR_STAND_DR_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_STAND_DL_ANIM
		DW	(?_GOGOR_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_STAND_DR_ANIM
		DW	(?_GOGOR_STAND_DR_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_STAND_DL_ANIM
		DW	(?_GOGOR_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_STAND_DOWN_ANIM
		DW	(?_GOGOR_STAND_DOWN_ANIM&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_SYNC
		DB	$01
		DB	$03

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_STAND_DL_ANIM
		DW	(?_GOGOR_STAND_DL_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_STAND_LEFT_ANIM
		DW	(?_GOGOR_STAND_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_WALK_LEFT_ANIM
		DW	(?_GOGOR_WALK_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_WALK_UP_ANIM
		DW	(?_GOGOR_WALK_UP_ANIM&$FFFF)
		DB	$30
		DB	:?_GOGOR_STAND_UL_ANIM
		DW	(?_GOGOR_STAND_UL_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SYNC
		DB	$02
		DB	$03

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_STAND_LEFT_ANIM
		DW	(?_GOGOR_STAND_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_STAND_RIGHT_ANIM
		DW	(?_GOGOR_STAND_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_STAND_DOWN_ANIM
		DW	(?_GOGOR_STAND_DOWN_ANIM&$FFFF)
		DB	$60
		DB	:?_GOGOR_POSE_DL_ANIM
		DW	(?_GOGOR_POSE_DL_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_SETTEXT
		DB	:?_THRONE06_TXT_03
		DW	(?_THRONE06_TXT_03&$FFFF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_WALK_DOWN_ANIM
		DW	(?_GOGOR_WALK_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_STAND_DOWN_ANIM
		DW	(?_GOGOR_STAND_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_STAND_LEFT_ANIM
		DW	(?_GOGOR_STAND_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_RUN_DOWN_ANIM
		DW	(?_GOGOR_RUN_DOWN_ANIM&$FFFF)
		DB	$28
		DB	:?_GOGOR_STAND_DOWN_ANIM
		DW	(?_GOGOR_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_THRONE06_TC1_END
	DB	CMD_THISACTORSETANIM
		DB	:?_GIRL03_STAND_DOWN_ANIM
		DW	(?_GIRL03_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$02

	DB	CMD_SETEVENTMASTER
		DB	$03

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GIRL03_STAND_DR_ANIM
		DW	(?_GIRL03_STAND_DR_ANIM&$FFFF)
		DB	$18
		DB	:?_GIRL03_STAND_DOWN_ANIM
		DW	(?_GIRL03_STAND_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_GIRL03_STAND_DL_ANIM
		DW	(?_GIRL03_STAND_DL_ANIM&$FFFF)
		DB	$10
		DB	:?_GIRL03_STAND_LEFT_ANIM
		DW	(?_GIRL03_STAND_LEFT_ANIM&$FFFF)
		DB	$60
		DB	:?_GIRL03_STAND_DOWN_ANIM
		DW	(?_GIRL03_STAND_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_GIRL03_STAND_RIGHT_ANIM
		DW	(?_GIRL03_STAND_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	$00

;********************************
_LOOP
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GIRL03_STAND_DR_ANIM
		DW	(?_GIRL03_STAND_DR_ANIM&$FFFF)
		DB	$08
		DB	:?_GIRL03_STAND_RIGHT_ANIM
		DW	(?_GIRL03_STAND_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_GIRL03_STAND_UR_ANIM
		DW	(?_GIRL03_STAND_UR_ANIM&$FFFF)
		DB	$08
		DB	:?_GIRL03_STAND_RIGHT_ANIM
		DW	(?_GIRL03_STAND_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_GIRL03_STAND_DR_ANIM
		DW	(?_GIRL03_STAND_DR_ANIM&$FFFF)
		DB	$08
		DB	:?_GIRL03_STAND_RIGHT_ANIM
		DW	(?_GIRL03_STAND_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_GIRL03_STAND_UR_ANIM
		DW	(?_GIRL03_STAND_UR_ANIM&$FFFF)
		DB	$08
		DB	:?_GIRL03_STAND_RIGHT_ANIM
		DW	(?_GIRL03_STAND_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_JUMP
		DB	:_LOOP
		DW	(_LOOP&$FFFF)

;********************************
?_THRONE06_TC2_END
	DB	CMD_THISACTORSETANIM
		DB	:?_GIRL03_STAND_DOWN_ANIM
		DW	(?_GIRL03_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$03

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GIRL03_STAND_DL_ANIM
		DW	(?_GIRL03_STAND_DL_ANIM&$FFFF)
		DB	$10
		DB	:?_GIRL03_STAND_DOWN_ANIM
		DW	(?_GIRL03_STAND_DOWN_ANIM&$FFFF)
		DB	$20
		DB	:?_GIRL03_STAND_DL_ANIM
		DW	(?_GIRL03_STAND_DL_ANIM&$FFFF)
		DB	$10
		DB	:?_GIRL03_STAND_LEFT_ANIM
		DW	(?_GIRL03_STAND_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_GIRL03_WALK_LEFT_ANIM
		DW	(?_GIRL03_WALK_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_GIRL03_STAND_DL_ANIM
		DW	(?_GIRL03_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_GIRL03_STAND_DOWN_ANIM
		DW	(?_GIRL03_STAND_DOWN_ANIM&$FFFF)
		DB	$20
		DB	:?_GIRL03_STAND_DL_ANIM
		DW	(?_GIRL03_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_GIRL03_STAND_LEFT_ANIM
		DW	(?_GIRL03_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	$00

;********************************
_LOOP
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GIRL03_STAND_LEFT_ANIM
		DW	(?_GIRL03_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_GIRL03_STAND_DL_ANIM
		DW	(?_GIRL03_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_GIRL03_STAND_LEFT_ANIM
		DW	(?_GIRL03_STAND_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_GIRL03_STAND_UL_ANIM
		DW	(?_GIRL03_STAND_UL_ANIM&$FFFF)
		DB	$08
		DB	:?_GIRL03_STAND_LEFT_ANIM
		DW	(?_GIRL03_STAND_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_GIRL03_STAND_DL_ANIM
		DW	(?_GIRL03_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_GIRL03_STAND_LEFT_ANIM
		DW	(?_GIRL03_STAND_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_GIRL03_STAND_UL_ANIM
		DW	(?_GIRL03_STAND_UL_ANIM&$FFFF)
		DB	$08
		DB	$00

	DB	CMD_JUMP
		DB	:_LOOP
		DW	(_LOOP&$FFFF)

;********************************
?_THRONE06_TC1_ENDB
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GIRL03_STAND_DOWN_ANIM
		DW	(?_GIRL03_STAND_DOWN_ANIM&$FFFF)
		DB	$40
		DB	:?_GIRL03_RUN_DOWN_ANIM
		DW	(?_GIRL03_RUN_DOWN_ANIM&$FFFF)
		DB	$40
		DB	:?_GIRL03_STAND_DOWN_ANIM
		DW	(?_GIRL03_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_THISACTORSTOP

;********************************
?_THRONE06_TC2_ENDB
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GIRL03_STAND_LEFT_ANIM
		DW	(?_GIRL03_STAND_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_GIRL03_STAND_DOWN_ANIM
		DW	(?_GIRL03_STAND_DOWN_ANIM&$FFFF)
		DB	$28
		DB	:?_GIRL03_RUN_LEFT_ANIM
		DW	(?_GIRL03_RUN_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_GIRL03_RUN_DOWN_ANIM
		DW	(?_GIRL03_RUN_DOWN_ANIM&$FFFF)
		DB	$40
		DB	:?_GIRL03_STAND_DOWN_ANIM
		DW	(?_GIRL03_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_THISACTORSTOP

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_THRONE05
	GLOBAL	?_THRONE01
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	MAP_THRONE06
	GLOBAL	PAL_STONEMAGI
	GLOBAL	HS_THRONE06
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR00
	GLOBAL	?TALKER_AI
	GLOBAL	?_STONE_WYLOCE_ANIM
	GLOBAL	ACTOR01
	GLOBAL	?_STONE_VALKAN_ANIM
	GLOBAL	ACTOR02
	GLOBAL	?_STONE_GOGOR_ANIM
	GLOBAL	ACTOR03
	GLOBAL	?_STONE_GIRL03_ANIM
	GLOBAL	ACTOR04
	GLOBAL	BIT_STONEWYLOCE
	GLOBAL	BIT_STONEVALKAN
	GLOBAL	BIT_STONEGOGOR
	GLOBAL	BIT_STONEGIRL03
	GLOBAL	PAL_STONEHERO
	GLOBAL	?ANIM_AI
	GLOBAL	ACTOR05
	GLOBAL	BIT_WYLOCE
	GLOBAL	BIT_VALKAN
	GLOBAL	BIT_GOGOR
	GLOBAL	BIT_GIRL03
	GLOBAL	PAL_HERO
	GLOBAL	?_THRONE01_FINALCHOICESORTA
	GLOBAL	?_HERO_BACK_DOWN_ANIM
	GLOBAL	?_HERO_STAND_UL_ANIM
	GLOBAL	?_HERO_STAND_LEFT_ANIM
	GLOBAL	?_HERO_STAND_DL_ANIM
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_HERO_RUN_RIGHT_ANIM
	GLOBAL	?_HERO_WALK_DOWN_ANIM
	GLOBAL	?_HERO_WALK_UP_ANIM
	GLOBAL	?_WYLOCE_STAND_DOWN_ANIM
	GLOBAL	?_WYLOCE_STAND_DR_ANIM
	GLOBAL	?_WYLOCE_STAND_DL_ANIM
	GLOBAL	?_WYLOCE_STAND_RIGHT_ANIM
	GLOBAL	?_WYLOCE_STAND_LEFT_ANIM
	GLOBAL	?_WYLOCE_STAND_UP_ANIM
	GLOBAL	?_WYLOCE_RUN_UP_ANIM
	GLOBAL	?_WYLOCE_WALK_DOWN_ANIM
	GLOBAL	?_WYLOCE_WALK_LEFT_ANIM
	GLOBAL	?_WYLOCE_STAND_UR_ANIM
	GLOBAL	?_WYLOCE_STAND_UL_ANIM
	GLOBAL	?_VALKAN_STAND_DOWN_ANIM
	GLOBAL	?_VALKAN_STAND_DL_ANIM
	GLOBAL	?_VALKAN_STAND_DR_ANIM
	GLOBAL	?_VALKAN_STAND_UL_ANIM
	GLOBAL	?_VALKAN_STAND_UP_ANIM
	GLOBAL	?_VALKAN_STAND_UR_ANIM
	GLOBAL	?_VALKAN_STAND_RIGHT_ANIM
	GLOBAL	?_VALKAN_RUN_UP_ANIM
	GLOBAL	?_VALKAN_RUN_RIGHT_ANIM
	GLOBAL	?_VALKAN_WALK_RIGHT_ANIM
	GLOBAL	?_VALKAN_STAND_LEFT_ANIM
	GLOBAL	?_VALKAN_WALK_DOWN_ANIM
	GLOBAL	?_VALKAN_WALK_LEFT_ANIM
	GLOBAL	?_GOGOR_STAND_DOWN_ANIM
	GLOBAL	?_GOGOR_RUN_DOWN_ANIM
	GLOBAL	?_GOGOR_STAND_DL_ANIM
	GLOBAL	?_GOGOR_STAND_DR_ANIM
	GLOBAL	?_GOGOR_STAND_LEFT_ANIM
	GLOBAL	?_GOGOR_WALK_LEFT_ANIM
	GLOBAL	?_GOGOR_WALK_UP_ANIM
	GLOBAL	?_GOGOR_STAND_UL_ANIM
	GLOBAL	?_GOGOR_STAND_RIGHT_ANIM
	GLOBAL	?_GOGOR_POSE_DL_ANIM
	GLOBAL	?_GOGOR_WALK_DOWN_ANIM
	GLOBAL	?_GIRL03_STAND_DOWN_ANIM
	GLOBAL	?_GIRL03_STAND_DR_ANIM
	GLOBAL	?_GIRL03_STAND_DL_ANIM
	GLOBAL	?_GIRL03_STAND_LEFT_ANIM
	GLOBAL	?_GIRL03_STAND_RIGHT_ANIM
	GLOBAL	?_GIRL03_STAND_UR_ANIM
	GLOBAL	?_GIRL03_WALK_LEFT_ANIM
	GLOBAL	?_GIRL03_STAND_UL_ANIM
	GLOBAL	?_GIRL03_RUN_DOWN_ANIM
	GLOBAL	?_GIRL03_RUN_LEFT_ANIM

;********************************
	END
;********************************