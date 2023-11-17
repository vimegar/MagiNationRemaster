;Size:607
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\CALD\LAVATOWN\MAP10\CLDLAVATOWN10.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_CLDLAVATOWN10_DR_1
	DB	CMD_HEROSETDOOR
		DB	$13
		DB	$11

	DB	CMD_JUMP
		DB	:?_CLDLAVATOWN03
		DW	(?_CLDLAVATOWN03&$FFFF)

;********************************
?_CLDLAVATOWN10_TR_1

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?0+$01),(?0+$01),?COLN,(?0+$00),(?0+$05),?PERD,?WAIT
		DB	(?AU+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$13),?HURRY
		DB	(?AU+$00),(?AU+$0C),?SPCE,(?AL+$0E),(?AL+$11),?SPCE,(?AU+$0F),(?AU+$0C),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN10_TR_2

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AL+$0B),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?PERD,?PERD,?HURRY
		DB	(?AU+$02),(?AL+$0E),(?AL+$0B),(?AL+$0E),(?AL+$11),(?AL+$05),(?AL+$14),(?AL+$0B),?PERD,?WAIT
		DB	(?AU+$12),(?AL+$13),(?AL+$11),(?AL+$08),(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?HURRY
		DB	(?AU+$12),(?AL+$0B),(?AL+$04),(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$0B),(?AL+$04),(?AL+$12),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN10_TR_3

	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AL+$07),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$0B),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?HURRY
		DB	(?AL+$16),(?AL+$00),(?AL+$18),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$00),?SPCE,(?AL+$0D),(?AL+$04),(?AL+$16),?WAIT
		DB	(?AL+$0B),(?AL+$08),(?AL+$15),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),?HURRY
		DB	(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$0B),(?AL+$18),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$07),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$0B),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$0E),(?AL+$16),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN10_TR_4

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$04),(?AL+$04),(?AL+$0C),(?AL+$12),?SPCE,(?AL+$0D),(?AL+$08),(?AL+$02),(?AL+$04),?PERD,?HURRY
		DB	?APST,(?AU+$02),(?AL+$04),(?AL+$0F),(?AL+$13),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$05),(?AL+$08),(?AL+$11),(?AL+$04),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN10_TR_5

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$05),(?AL+$08),(?AL+$0B),(?AL+$0B),(?AL+$04),(?AL+$03),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$01),(?AL+$11),(?AL+$08),(?AL+$0C),?PERD,?WAIT
		DB	(?AU+$06),(?AL+$0E),(?AL+$0E),(?AL+$03),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$08),(?AL+$13),?APST,(?AL+$12),?HURRY
		DB	(?AL+$0C),(?AL+$04),(?AL+$0B),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	(?AU+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$16),(?AL+$08),(?AL+$12),(?AL+$04),?COMM,?SPCE,(?AL+$08),(?AL+$13),?APST,(?AL+$03),?HURRY
		DB	(?AL+$0D),(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),?SPCE,(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$18),?WAIT
		DB	(?AL+$02),(?AL+$0B),(?AL+$0E),(?AL+$12),(?AL+$04),(?AL+$03),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN10_TXT_1

	DB	CMD_TEXTICON
		DW	ICON_GUY01

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?EXCL,?HURRY
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$0A),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?WAIT
		DB	(?AL+$05),(?AL+$11),(?AL+$04),(?AL+$04),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$0C),(?AL+$04),?COMM,?SPCE,(?AL+$08),(?AL+$13),?HURRY
		DB	(?AL+$16),(?AL+$00),(?AL+$12),?SPCE,(?AL+$12),(?AL+$0E),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$08),(?AL+$0D),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$03),(?AL+$14),(?AL+$0D),(?AL+$06),(?AL+$04),(?AL+$0E),(?AL+$0D),?PERD,?HURRY
		DB	(?AU+$07),(?AL+$04),(?AL+$11),(?AL+$04),?COMM,?SPCE,(?AU+$08),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?WAIT
		DB	(?AL+$00),(?AL+$0D),?SPCE,(?AL+$04),(?AL+$17),(?AL+$13),(?AL+$11),(?AL+$00),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?HURRY
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_ITEM
		DB	INV_MASTER_RUNE
		DB	$01

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$00),?HURRY
		DB	?FORMAT,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_CLDLAVATOWN10_TXT_2

	DB	CMD_TEXTICON
		DW	ICON_GUY01

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$0A),(?AL+$12),?SPCE,(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),?HURRY
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$05),(?AL+$11),(?AL+$04),(?AL+$04),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$0C),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_CLDLAVATOWN10
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATOWN10&$FFFF)
		DB	:MAP_CLDLAVATOWN10

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATOWN10&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_CLDLAVATOWN10&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D041
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$02
		DB	$02
		DW	$D01A
		DB	$00
		DB	:?_CLDLAVATOWN10_PRISONER2
		DW	(?_CLDLAVATOWN10_PRISONER2&$FFFF)
		DB	:?_CLDLAVATOWN10_PRISONER_TXT
		DW	(?_CLDLAVATOWN10_PRISONER_TXT&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$2B
		DB	:BIT_MAN02
		DW	(BIT_MAN02&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_caldtown

	DB	CMD_SCENEREADY

	DB	CMD_IF
		DB	EXPR_NOT
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0081)&$FFFF
		DB	$02
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_END

;********************************
?_CLDLAVATOWN10_PRISONER2
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN02_STAND_UP_ANIM
		DW	(?_MAN02_STAND_UP_ANIM&$FFFF)
		DB	$50
		DB	:?_MAN02_STAND_UL_ANIM
		DW	(?_MAN02_STAND_UL_ANIM&$FFFF)
		DB	$30
		DB	:?_MAN02_STAND_UP_ANIM
		DW	(?_MAN02_STAND_UP_ANIM&$FFFF)
		DB	$60
		DB	:?_MAN02_STAND_UR_ANIM
		DW	(?_MAN02_STAND_UR_ANIM&$FFFF)
		DB	$30
		DB	:?_MAN02_WALK_DOWN_ANIM
		DW	(?_MAN02_WALK_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_MAN02_STAND_LEFT_ANIM
		DW	(?_MAN02_STAND_LEFT_ANIM&$FFFF)
		DB	$60
		DB	:?_MAN02_STAND_RIGHT_ANIM
		DW	(?_MAN02_STAND_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	:?_MAN02_WALK_UP_ANIM
		DW	(?_MAN02_WALK_UP_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_CLDLAVATOWN10_PRISONER2&$FFFF)

;********************************
?_CLDLAVATOWN10_PRISONER_TXT
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$008B)&$FFFF
		DB	$02
		DB	:_TALKED
		DW	(_TALKED&$FFFF)

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$008B)
		DB	$02

	DB	CMD_SETTEXT
		DB	:?_CLDLAVATOWN10_TXT_1
		DW	(?_CLDLAVATOWN10_TXT_1&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_MAN02
		DW	(?_FACE_MAN02&$FFFF)

;********************************
_TALKED
	DB	CMD_SETTEXT
		DB	:?_CLDLAVATOWN10_TXT_2
		DW	(?_CLDLAVATOWN10_TXT_2&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_MAN02
		DW	(?_FACE_MAN02&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_CLDLAVATOWN03
	GLOBAL	MAP_CLDLAVATOWN10
	GLOBAL	HS_CLDLAVATOWN10
	GLOBAL	TR_CLDLAVATOWN10
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR00
	GLOBAL	?TALKER_AI
	GLOBAL	BIT_MAN02
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	?_END
	GLOBAL	?_MAN02_STAND_UP_ANIM
	GLOBAL	?_MAN02_STAND_UL_ANIM
	GLOBAL	?_MAN02_STAND_UR_ANIM
	GLOBAL	?_MAN02_WALK_DOWN_ANIM
	GLOBAL	?_MAN02_STAND_LEFT_ANIM
	GLOBAL	?_MAN02_STAND_RIGHT_ANIM
	GLOBAL	?_MAN02_WALK_UP_ANIM
	GLOBAL	?_FACE_MAN02

;********************************
	END
;********************************