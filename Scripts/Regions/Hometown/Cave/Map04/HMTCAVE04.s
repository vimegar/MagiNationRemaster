;Size:539
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\HOMETOWN\CAVE\MAP04\HMTCAVE04.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HMTCAVE04_DR_1
	DB	CMD_HEROTODOOR
		DB	$08
		DB	$22
		DB	$1D
		DB	$00

	DB	CMD_JUMP
		DB	:?_HMTCAVE03
		DW	(?_HMTCAVE03&$FFFF)

;********************************
?_HMTCAVE04_TXT_1

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$08),(?AL+$13),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_HMTCAVE04_TXT_2

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$07),?SPCE,(?AL+$0D),(?AL+$0E),?EXCL,?SPCE,(?AU+$08),?APST,(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$06),(?AL+$0E),(?AL+$13),(?AL+$13),(?AL+$00),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$13),?WAIT
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
?_HMTCAVE04
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$01
		DB	:?_HMTCAVE04_QUAKE
		DW	(?_HMTCAVE04_QUAKE&$FFFF)

	DB	CMD_JUMP
		DB	:?_HMTCAVE04_OPENING
		DW	(?_HMTCAVE04_OPENING&$FFFF)

;********************************
?_GENERIC_HMTCAVE04
	DB	CMD_SCENENEW

	DB	CMD_SETXRAMBYTE
		DW	(MENU_DISABLE_MAIN+$0000)
		DB	$01

	DB	CMD_LOADMAP
		DW	(MAP_HMTCAVE04&$FFFF)
		DB	:MAP_HMTCAVE04

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HMTCAVE04&$FFFF)

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

	DB	CMD_HEROFROMDOOR

	DB	CMD_SONGSTART
		DB	SONGID_orwin

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_HMTCAVE04_QUAKE
	DB	CMD_SCENENEW

	DB	CMD_SETXRAMBYTE
		DW	(MENU_DISABLE_MAIN+$0000)
		DB	$01

	DB	CMD_LOADMAP
		DW	(MAP_HMTCAVE04&$FFFF)
		DB	:MAP_HMTCAVE04

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HMTCAVE04&$FFFF)

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

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_arderial

	DB	CMD_SCENEREADY

	DB	CMD_SETSCROLL
		DB	:?_HMTCAVE_QUAKE_LOOP
		DW	(?_HMTCAVE_QUAKE_LOOP&$FFFF)

	DB	CMD_END

