;Size:450
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\NAROOM\GEYSER\MAP06\NRMGEYSER06.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_NRMGEYSER06_DR_1
	DB	CMD_HEROTODOOR
		DB	$0F
		DB	$08
		DB	$17
		DB	$00

	DB	CMD_JUMP
		DB	:?_NRMGEYSER01
		DW	(?_NRMGEYSER01&$FFFF)

;********************************
?_NRMGEYSER06_DR_2
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$17
		DB	$08
		DB	$08

	DB	CMD_JUMP
		DB	:?_NRMGEYSER05
		DW	(?_NRMGEYSER05&$FFFF)

;********************************
?_NRMGEYSER06_DR_3
	DB	CMD_HEROTODOOR
		DB	$0D
		DB	$0B
		DB	$00
		DB	$17

	DB	CMD_JUMP
		DB	:?_NRMGEYSER07
		DW	(?_NRMGEYSER07&$FFFF)

;********************************
?_NRMGEYSER06_DR_4
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$17
		DB	$13
		DB	$13

	DB	CMD_JUMP
		DB	:?_NRMGEYSER05
		DW	(?_NRMGEYSER05&$FFFF)

;********************************
?_NRMGEYSER06_TR_1
	DB	CMD_TRIGGERALWAYS
		DW	(XRAM_SAVEBITS+$0000)
		DB	$01
		DB	:?_TXT_WONT_BUDGE
		DW	(?_TXT_WONT_BUDGE&$FFFF)
		DB	$FA
		DW	$D159

	DB	CMD_INITSKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_SCROLLMAP
		DB	$18
		DB	$02
		DB	$02
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$18
		DB	$02
		DB	$00
		DB	$00

	DB	CMD_DELAY
		DB	$08

	DB	CMD_SETSCROLL
		DB	:?_NRMGEYSER_QUAKIN
		DW	(?_NRMGEYSER_QUAKIN&$FFFF)

;********************************
_SKIP
	DB	CMD_COPYTILEBLOCK
		DW	$D220
		DB	$04
		DB	$01
		DW	$D1D8
		DB	$13
		DB	$10

	DB	CMD_COPYTILEBLOCK
		DW	$D220
		DB	$04
		DB	$01
		DW	$D1F0
		DB	$14
		DB	$10

	DB	CMD_COPYTILEBLOCK
		DW	$D220
		DB	$04
		DB	$01
		DW	$D208
		DB	$15
		DB	$10

	DB	CMD_INITSKIP
		DW	(_SKIP2&$FFFF)

	DB	CMD_SETSCROLL
		DB	:?_NRMGEYSER_STOP
		DW	(?_NRMGEYSER_STOP&$FFFF)

	DB	CMD_DELAY
		DB	$08

	DB	CMD_SCROLLMAP
		DB	$30
		DB	$FF
		DB	$00
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$30
		DB	$FF
		DB	$FF
		DB	$00

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

;********************************
_SKIP2
	DB	CMD_END

;********************************
?_NRMGEYSER06_TR_2
	DB	CMD_TRIGGERALWAYS
		DW	(XRAM_SAVEBITS+$0000)
		DB	$02
		DB	:?_TXT_WONT_BUDGE
		DW	(?_TXT_WONT_BUDGE&$FFFF)
		DB	$FA
		DW	$D178

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
?_NRMGEYSER06_TR_3
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0003)
		DB	$40
		DB	INV_TYPE_ITEM
		DB	INV_REMEDY_DRINK
		DW	$D08D

