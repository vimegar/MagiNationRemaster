;Size:159
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\OROTHE\GEYSER\MAP08\OROGEYSER08.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_OROGEYSER08_DR_1
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$09
		DB	$0E
		DB	$07

	DB	CMD_JUMP
		DB	:?_OROGEYSER07
		DW	(?_OROGEYSER07&$FFFF)

;********************************
?_OROGEYSER08_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0017)
		DB	$02
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_ROOT
		DW	$D0AB

;********************************
?_OROGEYSER08_TR_2
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0017)
		DB	$04
		DB	INV_TYPE_ITEM
		DB	INV_RUNEOFPOWER
		DW	$D060

;********************************
?_OROGEYSER08_TR_3
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0017)
		DB	$08
		DB	INV_TYPE_ITEM
		DB	INV_KARMIC_POWER
		DW	$D061

;********************************
?_OROGEYSER08_TR_4
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0017)
		DB	$10
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_LEAF
		DW	$D062

;********************************
?_OROGEYSER08
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_OROGEYSER08&$FFFF)
		DB	:MAP_OROGEYSER08

	DB	CMD_LOADHOTSPOTS
		DW	(HS_OROGEYSER08&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_OROGEYSER08&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_OROGEYSER_RNDBAT
		DW	(?_OROGEYSER_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_OROGEYSER08
		DW	(?_OROGEYSER08&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0001)&$FFFF
		DB	:_SKIP
		DW	$0000
		DW	(_SKIP&$FFFF)
		DB	:_ONE
		DW	$0001
		DW	(_ONE&$FFFF)
		DB	:_TWO
		DW	$0002
		DW	(_TWO&$FFFF)
		DB	$FF

;********************************
_ONE
	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$11
		DB	$01
		DW	$D025
		DB	$00
		DB	:?_OROGEYSER_TONY_FALLING
		DW	(?_OROGEYSER_TONY_FALLING&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_SETCAMERA
		DB	$11
		DB	$05

	DB	CMD_JUMPLOCAL
		DW	(_END&$FFFF)

;********************************
_TWO
	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$1C
		DB	$1F
		DW	$D288
		DB	$00
		DB	:?_OROGEYSER_TONY_FALLING
		DW	(?_OROGEYSER_TONY_FALLING&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_SETCAMERA
		DB	$1C
		DB	$23

	DB	CMD_JUMPLOCAL
		DW	(_END&$FFFF)

;********************************
_SKIP
	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$00
		DB	$00
		DW	$D000
		DB	$00
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

;********************************
_END
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0001)
		DB	$00

	DB	CMD_SCENEREADY

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_OROGEYSER07
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_OROGEYSER08
	GLOBAL	HS_OROGEYSER08
	GLOBAL	TR_OROGEYSER08
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?_OROGEYSER_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	?ANIM_AI
	GLOBAL	?_OROGEYSER_TONY_FALLING
	GLOBAL	?_DONT_TALK
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STAND_LEFT_ANIM

;********************************
	END
;********************************