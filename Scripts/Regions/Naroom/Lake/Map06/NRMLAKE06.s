;Size:94
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\NAROOM\LAKE\MAP06\NRMLAKE06.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_NRMLAKE06_DR_1
	DB	CMD_HEROTODOOR
		DB	$03
		DB	$11
		DB	$00
		DB	$27

	DB	CMD_JUMP
		DB	:?_NRMLAKE04
		DW	(?_NRMLAKE04&$FFFF)

;********************************
?_NRMLAKE06
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_NRMLAKE06&$FFFF)
		DB	:MAP_NRMLAKE06

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMLAKE06&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_UNDERSWIM&$FFFF)
		DB	$05
		DB	$05
		DW	$D09B
		DB	$00
		DB	:?_HERO_UNDTREAD_LEFT_ANIM
		DW	(?_HERO_UNDTREAD_LEFT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1E-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D118
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_OROHYREN_RNDBAT
		DW	(?_OROHYREN_RNDBAT&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1D-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D118
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_OROHYREN_RNDBAT
		DW	(?_OROHYREN_RNDBAT&$FFFF)

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
		DB	:?_NRMLAKE06
		DW	(?_NRMLAKE06&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_oroisland

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_NRMLAKE04
	GLOBAL	MAP_NRMLAKE06
	GLOBAL	HS_NRMLAKE06
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI_UNDERSWIM
	GLOBAL	?_HERO_UNDTREAD_LEFT_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR1E
	GLOBAL	?RAINDROP_AI
	GLOBAL	?_RAINER
	GLOBAL	?_OROHYREN_RNDBAT
	GLOBAL	ACTOR1D
	GLOBAL	BIT_SPARKLE
	GLOBAL	?_BATTLE_LOST

;********************************
	END
;********************************