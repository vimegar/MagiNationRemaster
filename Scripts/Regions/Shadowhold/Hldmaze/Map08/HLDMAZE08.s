;Size:393
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\SHADOWHOLD\HLDMAZE\MAP08\HLDMAZE08.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HLDMAZE08_DR_1
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$17
		DB	$08
		DB	$16

	DB	CMD_JUMP
		DB	:?_HLDMAZE07
		DW	(?_HLDMAZE07&$FFFF)

;********************************
?_HLDMAZE08_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$000E)
		DB	$10
		DB	INV_TYPE_ITEM
		DB	INV_RUNEOFWILL
		DW	$D043

;********************************
?_HLDMAZE08_TR_2
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$000E)
		DB	$20
		DB	INV_TYPE_RELIC
		DB	INV_END_BRINGER
		DW	$D05D

;********************************
?_HLDMAZE08_TR_3
	DB	CMD_TRIGGERALWAYS
		DW	(XRAM_TREASURE+$000E)
		DB	$40
		DB	:?_TXT_ITS_EMPTY
		DW	(?_TXT_ITS_EMPTY&$FFFF)
		DB	$FF
		DW	$D07F

	DB	CMD_INITSKIP
		DW	(_END&$FFFF)


	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$00),(?AU+$11),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HLDMAZE_JINGJACK_BATTLE
		DW	(?_HLDMAZE_JINGJACK_BATTLE&$FFFF)

;********************************
_END
	DB	CMD_END

;********************************
?_HLDMAZE08_TR_4

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$02),(?AL+$0E),(?AL+$12),(?AL+$13),?SPCE,(?AL+$00),(?AL+$13),?SPCE,(?AL+$0B),(?AL+$04),(?AL+$00),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AL+$12),(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$18),?DASH,(?AL+$05),(?AL+$08),(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$03),(?AL+$0E),(?AL+$0B),(?AL+$0B),(?AL+$00),(?AL+$11),(?AL+$12),?SPCE,(?AL+$0E),(?AL+$11),?SPCE,(?AL+$12),(?AL+$0E),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HLDMAZE08_TR_5

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AL+$0E),(?AL+$0C),(?AL+$0F),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$12),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$03),(?AL+$00),(?AL+$11),(?AL+$0A),?COMM,?WAIT
		DB	(?AL+$07),(?AL+$04),(?AL+$00),(?AL+$11),(?AL+$13),(?AL+$0B),(?AL+$04),(?AL+$12),(?AL+$12),?HURRY
		DB	(?AL+$0F),(?AL+$0B),(?AL+$00),(?AL+$02),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HLDMAZE08_TR_6

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$12),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$18),?HURRY
		DB	(?AL+$03),(?AL+$08),(?AL+$03),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$08),(?AL+$12),(?AL+$07),?PERD,?WAIT
		DB	(?AU+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$07),(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$03),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HLDMAZE08_TR_7

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),?SPCE,(?AL+$06),(?AL+$08),(?AL+$00),(?AL+$0D),(?AL+$13),?COMM,?HURRY
		DB	(?AL+$11),(?AL+$14),(?AL+$12),(?AL+$13),(?AL+$04),(?AL+$03),?SPCE,(?AL+$12),(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$16),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HLDMAZE08_TR_8

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$0E),(?AL+$16),?EXCL,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$04),(?AL+$02),(?AL+$0E),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$01),(?AL+$08),(?AL+$06),(?AL+$06),(?AL+$04),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AL+$12),(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$16),(?AL+$03),(?AL+$11),(?AL+$08),(?AL+$15),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AU+$08),?APST,(?AL+$15),(?AL+$04),?SPCE,(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),(?AL+$0D),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HLDMAZE08
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HLDMAZE08&$FFFF)
		DB	:MAP_HLDMAZE08

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HLDMAZE08&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_HLDMAZE08&$FFFF)

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

	DB	CMD_SONGSTART
		DB	SONGID_shadowhold

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_HLDMAZE_RNDBAT
		DW	(?_HLDMAZE_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_HLDMAZE08
		DW	(?_HLDMAZE08&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_HLDMAZE07
	GLOBAL	XRAM_TREASURE
	GLOBAL	?_TXT_ITS_EMPTY
	GLOBAL	?_HLDMAZE_JINGJACK_BATTLE
	GLOBAL	MAP_HLDMAZE08
	GLOBAL	HS_HLDMAZE08
	GLOBAL	TR_HLDMAZE08
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	?_HLDMAZE_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST

;********************************
	END
;********************************