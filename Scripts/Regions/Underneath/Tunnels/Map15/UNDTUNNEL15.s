;Size:103
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\UNDERNEATH\TUNNELS\MAP15\UNDTUNNEL15.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_UNDTUNNEL15_DR_1
	DB	CMD_HEROTODOOR
		DB	$07
		DB	$04
		DB	$27
		DB	$00

	DB	CMD_JUMP
		DB	:?_UNDTUNNEL14
		DW	(?_UNDTUNNEL14&$FFFF)

;********************************
?_UNDTUNNEL15_DR_2
	DB	CMD_HEROTODOOR
		DB	$13
		DB	$00
		DB	$08
		DB	$0C

	DB	CMD_JUMP
		DB	:?_UNDTUNNEL16
		DW	(?_UNDTUNNEL16&$FFFF)

;********************************
?_UNDTUNNEL15
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTUNNEL15&$FFFF)
		DB	:MAP_UNDTUNNEL15

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTUNNEL15&$FFFF)

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
		DB	:?_TUNNEL_RNDBAT
		DW	(?_TUNNEL_RNDBAT&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1D-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D0BE
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_TUNNEL_RNDBAT
		DW	(?_TUNNEL_RNDBAT&$FFFF)

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
		DB	:?_UNDTUNNEL15
		DW	(?_UNDTUNNEL15&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_undtunnels

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_UNDTUNNEL14
	GLOBAL	?_UNDTUNNEL16
	GLOBAL	MAP_UNDTUNNEL15
	GLOBAL	HS_UNDTUNNEL15
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR1E
	GLOBAL	?RAINDROP_AI
	GLOBAL	?_RAINER
	GLOBAL	?_TUNNEL_RNDBAT
	GLOBAL	ACTOR1D
	GLOBAL	BIT_SPARKLE
	GLOBAL	?_BATTLE_LOST

;********************************
	END
;********************************