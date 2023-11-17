;Size:119
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\SHADOWHOLD\HLDMAZE\MAP10\HLDMAZE10.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HLDMAZE10_DR_1
	DB	CMD_HEROTODOOR
		DB	$0B
		DB	$07
		DB	$27
		DB	$00

	DB	CMD_JUMP
		DB	:?_HLDMAZE09
		DW	(?_HLDMAZE09&$FFFF)

;********************************
?_HLDMAZE10_DR_2
	DB	CMD_HEROTODOOR
		DB	$09
		DB	$29
		DB	$00
		DB	$1D

	DB	CMD_JUMP
		DB	:?_HLDMAZE11
		DW	(?_HLDMAZE11&$FFFF)

;********************************
?_HLDMAZE10_DR_3
	DB	CMD_HEROTODOOR
		DB	$17
		DB	$00
		DB	$0A
		DB	$0F

	DB	CMD_JUMP
		DB	:?_HLDMAZE12
		DW	(?_HLDMAZE12&$FFFF)

;********************************
?_HLDMAZE10_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$000E)
		DB	$80
		DB	INV_TYPE_ITEM
		DB	INV_RUNEOFFURY
		DW	$D281

;********************************
?_HLDMAZE10_TR_2
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$000F)
		DB	$01
		DB	INV_TYPE_ITEM
		DB	INV_RUNEOFFURY
		DW	$D214

;********************************
?_HLDMAZE10
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HLDMAZE10&$FFFF)
		DB	:MAP_HLDMAZE10

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HLDMAZE10&$FFFF)

;********************************
?_HLDMAZE10_RETURN
	DB	CMD_LOADVRAM
		DW	(VRM_HLDMAZE&$FFFF)
		DB	:VRM_HLDMAZE
		DW	(PAL_HLDMAZE&$FFFF)
		DB	:PAL_HLDMAZE

	DB	CMD_LOADTRIGGERS
		DW	(TR_HLDMAZE10&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D07D
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
		DB	:?_HLDMAZE10_RETURN
		DW	(?_HLDMAZE10_RETURN&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0004)&$FFFF
		DB	$08
		DB	:_END
		DW	(_END&$FFFF)

	DB	CMD_COPYTILEBLOCK
		DW	$D000
		DB	$02
		DB	$06
		DW	$D08C
		DB	$05
		DB	$14

;********************************
_END
	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_HLDMAZE09
	GLOBAL	?_HLDMAZE11
	GLOBAL	?_HLDMAZE12
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_HLDMAZE10
	GLOBAL	HS_HLDMAZE10
	GLOBAL	VRM_HLDMAZE
	GLOBAL	PAL_HLDMAZE
	GLOBAL	TR_HLDMAZE10
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	?_HLDMAZE_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST
	GLOBAL	XRAM_SAVEBITS

;********************************
	END
;********************************