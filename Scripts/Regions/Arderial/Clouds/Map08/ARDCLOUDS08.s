;Size:38
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\CLOUDS\MAP08\ARDCLOUDS08.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDCLOUDS08_DR_1
	DB	CMD_HEROTODOOR
		DB	$3B
		DB	$00
		DB	$12
		DB	$11

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS07
		DW	(?_ARDCLOUDS07&$FFFF)

;********************************
?_ARDCLOUDS08_DR_2
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$13
		DB	$0B
		DB	$40

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS11
		DW	(?_ARDCLOUDS11&$FFFF)

;********************************
?_ARDCLOUDS08
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDCLOUDS08&$FFFF)
		DB	:MAP_ARDCLOUDS08

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDCLOUDS08&$FFFF)

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
	GLOBAL	?_ARDCLOUDS07
	GLOBAL	?_ARDCLOUDS11
	GLOBAL	MAP_ARDCLOUDS08
	GLOBAL	HS_ARDCLOUDS08
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM

;********************************
	END
;********************************