;********************************
?_NRMGEYSER06
;********************************
?_NRMGEYSER06A
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
?_NRMGEYSER06_RETURN
	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$06
		DB	:?_NRMGEYSER06D
		DW	(?_NRMGEYSER06D&$FFFF)

	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$01
		DB	:?_NRMGEYSER06B
		DW	(?_NRMGEYSER06B&$FFFF)

	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$08
		DB	:?_NRMGEYSER06C
		DW	(?_NRMGEYSER06C&$FFFF)

	DB	CMD_LOADMAP
		DW	(MAP_NRMGEYSER06&$FFFF)
		DB	:MAP_NRMGEYSER06

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMGEYSER06&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMGEYSER06&$FFFF)

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
		DB	:?_NRMGEYSER06_RETURN
		DW	(?_NRMGEYSER06_RETURN&$FFFF)
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
?_NRMGEYSER06B
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$08
		DB	:?_NRMGEYSER06D
		DW	(?_NRMGEYSER06D&$FFFF)

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_NRMGEYSER06&$FFFF)
		DB	:MAP_NRMGEYSER06

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMGEYSER06&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMGEYSER06&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_HEROSETCAMERA

	DB	CMD_COPYTILEBLOCK
		DW	$D220
		DB	$04
		DB	$01
		DW	$D1D8
		DB	$13
		DB	$10

	DB	CMD_COPYTILEBLOCK
		DW	$D220
		DB	$04
		DB	$01
		DW	$D1F0
		DB	$14
		DB	$10

	DB	CMD_COPYTILEBLOCK
		DW	$D220
		DB	$04
		DB	$01
		DW	$D208
		DB	$15
		DB	$10

	DB	CMD_SCENEREADY

	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$06
		DB	:?_GEYSER_QUAKE
		DW	(?_GEYSER_QUAKE&$FFFF)

	DB	CMD_END

;********************************
?_NRMGEYSER06C
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_NRMGEYSER06&$FFFF)
		DB	:MAP_NRMGEYSER06

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMGEYSER06&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMGEYSER06&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_HEROSETCAMERA

	DB	CMD_COPYTILEBLOCK
		DW	$D097
		DB	$01
		DB	$02
		DW	$D09E
		DB	$06
		DB	$0E

	DB	CMD_COPYTILEBLOCK
		DW	$D0C9
		DB	$04
		DB	$03
		DW	$D056
		DB	$03
		DB	$0E

	DB	CMD_COPYTILEBLOCK
		DW	$D0C9
		DB	$03
		DB	$02
		DW	$D09F
		DB	$06
		DB	$0F

	DB	CMD_SCENEREADY

	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$06
		DB	:?_GEYSER_QUAKE
		DW	(?_GEYSER_QUAKE&$FFFF)

	DB	CMD_END

;********************************
?_NRMGEYSER06D
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_NRMGEYSER06&$FFFF)
		DB	:MAP_NRMGEYSER06

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMGEYSER06&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMGEYSER06&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_HEROSETCAMERA

	DB	CMD_COPYTILEBLOCK
		DW	$D097
		DB	$01
		DB	$02
		DW	$D09E
		DB	$06
		DB	$0E

	DB	CMD_COPYTILEBLOCK
		DW	$D0C9
		DB	$04
		DB	$03
		DW	$D056
		DB	$03
		DB	$0E

	DB	CMD_COPYTILEBLOCK
		DW	$D0C9
		DB	$03
		DB	$02
		DW	$D09F
		DB	$06
		DB	$0F

	DB	CMD_COPYTILEBLOCK
		DW	$D220
		DB	$04
		DB	$01
		DW	$D1D8
		DB	$13
		DB	$10

	DB	CMD_COPYTILEBLOCK
		DW	$D220
		DB	$04
		DB	$01
		DW	$D1F0
		DB	$14
		DB	$10

	DB	CMD_COPYTILEBLOCK
		DW	$D220
		DB	$04
		DB	$01
		DW	$D208
		DB	$15
		DB	$10

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
	GLOBAL	?_NRMGEYSER01
	GLOBAL	?_NRMGEYSER05
	GLOBAL	?_NRMGEYSER07
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	?_TXT_WONT_BUDGE
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?ANIM_AI
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	?_NRMGEYSER_QUAKIN
	GLOBAL	?_NRMGEYSER_STOP
	GLOBAL	?HERO_AI
	GLOBAL	XRAM_TREASURE
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	MAP_NRMGEYSER06
	GLOBAL	HS_NRMGEYSER06
	GLOBAL	TR_NRMGEYSER06
	GLOBAL	PAL_HERO
	GLOBAL	?_NRMGEYSER_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST
	GLOBAL	?_GEYSER_QUAKE

;********************************
	END
;********************************