;Size:136
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\GEYSER\MAP05\ARDGEYSER05.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDGEYSER05_DR_1
	DB	CMD_JUMP
		DB	:?_UNDGEYSER_FULL
		DW	(?_UNDGEYSER_FULL&$FFFF)

;********************************
?_ARDGEYSER05_DR_2
	DB	CMD_JUMP
		DB	:?_UNDGEYSER_NEW
		DW	(?_UNDGEYSER_NEW&$FFFF)

;********************************
?_ARDGEYSER05_DR_3
	DB	CMD_JUMP
		DB	:?_UNDGEYSER_FIRST
		DW	(?_UNDGEYSER_FIRST&$FFFF)

;********************************
?_ARDGEYSER05_DR_4
	DB	CMD_JUMP
		DB	:?_UNDGEYSER_THIRD
		DW	(?_UNDGEYSER_THIRD&$FFFF)

;********************************
?_ARDGEYSER05_DR_5
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$17
		DB	$0E
		DB	$0E

	DB	CMD_JUMP
		DB	:?_ARDGEYSER01
		DW	(?_ARDGEYSER01&$FFFF)

;********************************
?_ARDGEYSER05_DR_6
	DB	CMD_HEROTODOOR
		DB	$0B
		DB	$0B
		DB	$00
		DB	$17

	DB	CMD_JUMP
		DB	:?_ARDGEYSER06
		DW	(?_ARDGEYSER06&$FFFF)

;********************************
?_ARDGEYSER05_DR_7
	DB	CMD_HEROSETDOOR
		DB	$00
		DB	$04

	DB	CMD_JUMP
		DB	:?_ARDGEYSER11
		DW	(?_ARDGEYSER11&$FFFF)

;********************************
?_ARDGEYSER05_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$001E)
		DB	$08
		DB	INV_TYPE_ITEM
		DB	INV_STAR_KEY
		DW	$D146

;********************************
?_ARDGEYSER05_TR_2
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$001F)
		DB	$20
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_SAP
		DW	$D068

;********************************
?_ARDGEYSER05
	DB	CMD_SCENENEW

	DB	CMD_SETCOLLMASK
		DB	$0F

	DB	CMD_LOADMAP
		DW	(MAP_ARDGEYSER05&$FFFF)
		DB	:MAP_ARDGEYSER05

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDGEYSER05&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_ARDGEYSER05&$FFFF)

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

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_ARDGEYSER_RNDBAT
		DW	(?_ARDGEYSER_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_ARDGEYSER05
		DW	(?_ARDGEYSER05&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

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
; 	GLOBALS
;********************************
	GLOBAL	?_UNDGEYSER_FULL
	GLOBAL	?_UNDGEYSER_NEW
	GLOBAL	?_UNDGEYSER_FIRST
	GLOBAL	?_UNDGEYSER_THIRD
	GLOBAL	?_ARDGEYSER01
	GLOBAL	?_ARDGEYSER06
	GLOBAL	?_ARDGEYSER11
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_ARDGEYSER05
	GLOBAL	HS_ARDGEYSER05
	GLOBAL	TR_ARDGEYSER05
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	?_ARDGEYSER_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	?_UNDGEYSER_INITFIRST
	GLOBAL	?_UNDGEYSER_INITNEW
	GLOBAL	?_UNDGEYSER_INITFULL
	GLOBAL	?_UNDGEYSER_INITTHIRD

;********************************
	END
;********************************