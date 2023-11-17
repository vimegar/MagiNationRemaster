;Size:323
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\GEYSER\MAP19\ARDGEYSER19.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDGEYSER19_DR_1
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$2F
		DB	$0C
		DB	$0D

	DB	CMD_JUMP
		DB	:?_ARDGEYSER18
		DW	(?_ARDGEYSER18&$FFFF)

;********************************
?_ARDGEYSER19_DR_2
	DB	CMD_HEROTODOOR
		DB	$20
		DB	$09
		DB	$00
		DB	$31

	DB	CMD_JUMP
		DB	:?_ARDGEYSER28
		DW	(?_ARDGEYSER28&$FFFF)

;********************************
?_ARDGEYSER19_DR_3
	DB	CMD_HEROTODOOR
		DB	$3F
		DB	$00
		DB	$1F
		DB	$0A

	DB	CMD_JUMP
		DB	:?_ARDGEYSER27
		DW	(?_ARDGEYSER27&$FFFF)

;********************************
?_ARDGEYSER19_TR_1
	DB	CMD_INITSKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$0021)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:_SKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDGEYSER02_HERO_AI_SET
		DW	(?_ARDGEYSER02_HERO_AI_SET&$FFFF)

;********************************
_SKIP
	DB	CMD_TRIGGERALWAYS
		DW	(XRAM_SAVEBITS+$0003)
		DB	$40
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$BE
		DW	$D4A3

	DB	CMD_LOADSPAREMAP
		DW	(SCR_ARDGEYSER19B&$FFFF)
		DB	:SCR_ARDGEYSER19B
		DW	(COL_ARDGEYSER19B&$FFFF)
		DB	:COL_ARDGEYSER19B

	DB	CMD_COPYTILESPARE
		DW	$D422
		DB	$03
		DB	$04
		DW	$D422
		DB	$10
		DB	$22

	DB	CMD_INITSKIP
		DW	(_END&$FFFF)

	DB	CMD_EXPRXRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$0021)
		DB	EXPR_SUB
		DB	EXPR_XRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$0021)&$FFFF
		DB	EXPR_BYTECONST,$01

;********************************
_END
	DB	CMD_JUMP
		DB	:?_ARDGEYSER02_HERO_AI_SET
		DW	(?_ARDGEYSER02_HERO_AI_SET&$FFFF)

;********************************
?_ARDGEYSER19_TR_2
	DB	CMD_INITSKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$0021)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:_SKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDGEYSER02_HERO_AI_SET
		DW	(?_ARDGEYSER02_HERO_AI_SET&$FFFF)

;********************************
_SKIP
	DB	CMD_TRIGGERALWAYS
		DW	(XRAM_SAVEBITS+$0003)
		DB	$80
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$BE
		DW	$D273

	DB	CMD_LOADSPAREMAP
		DW	(SCR_ARDGEYSER19B&$FFFF)
		DB	:SCR_ARDGEYSER19B
		DW	(COL_ARDGEYSER19B&$FFFF)
		DB	:COL_ARDGEYSER19B

	DB	CMD_COPYTILESPARE
		DW	$D1F2
		DB	$03
		DB	$04
		DW	$D1F2
		DB	$07
		DB	$32

	DB	CMD_INITSKIP
		DW	(_END&$FFFF)

	DB	CMD_EXPRXRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$0021)
		DB	EXPR_SUB
		DB	EXPR_XRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$0021)&$FFFF
		DB	EXPR_BYTECONST,$01

;********************************
_END
	DB	CMD_JUMP
		DB	:?_ARDGEYSER02_HERO_AI_SET
		DW	(?_ARDGEYSER02_HERO_AI_SET&$FFFF)

;********************************
?_ARDGEYSER19_TR_3
	DB	CMD_INITSKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$0021)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:_SKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDGEYSER02_HERO_AI_SET
		DW	(?_ARDGEYSER02_HERO_AI_SET&$FFFF)

;********************************
_SKIP
	DB	CMD_TRIGGERALWAYS
		DW	(XRAM_SAVEBITS+$0004)
		DB	$01
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$BE
		DW	$D0E3

	DB	CMD_LOADSPAREMAP
		DW	(SCR_ARDGEYSER19B&$FFFF)
		DB	:SCR_ARDGEYSER19B
		DW	(COL_ARDGEYSER19B&$FFFF)
		DB	:COL_ARDGEYSER19B

	DB	CMD_COPYTILESPARE
		DW	$D062
		DB	$03
		DB	$04
		DW	$D062
		DB	$01
		DB	$22

	DB	CMD_INITSKIP
		DW	(_END&$FFFF)

	DB	CMD_EXPRXRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$0021)
		DB	EXPR_SUB
		DB	EXPR_XRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$0021)&$FFFF
		DB	EXPR_BYTECONST,$01

;********************************
_END
	DB	CMD_JUMP
		DB	:?_ARDGEYSER02_HERO_AI_SET
		DW	(?_ARDGEYSER02_HERO_AI_SET&$FFFF)

;********************************
?_ARDGEYSER19_TR_4
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$001D)
		DB	$01
		DB	INV_TYPE_ITEM
		DB	INV_STAR_KEY
		DW	$DE87

;********************************
?_ARDGEYSER19_TR_5
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$001D)
		DB	$02
		DB	INV_TYPE_ITEM
		DB	INV_STAR_KEY
		DW	$DEE9

;********************************
?_ARDGEYSER19_TR_6
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0020)
		DB	$10
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_ROOT
		DW	$D788

;********************************
?_ARDGEYSER19_TR_7
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0020)
		DB	$20
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_SAP
		DW	$D78A

;********************************
?_ARDGEYSER19_TR_8
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0020)
		DB	$40
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_SAP
		DW	$D173

;********************************
?_ARDGEYSER19
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDGEYSER19&$FFFF)
		DB	:MAP_ARDGEYSER19

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDGEYSER19&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_ARDGEYSER19&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D0B4
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_ARDGEYSER_RNDBAT
		DW	(?_ARDGEYSER_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_ARDGEYSER19
		DW	(?_ARDGEYSER19&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_ARDGEYSER18
	GLOBAL	?_ARDGEYSER28
	GLOBAL	?_ARDGEYSER27
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?ANIM_AI
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	XRAM_INVENTORY_ITEMS
	GLOBAL	?_ARDGEYSER02_HERO_AI_SET
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	?_END
	GLOBAL	SCR_ARDGEYSER19B
	GLOBAL	COL_ARDGEYSER19B
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_ARDGEYSER19
	GLOBAL	HS_ARDGEYSER19
	GLOBAL	TR_ARDGEYSER19
	GLOBAL	PAL_HERO
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	?_ARDGEYSER_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST

;********************************
	END
;********************************