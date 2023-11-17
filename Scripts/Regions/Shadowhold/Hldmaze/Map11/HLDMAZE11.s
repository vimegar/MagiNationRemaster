;Size:902
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\SHADOWHOLD\HLDMAZE\MAP11\HLDMAZE11.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HLDMAZE11_DR_1
	DB	CMD_HEROTODOOR
		DB	$29
		DB	$09
		DB	$1D
		DB	$00

	DB	CMD_JUMP
		DB	:?_HLDMAZE10
		DW	(?_HLDMAZE10&$FFFF)

;********************************
?_HLDMAZE11_DR_2
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0001)&$FFFF
		DB	$02
		DB	:?_HLDMAZE11_DR_2_END
		DW	(?_HLDMAZE11_DR_2_END&$FFFF)

	DB	CMD_JUMP
		DB	:?_HLDMAZE11_DOOR_LOCKED
		DW	(?_HLDMAZE11_DOOR_LOCKED&$FFFF)

;********************************
?_HLDMAZE11_DR_2_END
	DB	CMD_END

;********************************
?_HLDMAZE11_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_SAVEBITS+$0002)
		DB	$02
		DB	INV_TYPE_ITEM
		DB	INV_SHADOW_KEY
		DW	$D387

;********************************
?_HLDMAZE11_TR_2
	DB	CMD_TOGGLEONCE
		DW	(XRAM_SAVEBITS+$0004)
		DB	$08
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$FA
		DB	$FB
		DW	$D1CD

	DB	CMD_END

;********************************
?_HLDMAZE11_TR_3
	DB	CMD_TOGGLEONCE
		DW	(XRAM_SAVEBITS+$0003)
		DB	$02
		DB	:_HLDMAZE11_SWITCH2
		DW	(_HLDMAZE11_SWITCH2&$FFFF)
		DB	$FA
		DB	$FB
		DW	$D4D5

	DB	CMD_COPYTILEBLOCK
		DW	$D000
		DB	$02
		DB	$03
		DW	$D2B3
		DB	$0D
		DB	$29

	DB	CMD_END

;********************************
_HLDMAZE11_SWITCH2
	DB	CMD_COPYTILEBLOCK
		DW	$D143
		DB	$02
		DB	$03
		DW	$D2B3
		DB	$0D
		DB	$29

	DB	CMD_END

;********************************
?_HLDMAZE11_TR_4
	DB	CMD_TOGGLEONCE
		DW	(XRAM_SAVEBITS+$0003)
		DB	$04
		DB	:_HLDMAZE11_SWITCH3
		DW	(_HLDMAZE11_SWITCH3&$FFFF)
		DB	$FA
		DB	$FB
		DW	$D158

	DB	CMD_COPYTILEBLOCK
		DW	$D0D6
		DB	$02
		DB	$07
		DW	$D372
		DB	$11
		DB	$20

	DB	CMD_COPYTILEBLOCK
		DW	$D004
		DB	$01
		DB	$01
		DW	$D49F
		DB	$17
		DB	$21

	DB	CMD_END

;********************************
_HLDMAZE11_SWITCH3
	DB	CMD_COPYTILEBLOCK
		DW	$D0B5
		DB	$02
		DB	$07
		DW	$D372
		DB	$11
		DB	$20

	DB	CMD_END

;********************************
?_HLDMAZE11_TR_5
	DB	CMD_TOGGLEONCE
		DW	(XRAM_SAVEBITS+$0003)
		DB	$08
		DB	:_HLDMAZE11_SWITCH4
		DW	(_HLDMAZE11_SWITCH4&$FFFF)
		DB	$FA
		DB	$FB
		DW	$D36B

	DB	CMD_COPYTILEBLOCK
		DW	$D0D6
		DB	$02
		DB	$07
		DW	$D0B7
		DB	$03
		DB	$21

	DB	CMD_COPYTILEBLOCK
		DW	$D004
		DB	$01
		DB	$01
		DW	$D1E3
		DB	$09
		DB	$21

	DB	CMD_END

;********************************
_HLDMAZE11_SWITCH4
	DB	CMD_COPYTILEBLOCK
		DW	$D0B5
		DB	$02
		DB	$07
		DW	$D0B7
		DB	$03
		DB	$21

	DB	CMD_END

