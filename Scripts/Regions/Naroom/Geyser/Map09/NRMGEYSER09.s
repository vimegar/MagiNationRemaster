;Size:174
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\NAROOM\GEYSER\MAP09\NRMGEYSER09.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_NRMGEYSER09_DR_1
	DB	CMD_HEROTODOOR
		DB	$17
		DB	$00
		DB	$09
		DB	$09

	DB	CMD_JUMP
		DB	:?_NRMGEYSER08
		DW	(?_NRMGEYSER08&$FFFF)

;********************************
?_NRMGEYSER09_DR_2
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$13
		DB	$09
		DB	$15

	DB	CMD_JUMP
		DB	:?_NRMGEYSER10
		DW	(?_NRMGEYSER10&$FFFF)

;********************************
?_NRMGEYSER09_DR_3
	DB	CMD_HEROTODOOR
		DB	$07
		DB	$0F
		DB	$15
		DB	$00

	DB	CMD_JUMP
		DB	:?_NRMGEYSER04
		DW	(?_NRMGEYSER04&$FFFF)

;********************************
?_NRMGEYSER09_TR_1
	DB	CMD_TRIGGERALWAYS
		DW	(XRAM_SAVEBITS+$0000)
		DB	$08
		DB	:?_TXT_WONT_BUDGE
		DW	(?_TXT_WONT_BUDGE&$FFFF)
		DB	$FA
		DW	$D13E

	DB	CMD_INITSKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_SETSCROLL
		DB	:?_NRMGEYSER_QUAKIN
		DW	(?_NRMGEYSER_QUAKIN&$FFFF)

	DB	CMD_DELAY
		DB	$40

	DB	CMD_SETSCROLL
		DB	:?_NRMGEYSER_STOP
		DW	(?_NRMGEYSER_STOP&$FFFF)

;********************************
_SKIP
	DB	CMD_END

;********************************
?_NRMGEYSER09
;********************************
?_NRMGEYSER09_A
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
?_NRMGEYSER09_RETURN
	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$06
		DB	:?_NRMGEYSER09_B
		DW	(?_NRMGEYSER09_B&$FFFF)

	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$04
		DB	:?_NRMGEYSER09_B
		DW	(?_NRMGEYSER09_B&$FFFF)

	DB	CMD_LOADMAP
		DW	(MAP_NRMGEYSER09&$FFFF)
		DB	:MAP_NRMGEYSER09

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMGEYSER09&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMGEYSER09&$FFFF)

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
		DB	:?_NRMGEYSER09_RETURN
		DW	(?_NRMGEYSER09_RETURN&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$06
		DB	:?_GEYSER_QUAKE
		DW	(?_GEYSER_QUAKE&$FFFF)

	DB	CMD_END

;********************************
?_NRMGEYSER09_B
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_NRMGEYSER09&$FFFF)
		DB	:MAP_NRMGEYSER09

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMGEYSER09&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMGEYSER09&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_COPYTILEBLOCK
		DW	$D154
		DB	$04
		DB	$03
		DW	$D170
		DB	$0F
		DB	$08

	DB	CMD_COPYTILEBLOCK
		DW	$D154
		DB	$04
		DB	$02
		DW	$D1B8
		DB	$12
		DB	$08

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_SONGSTART
		DB	SONGID_maze

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
	GLOBAL	?_NRMGEYSER08
	GLOBAL	?_NRMGEYSER10
	GLOBAL	?_NRMGEYSER04
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	?_TXT_WONT_BUDGE
	GLOBAL	?_NRMGEYSER_QUAKIN
	GLOBAL	?_NRMGEYSER_STOP
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	MAP_NRMGEYSER09
	GLOBAL	HS_NRMGEYSER09
	GLOBAL	TR_NRMGEYSER09
	GLOBAL	PAL_HERO
	GLOBAL	?_NRMGEYSER_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST
	GLOBAL	?_GEYSER_QUAKE

;********************************
	END
;********************************