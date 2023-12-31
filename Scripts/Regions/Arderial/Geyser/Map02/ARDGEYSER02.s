;Size:759
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\GEYSER\MAP02\ARDGEYSER02.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDGEYSER02_DR_1
	DB	CMD_HEROTODOOR
		DB	$1A
		DB	$09
		DB	$2F
		DB	$00

	DB	CMD_JUMP
		DB	:?_ARDGEYSER01
		DW	(?_ARDGEYSER01&$FFFF)

;********************************
?_ARDGEYSER02_DR_2
	DB	CMD_HEROTODOOR
		DB	$24
		DB	$0A
		DB	$00
		DB	$1A

	DB	CMD_JUMP
		DB	:?_ARDGEYSER13
		DW	(?_ARDGEYSER13&$FFFF)

;********************************
?_ARDGEYSER02_TR_11
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0018)
		DB	$08
		DB	INV_TYPE_ITEM
		DB	INV_MASTER_RUNE
		DW	$D5AF

;********************************
?_ARDGEYSER02_TR_12
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0018)
		DB	$10
		DB	INV_TYPE_ITEM
		DB	INV_REMEDY_DRINK
		DW	$D5DF

;********************************
?_ARDGEYSER02_TR_13
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0018)
		DB	$20
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_SAP
		DW	$D46A

;********************************
?_ARDGEYSER02_TR_14
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0018)
		DB	$40
		DB	INV_TYPE_ITEM
		DB	INV_WATER_OF_LIFE
		DW	$D46B

;********************************
?_ARDGEYSER02_TR_15
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0018)
		DB	$80
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_SAP
		DW	$D46C

;********************************
?_ARDGEYSER02_TR_16
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0019)
		DB	$01
		DB	INV_TYPE_RELIC
		DB	INV_SWORDOFWIND
		DW	$D213

;********************************
?_ARDGEYSER02_TR_17
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0019)
		DB	$02
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_SAP
		DW	$D131

;********************************
?_ARDGEYSER02_TR_18
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0019)
		DB	$04
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_ROOT
		DW	$D132

;********************************
?_ARDGEYSER02_TR_19
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0019)
		DB	$08
		DB	INV_TYPE_ITEM
		DB	INV_REMEDY_DRINK
		DW	$D133

;********************************
?_ARDGEYSER02_TR_20
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0019)
		DB	$10
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_ROOT
		DW	$D134

;********************************
?_ARDGEYSER02_TR_21
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0019)
		DB	$20
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_SAP
		DW	$D135

;********************************
?_ARDGEYSER02_TR_22
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0019)
		DB	$40
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_SAP
		DW	$D136

;********************************
?_ARDGEYSER02_TR_1
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
		DW	(XRAM_SAVEBITS+$0002)
		DB	$02
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$BE
		DW	$D775

	DB	CMD_LOADSPAREMAP
		DW	(SCR_ARDGEYSER02B&$FFFF)
		DB	:SCR_ARDGEYSER02B
		DW	(COL_ARDGEYSER02B&$FFFF)
		DB	:COL_ARDGEYSER02B

	DB	CMD_COPYTILESPARE
		DW	$D714
		DB	$03
		DB	$04
		DW	$D714
		DB	$25
		DB	$24

	DB	CMD_JUMP
		DB	:?_SET_BIT
		DW	(?_SET_BIT&$FFFF)

;********************************
?_ARDGEYSER02_TR_2
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
		DW	(XRAM_SAVEBITS+$0002)
		DB	$04
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$BE
		DW	$D6D1

	DB	CMD_LOADSPAREMAP
		DW	(SCR_ARDGEYSER02B&$FFFF)
		DB	:SCR_ARDGEYSER02B
		DW	(COL_ARDGEYSER02B&$FFFF)
		DB	:COL_ARDGEYSER02B

	DB	CMD_COPYTILESPARE
		DW	$D670
		DB	$03
		DB	$04
		DW	$D670
		DB	$22
		DB	$10

	DB	CMD_JUMP
		DB	:?_SET_BIT
		DW	(?_SET_BIT&$FFFF)

;********************************
?_ARDGEYSER02_TR_3
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
		DW	(XRAM_SAVEBITS+$0002)
		DB	$08
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$BE
		DW	$D6C9

	DB	CMD_LOADSPAREMAP
		DW	(SCR_ARDGEYSER02B&$FFFF)
		DB	:SCR_ARDGEYSER02B
		DW	(COL_ARDGEYSER02B&$FFFF)
		DB	:COL_ARDGEYSER02B

	DB	CMD_COPYTILESPARE
		DW	$D668
		DB	$03
		DB	$04
		DW	$D668
		DB	$22
		DB	$08

	DB	CMD_JUMP
		DB	:?_SET_BIT
		DW	(?_SET_BIT&$FFFF)

;********************************
?_ARDGEYSER02_TR_4
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
		DW	(XRAM_SAVEBITS+$0002)
		DB	$10
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$BE
		DW	$D551

	DB	CMD_LOADSPAREMAP
		DW	(SCR_ARDGEYSER02B&$FFFF)
		DB	:SCR_ARDGEYSER02B
		DW	(COL_ARDGEYSER02B&$FFFF)
		DB	:COL_ARDGEYSER02B

	DB	CMD_COPYTILESPARE
		DW	$D4F0
		DB	$03
		DB	$04
		DW	$D4F0
		DB	$1A
		DB	$10

	DB	CMD_JUMP
		DB	:?_SET_BIT
		DW	(?_SET_BIT&$FFFF)