;********************************
?_HLDMAZE11_TR_6
	DB	CMD_TOGGLEONCE
		DW	(XRAM_SAVEBITS+$0003)
		DB	$10
		DB	:_HLDMAZE11_SWITCH5
		DW	(_HLDMAZE11_SWITCH5&$FFFF)
		DB	$FA
		DB	$FB
		DW	$D13D

	DB	CMD_COPYTILEBLOCK
		DW	$D0D6
		DB	$02
		DB	$07
		DW	$D360
		DB	$11
		DB	$0E

	DB	CMD_COPYTILEBLOCK
		DW	$D004
		DB	$01
		DB	$01
		DW	$D48C
		DB	$17
		DB	$0E

	DB	CMD_END

;********************************
_HLDMAZE11_SWITCH5
	DB	CMD_COPYTILEBLOCK
		DW	$D0B5
		DB	$02
		DB	$07
		DW	$D360
		DB	$11
		DB	$0E

	DB	CMD_END

;********************************
?_HLDMAZE11_TR_7
	DB	CMD_TOGGLEONCE
		DW	(XRAM_SAVEBITS+$0003)
		DB	$20
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$FA
		DB	$FB
		DW	$D4B8

	DB	CMD_END

;********************************
?_HLDMAZE11_TR_8
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$000F)
		DB	$02
		DB	INV_TYPE_ITEM
		DB	INV_RUNEOFPOWER
		DW	$D209

;********************************
?_HLDMAZE11_TR_9

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$14),(?AL+$05),(?AL+$05),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HLDMAZE11_TR_10

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$03),(?AL+$08),(?AL+$12),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$01),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HLDMAZE11_TXT1

	DB	CMD_TEXTICON
		DW	ICON_GUY01

	DB	CMD_TEXTWRITE
		DB	(?AU+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$07),(?AL+$14),(?AL+$11),(?AL+$13),?SPCE,(?AL+$0C),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$07),(?AL+$04),(?AL+$04),(?AL+$12),(?AL+$07),?PERD,?SPCE,(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),?HURRY
		DB	(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$07),(?AL+$14),(?AL+$11),(?AL+$13),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?COMM,?SPCE,(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$02),(?AL+$14),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_GUY01

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$0A),(?AL+$12),?COMM,?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$01),(?AL+$04),?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$11),(?AL+$04),(?AL+$05),(?AL+$14),(?AL+$0B),?PERD,?SPCE,(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$08),(?AL+$12),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$0F),(?AL+$11),(?AL+$04),(?AL+$13),(?AL+$13),(?AL+$18),?HURRY
		DB	(?AL+$16),(?AL+$04),(?AL+$08),(?AL+$11),(?AL+$03),?SPCE,(?AL+$12),(?AL+$13),(?AL+$14),(?AL+$05),(?AL+$05),?WAIT
		DB	(?AL+$00),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_HLDMAZE11_TXT2

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?DASH,(?AU+$08),(?AU+$13),?APST,(?AU+$12),?SPCE,(?AU+$0B),(?AU+$0E),(?AU+$02),(?AU+$0A),(?AU+$04),(?AU+$03),?DASH,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
?_HLDMAZE11_TXT3

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?DASH,(?AU+$13),(?AU+$0E),(?AU+$0D),(?AU+$18),?SPCE,(?AU+$14),(?AU+$0D),(?AU+$0B),(?AU+$0E),(?AU+$02),(?AU+$0A),(?AU+$12),?HURRY
		DB	(?AU+$13),(?AU+$07),(?AU+$04),?SPCE,(?AU+$03),(?AU+$0E),(?AU+$0E),(?AU+$11),?PERD,?SPCE,(?AU+$13),(?AU+$07),(?AU+$04),?WAIT
		DB	(?AU+$0A),(?AU+$04),(?AU+$18),?SPCE,(?AU+$09),(?AU+$00),(?AU+$0C),(?AU+$12),?SPCE,(?AU+$00),(?AU+$0D),(?AU+$03),?HURRY
		DB	(?AU+$01),(?AU+$11),(?AU+$04),(?AU+$00),(?AU+$0A),(?AU+$12),?SPCE,(?AU+$08),(?AU+$0D),?SPCE,(?AU+$13),(?AU+$07),(?AU+$04),?WAIT
		DB	(?AU+$0B),(?AU+$0E),(?AU+$02),(?AU+$0A),?DASH,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
