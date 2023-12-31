;Size:268
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\HOMETOWN\CAVE\MAP03\HMTCAVE03.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HMTCAVE03_DR_1
	DB	CMD_HEROTODOOR
		DB	$0B
		DB	$0A
		DB	$1D
		DB	$00

	DB	CMD_JUMP
		DB	:?_HMTCAVE02
		DW	(?_HMTCAVE02&$FFFF)

;********************************
?_HMTCAVE03_DR_2
	DB	CMD_HEROTODOOR
		DB	$22
		DB	$08
		DB	$00
		DB	$1D

	DB	CMD_JUMP
		DB	:?_HMTCAVE04
		DW	(?_HMTCAVE04&$FFFF)

;********************************
?_HMTCAVE03
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$01
		DB	:?_HMTCAVE03_FALL_DOWN
		DW	(?_HMTCAVE03_FALL_DOWN&$FFFF)

	DB	CMD_SCENENEW

	DB	CMD_SETXRAMBYTE
		DW	(MENU_DISABLE_MAIN+$0000)
		DB	$01

	DB	CMD_LOADMAP
		DW	(MAP_HMTCAVE03&$FFFF)
		DB	:MAP_HMTCAVE03

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HMTCAVE03&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D0CD
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SONGSTART
		DB	SONGID_orwin

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_HMTCAVE03_FALL_DOWN
	DB	CMD_SCENENEW

	DB	CMD_SETXRAMBYTE
		DW	(MENU_DISABLE_MAIN+$0000)
		DB	$01

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008B)
		DB	$01

	DB	CMD_LOADMAP
		DW	(MAP_HMTCAVE03&$FFFF)
		DB	:MAP_HMTCAVE03

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HMTCAVE03&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?SCROLLER_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D0CD
		DB	$00
		DB	:?_HMTCAVE_RUNFORIT
		DW	(?_HMTCAVE_RUNFORIT&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$00
		DB	$00
		DW	$D000
		DB	$00
		DB	:?_HMTCAVE_ROCKS
		DW	(?_HMTCAVE_ROCKS&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$00
		DB	$00
		DW	$D000
		DB	$00
		DB	:?_HMTCAVE_ROCKS
		DW	(?_HMTCAVE_ROCKS&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$00
		DB	$00
		DW	$D000
		DB	$00
		DB	:?_HMTCAVE_ROCKS
		DW	(?_HMTCAVE_ROCKS&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$10
		DB	:BIT_FALLINGROCKS
		DW	(BIT_FALLINGROCKS&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SONGSTART
		DB	SONGID_arderial

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_SETSCROLL
		DB	:?_HMTCAVE_QUAKE_LOOP
		DW	(?_HMTCAVE_QUAKE_LOOP&$FFFF)

	DB	CMD_SETTEXT
		DB	:_FLOOR_FALL
		DW	(_FLOOR_FALL&$FFFF)

	DB	CMD_END

;********************************
_FLOOR_FALL
	DB	CMD_DELAY
		DB	$38

	DB	CMD_COPYTILEBLOCK
		DW	$D0F0
		DB	$03
		DB	$05
		DW	$D04B
		DB	$01
		DB	$23

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_DELAY
		DB	$40

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_DELAY
		DB	$40

	DB	CMD_COPYTILEBLOCK
		DW	$D2D0
		DB	$03
		DB	$03
		DW	$D36A
		DB	$15
		DB	$22

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_DELAY
		DB	$10

	DB	CMD_COPYTILEBLOCK
		DW	$D230
		DB	$04
		DB	$04
		DW	$D391
		DB	$16
		DB	$21

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_DELAY
		DB	$60

	DB	CMD_COPYTILEBLOCK
		DW	$D1B8
		DB	$05
		DB	$03
		DW	$D1A3
		DB	$0A
		DB	$13

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_DELAY
		DB	$20

	DB	CMD_COPYTILEBLOCK
		DW	$D410
		DB	$06
		DB	$04
		DW	$D30D
		DB	$13
		DB	$15

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_DELAY
		DB	$10

	DB	CMD_COPYTILEBLOCK
		DW	$D348
		DB	$06
		DB	$05
		DW	$D35D
		DB	$15
		DB	$15

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_DELAY
		DB	$40

	DB	CMD_COPYTILEBLOCK
		DW	$D0F0
		DB	$03
		DB	$05
		DW	$D3A6
		DB	$17
		DB	$0E

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_DELAY
		DB	$C6

	DB	CMD_JUMP
		DB	:?_HMTCAVE_TIMESUP
		DW	(?_HMTCAVE_TIMESUP&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_HMTCAVE02
	GLOBAL	?_HMTCAVE04
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	MENU_DISABLE_MAIN
	GLOBAL	MAP_HMTCAVE03
	GLOBAL	HS_HMTCAVE03
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	?SCROLLER_AI
	GLOBAL	?_HMTCAVE_RUNFORIT
	GLOBAL	ACTOR00
	GLOBAL	?RAINDROP_AI
	GLOBAL	?_HMTCAVE_ROCKS
	GLOBAL	ACTOR01
	GLOBAL	ACTOR02
	GLOBAL	BIT_FALLINGROCKS
	GLOBAL	?_HMTCAVE_QUAKE_LOOP
	GLOBAL	?_HMTCAVE_TIMESUP

;********************************
	END
;********************************