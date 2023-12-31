;Size:87
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\CORE\THRONE\MAP04\THRONE04.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_THRONE04_DR_1
	DB	CMD_HEROSETDOOR
		DB	$1D
		DB	$05

	DB	CMD_JUMP
		DB	:?_THRONE03
		DW	(?_THRONE03&$FFFF)

;********************************
?_THRONE04_DR_2
	DB	CMD_HEROSETDOOR
		DB	$04
		DB	$3E

	DB	CMD_JUMP
		DB	:?_THRONE05
		DW	(?_THRONE05&$FFFF)

;********************************
?_THRONE04
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$01

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_THRONE04&$FFFF)
		DB	:MAP_THRONE04

	DB	CMD_LOADHOTSPOTS
		DW	(HS_THRONE04&$FFFF)

	DB	CMD_IF
		DB	EXPR_NOTEQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$18
		DB	:_NO_BATTLES
		DW	(_NO_BATTLES&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1E-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D0AC
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_THRONE_RANDOM_BATTLE
		DW	(?_THRONE_RANDOM_BATTLE&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1D-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D0AC
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_THRONE_RANDOM_BATTLE
		DW	(?_THRONE_RANDOM_BATTLE&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR1E-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR1D-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$34
		DB	:BIT_SPARKLE
		DW	(BIT_SPARKLE&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_SETBTLRETURN
		DB	:?_THRONE04
		DW	(?_THRONE04&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

;********************************
_NO_BATTLES
	DB	CMD_JUMP
		DB	:?_SCENE_READY
		DW	(?_SCENE_READY&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_THRONE03
	GLOBAL	?_THRONE05
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	MAP_THRONE04
	GLOBAL	HS_THRONE04
	GLOBAL	ACTOR1E
	GLOBAL	ACTOR_RAM
	GLOBAL	?RAINDROP_AI
	GLOBAL	?_RAINER
	GLOBAL	?_THRONE_RANDOM_BATTLE
	GLOBAL	ACTOR1D
	GLOBAL	BIT_SPARKLE
	GLOBAL	?_BATTLE_LOST
	GLOBAL	?_SCENE_READY

;********************************
	END
;********************************