;Size:59
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\CITY\MAP04\ARDCITY04.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDCITY04_DR_1
	DB	CMD_HEROSETDOOR
		DB	$09
		DB	$13

	DB	CMD_JUMP
		DB	:?_ARDGARDEN08
		DW	(?_ARDGARDEN08&$FFFF)

;********************************
?_ARDCITY04_DR_2
	DB	CMD_HEROSETDOOR
		DB	$17
		DB	$0F

	DB	CMD_JUMP
		DB	:?_OVRSURFACE05
		DW	(?_OVRSURFACE05&$FFFF)

;********************************
?_ARDCITY04_DR_3
	DB	CMD_HEROSETDOOR
		DB	$16
		DB	$0E

	DB	CMD_JUMP
		DB	:?_OVRSURFACE05
		DW	(?_OVRSURFACE05&$FFFF)

;********************************
?_ARDCITY04_DR_4
	DB	CMD_HEROSETDOOR
		DB	$17
		DB	$0D

	DB	CMD_JUMP
		DB	:?_OVRSURFACE05
		DW	(?_OVRSURFACE05&$FFFF)

;********************************
?_ARDCITY04_DR_5
	DB	CMD_HEROSETDOOR
		DB	$18
		DB	$0E

	DB	CMD_JUMP
		DB	:?_OVRSURFACE05
		DW	(?_OVRSURFACE05&$FFFF)

;********************************
?_ARDCITY04
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$01

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDCITY04&$FFFF)
		DB	:MAP_ARDCITY04

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDCITY04&$FFFF)

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
	GLOBAL	?_ARDGARDEN08
	GLOBAL	?_OVRSURFACE05
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	MAP_ARDCITY04
	GLOBAL	HS_ARDCITY04
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM

;********************************
	END
;********************************