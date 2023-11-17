;Size:56
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\CLOUDS\MAP10\ARDCLOUDS10.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDCLOUDS10_DR_1
	DB	CMD_HEROTODOOR
		DB	$3F
		DB	$01
		DB	$2B
		DB	$28

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS09
		DW	(?_ARDCLOUDS09&$FFFF)

;********************************
?_ARDCLOUDS10_DR_2
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$13
		DB	$31
		DB	$26

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS11
		DW	(?_ARDCLOUDS11&$FFFF)

;********************************
?_ARDCLOUDS10_DR_3
	DB	CMD_HEROTODOOR
		DB	$0A
		DB	$14
		DB	$00
		DB	$23

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS13
		DW	(?_ARDCLOUDS13&$FFFF)

;********************************
?_ARDCLOUDS10_DR_4
	DB	CMD_HEROTODOOR
		DB	$3F
		DB	$01
		DB	$39
		DB	$36

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS09
		DW	(?_ARDCLOUDS09&$FFFF)

;********************************
?_ARDCLOUDS10
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDCLOUDS10&$FFFF)
		DB	:MAP_ARDCLOUDS10

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDCLOUDS10&$FFFF)

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
	GLOBAL	?_ARDCLOUDS11
	GLOBAL	?_ARDCLOUDS13
	GLOBAL	MAP_ARDCLOUDS10
	GLOBAL	HS_ARDCLOUDS10
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM

;********************************
	END
;********************************