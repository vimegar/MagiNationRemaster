;Size:123
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\OROTHE\CORAL\MAP05\OROCORAL05.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_OROCORAL05_DR_1
	DB	CMD_HEROTODOOR
		DB	$1F
		DB	$06
		DB	$00
		DB	$27

	DB	CMD_JUMP
		DB	:?_OROCORAL04
		DW	(?_OROCORAL04&$FFFF)

;********************************
?_OROCORAL05_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0028)
		DB	$80
		DB	INV_TYPE_RELIC
		DB	INV_CORF_PEARL
		DW	$D380

;********************************
?_OROCORAL05_TR_2
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0029)
		DB	$01
		DB	INV_TYPE_RELIC
		DB	INV_KARMIC_POWER
		DW	$D5DA

;********************************
?_OROCORAL05_TR_3
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0029)
		DB	$02
		DB	INV_TYPE_ITEM
		DB	INV_RUNEOFPOWER
		DW	$D6A8

;********************************
?_OROCORAL05
	DB	CMD_SCENENEW

;********************************
?_OROCORAL05_OVER_ENTRY
	DB	CMD_LOADMAP
		DW	(MAP_OROCORAL05&$FFFF)
		DB	:MAP_OROCORAL05

	DB	CMD_LOADHOTSPOTS
		DW	(HS_OROCORAL05&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_OROCORAL05&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_UNDERSWIM&$FFFF)
		DB	$05
		DB	$05
		DW	$D0FF
		DB	$00
		DB	:?_HERO_UNDTREAD_LEFT_ANIM
		DW	(?_HERO_UNDTREAD_LEFT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1E-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D1CC
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_CORAL_RNDBAT
		DW	(?_CORAL_RNDBAT&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1D-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D1CC
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_CORAL_RNDBAT
		DW	(?_CORAL_RNDBAT&$FFFF)

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
		DB	:?_OROCORAL05
		DW	(?_OROCORAL05&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_ororuins

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_OROCORAL04
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_OROCORAL05
	GLOBAL	HS_OROCORAL05
	GLOBAL	TR_OROCORAL05
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI_UNDERSWIM
	GLOBAL	?_HERO_UNDTREAD_LEFT_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR1E
	GLOBAL	?RAINDROP_AI
	GLOBAL	?_RAINER
	GLOBAL	?_CORAL_RNDBAT
	GLOBAL	ACTOR1D
	GLOBAL	BIT_SPARKLE
	GLOBAL	?_BATTLE_LOST

;********************************
	END
;********************************