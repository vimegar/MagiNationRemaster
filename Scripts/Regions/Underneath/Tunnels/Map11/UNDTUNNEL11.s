;Size:114
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\UNDERNEATH\TUNNELS\MAP11\UNDTUNNEL11.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_UNDTUNNEL11_DR_1
	DB	CMD_HEROTODOOR
		DB	$0D
		DB	$0C
		DB	$13
		DB	$00

	DB	CMD_JUMP
		DB	:?_UNDTUNNEL12
		DW	(?_UNDTUNNEL12&$FFFF)

;********************************
?_UNDTUNNEL11_DR_2
	DB	CMD_HEROTODOOR
		DB	$27
		DB	$00
		DB	$0A
		DB	$12

	DB	CMD_JUMP
		DB	:?_UNDTUNNEL13
		DW	(?_UNDTUNNEL13&$FFFF)

;********************************
?_UNDTUNNEL11
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTUNNEL11&$FFFF)
		DB	:MAP_UNDTUNNEL11

;********************************
_UNDTUNNEL11
	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTUNNEL11&$FFFF)

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
		DB	:?_TUNNEL_RNDBAT
		DW	(?_TUNNEL_RNDBAT&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1D-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D172
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
		DB	:_UNDTUNNEL11_RET
		DW	(_UNDTUNNEL11_RET&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_undtunnels

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
_UNDTUNNEL11_RET
	DB	CMD_SCENENEW

	DB	CMD_LOADVRAM
		DW	(VRM_UNDTUNNEL&$FFFF)
		DB	:VRM_UNDTUNNEL
		DW	(PAL_UNDTUNNEL&$FFFF)
		DB	:PAL_UNDTUNNEL

	DB	CMD_JUMPLOCAL
		DW	(_UNDTUNNEL11&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_UNDTUNNEL12
	GLOBAL	?_UNDTUNNEL13
	GLOBAL	MAP_UNDTUNNEL11
	GLOBAL	HS_UNDTUNNEL11
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
	GLOBAL	VRM_UNDTUNNEL
	GLOBAL	PAL_UNDTUNNEL

;********************************
	END
;********************************