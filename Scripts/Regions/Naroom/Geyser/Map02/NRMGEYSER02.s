;Size:159
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\NAROOM\GEYSER\MAP02\NRMGEYSER02.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_NRMGEYSER02_DR_1
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$17
		DB	$0D
		DB	$10

	DB	CMD_JUMP
		DB	:?_NRMGEYSER03
		DW	(?_NRMGEYSER03&$FFFF)

;********************************
?_NRMGEYSER02_DR_2
	DB	CMD_HEROTODOOR
		DB	$06
		DB	$0A
		DB	$00
		DB	$17

	DB	CMD_JUMP
		DB	:?_NRMGEYSER05
		DW	(?_NRMGEYSER05&$FFFF)

;********************************
?_NRMGEYSER02_DR_3
	DB	CMD_HEROTODOOR
		DB	$17
		DB	$00
		DB	$0D
		DB	$11

	DB	CMD_JUMP
		DB	:?_NRMGEYSER01
		DW	(?_NRMGEYSER01&$FFFF)

;********************************
?_NRMGEYSER02_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0003)
		DB	$08
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_LEAF
		DW	$D21F

;********************************
?_NRMGEYSER02
;********************************
?_NRMGEYSER02_A
	DB	CMD_SCENENEW

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

;********************************
?_NRMGEYSER02_RETURN
	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$06
		DB	:?_NRMGEYSER02_B_PASS
		DW	(?_NRMGEYSER02_B_PASS&$FFFF)

	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$02
		DB	:?_NRMGEYSER02_B
		DW	(?_NRMGEYSER02_B&$FFFF)

	DB	CMD_LOADMAP
		DW	(MAP_NRMGEYSER02&$FFFF)
		DB	:MAP_NRMGEYSER02

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMGEYSER02&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMGEYSER02&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_NRMGEYSER_RNDBAT
		DW	(?_NRMGEYSER_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_NRMGEYSER02_RETURN
		DW	(?_NRMGEYSER02_RETURN&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_SCENEREADY

	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$06
		DB	:?_GEYSER_QUAKE
		DW	(?_GEYSER_QUAKE&$FFFF)

	DB	CMD_END

;********************************
?_NRMGEYSER02_B
	DB	CMD_IF
		DB	EXPR_NOT
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$02
		DB	:?_NRMGEYSER02_A
		DW	(?_NRMGEYSER02_A&$FFFF)

;********************************
?_NRMGEYSER02_B_PASS
	DB	CMD_LOADMAP
		DW	(MAP_NRMGEYSER02&$FFFF)
		DB	:MAP_NRMGEYSER02

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMGEYSER02&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMGEYSER02&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_COPYTILEBLOCK
		DW	$D0A3
		DB	$01
		DB	$07
		DW	$D093
		DB	$06
		DB	$03

	DB	CMD_SCENEREADY

	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$06
		DB	:?_GEYSER_QUAKE
		DW	(?_GEYSER_QUAKE&$FFFF)

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_NRMGEYSER03
	GLOBAL	?_NRMGEYSER05
	GLOBAL	?_NRMGEYSER01
	GLOBAL	XRAM_TREASURE
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	MAP_NRMGEYSER02
	GLOBAL	HS_NRMGEYSER02
	GLOBAL	TR_NRMGEYSER02
	GLOBAL	PAL_HERO
	GLOBAL	?_NRMGEYSER_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST
	GLOBAL	?_GEYSER_QUAKE

;********************************
	END
;********************************