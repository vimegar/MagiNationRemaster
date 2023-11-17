;Size:49
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\NAROOM\LAKE\MAP03\NRMLAKE03.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_NRMLAKE03_DR_1
	DB	CMD_HEROSETDOOR
		DB	$1B
		DB	$08

	DB	CMD_JUMP
		DB	:?_OVRSURFACE01
		DW	(?_OVRSURFACE01&$FFFF)

;********************************
?_NRMLAKE03_DR_2
	DB	CMD_HEROTODOOR
		DB	$02
		DB	$14
		DB	$00
		DB	$3B

	DB	CMD_JUMP
		DB	:?_NRMLAKE01
		DW	(?_NRMLAKE01&$FFFF)

;********************************
?_NRMLAKE03_FADEIN
	DB	CMD_FADEOUTSONG
		DB	$1E

;********************************
?_NRMLAKE03
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_NRMLAKE03&$FFFF)
		DB	:MAP_NRMLAKE03

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMLAKE03&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D04B
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
		DB	SONGID_oroisland

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_OVRSURFACE01
	GLOBAL	?_NRMLAKE01
	GLOBAL	MAP_NRMLAKE03
	GLOBAL	HS_NRMLAKE03
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK

;********************************
	END
;********************************