?_HLDMAZE11
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HLDMAZE11&$FFFF)
		DB	:MAP_HLDMAZE11

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HLDMAZE11&$FFFF)

;********************************
?_HLDMAZE11_RETURN
	DB	CMD_LOADVRAM
		DW	(VRM_HLDMAZE&$FFFF)
		DB	:VRM_HLDMAZE
		DW	(PAL_HLDMAZE&$FFFF)
		DB	:PAL_HLDMAZE

	DB	CMD_SONGSTART
		DB	SONGID_shadowhold

	DB	CMD_LOADTRIGGERS
		DW	(TR_HLDMAZE11&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D0FF
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_HLDMAZE_RNDBAT
		DW	(?_HLDMAZE_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_HLDMAZE11_RETURN
		DW	(?_HLDMAZE11_RETURN&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0081)&$FFFF
		DB	$04
		DB	:_HLDMAZE11_SWITCHES
		DW	(_HLDMAZE11_SWITCHES&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TRIGGER_AI&$FFFF)
		DB	$06
		DB	$08
		DW	$D196
		DB	$00
		DB	:?_MAN05_STAND_DOWN_ANIM
		DW	(?_MAN05_STAND_DOWN_ANIM&$FFFF)
		DB	:?_HLDMAZE11_PRISONER_FREE
		DW	(?_HLDMAZE11_PRISONER_FREE&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_MAN05
		DW	(BIT_MAN05&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

;********************************
_HLDMAZE11_SWITCHES
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0003)&$FFFF
		DB	$02
		DB	:_NEXT1
		DW	(_NEXT1&$FFFF)

	DB	CMD_COPYTILEBLOCK
		DW	$D000
		DB	$02
		DB	$03
		DW	$D2B3
		DB	$0D
		DB	$29

;********************************
_NEXT1
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0003)&$FFFF
		DB	$04
		DB	:_NEXT2
		DW	(_NEXT2&$FFFF)

	DB	CMD_COPYTILEBLOCK
		DW	$D0D6
		DB	$02
		DB	$07
		DW	$D372
		DB	$11
		DB	$20

	DB	CMD_COPYTILEBLOCK
		DW	$D004
		DB	$02
		DB	$01
		DW	$D49E
		DB	$17
		DB	$20

;********************************
_NEXT2
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0003)&$FFFF
		DB	$08
		DB	:_NEXT3
		DW	(_NEXT3&$FFFF)

	DB	CMD_COPYTILEBLOCK
		DW	$D0D6
		DB	$02
		DB	$07
		DW	$D0B7
		DB	$03
		DB	$21

	DB	CMD_COPYTILEBLOCK
		DW	$D004
		DB	$01
		DB	$01
		DW	$D1E3
		DB	$09
		DB	$21

;********************************
_NEXT3
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0003)&$FFFF
		DB	$10
		DB	:_NEXT4
		DW	(_NEXT4&$FFFF)

	DB	CMD_COPYTILEBLOCK
		DW	$D0D6
		DB	$02
		DB	$07
		DW	$D360
		DB	$11
		DB	$0E

	DB	CMD_COPYTILEBLOCK
		DW	$D004
		DB	$01
		DB	$01
		DW	$D48C
		DB	$17
		DB	$0E

;********************************
_NEXT4
	DB	CMD_IF
		DB	EXPR_NOT
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0001)&$FFFF
		DB	$02
		DB	:_NEXT5
		DW	(_NEXT5&$FFFF)

	DB	CMD_COPYTILEBLOCK
		DW	$D002
		DB	$02
		DB	$02
		DW	$D2C1
		DB	$0E
		DB	$05

;********************************
_NEXT5
	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_HLDMAZE11_PRISONER_FREE
	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0081)
		DB	$04

	DB	CMD_SETTEXT
		DB	:?_HLDMAZE11_TXT1
		DW	(?_HLDMAZE11_TXT1&$FFFF)

	DB	CMD_SWITCH
		DB	EXPR_FACEHERO
		DB	:_UP
		DW	$0000
		DW	(_UP&$FFFF)
		DB	:_DOWN
		DW	$0003
		DW	(_DOWN&$FFFF)
		DB	:_RIGHT
		DW	$0002
		DW	(_RIGHT&$FFFF)
		DB	:_LEFT
		DW	$0001
		DW	(_LEFT&$FFFF)
		DB	$FF

