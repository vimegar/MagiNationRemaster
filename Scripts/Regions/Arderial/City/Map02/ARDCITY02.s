;Size:59
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\CITY\MAP02\ARDCITY02.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDCITY02_DR_1
	DB	CMD_HEROSETDOOR
		DB	$16
		DB	$16

	DB	CMD_JUMP
		DB	:?_OVRSURFACE05
		DW	(?_OVRSURFACE05&$FFFF)

;********************************
?_ARDCITY02_DR_2
	DB	CMD_HEROSETDOOR
		DB	$0D
		DB	$13

	DB	CMD_JUMP
		DB	:?_ARDGARDEN05
		DW	(?_ARDGARDEN05&$FFFF)

;********************************
?_ARDCITY02_DR_3
	DB	CMD_HEROSETDOOR
		DB	$15
		DB	$15

	DB	CMD_JUMP
		DB	:?_OVRSURFACE05
		DW	(?_OVRSURFACE05&$FFFF)

;********************************
?_ARDCITY02_DR_4
	DB	CMD_HEROSETDOOR
		DB	$16
		DB	$14

	DB	CMD_JUMP
		DB	:?_OVRSURFACE05
		DW	(?_OVRSURFACE05&$FFFF)

;********************************
?_ARDCITY02_DR_5
	DB	CMD_HEROSETDOOR
		DB	$17
		DB	$15

	DB	CMD_JUMP
		DB	:?_OVRSURFACE05
		DW	(?_OVRSURFACE05&$FFFF)

;********************************
?_ARDCITY02
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$01

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDCITY02&$FFFF)
		DB	:MAP_ARDCITY02

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDCITY02&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

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
	GLOBAL	?_OVRSURFACE05
	GLOBAL	?_ARDGARDEN05
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	MAP_ARDCITY02
	GLOBAL	HS_ARDCITY02
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM

;********************************
	END
;********************************