;Size:2323
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\CALD\LAVATOWN\MAP09\CLDLAVATOWN09.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_CLDLAVATOWN09_DR_1
	DB	CMD_HEROTODOOR
		DB	$0A
		DB	$17
		DB	$0F
		DB	$1C

	DB	CMD_JUMP
		DB	:?_CLDLAVATOWN01
		DW	(?_CLDLAVATOWN01&$FFFF)

;********************************
?_CLDLAVATOWN09_DR_1A
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0080)&$FFFF
		DB	$08
		DB	:_GOTTHEKEY
		DW	(_GOTTHEKEY&$FFFF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_WALK_UP_ANIM
		DW	(?_HERO_WALK_UP_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$10

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_CLDLAVATOWN09_NOKEY
		DW	(?_CLDLAVATOWN09_NOKEY&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$03

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_END

;********************************
_GOTTHEKEY
	DB	CMD_HEROTODOOR
		DB	$0A
		DB	$17
		DB	$0F
		DB	$1C

	DB	CMD_JUMP
		DB	:?_CLDLAVATOWN01_VIA_CONTINUE
		DW	(?_CLDLAVATOWN01_VIA_CONTINUE&$FFFF)

;********************************
?_CLDLAVATOWN09_TR_1
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0080)&$FFFF
		DB	$08
		DB	:_ALREADYGOT
		DW	(_ALREADYGOT&$FFFF)

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0080)
		DB	$08

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_ITEM
		DB	INV_ASHGARS_KEY
		DB	$01

	DB	CMD_SETTEXT
		DB	:?_CLDLAVATOWN09_GOTKEY
		DW	(?_CLDLAVATOWN09_GOTKEY&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
_ALREADYGOT
	DB	CMD_END

;********************************
?_CLDLAVATOWN09_TR_1A
	DB	CMD_IF
		DB	EXPR_NOT
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0080)&$FFFF
		DB	$08
		DB	:_ALREADYRETURNED
		DW	(_ALREADYRETURNED&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_CLDLAVATOWN09_RETURNKEY
		DW	(?_CLDLAVATOWN09_RETURNKEY&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
_ALREADYRETURNED
	DB	CMD_SETTEXT
		DB	:?_CLDLAVATOWN09_NOWANNADO
		DW	(?_CLDLAVATOWN09_NOWANNADO&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_TR_2
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0008)
		DB	$01
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_SAP
		DW	$D081

;********************************
?_CLDLAVATOWN09_TR_3

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),?SPCE,(?AL+$11),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?HURRY
		DB	(?AL+$0F),(?AL+$11),(?AL+$0E),(?AL+$0F),(?AL+$04),(?AL+$11),?SPCE,(?AL+$01),(?AL+$04),(?AL+$03),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_TR_4

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_TR_5

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$14),(?AL+$06),(?AL+$07),?EXCL,?SPCE,(?AU+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$03),(?AL+$11),(?AL+$00),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$12),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$12),(?AL+$13),(?AL+$14),(?AL+$02),(?AL+$0A),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_TR_6

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AL+$08),(?AL+$02),(?AL+$0A),(?AL+$04),(?AL+$13),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_TR_7

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$12),?SPCE,(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$08),(?AL+$13),(?AL+$02),(?AL+$07),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_TR_8

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$04),(?AL+$0B),(?AL+$13),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_TR_9

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$0E),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$01),(?AL+$08),(?AL+$06),?HURRY
		DB	(?AL+$12),(?AL+$14),(?AL+$0B),(?AL+$05),(?AL+$14),(?AL+$11),?SPCE,(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$16),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$15),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$12),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$13),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$18),(?AL+$14),(?AL+$0F),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_TR_10

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$14),(?AL+$12),(?AL+$13),?APST,(?AL+$15),(?AL+$04),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$13),(?AL+$13),(?AL+$04),(?AL+$0D),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$01),(?AL+$00),(?AL+$11),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),?SPCE,(?AL+$0E),(?AL+$0D),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0B),?HURRY
		DB	(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$13),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_TR_11

	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$00),(?AL+$15),(?AL+$00),(?AL+$0D),(?AL+$04),(?AL+$13),(?AL+$08),(?AL+$02),(?AL+$12),?COLN,?WAIT
		DB	(?AL+$00),(?AL+$0D),?SPCE,(?AL+$0E),(?AL+$03),(?AL+$18),(?AL+$12),(?AL+$12),(?AL+$04),(?AL+$18),?SPCE,(?AL+$08),(?AL+$0D),(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$08),(?AL+$0D),(?AL+$03),?APST,(?AL+$12),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$13),?COMM,?WAIT
		DB	(?AL+$0C),(?AL+$0E),(?AL+$0B),(?AL+$13),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$11),(?AL+$04),(?AL+$06),(?AL+$08),(?AL+$0E),(?AL+$0D),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDTOWN09_ELDER_TXT01

	DB	CMD_TEXTICON
		DW	ICON_ASHGAR

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$0E),(?AL+$11),(?AL+$11),(?AL+$18),?SPCE,(?AL+$00),(?AL+$01),(?AL+$0E),(?AL+$14),(?AL+$13),?HURRY
		DB	(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AU+$08),?SPCE,(?AL+$12),(?AL+$00),(?AL+$08),(?AL+$03),?WAIT
		DB	(?AL+$04),(?AL+$00),(?AL+$11),(?AL+$0B),(?AL+$08),(?AL+$04),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_CLDLVTN09_PARTY_TXT_1

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$07),?SPCE,(?AL+$0D),(?AL+$0E),?COMM,?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$12),(?AL+$0B),(?AL+$04),(?AL+$0F),(?AL+$13),?EXCL,?SPCE,(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$18),?WAIT
		DB	(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$11),(?AL+$13),(?AL+$04),(?AL+$03),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$0F),(?AL+$00),(?AL+$11),(?AL+$13),(?AL+$18),?SPCE,(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$13),?WAIT
		DB	(?AL+$0C),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_END

