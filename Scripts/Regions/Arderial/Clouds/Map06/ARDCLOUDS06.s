;Size:124
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\CLOUDS\MAP06\ARDCLOUDS06.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDCLOUDS06_DR_1
	DB	CMD_HEROTODOOR
		DB	$15
		DB	$25
		DB	$35
		DB	$00

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS03
		DW	(?_ARDCLOUDS03&$FFFF)

;********************************
?_ARDCLOUDS06_DR_2
	DB	CMD_HEROSETDOOR
		DB	$16
		DB	$10

	DB	CMD_JUMP
		DB	:?_OVRSURFACE05
		DW	(?_OVRSURFACE05&$FFFF)

;********************************
?_ARDCLOUDS06_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0024)
		DB	$20
		DB	INV_TYPE_RELIC
		DB	INV_PHANTOM_WIND
		DW	$D3C0

;********************************
?_ARDCLOUDS06_TR_2
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0024)
		DB	$40
		DB	INV_TYPE_RELIC
		DB	INV_SKY_ESSENCE
		DW	$D3DD

;********************************
?_ARDCLOUDS06
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDCLOUDS06&$FFFF)
		DB	:MAP_ARDCLOUDS06

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDCLOUDS06&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_ARDCLOUDS06&$FFFF)

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
		DW	$D1CC
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
		DW	$D1CC
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
		DB	:?_ARDCLOUDS06_RET
		DW	(?_ARDCLOUDS06_RET&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_arderial

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_ARDCLOUDS06_RET
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
		DB	:?_ARDCLOUDS06
		DW	(?_ARDCLOUDS06&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_ARDCLOUDS03
	GLOBAL	?_OVRSURFACE05
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_ARDCLOUDS06
	GLOBAL	HS_ARDCLOUDS06
	GLOBAL	TR_ARDCLOUDS06
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