;Size:563
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\HOMETOWN\CAVE\MAP02\HMTCAVE02.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HMTCAVE02_DR_1
	DB	CMD_HEROTODOOR
		DB	$0D
		DB	$04
		DB	$1D
		DB	$02

	DB	CMD_JUMP
		DB	:?_HMTCAVE01_KIDS_STAND
		DW	(?_HMTCAVE01_KIDS_STAND&$FFFF)

;********************************
?_HMTCAVE02_DR_2
	DB	CMD_HEROTODOOR
		DB	$0A
		DB	$0B
		DB	$00
		DB	$1D

	DB	CMD_JUMP
		DB	:?_HMTCAVE03
		DW	(?_HMTCAVE03&$FFFF)

;********************************
?_HMTCAVE02_HOLDER_1

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?COMM,?SPCE,(?AU+$08),?SPCE,(?AL+$06),(?AL+$14),(?AL+$04),(?AL+$12),(?AL+$12),?WAIT
		DB	(?AU+$08),?APST,(?AL+$03),?SPCE,(?AL+$01),(?AL+$04),(?AL+$13),(?AL+$13),(?AL+$04),(?AL+$11),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),?SPCE,(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_END

;********************************
?_HMTCAVE02
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$01
		DB	:?_HMTCAVE02_FALL_DOWN
		DW	(?_HMTCAVE02_FALL_DOWN&$FFFF)

	DB	CMD_SCENENEW

	DB	CMD_SETXRAMBYTE
		DW	(MENU_DISABLE_MAIN+$0000)
		DB	$01

	DB	CMD_LOADMAP
		DW	(MAP_HMTCAVE02&$FFFF)
		DB	:MAP_HMTCAVE02

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HMTCAVE02&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$06
		DB	$1D
		DW	$D24A
		DB	$00
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_orwin

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_HMTCAVE02_INIT
	DB	CMD_SCENENEW

	DB	CMD_SETXRAMBYTE
		DW	(MENU_DISABLE_MAIN+$0000)
		DB	$01

	DB	CMD_LOADMAP
		DW	(MAP_HMTCAVE02&$FFFF)
		DB	:MAP_HMTCAVE02

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HMTCAVE02&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0E
		DB	$1C
		DW	$D23E
		DB	$00
		DB	:?_HMTCAVE02_OPENINGTONY
		DW	(?_HMTCAVE02_OPENINGTONY&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETCAMERA
		DB	$0D
		DB	$1D

	DB	CMD_SONGSTART
		DB	SONGID_orwin

	DB	CMD_SCENEREADY

	DB	CMD_DELAY
		DB	$20

	DB	CMD_SETTEXT
		DB	:?_HMTCAVE02_HOLDER_1
		DW	(?_HMTCAVE02_HOLDER_1&$FFFF)

	DB	CMD_WAITANYEVENTTEXT

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_END

;********************************
?_HMTCAVE02_OPENINGTONY
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_UP_ANIM
		DW	(?_HERO_WALK_UP_ANIM&$FFFF)
		DB	$30
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
?_HMTCAVE02_FALL_DOWN
	DB	CMD_SCENENEW

	DB	CMD_SETXRAMBYTE
		DW	(MENU_DISABLE_MAIN+$0000)
		DB	$01

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008B)
		DB	$02

	DB	CMD_LOADMAP
		DW	(MAP_HMTCAVE02&$FFFF)
		DB	:MAP_HMTCAVE02

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HMTCAVE02&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?SCROLLER_AI&$FFFF)
		DB	$0C
		DB	$00
		DW	$D00C
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

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SONGSTART
		DB	SONGID_arderial

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
		DW	$D03C
		DB	$04
		DB	$04
		DW	$D046
		DB	$03
		DB	$0A

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_COPYTILEBLOCK
		DW	$D1A4
		DB	$06
		DB	$06
		DW	$D1EB
		DB	$18
		DB	$0B

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_DELAY
		DB	$40

	DB	CMD_COPYTILEBLOCK
		DW	$D0DC
		DB	$04
		DB	$07
		DW	$D0E9
		DB	$0B
		DB	$0D

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_DELAY
		DB	$C6

	DB	CMD_JUMP
		DB	:?_HMTCAVE_TIMESUP
		DW	(?_HMTCAVE_TIMESUP&$FFFF)

;********************************
?_HMTCAVE_RUNFORIT
	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_RUN_DOWN_ANIM
		DW	(?_HERO_RUN_DOWN_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$38

	DB	CMD_THISACTORSETAI
		DW	(?HERO_AI&$FFFF)

	DB	CMD_JUMP
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

;********************************
?_HMTCAVE_QUAKE_LOOP
	DB	CMD_SCROLLMAP
		DB	$03
		DB	$FF
		DB	$00
		DB	$03
		DB	$01
		DB	$00
		DB	$03
		DB	$00
		DB	$FF
		DB	$03
		DB	$00
		DB	$01
		DB	$03
		DB	$FF
		DB	$00
		DB	$03
		DB	$01
		DB	$00
		DB	$03
		DB	$00
		DB	$FF
		DB	$03
		DB	$00
		DB	$01
		DB	$00

	DB	CMD_JUMP
		DB	:?_HMTCAVE_QUAKE_LOOP
		DW	(?_HMTCAVE_QUAKE_LOOP&$FFFF)

;********************************
?_HMTCAVE_FALL
	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_FLAILING
		DW	(?_HERO_FLAILING&$FFFF)

	DB	CMD_WAITANYEVENTTEXT

	DB	CMD_SETTEXT
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_HMTCAVE_END&$FFFF)

