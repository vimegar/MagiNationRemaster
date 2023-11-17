;Size:36
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\CLOUDS\MAP12\ARDCLOUDS12.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDCLOUDS12_DR_1
	DB	CMD_HEROTODOOR
		DB	$31
		DB	$0A
		DB	$13
		DB	$00

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS09
		DW	(?_ARDCLOUDS09&$FFFF)

;********************************
?_ARDCLOUDS12_DR_2
	DB	CMD_HEROSETDOOR
		DB	$23
		DB	$14

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS13
		DW	(?_ARDCLOUDS13&$FFFF)

;********************************
?_ARDCLOUDS12
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDCLOUDS12&$FFFF)
		DB	:MAP_ARDCLOUDS12

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDCLOUDS12&$FFFF)

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
	GLOBAL	?_ARDCLOUDS09
	GLOBAL	?_ARDCLOUDS13
	GLOBAL	MAP_ARDCLOUDS12
	GLOBAL	HS_ARDCLOUDS12
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM

;********************************
	END
;********************************