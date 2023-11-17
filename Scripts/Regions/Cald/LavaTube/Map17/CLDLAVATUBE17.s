;Size:103
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\CALD\LAVATUBE\MAP17\CLDLAVATUBE17.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_CLDLAVATUBE17_DR_1
	DB	CMD_HEROTODOOR
		DB	$08
		DB	$1F
		DB	$00
		DB	$1D

	DB	CMD_JUMP
		DB	:?_CLDLAVATUBE14
		DW	(?_CLDLAVATUBE14&$FFFF)

;********************************
?_CLDLAVATUBE17_DR_2
	DB	CMD_HEROTODOOR
		DB	$05
		DB	$1E
		DB	$27
		DB	$00

	DB	CMD_JUMP
		DB	:?_CLDLAVATUBE18
		DW	(?_CLDLAVATUBE18&$FFFF)

;********************************
?_CLDLAVATUBE17
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATUBE17&$FFFF)
		DB	:MAP_CLDLAVATUBE17

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATUBE17&$FFFF)

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
		DW	$D0BE
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_LAVATUBE_RNDBAT
		DW	(?_LAVATUBE_RNDBAT&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1D-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D0BE
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_LAVATUBE_RNDBAT
		DW	(?_LAVATUBE_RNDBAT&$FFFF)

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
		DB	:?_CLDLAVATUBE17
		DW	(?_CLDLAVATUBE17&$FFFF)
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
	GLOBAL	?_CLDLAVATUBE14
	GLOBAL	?_CLDLAVATUBE18
	GLOBAL	MAP_CLDLAVATUBE17
	GLOBAL	HS_CLDLAVATUBE17
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR1E
	GLOBAL	?RAINDROP_AI
	GLOBAL	?_RAINER
	GLOBAL	?_LAVATUBE_RNDBAT
	GLOBAL	ACTOR1D
	GLOBAL	BIT_SPARKLE
	GLOBAL	?_BATTLE_LOST

;********************************
	END
;********************************