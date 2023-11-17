;Size:96
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\SHADOWHOLD\HLDCELL\MAP04\HLDCELL04.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HLDCELL04_DR_1
	DB	CMD_HEROTODOOR
		DB	$0F
		DB	$07
		DB	$11
		DB	$00

	DB	CMD_JUMP
		DB	:?_HLDCELL03
		DW	(?_HLDCELL03&$FFFF)

;********************************
?_HLDCELL04_DR_2
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$1A
		DB	$07
		DB	$07

	DB	CMD_JUMP
		DB	:?_HLDCELL05
		DW	(?_HLDCELL05&$FFFF)

;********************************
?_HLDCELL04_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$000E)
		DB	$02
		DB	INV_TYPE_RELIC
		DB	INV_SHADOW_VEIL
		DW	$D09F

;********************************
?_HLDCELL04
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HLDCELL04&$FFFF)
		DB	:MAP_HLDCELL04

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HLDCELL04&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_HLDCELL04&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D08C
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
		DB	:?_HLDCELL04
		DW	(?_HLDCELL04&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_IF
		DB	EXPR_NOT
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0006)&$FFFF
		DB	$01
		DB	:_END
		DW	(_END&$FFFF)

	DB	CMD_COPYTILEBLOCK
		DW	$D06D
		DB	$04
		DB	$04
		DW	$D070
		DB	$04
		DB	$04

;********************************
_END
	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_HLDCELL03
	GLOBAL	?_HLDCELL05
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_HLDCELL04
	GLOBAL	HS_HLDCELL04
	GLOBAL	TR_HLDCELL04
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