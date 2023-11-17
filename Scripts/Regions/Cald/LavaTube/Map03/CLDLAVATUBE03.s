;Size:123
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\CALD\LAVATUBE\MAP03\CLDLAVATUBE03.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_CLDLAVATUBE03_DR_1
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$31
		DB	$07
		DB	$0A

	DB	CMD_JUMP
		DB	:?_CLDLAVATUBE02
		DW	(?_CLDLAVATUBE02&$FFFF)

;********************************
?_CLDLAVATUBE03_DR_2
	DB	CMD_HEROTODOOR
		DB	$27
		DB	$00
		DB	$06
		DB	$07

	DB	CMD_JUMP
		DB	:?_CLDLAVATUBE04
		DW	(?_CLDLAVATUBE04&$FFFF)

;********************************
?_CLDLAVATUBE03_DR_3
	DB	CMD_HEROTODOOR
		DB	$1E
		DB	$03
		DB	$31
		DB	$00

	DB	CMD_JUMP
		DB	:?_CLDLAVATUBE07
		DW	(?_CLDLAVATUBE07&$FFFF)

;********************************
?_CLDLAVATUBE03_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0008)
		DB	$04
		DB	INV_TYPE_ITEM
		DB	INV_KARMIC_FURY
		DW	$D585

;********************************
?_CLDLAVATUBE03
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATUBE03&$FFFF)
		DB	:MAP_CLDLAVATUBE03

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATUBE03&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_LOADTRIGGERS
		DW	(TR_CLDLAVATUBE03&$FFFF)

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
		DB	:?_CLDLAVATUBE03
		DW	(?_CLDLAVATUBE03&$FFFF)
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
	GLOBAL	?_CLDLAVATUBE02
	GLOBAL	?_CLDLAVATUBE04
	GLOBAL	?_CLDLAVATUBE07
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_CLDLAVATUBE03
	GLOBAL	HS_CLDLAVATUBE03
	GLOBAL	PAL_HERO
	GLOBAL	TR_CLDLAVATUBE03
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