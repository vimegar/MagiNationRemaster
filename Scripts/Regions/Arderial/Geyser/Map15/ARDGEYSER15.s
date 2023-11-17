;Size:295
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\GEYSER\MAP15\ARDGEYSER15.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDGEYSER15_DR_1
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
		DB	$10
		DB	$00
		DB	$FC
		DB	$18
		DB	$FC
		DB	$00
		DB	$14
		DB	$00
		DB	$FC
		DB	$1C
		DB	$04
		DB	$00
		DB	$2C
		DB	$00
		DB	$FC
		DB	$00

	DB	CMD_JUMP
		DB	:?_ARDGEYSER26_FROM15
		DW	(?_ARDGEYSER26_FROM15&$FFFF)

;********************************
?_ARDGEYSER15_DR_2
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
		DB	$30
		DB	$00
		DB	$FC
		DB	$20
		DB	$FC
		DB	$00
		DB	$00

	DB	CMD_JUMP
		DB	:?_ARDGEYSER17_FROM15
		DW	(?_ARDGEYSER17_FROM15&$FFFF)

;********************************
?_ARDGEYSER15_DR_3
	DB	CMD_HEROTODOOR
		DB	$13
		DB	$0F
		DB	$1D
		DB	$00

	DB	CMD_JUMP
		DB	:?_ARDGEYSER16
		DW	(?_ARDGEYSER16&$FFFF)

;********************************
?_ARDGEYSER15_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$001D)
		DB	$08
		DB	INV_TYPE_ITEM
		DB	INV_STAR_KEY
		DW	$D09B

;********************************
?_ARDGEYSER15_TR_2
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$001F)
		DB	$80
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_ROOT
		DW	$D1A8

;********************************
?_ARDGEYSER15_TR_3
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0020)
		DB	$01
		DB	INV_TYPE_ITEM
		DB	INV_REMEDY_DRINK
		DW	$D127

;********************************
?_ARDGEYSER15
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDGEYSER15&$FFFF)
		DB	:MAP_ARDGEYSER15

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDGEYSER15&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_ARDGEYSER15&$FFFF)

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
		DB	:?_ARDGEYSER15
		DW	(?_ARDGEYSER15&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_OROTUNNEL15_FROM26
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDGEYSER15&$FFFF)
		DB	:MAP_ARDGEYSER15

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDGEYSER15&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_ARDGEYSER15&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$16
		DB	$18
		DW	$D2E6
		DB	$00
		DB	:?_ARDGEYSER_TONY_OUT
		DW	(?_ARDGEYSER_TONY_OUT&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_SETCAMERA
		DB	$16
		DB	$00

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_SCENEREADY

	DB	CMD_SCROLLMAP
		DB	$2C
		DB	$00
		DB	$04
		DB	$1C
		DB	$FC
		DB	$00
		DB	$14
		DB	$00
		DB	$04
		DB	$18
		DB	$04
		DB	$00
		DB	$12
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
		DB	:?_ARDGEYSER15
		DW	(?_ARDGEYSER15&$FFFF)
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
?_ARDGEYSER15_FROM17
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDGEYSER15&$FFFF)
		DB	:MAP_ARDGEYSER15

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDGEYSER15&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_ARDGEYSER15&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0A
		DB	$14
		DW	$D262
		DB	$00
		DB	:?_ARDGEYSER_TONY_OUT
		DW	(?_ARDGEYSER_TONY_OUT&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_SETCAMERA
		DB	$00
		DB	$0A

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_SCENEREADY

	DB	CMD_SCROLLMAP
		DB	$10
		DB	$04
		DB	$00
		DB	$30
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
		DB	:?_ARDGEYSER15
		DW	(?_ARDGEYSER15&$FFFF)
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
	GLOBAL	?_ARDGEYSER26_FROM15
	GLOBAL	?_ARDGEYSER17_FROM15
	GLOBAL	?_ARDGEYSER16
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_ARDGEYSER15
	GLOBAL	HS_ARDGEYSER15
	GLOBAL	TR_ARDGEYSER15
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