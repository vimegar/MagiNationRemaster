;Size:208
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\HIDDEN\ROOM\MAP02\HDNROOM02.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HDNROOM02_DR_1
	DB	CMD_HEROSETDOOR
		DB	$08
		DB	$0A

	DB	CMD_JUMP
		DB	:?_WVESHORTCUT01
		DW	(?_WVESHORTCUT01&$FFFF)

;********************************
?_HDNROOM02_DR_2
	DB	CMD_IF
		DB	EXPR_LESS
		DB	EXPR_XRAMBYTE
		DW	(XRAM_GLYPH_COUNT+$0000)&$FFFF
		DB	EXPR_BYTECONST,$03
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_HEROSETDOOR
		DB	$09
		DB	$14

	DB	CMD_JUMP
		DB	:?_WARP06_FADEIN
		DW	(?_WARP06_FADEIN&$FFFF)

;********************************
?_WARP06_DR_1
	DB	CMD_HEROTODOOR
		DB	$07
		DB	$08
		DB	$00
		DB	$3B

	DB	CMD_JUMP
		DB	:?_HLDMAZE23
		DW	(?_HLDMAZE23&$FFFF)

;********************************
?_WARP06_DR_2
	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_HEROSETDOOR
		DB	$09
		DB	$0F

	DB	CMD_JUMP
		DB	:?_HDNROOM02_FADEIN
		DW	(?_HDNROOM02_FADEIN&$FFFF)

;********************************
?_HDNROOM02
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HDNROOM02&$FFFF)
		DB	:MAP_HDNROOM02

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HDNROOM02&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D050
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_FADEOUTSONG
		DB	$50

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_HDNROOM02_FADEIN
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HDNROOM02&$FFFF)
		DB	:MAP_HDNROOM02

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HDNROOM02&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D050
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_FADEOUTSONG
		DB	$50

	DB	CMD_PALCLEARANIM
		DB	$0F
		DW	$7FFF

	DB	CMD_SCENEREADY

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_END

;********************************
?_WARP06
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_WARP06&$FFFF)
		DB	:MAP_WARP06

	DB	CMD_LOADHOTSPOTS
		DW	(HS_WARP06&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D050
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_undtunnels

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_WARP06_FADEIN
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_WARP06&$FFFF)
		DB	:MAP_WARP06

	DB	CMD_LOADHOTSPOTS
		DW	(HS_WARP06&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D050
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_undtunnels

	DB	CMD_PALCLEARANIM
		DB	$0F
		DW	$7FFF

	DB	CMD_SCENEREADY

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_WVESHORTCUT01
	GLOBAL	XRAM_GLYPH_COUNT
	GLOBAL	?_END
	GLOBAL	?_HLDMAZE23
	GLOBAL	MAP_HDNROOM02
	GLOBAL	HS_HDNROOM02
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	MAP_WARP06
	GLOBAL	HS_WARP06

;********************************
	END
;********************************