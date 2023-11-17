;Size:189
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\GEYSER\MAP24\ARDGEYSER24.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDGEYSER24_DR_1
	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_FLY_UP_ANIM
		DW	(?_HERO_FLY_UP_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$06

	DB	CMD_THATACTORSTOP
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SCROLLMAP
		DB	$1C
		DB	$00
		DB	$FC
		DB	$43
		DB	$FC
		DB	$00
		DB	$18
		DB	$00
		DB	$04
		DB	$1B
		DB	$03
		DB	$00
		DB	$24
		DB	$00
		DB	$04
		DB	$20
		DB	$FD
		DB	$00
		DB	$00

	DB	CMD_JUMP
		DB	:?_ARDGEYSER20_FROM24_TO_13
		DW	(?_ARDGEYSER20_FROM24_TO_13&$FFFF)

;********************************
?_ARDGEYSER24_DR_2
	DB	CMD_HEROTODOOR
		DB	$1D
		DB	$00
		DB	$14
		DB	$0D

	DB	CMD_JUMP
		DB	:?_ARDGEYSER25
		DW	(?_ARDGEYSER25&$FFFF)

;********************************
?_ARDGEYSER24_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0021)
		DB	$40
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_ROOT
		DW	$D2F2

;********************************
?_ARDGEYSER24
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDGEYSER24&$FFFF)
		DB	:MAP_ARDGEYSER24

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDGEYSER24&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_ARDGEYSER24&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D09B
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
		DB	:?_ARDGEYSER24
		DW	(?_ARDGEYSER24&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_ARDGEYSER24_TUBE
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDGEYSER24&$FFFF)
		DB	:MAP_ARDGEYSER24

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDGEYSER24&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_ARDGEYSER24&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$16
		DB	$0E
		DW	$D1BA
		DB	$00
		DB	:?_ARDGEYSER_TONY_OUT
		DW	(?_ARDGEYSER_TONY_OUT&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_SETCAMERA
		DB	$00
		DB	$16

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_SCENEREADY

	DB	CMD_SCROLLMAP
		DB	$20
		DB	$03
		DB	$00
		DB	$24
		DB	$00
		DB	$FC
		DB	$1B
		DB	$FD
		DB	$00
		DB	$18
		DB	$00
		DB	$FC
		DB	$43
		DB	$04
		DB	$00
		DB	$1C
		DB	$00
		DB	$04
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_ARDGEYSER_RNDBAT
		DW	(?_ARDGEYSER_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_ARDGEYSER24
		DW	(?_ARDGEYSER24&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?ANIM_AI
	GLOBAL	?_HERO_FLY_UP_ANIM
	GLOBAL	?_ARDGEYSER20_FROM24_TO_13
	GLOBAL	?_ARDGEYSER25
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_ARDGEYSER24
	GLOBAL	HS_ARDGEYSER24
	GLOBAL	TR_ARDGEYSER24
	GLOBAL	PAL_HERO
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	?_ARDGEYSER_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST
	GLOBAL	?_ARDGEYSER_TONY_OUT
	GLOBAL	?_HERO_STAND_UP_ANIM

;********************************
	END
;********************************