;********************************
_UP
	DB	CMD_THISACTORSETANIM
		DB	:?_MAN04_STAND_UP_ANIM
		DW	(?_MAN04_STAND_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_JUMP
		DB	:_MOVE_IT
		DW	(_MOVE_IT&$FFFF)

;********************************
_DOWN
	DB	CMD_THISACTORSETANIM
		DB	:?_MAN04_STAND_DOWN_ANIM
		DW	(?_MAN04_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_JUMP
		DB	:_GO_AROUND
		DW	(_GO_AROUND&$FFFF)

;********************************
_LEFT
	DB	CMD_THISACTORSETANIM
		DB	:?_MAN04_STAND_LEFT_ANIM
		DW	(?_MAN04_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_JUMP
		DB	:_MOVE_IT
		DW	(_MOVE_IT&$FFFF)

;********************************
_RIGHT
	DB	CMD_THISACTORSETANIM
		DB	:?_MAN04_STAND_RIGHT_ANIM
		DW	(?_MAN04_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_JUMP
		DB	:_MOVE_IT
		DW	(_MOVE_IT&$FFFF)

;********************************
_MOVE_IT
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN04_RUN_DOWN_ANIM
		DW	(?_MAN04_RUN_DOWN_ANIM&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
_GO_AROUND
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN04_RUN_LEFT_ANIM
		DW	(?_MAN04_RUN_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_MAN04_RUN_DOWN_ANIM
		DW	(?_MAN04_RUN_DOWN_ANIM&$FFFF)
		DB	$18
		DB	$00

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_HLDMAZE11_DOOR_LOCKED
	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$001C)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:?_HLDMAZE11_UNLOCK_DOOR
		DW	(?_HLDMAZE11_UNLOCK_DOOR&$FFFF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$08

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_HLDMAZE11_TXT2
		DW	(?_HLDMAZE11_TXT2&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_JUMP
		DB	:?_HLDMAZE11_DOOR_LOCKED_END
		DW	(?_HLDMAZE11_DOOR_LOCKED_END&$FFFF)

;********************************
?_HLDMAZE11_UNLOCK_DOOR
	DB	CMD_SETTEXT
		DB	:?_HLDMAZE11_TXT3
		DW	(?_HLDMAZE11_TXT3&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_COPYTILEBLOCK
		DW	$D002
		DB	$02
		DB	$02
		DW	$D2C1
		DB	$0E
		DB	$05

	DB	CMD_EXPRXRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$001C)
		DB	EXPR_SUB
		DB	EXPR_XRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$001C)&$FFFF
		DB	EXPR_BYTECONST,$01

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0001)
		DB	$02

;********************************
?_HLDMAZE11_DOOR_LOCKED_END
	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_HLDMAZE10
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	?_END
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_HLDMAZE11
	GLOBAL	HS_HLDMAZE11
	GLOBAL	VRM_HLDMAZE
	GLOBAL	PAL_HLDMAZE
	GLOBAL	TR_HLDMAZE11
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	?_HLDMAZE_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST
	GLOBAL	ACTOR00
	GLOBAL	?TRIGGER_AI
	GLOBAL	?_MAN05_STAND_DOWN_ANIM
	GLOBAL	BIT_MAN05
	GLOBAL	?_MAN04_STAND_UP_ANIM
	GLOBAL	?_MAN04_STAND_DOWN_ANIM
	GLOBAL	?_MAN04_STAND_LEFT_ANIM
	GLOBAL	?_MAN04_STAND_RIGHT_ANIM
	GLOBAL	?_MAN04_RUN_DOWN_ANIM
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_MAN04_RUN_LEFT_ANIM
	GLOBAL	XRAM_INVENTORY_ITEMS
	GLOBAL	?ANIM_AI
	GLOBAL	?_HERO_WALK_DOWN_ANIM
	GLOBAL	?_HERO_STAND_UP_ANIM

;********************************
	END
;********************************