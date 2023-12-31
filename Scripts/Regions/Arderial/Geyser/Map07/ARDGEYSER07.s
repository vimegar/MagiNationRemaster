;Size:67
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\GEYSER\MAP07\ARDGEYSER07.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDGEYSER07_DR_1
	DB	CMD_HEROSETDOOR
		DB	$05
		DB	$00

	DB	CMD_JUMP
		DB	:?_ARDGEYSER06
		DW	(?_ARDGEYSER06&$FFFF)

;********************************
?_ARDGEYSER07_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$001E)
		DB	$02
		DB	INV_TYPE_ITEM
		DB	INV_STAR_KEY
		DW	$D0A1

;********************************
?_ARDGEYSER07
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDGEYSER07&$FFFF)
		DB	:MAP_ARDGEYSER07

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDGEYSER07&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_ARDGEYSER07&$FFFF)

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
		DB	:?_ARDGEYSER07
		DW	(?_ARDGEYSER07&$FFFF)
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
	GLOBAL	?_ARDGEYSER06
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_ARDGEYSER07
	GLOBAL	HS_ARDGEYSER07
	GLOBAL	TR_ARDGEYSER07
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