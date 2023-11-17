;Size:47
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\CLOUDS\MAP11\ARDCLOUDS11.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDCLOUDS11_DR_1
	DB	CMD_HEROTODOOR
		DB	$13
		DB	$00
		DB	$40
		DB	$0B

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS08
		DW	(?_ARDCLOUDS08&$FFFF)

;********************************
?_ARDCLOUDS11_DR_2
	DB	CMD_HEROTODOOR
		DB	$13
		DB	$00
		DB	$26
		DB	$31

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS10
		DW	(?_ARDCLOUDS10&$FFFF)

;********************************
?_ARDCLOUDS11_DR_3
	DB	CMD_HEROTODOOR
		DB	$09
		DB	$02
		DB	$00
		DB	$23

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS13
		DW	(?_ARDCLOUDS13&$FFFF)

;********************************
?_ARDCLOUDS11
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDCLOUDS11&$FFFF)
		DB	:MAP_ARDCLOUDS11

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDCLOUDS11&$FFFF)

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
	GLOBAL	?_ARDCLOUDS08
	GLOBAL	?_ARDCLOUDS10
	GLOBAL	?_ARDCLOUDS13
	GLOBAL	MAP_ARDCLOUDS11
	GLOBAL	HS_ARDCLOUDS11
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM

;********************************
	END
;********************************