;Size:128
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\CALD\LAVAVENT\MAP06\CLDLAVAVENT06.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_CLDLAVAVENT06_DR_1
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$3B
		DB	$07
		DB	$08

	DB	CMD_JUMP
		DB	:?_CLDLAVAVENT03
		DW	(?_CLDLAVAVENT03&$FFFF)

;********************************
?_CLDLAVAVENT06_DR_2
	DB	CMD_HEROSETDOOR
		DB	$09
		DB	$00

	DB	CMD_JUMP
		DB	:?_CLDLAVAVENT08
		DW	(?_CLDLAVAVENT08&$FFFF)

;********************************
?_CLDLAVAVENT06
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVAVENT06&$FFFF)
		DB	:MAP_CLDLAVAVENT06

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVAVENT06&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D131
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1E-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D226
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_LAVAVENT_RNDBAT
		DW	(?_LAVAVENT_RNDBAT&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1D-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D226
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_LAVAVENT_RNDBAT
		DW	(?_LAVAVENT_RNDBAT&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1C-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D226
		DB	$46
		DB	:?_SMALLWIRLPOOL_APPEAR
		DW	(?_SMALLWIRLPOOL_APPEAR&$FFFF)
		DB	:?_CLDLAVAVENT01B
		DW	(?_CLDLAVAVENT01B&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR1E-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR1C-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR1D-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$34
		DB	:BIT_SPARKLE
		DW	(BIT_SPARKLE&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$10
		DB	:BIT_SMALLWHIRL
		DW	(BIT_SMALLWHIRL&$FFFF)
		DW	$8460
		DB	$00

	DB	CMD_SETBTLRETURN
		DB	:?_CLDLAVAVENT06
		DW	(?_CLDLAVAVENT06&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_lavatubes

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_CLDLAVAVENT03
	GLOBAL	?_CLDLAVAVENT08
	GLOBAL	MAP_CLDLAVAVENT06
	GLOBAL	HS_CLDLAVAVENT06
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR1E
	GLOBAL	?RAINDROP_AI
	GLOBAL	?_RAINER
	GLOBAL	?_LAVAVENT_RNDBAT
	GLOBAL	ACTOR1D
	GLOBAL	ACTOR1C
	GLOBAL	?_SMALLWIRLPOOL_APPEAR
	GLOBAL	?_CLDLAVAVENT01B
	GLOBAL	BIT_SPARKLE
	GLOBAL	BIT_SMALLWHIRL
	GLOBAL	?_BATTLE_LOST

;********************************
	END
;********************************