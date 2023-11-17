;Size:125
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\CLOUDS\MAP09\ARDCLOUDS09.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDCLOUDS09_DR_1
	DB	CMD_HEROTODOOR
		DB	$04
		DB	$11
		DB	$45
		DB	$00

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS07
		DW	(?_ARDCLOUDS07&$FFFF)

;********************************
?_ARDCLOUDS09_DR_2
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$3E
		DB	$28
		DB	$2B

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS10
		DW	(?_ARDCLOUDS10&$FFFF)

;********************************
?_ARDCLOUDS09_DR_3
	DB	CMD_HEROTODOOR
		DB	$0A
		DB	$31
		DB	$00
		DB	$13

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS12
		DW	(?_ARDCLOUDS12&$FFFF)

;********************************
?_ARDCLOUDS09_DR_4
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$3E
		DB	$36
		DB	$39

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS10
		DW	(?_ARDCLOUDS10&$FFFF)

;********************************
?_ARDCLOUDS09
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDCLOUDS09&$FFFF)
		DB	:MAP_ARDCLOUDS09

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDCLOUDS09&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1E-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D0BE
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_ARDCLOUDS_RNDBAT
		DW	(?_ARDCLOUDS_RNDBAT&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1D-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D0BE
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_ARDCLOUDS_RNDBAT
		DW	(?_ARDCLOUDS_RNDBAT&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR1E-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR1D-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$34
		DB	:BIT_SPARKLE
		DW	(BIT_SPARKLE&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_SETBTLRETURN
		DB	:?_ARDCLOUDS09_RET
		DW	(?_ARDCLOUDS09_RET&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_arderial

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_ARDCLOUDS09_RET
	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D0FF
		DB	$00
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS09
		DW	(?_ARDCLOUDS09&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_ARDCLOUDS07
	GLOBAL	?_ARDCLOUDS10
	GLOBAL	?_ARDCLOUDS12
	GLOBAL	MAP_ARDCLOUDS09
	GLOBAL	HS_ARDCLOUDS09
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	ACTOR1E
	GLOBAL	?RAINDROP_AI
	GLOBAL	?_RAINER
	GLOBAL	?_ARDCLOUDS_RNDBAT
	GLOBAL	ACTOR1D
	GLOBAL	BIT_SPARKLE
	GLOBAL	?_BATTLE_LOST
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	?_DONT_TALK

;********************************
	END
;********************************