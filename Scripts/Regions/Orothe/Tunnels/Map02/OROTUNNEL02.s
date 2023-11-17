;Size:123
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\OROTHE\TUNNELS\MAP02\OROTUNNEL02.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_OROTUNNEL02_DR_1
	DB	CMD_HEROTODOOR
		DB	$09
		DB	$13
		DB	$00
		DB	$1F

	DB	CMD_JUMP
		DB	:?_OROTUNNEL01
		DW	(?_OROTUNNEL01&$FFFF)

;********************************
?_OROTUNNEL02_DR_2
	DB	CMD_HEROTODOOR
		DB	$24
		DB	$11
		DB	$00
		DB	$13

	DB	CMD_JUMP
		DB	:?_OROTUNNEL05
		DW	(?_OROTUNNEL05&$FFFF)

;********************************
?_OROTUNNEL02_DR_3
	DB	CMD_HEROTODOOR
		DB	$05
		DB	$0E
		DB	$09
		DB	$00

	DB	CMD_JUMP
		DB	:?_OROTUNNEL03
		DW	(?_OROTUNNEL03&$FFFF)

;********************************
?_OROTUNNEL02_DR_4
	DB	CMD_HEROTODOOR
		DB	$2F
		DB	$00
		DB	$09
		DB	$09

	DB	CMD_JUMP
		DB	:?_OROTUNNEL07
		DW	(?_OROTUNNEL07&$FFFF)

;********************************
?_OROTUNNEL02
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_OROTUNNEL02&$FFFF)
		DB	:MAP_OROTUNNEL02

	DB	CMD_LOADHOTSPOTS
		DW	(HS_OROTUNNEL02&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D0F5
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
		DW	$D1BA
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_OROTUNNEL_RNDBAT
		DW	(?_OROTUNNEL_RNDBAT&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1D-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D1BA
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_OROTUNNEL_RNDBAT
		DW	(?_OROTUNNEL_RNDBAT&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

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
		DB	:?_OROTUNNEL02
		DW	(?_OROTUNNEL02&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_SONGSTART
		DB	SONGID_orotunnels

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_OROTUNNEL01
	GLOBAL	?_OROTUNNEL05
	GLOBAL	?_OROTUNNEL03
	GLOBAL	?_OROTUNNEL07
	GLOBAL	MAP_OROTUNNEL02
	GLOBAL	HS_OROTUNNEL02
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR1E
	GLOBAL	?RAINDROP_AI
	GLOBAL	?_RAINER
	GLOBAL	?_OROTUNNEL_RNDBAT
	GLOBAL	ACTOR1D
	GLOBAL	BIT_SPARKLE
	GLOBAL	?_BATTLE_LOST

;********************************
	END
;********************************