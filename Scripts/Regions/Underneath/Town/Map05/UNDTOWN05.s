;Size:1704
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\UNDERNEATH\TOWN\MAP05\UNDTOWN05.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_UNDTOWN05_DR_1
	DB	CMD_HEROTODOOR
		DB	$04
		DB	$2B
		DB	$0E
		DB	$0F

	DB	CMD_JUMP
		DB	:?_UNDTOWN01
		DW	(?_UNDTOWN01&$FFFF)

;********************************
?_UNDTOWN05_TR_1

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$0C),(?AL+$08),(?AL+$11),(?AL+$11),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$12),?WAIT
		DB	(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$14),(?AL+$12),(?AL+$04),(?AL+$03),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDTOWN05_TR_2

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$12),(?AL+$14),(?AL+$02),(?AL+$07),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AL+$16),(?AL+$00),(?AL+$13),(?AL+$02),(?AL+$07),?SPCE,(?AL+$07),(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$05),(?AL+$08),(?AL+$06),(?AL+$14),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$07),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?SPCE,(?AL+$07),(?AL+$04),(?AL+$00),(?AL+$15),(?AL+$18),?HURRY
		DB	(?AL+$0E),(?AL+$01),(?AL+$09),(?AL+$04),(?AL+$02),(?AL+$13),(?AL+$12),?SPCE,(?AL+$0E),(?AL+$0D),?WAIT
		DB	(?AL+$12),(?AL+$13),(?AL+$08),(?AL+$02),(?AL+$0A),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDTOWN05_TR_3

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$14),(?AL+$02),(?AL+$07),?SPCE,(?AL+$00),?SPCE,(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$18),?HURRY
		DB	(?AL+$01),(?AL+$04),(?AL+$03),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$12),(?AL+$14),(?AL+$02),(?AL+$07),?WAIT
		DB	(?AL+$00),?SPCE,(?AL+$01),(?AL+$08),(?AL+$06),?SPCE,(?AL+$07),(?AL+$04),(?AL+$00),(?AL+$03),?PERD,?WAIT
		DB	(?AU+$07),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$04),(?AL+$12),?SPCE,(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$03),(?AL+$0E),?SPCE,(?AL+$08),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDTOWN05_TXT_OPEN

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$0E),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN05_TXT_1

	DB	CMD_TEXTICON
		DW	ICON_GOGOR

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$00),?SPCE,(?AL+$07),(?AL+$00),?EXCL,?SPCE,(?AU+$16),(?AL+$07),(?AL+$0E),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0C),?SPCE,(?AL+$0F),(?AL+$14),(?AL+$05),(?AL+$05),?SPCE,(?AL+$16),(?AL+$07),(?AL+$0E),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$12),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$08),(?AL+$0D),(?AL+$13),(?AL+$04),(?AL+$11),(?AL+$11),(?AL+$14),(?AL+$0F),(?AL+$13),?SPCE,(?AL+$0C),(?AL+$18),?HURRY
		DB	(?AL+$05),(?AL+$00),(?AL+$15),(?AL+$0E),(?AL+$11),(?AL+$08),(?AL+$13),(?AL+$04),?WAIT
		DB	(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$18),?SPCE,(?AL+$0D),(?AL+$00),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_GOGOR

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AU+$13),?SPCE,(?AU+$03),(?AU+$0E),(?AU+$04),(?AU+$12),(?AU+$0D),?APST,(?AU+$13),?HURRY
		DB	(?AU+$0C),(?AU+$00),(?AU+$13),(?AU+$13),(?AU+$04),(?AU+$11),?SPCE,(?AU+$16),(?AU+$07),(?AU+$00),(?AU+$13),?WAIT
		DB	(?AU+$18),(?AU+$0E),(?AU+$14),(?AU+$11),?SPCE,(?AU+$0D),(?AU+$00),(?AU+$0C),(?AU+$04),?SPCE,(?AU+$08),(?AU+$12),?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN05_TXT_2

	DB	CMD_TEXTICON
		DW	ICON_GOGOR

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$04),(?AL+$11),(?AL+$12),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$0C),(?AL+$18),?SPCE,(?AL+$01),(?AL+$0E),(?AL+$03),(?AL+$18),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$11),(?AL+$08),(?AL+$0F),(?AL+$0F),(?AL+$04),(?AL+$03),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$02),(?AL+$0A),?COMM,?SPCE,(?AL+$0F),(?AL+$04),(?AL+$00),(?AL+$0D),(?AL+$14),(?AL+$13),(?AL+$18),?HURRY
		DB	(?AL+$0D),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$00),(?AL+$13),?EXCL,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),?WAIT
		DB	(?AL+$07),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$00),(?AL+$12),?HURRY
		DB	(?AL+$05),(?AL+$0B),(?AL+$00),(?AL+$13),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?WAIT
		DB	(?AL+$01),(?AL+$11),(?AL+$08),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$00),(?AL+$12),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$08),(?AL+$12),(?AL+$0F),(?AL+$18),?SPCE,(?AL+$16),(?AL+$00),(?AL+$05),(?AL+$04),(?AL+$11),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
