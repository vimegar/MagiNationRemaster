;Size:132
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\UNDERNEATH\TUNNELS\MAP19\UNDTUNNEL19.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_UNDTUNNEL19_DR_1
	DB	CMD_HEROTODOOR
		DB	$06
		DB	$0B
		DB	$00
		DB	$1D

	DB	CMD_JUMP
		DB	:?_UNDTUNNEL18
		DW	(?_UNDTUNNEL18&$FFFF)

;********************************
?_UNDTUNNEL19_DR_2
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$31
		DB	$13
		DB	$0B

	DB	CMD_JUMP
		DB	:?_UNDTUNNEL14
		DW	(?_UNDTUNNEL14&$FFFF)

;********************************
?_UNDTUNNEL19_DR_3
	DB	CMD_HEROTODOOR
		DB	$13
		DB	$00
		DB	$22
		DB	$0B

	DB	CMD_JUMP
		DB	:?_UNDTUNNEL20
		DW	(?_UNDTUNNEL20&$FFFF)

;********************************
?_UNDTUNNEL19_DR_4
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$1D
		DB	$2D
		DB	$0F

	DB	CMD_JUMP
		DB	:?_UNDTUNNEL21
		DW	(?_UNDTUNNEL21&$FFFF)

;********************************
?_UNDTUNNEL19
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTUNNEL19&$FFFF)
		DB	:MAP_UNDTUNNEL19

;********************************
_UNDTUNNEL19
	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTUNNEL19&$FFFF)

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
		DB	:_UNDTUNNEL19_RET
		DW	(_UNDTUNNEL19_RET&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_undtunnels

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
_UNDTUNNEL19_RET
	DB	CMD_SCENENEW

	DB	CMD_LOADVRAM
		DW	(VRM_UNDTUNNEL&$FFFF)
		DB	:VRM_UNDTUNNEL
		DW	(PAL_UNDTUNNEL&$FFFF)
		DB	:PAL_UNDTUNNEL

	DB	CMD_JUMPLOCAL
		DW	(_UNDTUNNEL19&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_UNDTUNNEL18
	GLOBAL	?_UNDTUNNEL14
	GLOBAL	?_UNDTUNNEL20
	GLOBAL	?_UNDTUNNEL21
	GLOBAL	MAP_UNDTUNNEL19
	GLOBAL	HS_UNDTUNNEL19
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