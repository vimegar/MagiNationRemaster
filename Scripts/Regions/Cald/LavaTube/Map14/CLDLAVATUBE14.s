;Size:121
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\CALD\LAVATUBE\MAP14\CLDLAVATUBE14.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_CLDLAVATUBE14_DR_1
	DB	CMD_HEROTODOOR
		DB	$18
		DB	$01
		DB	$00
		DB	$13

	DB	CMD_JUMP
		DB	:?_CLDLAVATUBE13
		DW	(?_CLDLAVATUBE13&$FFFF)

;********************************
?_CLDLAVATUBE14_DR_2
	DB	CMD_HEROTODOOR
		DB	$01
		DB	$0B
		DB	$1D
		DB	$00

	DB	CMD_JUMP
		DB	:?_CLDLAVATUBE15
		DW	(?_CLDLAVATUBE15&$FFFF)

;********************************
?_CLDLAVATUBE14_DR_3
	DB	CMD_HEROTODOOR
		DB	$0C
		DB	$03
		DB	$1D
		DB	$00

	DB	CMD_JUMP
		DB	:?_CLDLAVATUBE16
		DW	(?_CLDLAVATUBE16&$FFFF)

;********************************
?_CLDLAVATUBE14_DR_4
	DB	CMD_HEROTODOOR
		DB	$1F
		DB	$08
		DB	$1D
		DB	$00

	DB	CMD_JUMP
		DB	:?_CLDLAVATUBE17
		DW	(?_CLDLAVATUBE17&$FFFF)

;********************************
?_CLDLAVATUBE14
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATUBE14&$FFFF)
		DB	:MAP_CLDLAVATUBE14

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATUBE14&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D0CD
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
		DW	$D172
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
		DW	$D172
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
		DB	:?_CLDLAVATUBE14
		DW	(?_CLDLAVATUBE14&$FFFF)
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
	GLOBAL	?_CLDLAVATUBE13
	GLOBAL	?_CLDLAVATUBE15
	GLOBAL	?_CLDLAVATUBE16
	GLOBAL	?_CLDLAVATUBE17
	GLOBAL	MAP_CLDLAVATUBE14
	GLOBAL	HS_CLDLAVATUBE14
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