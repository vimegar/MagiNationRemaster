;Size:94
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\UNDERNEATH\GEYSER\MAP04\UNDGEYSER04.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_UNDGEYSER04_DR_1
	DB	CMD_HEROTODOOR
		DB	$0C
		DB	$07
		DB	$01
		DB	$2E

	DB	CMD_JUMP
		DB	:?_UNDGEYSER05
		DW	(?_UNDGEYSER05&$FFFF)

;********************************
?_UNDGEYSER04_DR_2
	DB	CMD_JUMP
		DB	:?_UNDGEYSER_FIRST
		DW	(?_UNDGEYSER_FIRST&$FFFF)

;********************************
?_UNDGEYSER04_DR_3
	DB	CMD_JUMP
		DB	:?_UNDGEYSER_THIRD
		DW	(?_UNDGEYSER_THIRD&$FFFF)

;********************************
?_UNDGEYSER04
	DB	CMD_SCENENEW

	DB	CMD_SETCOLLMASK
		DB	$0F

	DB	CMD_LOADMAP
		DW	(MAP_UNDGEYSER04&$FFFF)
		DB	:MAP_UNDGEYSER04

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDGEYSER04&$FFFF)

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

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SETSCROLL
		DB	:_INIT
		DW	(_INIT&$FFFF)

	DB	CMD_FADEOUTSONG
		DB	$50

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	:?_UNDGEYSER_INITFIRST
		DW	$0001
		DW	(?_UNDGEYSER_INITFIRST&$FFFF)
		DB	:?_UNDGEYSER_INITNEW
		DW	$0002
		DW	(?_UNDGEYSER_INITNEW&$FFFF)
		DB	:?_UNDGEYSER_INITFULL
		DW	$0003
		DW	(?_UNDGEYSER_INITFULL&$FFFF)
		DB	:?_UNDGEYSER_INITTHIRD
		DW	$0004
		DW	(?_UNDGEYSER_INITTHIRD&$FFFF)
		DB	$FF

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
_INIT
	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$0A
		DB	:?_UNDGEYSER_QUAKE
		DW	(?_UNDGEYSER_QUAKE&$FFFF)

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_UNDGEYSER05
	GLOBAL	?_UNDGEYSER_FIRST
	GLOBAL	?_UNDGEYSER_THIRD
	GLOBAL	MAP_UNDGEYSER04
	GLOBAL	PAL_HERO
	GLOBAL	HS_UNDGEYSER04
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	?_UNDGEYSER_INITFIRST
	GLOBAL	?_UNDGEYSER_INITNEW
	GLOBAL	?_UNDGEYSER_INITFULL
	GLOBAL	?_UNDGEYSER_INITTHIRD
	GLOBAL	?_UNDGEYSER_QUAKE

;********************************
	END
;********************************