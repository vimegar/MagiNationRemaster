;Size:66
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\CITY\MAP03\ARDCITY03.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDCITY03_DR_1
	DB	CMD_HEROSETDOOR
		DB	$19
		DB	$0E

	DB	CMD_JUMP
		DB	:?_OVRSURFACE05
		DW	(?_OVRSURFACE05&$FFFF)

;********************************
?_ARDCITY03_DR_2
	DB	CMD_HEROSETDOOR
		DB	$0C
		DB	$13

	DB	CMD_JUMP
		DB	:?_ARDGARDEN09
		DW	(?_ARDGARDEN09&$FFFF)

;********************************
?_ARDCITY03_DR_3
	DB	CMD_HEROSETDOOR
		DB	$0F
		DB	$17

	DB	CMD_JUMP
		DB	:?_ARDGARDEN06
		DW	(?_ARDGARDEN06&$FFFF)

;********************************
?_ARDCITY03_DR_4
	DB	CMD_HEROSETDOOR
		DB	$18
		DB	$0D

	DB	CMD_JUMP
		DB	:?_OVRSURFACE05
		DW	(?_OVRSURFACE05&$FFFF)

;********************************
?_ARDCITY03_DR_5
	DB	CMD_HEROSETDOOR
		DB	$1A
		DB	$0C

	DB	CMD_JUMP
		DB	:?_OVRSURFACE05
		DW	(?_OVRSURFACE05&$FFFF)

;********************************
?_ARDCITY03_DR_6
	DB	CMD_HEROSETDOOR
		DB	$1B
		DB	$0D

	DB	CMD_JUMP
		DB	:?_OVRSURFACE05
		DW	(?_OVRSURFACE05&$FFFF)

;********************************
?_ARDCITY03
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$01

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDCITY03&$FFFF)
		DB	:MAP_ARDCITY03

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDCITY03&$FFFF)

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
	GLOBAL	?_ARDGARDEN09
	GLOBAL	?_ARDGARDEN06
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	MAP_ARDCITY03
	GLOBAL	HS_ARDCITY03
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM

;********************************
	END
;********************************