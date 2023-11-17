;Size:201
                      
;********************************
; C:\Users\vimegar\Documents\Dev\MagiNationSource\SCRIPTS\REGIONS\NAROOM\RIVER\MAP03\NRMRIVER03.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_NRMRIVER03_DR_1
	DB	CMD_LOADGAME

	DB	CMD_END

;********************************
?_NRMRIVER03_DR_2
	DB	CMD_LOADGAME

	DB	CMD_END

;********************************
?_NRMRIVER03_DR_3
	DB	CMD_NEWGAME
		DB	SCRIPT_NEWGAME_VANILLA

	DB	CMD_BTLRINGGIVE
		DB	CORE_HYREN
		DB	$62

	DB	CMD_BTLRINGGIVE
		DB	CORE_HYREN
		DB	$62

	DB	CMD_BTLRINGGIVE
		DB	CORE_HYREN
		DB	$62

	DB	CMD_BTLRINGGIVE
		DB	CORE_HYREN
		DB	$62

	DB	CMD_BTLRINGGIVE
		DB	CORE_HYREN
		DB	$62

	DB	CMD_BTLRINGGIVE
		DB	CORE_HYREN
		DB	$62

	DB	CMD_SETXRAMWORD
		DW	(XRAM_INVENTORY_ANIMITE+$0000)&$FFFF
		DW	$03E7

	DB	CMD_SETGAMECOUNT
		DW	$0001

	DB	CMD_JUMP
		DB	:?_HMTCAVE01_OPENING
		DW	(?_HMTCAVE01_OPENING&$FFFF)

;********************************
?_NRMRIVER03_DR_4
	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_INFUSED
		DB	ABAQUIST
		DB	$14

	DB	CMD_END

;********************************
?_NRMRIVER03_DR_5
	DB	CMD_SETGAMECOUNT
		DW	$0009

	DB	CMD_HEROSETDOOR
		DB	$11
		DB	$15

	DB	CMD_JUMP
		DB	:?_SCRUBABRUB
		DW	(?_SCRUBABRUB&$FFFF)

;********************************
?_NRMRIVER03_DR_6
	DB	CMD_HEROSETDOOR
		DB	$13
		DB	$15

	DB	CMD_JUMP
		DB	:?_OVRSURFACE03
		DW	(?_OVRSURFACE03&$FFFF)

;********************************
?_NRMRIVER03_DR_7
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
?_NRMRIVER03_DR_8
	DB	CMD_HEROSETDOOR
		DB	$0C
		DB	$16

	DB	CMD_JUMP
		DB	:?_OVRSURFACE05
		DW	(?_OVRSURFACE05&$FFFF)

;********************************
?_NRMRIVER03_DR_9
	DB	CMD_HEROSETDOOR
		DB	$1D
		DB	$1F

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_HERO_ABILITY+$0000)
		DB	$02

	DB	CMD_SETGAMECOUNT
		DW	$000B

	DB	CMD_JUMP
		DB	:?_CLDLAVAPOOL01_CALD
		DW	(?_CLDLAVAPOOL01_CALD&$FFFF)

;********************************
?_NRMRIVER03_DR_10
	DB	CMD_SETGAMECOUNT
		DW	$000F

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_HERO_ABILITY+$0000)
		DB	$03

	DB	CMD_HEROSETDOOR
		DB	$0C
		DB	$00

	DB	CMD_JUMP
		DB	:?_UNDMUSHFARM02_KIDNAPPING
		DW	(?_UNDMUSHFARM02_KIDNAPPING&$FFFF)

;********************************
?_WARPPORTAL
	DB	CMD_SCENENEW

	DB	CMD_NEWGAME
		DB	SCRIPT_NEWGAME_VANILLA

	DB	CMD_BTLRINGGIVE
		DB	EEBIT
		DB	$62

	DB	CMD_BTLRINGGIVE
		DB	EEBIT
		DB	$62

	DB	CMD_BTLRINGGIVE
		DB	EEBIT
		DB	$62

	DB	CMD_BTLRINGGIVE
		DB	EEBIT
		DB	$62

	DB	CMD_BTLRINGGIVE
		DB	FUROK
		DB	$01

	DB	CMD_BTLRINGGIVE
		DB	FUROK
		DB	$14

	DB	CMD_BTLRINGGIVE
		DB	FUROK
		DB	$14

	DB	CMD_BTLRINGGIVE
		DB	FUROK
		DB	$14

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_HERO_ENERGYMAX
		DB	INV_TYPE_HERO_ENERGYMAX
		DB	$FF

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_HERO_ENERGY
		DB	INV_TYPE_HERO_ENERGY
		DB	$FF

	DB	CMD_SETGAMECOUNT
		DW	$0009

	DB	CMD_SETXRAMWORD
		DW	(XRAM_INVENTORY_ANIMITE+$0000)&$FFFF
		DW	$03E7

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0080)
		DB	$02

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_HERO_ABILITY+$0000)
		DB	$05

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_INFUSED
		DB	FUROK
		DB	$14

	DB	CMD_LOADMAP
		DW	(MAP_NRMRIVER03&$FFFF)
		DB	:MAP_NRMRIVER03

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMRIVER03&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$0A
		DB	$0B
		DW	$D0E6
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	XRAM_INVENTORY_ANIMITE
	GLOBAL	?_HMTCAVE01_OPENING
	GLOBAL	?_SCRUBABRUB
	GLOBAL	?_OVRSURFACE03
	GLOBAL	ACTOR02
	GLOBAL	ACTOR_RAM
	GLOBAL	?TRIGGER_AI
	GLOBAL	?_OVERPARA_WAIT
	GLOBAL	?_OVERPARA_MOUNT
	GLOBAL	?_OVRSURFACE04
	GLOBAL	?_OVRSURFACE05
	GLOBAL	XRAM_HERO_ABILITY
	GLOBAL	?_CLDLAVAPOOL01_CALD
	GLOBAL	?_UNDMUSHFARM02_KIDNAPPING
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	MAP_NRMRIVER03
	GLOBAL	HS_NRMRIVER03
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK

;********************************
	END
;********************************