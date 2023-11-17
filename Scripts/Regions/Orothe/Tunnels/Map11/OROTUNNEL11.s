;Size:66
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\OROTHE\TUNNELS\MAP11\OROTUNNEL11.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_OROTUNNEL11_DR_1
	DB	CMD_HEROTODOOR
		DB	$03
		DB	$0F
		DB	$00
		DB	$32

	DB	CMD_JUMP
		DB	:?_OROTUNNEL04_SWIM
		DW	(?_OROTUNNEL04_SWIM&$FFFF)

;********************************
?_OROTUNNEL11_DR_2
	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TRIGGER_AI&$FFFF)
		DB	$10
		DB	$18
		DW	$D328
		DB	$10
		DB	:?_OVERPARA_WAIT
		DW	(?_OVERPARA_WAIT&$FFFF)
		DB	:?_OVERPARA_MOUNT
		DW	(?_OVERPARA_MOUNT&$FFFF)

	DB	CMD_HEROSETDOOR
		DB	$0E
		DB	$19

	DB	CMD_JUMP
		DB	:?_OVRSURFACE04
		DW	(?_OVRSURFACE04&$FFFF)

;********************************
?_OROTUNNEL11
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_OROTUNNEL11&$FFFF)
		DB	:MAP_OROTUNNEL11

	DB	CMD_LOADHOTSPOTS
		DW	(HS_OROTUNNEL11&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_UNDERSWIM&$FFFF)
		DB	$05
		DB	$05
		DW	$D073
		DB	$00
		DB	:?_HERO_UNDTREAD_LEFT_ANIM
		DW	(?_HERO_UNDTREAD_LEFT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_orotunnels

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_OROTUNNEL04_SWIM
	GLOBAL	ACTOR02
	GLOBAL	ACTOR_RAM
	GLOBAL	?TRIGGER_AI
	GLOBAL	?_OVERPARA_WAIT
	GLOBAL	?_OVERPARA_MOUNT
	GLOBAL	?_OVRSURFACE04
	GLOBAL	MAP_OROTUNNEL11
	GLOBAL	HS_OROTUNNEL11
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	?HERO_AI_UNDERSWIM
	GLOBAL	?_HERO_UNDTREAD_LEFT_ANIM
	GLOBAL	?_DONT_TALK

;********************************
	END
;********************************