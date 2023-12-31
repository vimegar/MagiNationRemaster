;Size:194
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\HIDDEN\FORT\MAP04\FORT04.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HDNFORT04_DR_1
	DB	CMD_HEROSETDOOR
		DB	$07
		DB	$0C

	DB	CMD_JUMP
		DB	:?_HDNFORT04B
		DW	(?_HDNFORT04B&$FFFF)

;********************************
?_HDNFORT04_DR_2
	DB	CMD_HEROSETDOOR
		DB	$18
		DB	$24

	DB	CMD_JUMP
		DB	:?_OVRSURFACE05
		DW	(?_OVRSURFACE05&$FFFF)

;********************************
?_HDNFORT04B_DR_1
	DB	CMD_HEROSETDOOR
		DB	$09
		DB	$12

	DB	CMD_JUMP
		DB	:?_HDNFORT04
		DW	(?_HDNFORT04&$FFFF)

;********************************
?_HDNFORT04B_DR_2
	DB	CMD_HEROSETDOOR
		DB	$07
		DB	$08

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_JUMP
		DB	:?_NRMVASH04C_ARRIVAL
		DW	(?_NRMVASH04C_ARRIVAL&$FFFF)

;********************************
?_HDNFORT04B
	DB	CMD_FADEOUTSONG
		DB	$50

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HDNFORT04B&$FFFF)
		DB	:MAP_HDNFORT04B

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HDNFORT04B&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D069
		DB	$00
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_HDNFORT04B_ARRIVAL
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HDNFORT04B&$FFFF)
		DB	:MAP_HDNFORT04B

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HDNFORT04B&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D069
		DB	$00
		DB	:?_HERO_FROM_WARP
		DW	(?_HERO_FROM_WARP&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_PALCLEARANIM
		DB	$0F
		DW	$7FFF

	DB	CMD_SCENEREADY

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_END

;********************************
?_HERO_FROM_WARP
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$18
		DB	:?_HERO_STAND_DL_ANIM
		DW	(?_HERO_STAND_DL_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETEVENTMASTER
		DB	$01

	DB	CMD_END

;********************************
?_HDNFORT04
	DB	CMD_FADEOUTSONG
		DB	$50

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$01

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HDNFORT04&$FFFF)
		DB	:MAP_HDNFORT04

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HDNFORT04&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D069
		DB	$00
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_OVRSURFACE05
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?ANIM_AI
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_NRMVASH04C_ARRIVAL
	GLOBAL	MAP_HDNFORT04B
	GLOBAL	HS_HDNFORT04B
	GLOBAL	PAL_HERO
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	?_HERO_STAND_DL_ANIM
	GLOBAL	?_HERO_STAND_RIGHT_ANIM
	GLOBAL	?_HERO_STAND_LEFT_ANIM
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	MAP_HDNFORT04
	GLOBAL	HS_HDNFORT04

;********************************
	END
;********************************