?_UNDTOWN05_TXT_3

	DB	CMD_TEXTICON
		DW	ICON_GOGOR

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$0E),(?AL+$16),?SPCE,(?AU+$08),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$13),(?AL+$04),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?WAIT
		DB	(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$0E),(?AL+$05),(?AL+$18),?HURRY
		DB	(?AL+$0F),(?AL+$00),(?AL+$0D),(?AL+$13),(?AL+$12),?SPCE,(?AL+$16),(?AL+$07),(?AL+$0E),?SPCE,(?AU+$08),?SPCE,(?AL+$00),(?AL+$0C),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_DELAY
		DB	$38

	DB	CMD_SETEVENTTEXT
		DB	$03

	DB	CMD_END

;********************************
?_UNDTOWN05_TXT_4

	DB	CMD_TEXTICON
		DW	ICON_GOGOR

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$00),(?AL+$0C),?SPCE,(?AU+$06),(?AL+$0E),(?AL+$06),(?AL+$0E),(?AL+$11),?COMM,?HURRY
		DB	(?AL+$02),(?AL+$04),(?AL+$0B),(?AL+$04),(?AL+$01),(?AL+$11),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$03),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$0E),?WAIT
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AU+$14),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),(?AL+$0D),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$07),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_DELAY
		DB	$38

	DB	CMD_SETEVENTTEXT
		DB	$04

	DB	CMD_END

;********************************
?_UNDTOWN05_TXT_5

	DB	CMD_TEXTICON
		DW	ICON_GOGOR

	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$00),(?AL+$12),(?AL+$13),(?AL+$04),(?AL+$11),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),(?AL+$12),?WAIT
		DB	(?AL+$11),(?AL+$04),(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$0C),(?AL+$18),?HURRY
		DB	(?AL+$08),(?AL+$0C),(?AL+$0C),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?WAIT
		DB	(?AL+$0F),(?AL+$04),(?AL+$02),(?AL+$13),(?AL+$0E),(?AL+$11),(?AL+$00),(?AL+$0B),(?AL+$12),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_DELAY
		DB	$38

	DB	CMD_SETEVENTTEXT
		DB	$05

	DB	CMD_END

;********************************
?_UNDTOWN05_TXT_6

	DB	CMD_TEXTICON
		DW	ICON_GOGOR

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$00),(?AL+$02),(?AL+$02),(?AL+$04),(?AL+$0D),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$03),(?AL+$11),(?AL+$08),(?AL+$15),(?AL+$04),(?AL+$12),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$0D),?HURRY
		DB	(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$03),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,(?AL+$0E),(?AL+$07),?SPCE,(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_GOGOR

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$01),(?AL+$0E),(?AL+$0C),(?AL+$01),?EXCL,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$0D),?APST,(?AL+$12),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$0D),?EXCL,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$01),(?AL+$04),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AL+$0A),(?AL+$0D),(?AL+$04),(?AL+$04),(?AL+$12),?EXCL,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$00),(?AL+$0C),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$12),(?AL+$04),?SPCE,(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AL+$13),(?AL+$16),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$18),?EXCL,?SPCE,(?AU+$0D),(?AL+$0E),(?AL+$13),?HURRY
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$07

	DB	CMD_TEXTWRITE
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$0C),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$08),(?AL+$0E),(?AL+$0D),?HURRY
		DB	(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AL+$03),(?AL+$11),(?AL+$0E),(?AL+$0F),?DASH,(?AL+$03),(?AL+$04),(?AL+$00),(?AL+$03),?HURRY
		DB	(?AL+$06),(?AL+$0E),(?AL+$11),?PERD,?PERD,?PERD,?HURRY
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_END

