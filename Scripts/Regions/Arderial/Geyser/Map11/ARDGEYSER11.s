;Size:69
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\GEYSER\MAP11\ARDGEYSER11.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDGEYSER11_DR_1
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$17
		DB	$05
		DB	$14

	DB	CMD_JUMP
		DB	:?_ARDGEYSER05
		DW	(?_ARDGEYSER05&$FFFF)

;********************************
?_ARDGEYSER11_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$001D)
		DB	$20
		DB	INV_TYPE_ITEM
		DB	INV_STAR_KEY
		DW	$D19D

;********************************
?_ARDGEYSER11
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDGEYSER11&$FFFF)
		DB	:MAP_ARDGEYSER11

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDGEYSER11&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_ARDGEYSER11&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D0B4
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_ARDGEYSER_RNDBAT
		DW	(?_ARDGEYSER_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_ARDGEYSER11
		DW	(?_ARDGEYSER11&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_ARDGEYSER05
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_ARDGEYSER11
	GLOBAL	HS_ARDGEYSER11
	GLOBAL	TR_ARDGEYSER11
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	?_ARDGEYSER_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST

;********************************
	END
;********************************