;********************************
?_CLDTOWN09_ELDER_TXT02

	DB	CMD_TEXTICON
		DW	ICON_ASHGAR

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$00),?SPCE,(?AL+$07),(?AL+$00),?SPCE,(?AL+$07),(?AL+$00),?PERD,?PERD,?PERD,?SPCE,(?AL+$08),(?AL+$05),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?SPCE,(?AL+$07),(?AL+$04),(?AL+$0B),(?AL+$0F),?WAIT
		DB	(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$03),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$00),?SPCE,(?AU+$0B),(?AL+$00),(?AL+$15),(?AL+$00),?HURRY
		DB	(?AU+$00),(?AL+$11),(?AL+$01),(?AL+$0E),(?AL+$0B),(?AL+$0B),?COMM,?SPCE,(?AU+$08),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$14),(?AL+$01),(?AL+$13),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$08),(?AL+$13),?HURRY
		DB	(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$18),(?AL+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$08),(?AL+$0D),?WAIT
		DB	(?AL+$13),(?AL+$0E),(?AL+$16),(?AL+$0D),?PERD,?SPCE,(?AU+$0D),(?AL+$0E),(?AL+$01),(?AL+$0E),(?AL+$03),(?AL+$18),?WAIT
		DB	(?AL+$04),(?AL+$17),(?AL+$02),(?AL+$04),(?AL+$0F),(?AL+$13),?SPCE,(?AU+$15),(?AL+$00),(?AL+$0B),(?AL+$0A),(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$12),?SPCE,(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),?SPCE,(?AL+$02),(?AL+$00),(?AL+$14),(?AL+$06),(?AL+$07),(?AL+$13),?WAIT
		DB	(?AL+$0E),(?AL+$0D),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_CLDTOWN09_ELDER_TXT03

	DB	CMD_TEXTICON
		DW	ICON_ASHGAR

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AU+$0E),(?AU+$14),?EXCL,?SPCE,(?AU+$08),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$04),(?AL+$16),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$0A),(?AL+$04),(?AL+$18),?PERD,?WAIT
		DB	(?AU+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$0C),(?AL+$18),?HURRY
		DB	(?AL+$13),(?AL+$0E),(?AL+$16),(?AL+$0D),?EXCL,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),?WAIT
		DB	(?AL+$0C),(?AL+$04),?SPCE,(?AL+$12),(?AL+$08),(?AL+$02),(?AL+$0A),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_CLDTOWN09_ELDER_TXT04

	DB	CMD_TEXTICON
		DW	ICON_ASHGAR

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$00),(?AL+$15),(?AL+$04),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$02),(?AL+$0B),(?AL+$0E),(?AL+$12),(?AL+$04),(?AL+$03),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$06),(?AL+$04),(?AL+$18),(?AL+$12),(?AL+$04),(?AL+$11),?SPCE,(?AL+$18),(?AL+$04),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_CLDTOWN09_ELDER_TXT05

	DB	CMD_TEXTICON
		DW	ICON_ASHGAR

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$0E),?SPCE,(?AL+$00),(?AL+$16),(?AL+$00),(?AL+$18),?PERD,?SPCE,(?AU+$08),?APST,(?AL+$0C),?HURRY
		DB	(?AL+$13),(?AL+$11),(?AL+$18),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$03),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_CLDTOWN09_ELDER_TXT06

	DB	CMD_TEXTICON
		DW	ICON_ASHGAR

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$03),(?AL+$04),?SPCE,(?AL+$08),(?AL+$13),?EXCL,?HURRY
		DB	(?AU+$16),(?AL+$0E),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),(?AL+$05),(?AL+$14),(?AL+$0B),?EXCL,?WAIT
		DB	(?AU+$0F),(?AL+$0B),(?AL+$04),(?AL+$00),(?AL+$12),(?AL+$04),?SPCE,(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$18),?SPCE,(?AL+$08),(?AL+$0D),?HURRY
		DB	(?AL+$13),(?AL+$0E),(?AL+$16),(?AL+$0D),?SPCE,(?AL+$00),(?AL+$12),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$00),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$03),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_NOKEY

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$0A),(?AL+$04),(?AL+$18),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AL+$01),(?AL+$04),?SPCE,(?AL+$00),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$16),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$03

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_GOTKEY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$13),?HURRY
		DB	(?AU+$00),(?AL+$12),(?AL+$07),(?AL+$06),(?AL+$00),(?AL+$11),?APST,(?AL+$12),?SPCE,(?AU+$0A),(?AL+$04),(?AL+$18),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_MAN03_TXT

	DB	CMD_TEXTICON
		DW	ICON_YOUNGMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$18),?COMM,?SPCE,(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?PERD,?PERD,?PERD,?SPCE,(?AL+$14),(?AL+$07),?PERD,?PERD,?PERD,?HURRY
		DB	(?AL+$04),(?AL+$11),(?AL+$11),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YOUNGMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$07),?COMM,?SPCE,(?AU+$08),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$08),(?AL+$13),?PERD,?WAIT
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0A),(?AL+$04),(?AL+$18),?COMM,?SPCE,(?AL+$07),(?AL+$14),(?AL+$07),?QUST,?WAIT
		DB	(?AU+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$11),(?AL+$18),?COMM,?SPCE,(?AU+$08),?WAIT
		DB	(?AL+$16),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$11),(?AL+$00),(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$0E),(?AL+$14),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_DELAY
		DB	$20


	DB	CMD_TEXTICON
		DW	ICON_YOUNGMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$0D),?SPCE,(?AL+$05),(?AL+$00),(?AL+$02),(?AL+$13),?COMM,?SPCE,(?AL+$08),(?AL+$05),?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?COMM,?SPCE,(?AU+$08),?APST,(?AL+$03),?WAIT
		DB	(?AL+$07),(?AL+$0E),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?EXCL,?SPCE,(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$0A),(?AL+$04),(?AL+$18),?WAIT
		DB	(?AL+$14),(?AL+$0D),(?AL+$0B),(?AL+$0E),(?AL+$02),(?AL+$0A),(?AL+$12),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0C),(?AL+$0E),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$18),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$02),(?AL+$0A),(?AL+$04),(?AL+$03),?WAIT
		DB	(?AL+$03),(?AL+$0E),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$0B),(?AL+$03),?EXCL,?SPCE,(?AU+$13),(?AL+$0E),(?AL+$0E),?WAIT
		DB	(?AL+$01),(?AL+$00),(?AL+$03),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$13),?HURRY
		DB	(?AL+$08),(?AL+$13),?SPCE,(?AL+$01),(?AL+$04),(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$04),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?HURRY
		DB	(?AL+$0B),(?AL+$08),(?AL+$05),(?AL+$04),?PERD,?SPCE,(?AU+$12),(?AL+$04),(?AL+$04),?SPCE,(?AL+$18),(?AL+$00),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_RETURNKEY

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AL+$0C),(?AL+$18),?HURRY
		DB	(?AL+$02),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$02),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$11),(?AL+$04),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$0A),(?AL+$04),(?AL+$18),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE


	DB	CMD_TEXTWRITE
		DB	?SPCE,(?AU+$11),(?AL+$04),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?SPCE,(?AL+$08),(?AL+$13),?HURRY
		DB	?SPCE,(?AU+$16),(?AL+$00),(?AL+$08),(?AL+$13),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$0D),(?AL+$06),(?AL+$04),(?AL+$11)
		DB	?EOF

	DB	CMD_TEXTMENU
		DB	$02
		DB	:_RETURNIT
		DW	(_RETURNIT&$FFFF)
		DB	:_WAITLONGER
		DW	(_WAITLONGER&$FFFF)

