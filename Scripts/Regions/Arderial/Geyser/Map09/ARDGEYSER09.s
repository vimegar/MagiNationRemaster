;Size:125
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\GEYSER\MAP09\ARDGEYSER09.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDGEYSER09_DR_1
	DB	CMD_HEROTODOOR
		DB	$17
		DB	$00
		DB	$0F
		DB	$10

	DB	CMD_JUMP
		DB	:?_ARDGEYSER04
		DW	(?_ARDGEYSER04&$FFFF)

;********************************
?_ARDGEYSER09_TR_1
	DB	CMD_TRIGGERALWAYS
		DW	(XRAM_SAVEBITS+$0001)
		DB	$10
		DB	:?_ARDGEYSER_FLIPPED
		DW	(?_ARDGEYSER_FLIPPED&$FFFF)
		DB	$FA
		DW	$D05B

	DB	CMD_SETSCROLL
		DB	:?_CALD_GEYSER_QUAKE
		DW	(?_CALD_GEYSER_QUAKE&$FFFF)

	DB	CMD_COPYTILEBLOCK
		DW	$D1AC
		DB	$01
		DB	$03
		DW	$D1C0
		DB	$12
		DB	$10

	DB	CMD_SETSCROLL
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_END

;********************************
?_ARDGEYSER09_TR_2
	DB	CMD_TRIGGERALWAYS
		DW	(XRAM_SAVEBITS+$0001)
		DB	$20
		DB	:?_ARDGEYSER_FLIPPED
		DW	(?_ARDGEYSER_FLIPPED&$FFFF)
		DB	$FA
		DW	$D07A

	DB	CMD_SETSCROLL
		DB	:?_CALD_GEYSER_QUAKE
		DW	(?_CALD_GEYSER_QUAKE&$FFFF)

	DB	CMD_COPYTILEBLOCK
		DW	$D1AC
		DB	$01
		DB	$03
		DW	$D15B
		DB	$0E
		DB	$0B

	DB	CMD_SETSCROLL
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_END

;********************************
?_ARDGEYSER09_TR_3
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$001D)
		DB	$80
		DB	INV_TYPE_ITEM
		DB	INV_STAR_KEY
		DW	$D12B

;********************************
?_ARDGEYSER09
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDGEYSER09&$FFFF)
		DB	:MAP_ARDGEYSER09

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDGEYSER09&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_ARDGEYSER09&$FFFF)

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
		DB	:?_ARDGEYSER09
		DW	(?_ARDGEYSER09&$FFFF)
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
	GLOBAL	?_ARDGEYSER04
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	?_ARDGEYSER_FLIPPED
	GLOBAL	?_CALD_GEYSER_QUAKE
	GLOBAL	?_END
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_ARDGEYSER09
	GLOBAL	HS_ARDGEYSER09
	GLOBAL	TR_ARDGEYSER09
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