;********************************
?_UNDTOWN05_TXT_7

	DB	CMD_TEXTICON
		DW	ICON_GOGOR

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),?QUST,?WAIT
		DB	(?AU+$06),(?AL+$0E),?SPCE,(?AL+$00),(?AL+$16),(?AL+$00),(?AL+$18),?COMM,?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$00),(?AL+$0C),?SPCE,(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$0B),(?AL+$0E),(?AL+$15),(?AL+$08),(?AL+$0D),(?AL+$06),(?AL+$0B),(?AL+$18),?SPCE,(?AL+$00),(?AL+$13),?SPCE,(?AL+$0C),(?AL+$18),?HURRY
		DB	(?AL+$0B),(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$0B),(?AL+$18),?SPCE,(?AL+$01),(?AL+$08),(?AL+$02),(?AL+$04),(?AL+$0F),(?AL+$12),?WAIT
		DB	(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$00),(?AL+$01),(?AL+$03),(?AL+$0E),(?AL+$0C),(?AL+$08),(?AL+$0D),(?AL+$00),(?AL+$0B),(?AL+$12),?EXCL,?HURRY
		DB	(?AU+$12),(?AL+$07),(?AL+$0E),(?AL+$0E),?EXCL,?SPCE,(?AU+$12),(?AL+$07),(?AL+$0E),(?AL+$0E),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_WORRIED_ULK_TXT01

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$0F),(?AL+$04),?SPCE,(?AU+$06),(?AL+$0E),(?AL+$06),(?AL+$0E),(?AL+$11),?HURRY
		DB	(?AL+$03),(?AL+$0E),(?AL+$04),(?AL+$12),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$03),(?AL+$0E),?WAIT
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$14),(?AL+$0F),(?AL+$08),(?AL+$03),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_WORRIED_GRUK_TXT

	DB	CMD_TEXTICON
		DW	ICON_GRUK

	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$04),?SPCE,(?AL+$02),(?AL+$00),(?AL+$11),(?AL+$04),(?AL+$05),(?AL+$14),(?AL+$0B),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN05
	DB	CMD_SWITCH
		DB	EXPR_GAMECOUNT
		DB	:?_UNDTOWN05_UNDERNEATH
		DW	$0007
		DW	(?_UNDTOWN05_UNDERNEATH&$FFFF)
		DB	:?_UNDTOWN05_POSTQUAKE
		DW	$0008
		DW	(?_UNDTOWN05_POSTQUAKE&$FFFF)
		DB	:?_UNDTOWN05_POSTQUAKE
		DW	$0009
		DW	(?_UNDTOWN05_POSTQUAKE&$FFFF)
		DB	$FF

