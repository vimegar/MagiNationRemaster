;Size:105
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\UNDERNEATH\TUNNELS\MAP17\UNDTUNNEL17.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_UNDTUNNEL17_DR_1
	DB	CMD_HEROTODOOR
		DB	$15
		DB	$10
		DB	$00
		DB	$13

	DB	CMD_JUMP
		DB	:?_UNDTUNNEL16
		DW	(?_UNDTUNNEL16&$FFFF)

;********************************
?_UNDTUNNEL17_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0004)
		DB	$20
		DB	INV_TYPE_ITEM
		DB	INV_RUNEOFHOPE
		DW	$D2AB

;********************************
?_UNDTUNNEL17
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTUNNEL17&$FFFF)
		DB	:MAP_UNDTUNNEL17

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTUNNEL17&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_UNDTUNNEL17&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D09B
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
		DW	$D118
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
		DW	$D118
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
		DB	:?_UNDTUNNEL17
		DW	(?_UNDTUNNEL17&$FFFF)
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
	GLOBAL	?_UNDTUNNEL16
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_UNDTUNNEL17
	GLOBAL	HS_UNDTUNNEL17
	GLOBAL	TR_UNDTUNNEL17
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