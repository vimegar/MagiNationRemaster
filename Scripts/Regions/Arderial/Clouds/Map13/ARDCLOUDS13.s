;Size:52
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\CLOUDS\MAP13\ARDCLOUDS13.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDCLOUDS13_DR_1
	DB	CMD_HEROTODOOR
		DB	$14
		DB	$0A
		DB	$23
		DB	$00

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS10
		DW	(?_ARDCLOUDS10&$FFFF)

;********************************
?_ARDCLOUDS13_DR_2
	DB	CMD_HEROTODOOR
		DB	$02
		DB	$09
		DB	$23
		DB	$00

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS11
		DW	(?_ARDCLOUDS11&$FFFF)

;********************************
?_ARDCLOUDS13_DR_3
	DB	CMD_HEROSETDOOR
		DB	$00
		DB	$07

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS12
		DW	(?_ARDCLOUDS12&$FFFF)

;********************************
?_ARDCLOUDS13_DR_4
	DB	CMD_HEROSETDOOR
		DB	$12
		DB	$09

	DB	CMD_JUMP
		DB	:?_OVRSURFACE05
		DW	(?_OVRSURFACE05&$FFFF)

;********************************
?_ARDCLOUDS13
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDCLOUDS13&$FFFF)
		DB	:MAP_ARDCLOUDS13

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDCLOUDS13&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_arderial

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_ARDCLOUDS10
	GLOBAL	?_ARDCLOUDS11
	GLOBAL	?_ARDCLOUDS12
	GLOBAL	?_OVRSURFACE05
	GLOBAL	MAP_ARDCLOUDS13
	GLOBAL	HS_ARDCLOUDS13
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM

;********************************
	END
;********************************