;********************************
_RETURNIT

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$0F),(?AL+$14),(?AL+$13),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE


	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AU+$00),(?AL+$12),(?AL+$07),(?AL+$06),(?AL+$00),(?AL+$11),?APST,(?AL+$12),?SPCE,(?AU+$0A),(?AL+$04),(?AL+$18),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_XRAMBITAND
		DW	(XRAM_SAVEBITS+$0080)
		DB	$F7

	DB	CMD_INVENTORYTAKE
		DB	INV_TYPE_ITEM
		DB	INV_ASHGARS_KEY
		DB	$01

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
_WAITLONGER

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$01),(?AL+$08),(?AL+$13),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$0D),(?AL+$06),(?AL+$04),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_NOWANNADO

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$03),(?AL+$18),?HURRY
		DB	(?AL+$06),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?PERD,?WAIT
		DB	(?AU+$0C),(?AL+$18),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$0D),(?AL+$12),(?AL+$02),(?AL+$08),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?HURRY
		DB	(?AL+$0F),(?AL+$11),(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$12),?SPCE,(?AL+$0C),(?AL+$04),?WAIT
		DB	(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$12),(?AL+$13),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$08),(?AL+$13),?SPCE,(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_PARTY_INTRO
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$01
		DB	:?_CLDLAVATOWN09_EMPTY
		DW	(?_CLDLAVATOWN09_EMPTY&$FFFF)

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATOWN09&$FFFF)
		DB	:MAP_CLDLAVATOWN09

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATOWN09&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_CLDLAVATOWN09A&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$04
		DB	$08
		DW	$D084
		DB	$00
		DB	:?_CLDTOWN09_TONY_INTRO
		DW	(?_CLDTOWN09_TONY_INTRO&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_CLDTOWN09_TONY_INTRO
	DB	CMD_THISACTORSETLOC
		DB	$09
		DB	$FE
		DB	$04
		DB	$09
		DW	$D094

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0000)
		DB	$01

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_INBED_RIGHT_ANIM
		DW	(?_HERO_INBED_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	:?_HERO_INBED_LEFT_ANIM
		DW	(?_HERO_INBED_LEFT_ANIM&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_THISACTORSETLOC
		DB	$09
		DB	$04
		DB	$04
		DB	$08
		DW	$D084

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_LEFT_ANIM
		DW	(?_HERO_WALK_LEFT_ANIM&$FFFF)
		DB	$02
		DB	:?_HERO_RUN_LEFT_ANIM
		DW	(?_HERO_RUN_LEFT_ANIM&$FFFF)
		DB	$06
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$18
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_CLDLVTN09_PARTY_TXT_1
		DW	(?_CLDLVTN09_PARTY_TXT_1&$FFFF)

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_APOLOGY
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATOWN09&$FFFF)
		DB	:MAP_CLDLAVATOWN09

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATOWN09&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_CLDLAVATOWN09&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$0E
		DB	$01
		DW	$D01E
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0C
		DB	$0A
		DW	$D0AC
		DB	$00
		DB	:?_CLDTOWN09_ELDER
		DW	(?_CLDTOWN09_ELDER&$FFFF)
		DB	:?_CLDTOWN09_ELDER_INTRO
		DW	(?_CLDTOWN09_ELDER_INTRO&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$1A
		DB	:BIT_OLDMAN03
		DW	(BIT_OLDMAN03&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_caldtown

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_CLDTOWN09_ELDER_INTRO
	DB	CMD_SETTEXT
		DB	:?_CLDTOWN09_ELDER_TXT01
		DW	(?_CLDTOWN09_ELDER_TXT01&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_OLDMAN03
		DW	(?_FACE_OLDMAN03&$FFFF)

;********************************
?_CLDLAVATOWN09_ARBOLLQUEST
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATOWN09&$FFFF)
		DB	:MAP_CLDLAVATOWN09

	DB	CMD_LOADTRIGGERS
		DW	(TR_CLDLAVATOWN09&$FFFF)

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATOWN09&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$0E
		DB	$01
		DW	$D01E
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0C
		DB	$0A
		DW	$D0AC
		DB	$00
		DB	:?_CLDTOWN09_ELDER
		DW	(?_CLDTOWN09_ELDER&$FFFF)
		DB	:?_CLDTOWN09_ELDER_HUNT
		DW	(?_CLDTOWN09_ELDER_HUNT&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$1A
		DB	:BIT_OLDMAN03
		DW	(BIT_OLDMAN03&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_caldtown

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_CLDTOWN09_ELDER_HUNT
	DB	CMD_SETTEXT
		DB	:?_CLDTOWN09_ELDER_TXT02
		DW	(?_CLDTOWN09_ELDER_TXT02&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_OLDMAN03
		DW	(?_FACE_OLDMAN03&$FFFF)

;********************************
?_CLDLAVATOWN09_COLDSHOULDER
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATOWN09&$FFFF)
		DB	:MAP_CLDLAVATOWN09

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATOWN09&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_CLDLAVATOWN09&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$0E
		DB	$01
		DW	$D01E
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0C
		DB	$0A
		DW	$D0AC
		DB	$00
		DB	:?_CLDTOWN09_ELDER
		DW	(?_CLDTOWN09_ELDER&$FFFF)
		DB	:?_CLDTOWN09_ELDER_CHILL
		DW	(?_CLDTOWN09_ELDER_CHILL&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$1A
		DB	:BIT_OLDMAN03
		DW	(BIT_OLDMAN03&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_caldtown

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_CLDTOWN09_ELDER_CHILL
	DB	CMD_SETTEXT
		DB	:?_CLDTOWN09_ELDER_TXT03
		DW	(?_CLDTOWN09_ELDER_TXT03&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_OLDMAN03
		DW	(?_FACE_OLDMAN03&$FFFF)

;********************************
?_CLDLAVATOWN09_HURRYUP
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATOWN09&$FFFF)
		DB	:MAP_CLDLAVATOWN09

	DB	CMD_LOADTRIGGERS
		DW	(TR_CLDLAVATOWN09&$FFFF)

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATOWN09&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$0E
		DB	$01
		DW	$D01E
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0C
		DB	$0A
		DW	$D0AC
		DB	$00
		DB	:?_CLDTOWN09_ELDER
		DW	(?_CLDTOWN09_ELDER&$FFFF)
		DB	:?_CLDTOWN09_ELDER_HURRY
		DW	(?_CLDTOWN09_ELDER_HURRY&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$1A
		DB	:BIT_OLDMAN03
		DW	(BIT_OLDMAN03&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_caldtown

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_CLDTOWN09_ELDER_HURRY
	DB	CMD_SETTEXT
		DB	:?_CLDTOWN09_ELDER_TXT04
		DW	(?_CLDTOWN09_ELDER_TXT04&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_OLDMAN03
		DW	(?_FACE_OLDMAN03&$FFFF)

;********************************
?_CLDLAVATOWN09_BESTBRIDGE
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATOWN09&$FFFF)
		DB	:MAP_CLDLAVATOWN09

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATOWN09&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_CLDLAVATOWN09&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$0E
		DB	$01
		DW	$D01E
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0C
		DB	$0A
		DW	$D0AC
		DB	$00
		DB	:?_CLDTOWN09_ELDER
		DW	(?_CLDTOWN09_ELDER&$FFFF)
		DB	:?_CLDTOWN09_ELDER_BRIDGE
		DW	(?_CLDTOWN09_ELDER_BRIDGE&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$1A
		DB	:BIT_OLDMAN03
		DW	(BIT_OLDMAN03&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_caldtown

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_CLDTOWN09_ELDER_BRIDGE
	DB	CMD_SETTEXT
		DB	:?_CLDTOWN09_ELDER_TXT05
		DW	(?_CLDTOWN09_ELDER_TXT05&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_OLDMAN03
		DW	(?_FACE_OLDMAN03&$FFFF)

;********************************
?_CLDTOWN09_ELDER
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_OLDMAN03_STAND_UP_ANIM
		DW	(?_OLDMAN03_STAND_UP_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_JUMP
		DB	:?_CLDTOWN09_ELDER
		DW	(?_CLDTOWN09_ELDER&$FFFF)

;********************************
?_CLDLAVATOWN09
	DB	CMD_SWITCH
		DB	EXPR_GAMECOUNT
		DB	:?_CLDLAVATOWN09_APOLOGY
		DW	$000B
		DW	(?_CLDLAVATOWN09_APOLOGY&$FFFF)
		DB	:?_CLDLAVATOWN09_ARBOLLQUEST
		DW	$000C
		DW	(?_CLDLAVATOWN09_ARBOLLQUEST&$FFFF)
		DB	:?_CLDLAVATOWN09_BESTBRIDGE
		DW	$000D
		DW	(?_CLDLAVATOWN09_BESTBRIDGE&$FFFF)
		DB	:?_CLDLAVATOWN09_BESTBRIDGE
		DW	$000E
		DW	(?_CLDLAVATOWN09_BESTBRIDGE&$FFFF)
		DB	:?_CLDLAVATOWN09_HURRYUP
		DW	$000F
		DW	(?_CLDLAVATOWN09_HURRYUP&$FFFF)
		DB	:?_CLDLAVATOWN09_EMPTY
		DW	$0010
		DW	(?_CLDLAVATOWN09_EMPTY&$FFFF)
		DB	$FF

	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0080)&$FFFF
		DB	$04
		DB	:?_CLDLAVATOWN09_COLDSHOULDER
		DW	(?_CLDLAVATOWN09_COLDSHOULDER&$FFFF)

;********************************
?_CLDLAVATOWN09_WARMREUNION
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATOWN09&$FFFF)
		DB	:MAP_CLDLAVATOWN09

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATOWN09&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_CLDLAVATOWN09&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$0E
		DB	$01
		DW	$D01E
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0C
		DB	$0A
		DW	$D0AC
		DB	$00
		DB	:?_CLDTOWN09_ELDER
		DW	(?_CLDTOWN09_ELDER&$FFFF)
		DB	:?_CLDTOWN09_ELDER_REUNION
		DW	(?_CLDTOWN09_ELDER_REUNION&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$1A
		DB	:BIT_OLDMAN03
		DW	(BIT_OLDMAN03&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_caldtown

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_CLDTOWN09_ELDER_REUNION
	DB	CMD_SETTEXT
		DB	:?_CLDTOWN09_ELDER_TXT06
		DW	(?_CLDTOWN09_ELDER_TXT06&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_OLDMAN03
		DW	(?_FACE_OLDMAN03&$FFFF)

;********************************
?_CLDLAVATOWN09_KEY_THIEF
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATOWN09&$FFFF)
		DB	:MAP_CLDLAVATOWN09

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATOWN09A&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_CLDLAVATOWN09&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$0B
		DB	$0E
		DW	$D0EB
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0B
		DB	$10
		DW	$D10B
		DB	$00
		DB	:?_CLDLAVATOWN09_MAN03
		DW	(?_CLDLAVATOWN09_MAN03&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$2B
		DB	:BIT_MAN03
		DW	(BIT_MAN03&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_random

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_MAN03
	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_SCROLLMAP
		DB	$10
		DB	$00
		DB	$01
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN03_WALK_UP_ANIM
		DW	(?_MAN03_WALK_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_MAN03_STAND_UP_ANIM
		DW	(?_MAN03_STAND_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_MAN03_RUN_UP_ANIM
		DW	(?_MAN03_RUN_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_MAN03_STAND_RIGHT_ANIM
		DW	(?_MAN03_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_CLDLAVATOWN09_MAN03_TXT
		DW	(?_CLDLAVATOWN09_MAN03_TXT&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN03_WALK_DOWN_ANIM
		DW	(?_MAN03_WALK_DOWN_ANIM&$FFFF)
		DB	$80
		DB	$00

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_CLDLAVATOWN09_EMPTY
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATOWN09&$FFFF)
		DB	:MAP_CLDLAVATOWN09

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATOWN09&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_CLDLAVATOWN09A&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$0B
		DB	$0E
		DW	$D0EB
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_oroisland

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_CLDLAVATOWN01
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?ANIM_AI
	GLOBAL	?_HERO_WALK_UP_ANIM
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	?HERO_AI
	GLOBAL	?_CLDLAVATOWN01_VIA_CONTINUE
	GLOBAL	XRAM_TREASURE
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	ACTOR00
	GLOBAL	MAP_CLDLAVATOWN09
	GLOBAL	HS_CLDLAVATOWN09
	GLOBAL	TR_CLDLAVATOWN09A
	GLOBAL	PAL_HERO
	GLOBAL	?_DONT_TALK
	GLOBAL	?_HERO_INBED_RIGHT_ANIM
	GLOBAL	?_HERO_INBED_LEFT_ANIM
	GLOBAL	?_HERO_WALK_LEFT_ANIM
	GLOBAL	?_HERO_RUN_LEFT_ANIM
	GLOBAL	TR_CLDLAVATOWN09
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?TALKER_AI
	GLOBAL	BIT_OLDMAN03
	GLOBAL	?_FACE_OLDMAN03
	GLOBAL	?_OLDMAN03_STAND_UP_ANIM
	GLOBAL	HS_CLDLAVATOWN09A
	GLOBAL	BIT_MAN03
	GLOBAL	?_MAN03_WALK_UP_ANIM
	GLOBAL	?_MAN03_STAND_UP_ANIM
	GLOBAL	?_MAN03_RUN_UP_ANIM
	GLOBAL	?_MAN03_STAND_RIGHT_ANIM
	GLOBAL	?_HERO_STAND_LEFT_ANIM
	GLOBAL	?_MAN03_WALK_DOWN_ANIM

;********************************
	END
;********************************