;********************************
?_ARDGEYSER02_TR_5
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
		DW	(XRAM_SAVEBITS+$0002)
		DB	$20
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$BE
		DW	$D55B

	DB	CMD_LOADSPAREMAP
		DW	(SCR_ARDGEYSER02B&$FFFF)
		DB	:SCR_ARDGEYSER02B
		DW	(COL_ARDGEYSER02B&$FFFF)
		DB	:COL_ARDGEYSER02B

	DB	CMD_COPYTILESPARE
		DW	$D4FA
		DB	$03
		DB	$04
		DW	$D4FA
		DB	$1A
		DB	$1A

	DB	CMD_JUMP
		DB	:?_SET_BIT
		DW	(?_SET_BIT&$FFFF)

;********************************
?_ARDGEYSER02_TR_6
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
		DW	(XRAM_SAVEBITS+$0002)
		DB	$40
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$BE
		DW	$D4D5

	DB	CMD_LOADSPAREMAP
		DW	(SCR_ARDGEYSER02B&$FFFF)
		DB	:SCR_ARDGEYSER02B
		DW	(COL_ARDGEYSER02B&$FFFF)
		DB	:COL_ARDGEYSER02B

	DB	CMD_COPYTILESPARE
		DW	$D474
		DB	$03
		DB	$04
		DW	$D474
		DB	$17
		DB	$24

	DB	CMD_JUMP
		DB	:?_SET_BIT
		DW	(?_SET_BIT&$FFFF)

;********************************
?_ARDGEYSER02_TR_7
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
		DW	(XRAM_SAVEBITS+$0002)
		DB	$80
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$BE
		DW	$D385

	DB	CMD_LOADSPAREMAP
		DW	(SCR_ARDGEYSER02B&$FFFF)
		DB	:SCR_ARDGEYSER02B
		DW	(COL_ARDGEYSER02B&$FFFF)
		DB	:COL_ARDGEYSER02B

	DB	CMD_COPYTILESPARE
		DW	$D324
		DB	$03
		DB	$04
		DW	$D324
		DB	$10
		DB	$24

	DB	CMD_JUMP
		DB	:?_SET_BIT
		DW	(?_SET_BIT&$FFFF)

;********************************
?_ARDGEYSER02_TR_8
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
		DB	$01
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$BE
		DW	$D117

	DB	CMD_LOADSPAREMAP
		DW	(SCR_ARDGEYSER02B&$FFFF)
		DB	:SCR_ARDGEYSER02B
		DW	(COL_ARDGEYSER02B&$FFFF)
		DB	:COL_ARDGEYSER02B

	DB	CMD_COPYTILESPARE
		DW	$D0B6
		DB	$03
		DB	$04
		DW	$D0B6
		DB	$03
		DB	$26

	DB	CMD_JUMP
		DB	:?_SET_BIT
		DW	(?_SET_BIT&$FFFF)

;********************************
?_ARDGEYSER02_TR_9
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
		DB	:?_CLDGEYSER_HERO_AI_SET
		DW	(?_CLDGEYSER_HERO_AI_SET&$FFFF)

;********************************
_SKIP
	DB	CMD_TRIGGERALWAYS
		DW	(XRAM_SAVEBITS+$0003)
		DB	$02
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$BE
		DW	$D431

	DB	CMD_LOADSPAREMAP
		DW	(SCR_ARDGEYSER02B&$FFFF)
		DB	:SCR_ARDGEYSER02B
		DW	(COL_ARDGEYSER02B&$FFFF)
		DB	:COL_ARDGEYSER02B

	DB	CMD_COPYTILESPARE
		DW	$D3D0
		DB	$03
		DB	$04
		DW	$D3D0
		DB	$14
		DB	$10

	DB	CMD_JUMP
		DB	:?_SET_BIT
		DW	(?_SET_BIT&$FFFF)

;********************************
?_ARDGEYSER02_TR_10
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
		DB	$04
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$BE
		DW	$D429

	DB	CMD_LOADSPAREMAP
		DW	(SCR_ARDGEYSER02B&$FFFF)
		DB	:SCR_ARDGEYSER02B
		DW	(COL_ARDGEYSER02B&$FFFF)
		DB	:COL_ARDGEYSER02B

	DB	CMD_COPYTILESPARE
		DW	$D3C8
		DB	$03
		DB	$04
		DW	$D3C8
		DB	$14
		DB	$08

	DB	CMD_JUMP
		DB	:?_SET_BIT
		DW	(?_SET_BIT&$FFFF)

;********************************
?_SET_BIT
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
?_ARDGEYSER02_HERO_AI_SET
	DB	CMD_INITSKIP
		DW	(_INITSKIP&$FFFF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

;********************************
_INITSKIP
	DB	CMD_SETSCROLL
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_END

;********************************
?_ARDGEYSER02
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDGEYSER02&$FFFF)
		DB	:MAP_ARDGEYSER02

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDGEYSER02&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_ARDGEYSER02&$FFFF)

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
		DB	:?_ARDGEYSER02
		DW	(?_ARDGEYSER02&$FFFF)
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
	GLOBAL	?_ARDGEYSER01
	GLOBAL	?_ARDGEYSER13
	GLOBAL	XRAM_TREASURE
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?ANIM_AI
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	XRAM_INVENTORY_ITEMS
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	?_END
	GLOBAL	SCR_ARDGEYSER02B
	GLOBAL	COL_ARDGEYSER02B
	GLOBAL	?_CLDGEYSER_HERO_AI_SET
	GLOBAL	?HERO_AI
	GLOBAL	MAP_ARDGEYSER02
	GLOBAL	HS_ARDGEYSER02
	GLOBAL	TR_ARDGEYSER02
	GLOBAL	PAL_HERO
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	?_ARDGEYSER_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST

;********************************
	END
;********************************