;********************************
?_UNDTOWN05_UNDERNEATH
	DB	CMD_IF
		DB	EXPR_AND
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	EXPR_LESS
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$04
		DB	:?_UNDTOWN05_EMPTY
		DW	(?_UNDTOWN05_EMPTY&$FFFF)

	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$02
		DB	:?_UNDTOWN05_JUSTGOGOR
		DW	(?_UNDTOWN05_JUSTGOGOR&$FFFF)

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0000)
		DB	$02

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTOWN05&$FFFF)
		DB	:MAP_UNDTOWN05

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTOWN05&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_UNDTOWN05&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$05
		DB	$0E
		DW	$D091
		DB	$00
		DB	:?_UNDTOWN05_UNDERNEATH_TONY
		DW	(?_UNDTOWN05_UNDERNEATH_TONY&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$07
		DB	$03
		DW	$D025
		DB	$00
		DB	:?_GOGOR_IS_ALIVE
		DW	(?_GOGOR_IS_ALIVE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$36
		DB	:BIT_GOGOR
		DW	(BIT_GOGOR&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_lesson

	DB	CMD_SCENEREADY

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$07

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$40

	DB	CMD_THATACTORSTOP
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_HEROSETDOOR
		DB	$2C
		DB	$10

	DB	CMD_JUMP
		DB	:?_UNDTOWN01_GENERIC_PRE
		DW	(?_UNDTOWN01_GENERIC_PRE&$FFFF)

;********************************
?_UNDTOWN05_UNDERNEATH_TONY
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_UP_ANIM
		DW	(?_HERO_WALK_UP_ANIM&$FFFF)
		DB	$30
		DB	$00

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_HERO_WALK_RIGHT_ANIM
		DW	(?_HERO_WALK_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	$01
		DB	$00
		DB	:?_HERO_WALK_UP_ANIM
		DW	(?_HERO_WALK_UP_ANIM&$FFFF)
		DB	$30
		DB	$00
		DB	$FF
		DB	$00

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN05_TXT_OPEN
		DW	(?_UNDTOWN05_TXT_OPEN&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_SCROLLMAP
		DB	$30
		DB	$00
		DB	$FF
		DB	$00

	DB	CMD_DELAY
		DB	$30

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_UP_ANIM
		DW	(?_HERO_WALK_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_THATACTORSETSCRIPT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_UNDTOWN05_GOGOR_TALKER
		DW	(?_UNDTOWN05_GOGOR_TALKER&$FFFF)

	DB	CMD_END

;********************************
?_GOGOR_IS_ALIVE
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_POSE_UL_ANIM
		DW	(?_GOGOR_POSE_UL_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_STAND_UP_ANIM
		DW	(?_GOGOR_STAND_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_POSE_UR_ANIM
		DW	(?_GOGOR_POSE_UR_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_STAND_UP_ANIM
		DW	(?_GOGOR_STAND_UP_ANIM&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_JUMP
		DB	:?_GOGOR_IS_ALIVE
		DW	(?_GOGOR_IS_ALIVE&$FFFF)

;********************************
?_UNDTOWN05_GOGOR_TALKER
	DB	CMD_THISACTORSETANIM
		DB	:?_GOGOR_STAND_DOWN_ANIM
		DW	(?_GOGOR_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN05_TXT_1
		DW	(?_UNDTOWN05_TXT_1&$FFFF)

	DB	CMD_DELAY
		DB	$04

	DB	CMD_SETEVENTMASTER
		DB	$01

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_POSE_DL_ANIM
		DW	(?_GOGOR_POSE_DL_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_STAND_DOWN_ANIM
		DW	(?_GOGOR_STAND_DOWN_ANIM&$FFFF)
		DB	$08
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN05_TXT_2
		DW	(?_UNDTOWN05_TXT_2&$FFFF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_POSE_DR_ANIM
		DW	(?_GOGOR_POSE_DR_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_STAND_RIGHT_ANIM
		DW	(?_GOGOR_STAND_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_POSE_UR_ANIM
		DW	(?_GOGOR_POSE_UR_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_STAND_UP_ANIM
		DW	(?_GOGOR_STAND_UP_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_POSE_UL_ANIM
		DW	(?_GOGOR_POSE_UL_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_STAND_LEFT_ANIM
		DW	(?_GOGOR_STAND_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_POSE_DL_ANIM
		DW	(?_GOGOR_POSE_DL_ANIM&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN05_TXT_3
		DW	(?_UNDTOWN05_TXT_3&$FFFF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_STAND_DOWN_ANIM
		DW	(?_GOGOR_STAND_DOWN_ANIM&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$03

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN05_TXT_4
		DW	(?_UNDTOWN05_TXT_4&$FFFF)

	DB	CMD_THISACTORSETANIM
		DB	:?_GOGOR_POSE_DL_ANIM
		DW	(?_GOGOR_POSE_DL_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$04

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN05_TXT_5
		DW	(?_UNDTOWN05_TXT_5&$FFFF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_STAND_DOWN_ANIM
		DW	(?_GOGOR_STAND_DOWN_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_POSE_DR_ANIM
		DW	(?_GOGOR_POSE_DR_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$05

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN05_TXT_6
		DW	(?_UNDTOWN05_TXT_6&$FFFF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_STAND_RIGHT_ANIM
		DW	(?_GOGOR_STAND_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_POSE_UR_ANIM
		DW	(?_GOGOR_POSE_UR_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_STAND_UP_ANIM
		DW	(?_GOGOR_STAND_UP_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_POSE_UL_ANIM
		DW	(?_GOGOR_POSE_UL_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_STAND_LEFT_ANIM
		DW	(?_GOGOR_STAND_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_POSE_DL_ANIM
		DW	(?_GOGOR_POSE_DL_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$06

	DB	CMD_END

;********************************
?_UNDTOWN05_JUSTGOGOR
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTOWN05&$FFFF)
		DB	:MAP_UNDTOWN05

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTOWN05&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_UNDTOWN05&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$0E
		DW	$D091
		DB	$00
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$07
		DB	$03
		DW	$D025
		DB	$00
		DB	:?_GOGOR_IS_ALIVE
		DW	(?_GOGOR_IS_ALIVE&$FFFF)
		DB	:?_UNDTOWN05_GOGOR_STAND
		DW	(?_UNDTOWN05_GOGOR_STAND&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$36
		DB	:BIT_GOGOR
		DW	(BIT_GOGOR&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_lesson

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_UNDTOWN05_GOGOR_STAND
	DB	CMD_SETTEXT
		DB	:?_UNDTOWN05_TXT_7
		DW	(?_UNDTOWN05_TXT_7&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_GOGOR
		DW	(?_FACE_GOGOR&$FFFF)

;********************************
?_UNDTOWN05_EMPTY
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTOWN05&$FFFF)
		DB	:MAP_UNDTOWN05

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTOWN05&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_UNDTOWN05&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$0E
		DW	$D091
		DB	$00
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_undtown

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_UNDTOWN05_POSTQUAKE
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTOWN05&$FFFF)
		DB	:MAP_UNDTOWN05

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTOWN05&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_UNDTOWN05&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$0A
		DW	$D069
		DB	$00
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$03
		DB	$0A
		DW	$D067
		DB	$30
		DB	:?_WORRIED_GRUK
		DW	(?_WORRIED_GRUK&$FFFF)
		DB	:?_WORRIED_GRUK_TALK
		DW	(?_WORRIED_GRUK_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$07
		DB	$08
		DW	$D057
		DB	$00
		DB	:?_WORRIED_ULK
		DW	(?_WORRIED_ULK&$FFFF)
		DB	:?_WORRIED_ULK_TALK
		DW	(?_WORRIED_ULK_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_ULK
		DW	(BIT_ULK&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$29
		DB	:BIT_GRUK
		DW	(BIT_GRUK&$FFFF)
		DW	$8300
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_SONGSTART
		DB	SONGID_undtown

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_WORRIED_GRUK
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GRUK_STAND_DOWN_ANIM
		DW	(?_GRUK_STAND_DOWN_ANIM&$FFFF)
		DB	$90
		DB	:?_GRUK_STAND_LEFT_ANIM
		DW	(?_GRUK_STAND_LEFT_ANIM&$FFFF)
		DB	$90
		DB	:?_GRUK_STAND_RIGHT_ANIM
		DW	(?_GRUK_STAND_RIGHT_ANIM&$FFFF)
		DB	$90
		DB	$00

	DB	CMD_JUMP
		DB	:?_WORRIED_GRUK
		DW	(?_WORRIED_GRUK&$FFFF)

	DB	CMD_END

;********************************
?_WORRIED_ULK
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ULK_WALK_LEFT_ANIM
		DW	(?_ULK_WALK_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_ULK_STAND_LEFT_ANIM
		DW	(?_ULK_STAND_LEFT_ANIM&$FFFF)
		DB	$60
		DB	:?_ULK_WALK_RIGHT_ANIM
		DW	(?_ULK_WALK_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_ULK_STAND_RIGHT_ANIM
		DW	(?_ULK_STAND_RIGHT_ANIM&$FFFF)
		DB	$60
		DB	:?_ULK_STAND_DR_ANIM
		DW	(?_ULK_STAND_DR_ANIM&$FFFF)
		DB	$60
		DB	:?_ULK_STAND_RIGHT_ANIM
		DW	(?_ULK_STAND_RIGHT_ANIM&$FFFF)
		DB	$60
		DB	:?_ULK_STAND_UR_ANIM
		DW	(?_ULK_STAND_UR_ANIM&$FFFF)
		DB	$60
		DB	:?_ULK_STAND_RIGHT_ANIM
		DW	(?_ULK_STAND_RIGHT_ANIM&$FFFF)
		DB	$60
		DB	$00

	DB	CMD_JUMP
		DB	:?_WORRIED_ULK
		DW	(?_WORRIED_ULK&$FFFF)

	DB	CMD_END

;********************************
?_WORRIED_ULK_TALK
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ULK_STAND_DOWN_ANIM
		DW	(?_ULK_STAND_DOWN_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_SETEVENTMASTER
		DB	$17

	DB	CMD_SETTEXT
		DB	:?_WORRIED_ULK_TXT01
		DW	(?_WORRIED_ULK_TXT01&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_ULK
		DW	(?_FACE_ULK&$FFFF)

	DB	CMD_END

;********************************
?_WORRIED_GRUK_TALK
	DB	CMD_THISACTORSETANIM
		DB	:?_GRUK_STAND_DOWN_ANIM
		DW	(?_GRUK_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_WORRIED_GRUK_TXT
		DW	(?_WORRIED_GRUK_TXT&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_GRUK
		DW	(?_FACE_GRUK&$FFFF)

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_UNDTOWN01
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	MAP_UNDTOWN05
	GLOBAL	HS_UNDTOWN05
	GLOBAL	TR_UNDTOWN05
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?ANIM_AI
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR00
	GLOBAL	BIT_GOGOR
	GLOBAL	?_HERO_WALK_DOWN_ANIM
	GLOBAL	?_UNDTOWN01_GENERIC_PRE
	GLOBAL	?_HERO_WALK_UP_ANIM
	GLOBAL	?_HERO_WALK_RIGHT_ANIM
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	?_GOGOR_POSE_UL_ANIM
	GLOBAL	?_GOGOR_STAND_UP_ANIM
	GLOBAL	?_GOGOR_POSE_UR_ANIM
	GLOBAL	?_GOGOR_STAND_DOWN_ANIM
	GLOBAL	?_GOGOR_POSE_DL_ANIM
	GLOBAL	?_GOGOR_POSE_DR_ANIM
	GLOBAL	?_GOGOR_STAND_RIGHT_ANIM
	GLOBAL	?_GOGOR_STAND_LEFT_ANIM
	GLOBAL	?HERO_AI
	GLOBAL	?TALKER_AI
	GLOBAL	?_FACE_GOGOR
	GLOBAL	ACTOR01
	GLOBAL	BIT_ULK
	GLOBAL	BIT_GRUK
	GLOBAL	?_GRUK_STAND_DOWN_ANIM
	GLOBAL	?_GRUK_STAND_LEFT_ANIM
	GLOBAL	?_GRUK_STAND_RIGHT_ANIM
	GLOBAL	?_ULK_WALK_LEFT_ANIM
	GLOBAL	?_ULK_STAND_LEFT_ANIM
	GLOBAL	?_ULK_WALK_RIGHT_ANIM
	GLOBAL	?_ULK_STAND_RIGHT_ANIM
	GLOBAL	?_ULK_STAND_DR_ANIM
	GLOBAL	?_ULK_STAND_UR_ANIM
	GLOBAL	?_ULK_STAND_DOWN_ANIM
	GLOBAL	?_FACE_ULK
	GLOBAL	?_FACE_GRUK

;********************************
	END
;********************************