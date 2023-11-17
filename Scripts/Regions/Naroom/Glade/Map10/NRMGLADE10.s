;Size:62
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\NAROOM\GLADE\MAP10\NRMGLADE10.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_NRMGLADE10_DR_1
	DB	CMD_HEROSETDOOR
		DB	$25
		DB	$08

	DB	CMD_JUMP
		DB	:?_OVRSURFACE01
		DW	(?_OVRSURFACE01&$FFFF)

;********************************
?_NRMGLADE10_DR_2
	DB	CMD_THATACTORSTOP
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROTODOOR
		DB	$04
		DB	$2B
		DB	$04
		DB	$18

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_JUMP
		DB	:?_WVESHORTCUT01_FADEIN
		DW	(?_WVESHORTCUT01_FADEIN&$FFFF)

;********************************
?_NRMGLADE10_FADEIN
	DB	CMD_FADEOUTSONG
		DB	$1E

;********************************
?_NRMGLADE10
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_NRMGLADE10&$FFFF)
		DB	:MAP_NRMGLADE10

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMGLADE10&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D041
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
		DB	SONGID_orotunnels

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_OVRSURFACE01
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?_WVESHORTCUT01_FADEIN
	GLOBAL	MAP_NRMGLADE10
	GLOBAL	PAL_HERO
	GLOBAL	HS_NRMGLADE10
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK

;********************************
	END
;********************************