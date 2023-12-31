;Size:77
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\GEYSER\MAP12\ARDGEYSER12.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDGEYSER12_DR_1
	DB	CMD_HEROTODOOR
		DB	$17
		DB	$00
		DB	$04
		DB	$0F

	DB	CMD_JUMP
		DB	:?_ARDGEYSER03
		DW	(?_ARDGEYSER03&$FFFF)

;********************************
?_ARDGEYSER12_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$001D)
		DB	$10
		DB	INV_TYPE_ITEM
		DB	INV_STAR_KEY
		DW	$D12C

;********************************
?_ARDGEYSER12_TR_2
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$001F)
		DB	$40
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_SAP
		DW	$D12D

;********************************
?_ARDGEYSER12
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDGEYSER12&$FFFF)
		DB	:MAP_ARDGEYSER12

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDGEYSER12&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_ARDGEYSER12&$FFFF)

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
		DB	:?_ARDGEYSER12
		DW	(?_ARDGEYSER12&$FFFF)
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
	GLOBAL	?_ARDGEYSER03
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_ARDGEYSER12
	GLOBAL	HS_ARDGEYSER12
	GLOBAL	TR_ARDGEYSER12
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