;********************************
?_HMTCAVE_TIMESUP
	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_END
		DW	(?_END&$FFFF)


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$07),?SPCE,(?AL+$0D),(?AL+$0E),?EXCL,?SPCE,(?AU+$08),?APST,(?AL+$0C),?HURRY
		DB	(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$04),(?AL+$03),?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

;********************************
?_HMTCAVE_END
	DB	CMD_PASS

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$0000

	DB	CMD_PALFADE
		DB	$20
		DB	$06

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_FALLING_GOOFILY_1
		DW	(?_HERO_FALLING_GOOFILY_1&$FFFF)

	DB	CMD_SETSCROLL
		DB	:_STOP_TONY
		DW	(_STOP_TONY&$FFFF)


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$06),(?AU+$07),?EXCL,?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_PALFADE
		DB	$20
		DB	$78

	DB	CMD_JUMP
		DB	:?_HMTCAVE01_KIDS_WAIT
		DW	(?_HMTCAVE01_KIDS_WAIT&$FFFF)

;********************************
_STOP_TONY
	DB	CMD_DELAY
		DB	$C8

	DB	CMD_THATACTORSTOP
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_END

;********************************
?_HMTCAVE_ROCKS
	DB	CMD_THISACTORSETANIM
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_THISACTORRAINDROP
		DB	COLLCODE_SPACE

	DB	CMD_JUMPRANDOM
		DB	$06
		DB	:_ROCKS01
		DW	(_ROCKS01&$FFFF)
		DB	:_ROCKS02
		DW	(_ROCKS02&$FFFF)
		DB	:_ROCKS03
		DW	(_ROCKS03&$FFFF)
		DB	:_ROCKS04
		DW	(_ROCKS04&$FFFF)
		DB	:_ROCKS05
		DW	(_ROCKS05&$FFFF)
		DB	:_ROCKS06
		DW	(_ROCKS06&$FFFF)

;********************************
_ROCKS01
	DB	CMD_THISACTORSETANIM
		DB	:?_FALLING_ROCKS01
		DW	(?_FALLING_ROCKS01&$FFFF)

	DB	CMD_DELAY
		DB	$17

	DB	CMD_JUMPLOCAL
		DW	(?_HMTCAVE_ROCKS&$FFFF)

;********************************
_ROCKS02
	DB	CMD_THISACTORSETANIM
		DB	:?_FALLING_ROCKS02
		DW	(?_FALLING_ROCKS02&$FFFF)

	DB	CMD_DELAY
		DB	$35

	DB	CMD_JUMPLOCAL
		DW	(?_HMTCAVE_ROCKS&$FFFF)

;********************************
_ROCKS03
	DB	CMD_THISACTORSETANIM
		DB	:?_FALLING_ROCKS03
		DW	(?_FALLING_ROCKS03&$FFFF)

	DB	CMD_DELAY
		DB	$38

	DB	CMD_JUMPLOCAL
		DW	(?_HMTCAVE_ROCKS&$FFFF)

;********************************
_ROCKS04
	DB	CMD_THISACTORSETANIM
		DB	:?_FALLING_ROCKS04
		DW	(?_FALLING_ROCKS04&$FFFF)

	DB	CMD_DELAY
		DB	$3A

	DB	CMD_JUMPLOCAL
		DW	(?_HMTCAVE_ROCKS&$FFFF)

;********************************
_ROCKS05
	DB	CMD_THISACTORSETANIM
		DB	:?_FALLING_ROCKS05
		DW	(?_FALLING_ROCKS05&$FFFF)

	DB	CMD_DELAY
		DB	$44

	DB	CMD_JUMPLOCAL
		DW	(?_HMTCAVE_ROCKS&$FFFF)

;********************************
_ROCKS06
	DB	CMD_THISACTORSETANIM
		DB	:?_FALLING_ROCKS06
		DW	(?_FALLING_ROCKS06&$FFFF)

	DB	CMD_DELAY
		DB	$46

	DB	CMD_JUMPLOCAL
		DW	(?_HMTCAVE_ROCKS&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_HMTCAVE01_KIDS_STAND
	GLOBAL	?_HMTCAVE03
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	MENU_DISABLE_MAIN
	GLOBAL	MAP_HMTCAVE02
	GLOBAL	HS_HMTCAVE02
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	?ANIM_AI
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	?_HERO_WALK_UP_ANIM
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	?SCROLLER_AI
	GLOBAL	ACTOR00
	GLOBAL	?RAINDROP_AI
	GLOBAL	ACTOR01
	GLOBAL	ACTOR02
	GLOBAL	BIT_FALLINGROCKS
	GLOBAL	?_HERO_RUN_DOWN_ANIM
	GLOBAL	?_HERO_FLAILING
	GLOBAL	?_END
	GLOBAL	?_HERO_FALLING_GOOFILY_1
	GLOBAL	?_HMTCAVE01_KIDS_WAIT
	GLOBAL	?_FALLING_ROCKS01
	GLOBAL	?_FALLING_ROCKS02
	GLOBAL	?_FALLING_ROCKS03
	GLOBAL	?_FALLING_ROCKS04
	GLOBAL	?_FALLING_ROCKS05
	GLOBAL	?_FALLING_ROCKS06

;********************************
	END
;********************************