;********************************
?_HMTCAVE04_OPENING
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008B)
		DB	$00

	DB	CMD_SCENENEW

	DB	CMD_SETXRAMBYTE
		DW	(MENU_DISABLE_MAIN+$0000)
		DB	$01

	DB	CMD_LOADMAP
		DW	(MAP_HMTCAVE04&$FFFF)
		DB	:MAP_HMTCAVE04

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HMTCAVE04&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$09
		DB	$1D
		DW	$D400
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TRIGGER_AI&$FFFF)
		DB	$1D
		DB	$04
		DW	$D0A9
		DB	$00
		DB	:_CRYSTAL
		DW	(_CRYSTAL&$FFFF)
		DB	:_CRYSTAL_TRIGGER
		DW	(_CRYSTAL_TRIGGER&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$00
		DB	$00
		DW	$D000
		DB	$20
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
		DB	$20
		DB	:?_HMTCAVE_ROCKS
		DW	(?_HMTCAVE_ROCKS&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$00
		DB	$00
		DW	$D000
		DB	$20
		DB	:?_HMTCAVE_ROCKS
		DW	(?_HMTCAVE_ROCKS&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$20
		DB	:BIT_CRYSTAL
		DW	(BIT_CRYSTAL&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$10
		DB	:BIT_FALLINGROCKS
		DW	(BIT_FALLINGROCKS&$FFFF)
		DW	$8200
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_SONGSTART
		DB	SONGID_orwin

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
_CRYSTAL
	DB	CMD_THISACTORSETANIM
		DB	:?_CRYSTAL_ANIM
		DW	(?_CRYSTAL_ANIM&$FFFF)

	DB	CMD_END

;********************************
_CRYSTAL_TRIGGER
	DB	CMD_SFX
		DB	SFXID_TREASURECHEST

	DB	CMD_THISACTORSETANIM
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0000)
		DB	$01

	DB	CMD_SETTEXT
		DB	:?_HMTCAVE04_TXT_1
		DW	(?_HMTCAVE04_TXT_1&$FFFF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_SONGSTART
		DB	SONGID_arderial

	DB	CMD_SETSCROLL
		DB	:?_HMTCAVE_QUAKE_LOOP
		DW	(?_HMTCAVE_QUAKE_LOOP&$FFFF)

	DB	CMD_COPYTILEBLOCK
		DW	$D012
		DB	$05
		DB	$03
		DW	$D061
		DB	$02
		DB	$1B

	DB	CMD_DELAY
		DB	$10

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSETANIM
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UL_ANIM
		DW	(?_HERO_STAND_UL_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_HMTCAVE04_TXT_2
		DW	(?_HMTCAVE04_TXT_2&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:_FLOOR_FALL
		DW	(_FLOOR_FALL&$FFFF)

	DB	CMD_THISACTORSTOP

;********************************
_FLOOR_FALL
	DB	CMD_DELAY
		DB	$40

	DB	CMD_COPYTILEBLOCK
		DW	$D005
		DB	$07
		DB	$05
		DW	$D061
		DB	$02
		DB	$1B

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_DELAY
		DB	$50

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_DELAY
		DB	$50

	DB	CMD_COPYTILEBLOCK
		DW	$D38B
		DB	$03
		DB	$05
		DW	$D1BC
		DB	$0C
		DB	$18

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_DELAY
		DB	$40

	DB	CMD_COPYTILEBLOCK
		DW	$D36B
		DB	$03
		DB	$05
		DW	$D284
		DB	$12
		DB	$0E

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_DELAY
		DB	$20

	DB	CMD_COPYTILEBLOCK
		DW	$D3CF
		DB	$02
		DB	$03
		DW	$D14D
		DB	$09
		DB	$12

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_DELAY
		DB	$C2

	DB	CMD_JUMP
		DB	:?_HMTCAVE_TIMESUP
		DW	(?_HMTCAVE_TIMESUP&$FFFF)

;********************************
?_HMTCAVE04_FALSE_END
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HMTCAVE04&$FFFF)
		DB	:MAP_HMTCAVE04

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HMTCAVE04&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0A
		DB	$17
		DW	$D32F
		DB	$00
		DB	:_FALSEEND_TONY
		DW	(_FALSEEND_TONY&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGPAUSE

	DB	CMD_SONGSTOP

	DB	CMD_PALCLEARANIM
		DB	$0F
		DW	$7FFF

	DB	CMD_SCENEREADY

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_END

;********************************
_FALSEEND_TONY
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_SLOSHED_LEFT
		DW	(?_HERO_SLOSHED_LEFT&$FFFF)
		DB	$90
		DB	$00

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)
		DB	$20
		DB	$00
		DB	$01
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$30
		DB	$00

	DB	CMD_SETTEXT
		DB	:_FALSEEND_TXT
		DW	(_FALSEEND_TXT&$FFFF)

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_DELAY
		DB	$20

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_JUMP
		DB	:?_HMTCAVE01_KZNEWKIDS
		DW	(?_HMTCAVE01_KZNEWKIDS&$FFFF)

;********************************
_FALSEEND_TXT

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	(?AL+$07),(?AL+$0E),(?AL+$0C),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_HMTCAVE03
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	MENU_DISABLE_MAIN
	GLOBAL	MAP_HMTCAVE04
	GLOBAL	HS_HMTCAVE04
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	?_HMTCAVE_QUAKE_LOOP
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	ACTOR00
	GLOBAL	?TRIGGER_AI
	GLOBAL	ACTOR01
	GLOBAL	?RAINDROP_AI
	GLOBAL	?_HMTCAVE_ROCKS
	GLOBAL	ACTOR02
	GLOBAL	ACTOR03
	GLOBAL	BIT_CRYSTAL
	GLOBAL	BIT_FALLINGROCKS
	GLOBAL	?_CRYSTAL_ANIM
	GLOBAL	?_END
	GLOBAL	?ANIM_AI
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_HERO_STAND_UL_ANIM
	GLOBAL	?_HMTCAVE_TIMESUP
	GLOBAL	?_HERO_SLOSHED_LEFT
	GLOBAL	?_HERO_WALK_DOWN_ANIM
	GLOBAL	?_HMTCAVE01_KZNEWKIDS

;********************************
	END
;********************************