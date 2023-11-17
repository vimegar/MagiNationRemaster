;Size:1411
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\SHADOWHOLD\HLDMAZE\MAP16\HLDMAZE16.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HLDMAZE16_DR_1
	DB	CMD_HEROTODOOR
		DB	$01
		DB	$05
		DB	$00
		DB	$27

	DB	CMD_JUMP
		DB	:?_HLDMAZE15
		DW	(?_HLDMAZE15&$FFFF)

;********************************
?_HLDMAZE16_DR_2
	DB	CMD_HEROTODOOR
		DB	$05
		DB	$0A
		DB	$26
		DB	$00

	DB	CMD_JUMP
		DB	:?_HLDMAZE17
		DW	(?_HLDMAZE17&$FFFF)

;********************************
?_HLDMAZE16_DR_3
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$10
		DB	:?_HLDMAZE16_DR_3_END
		DW	(?_HLDMAZE16_DR_3_END&$FFFF)

	DB	CMD_JUMP
		DB	:?_HLDMAZE16_DOOR3_LOCKED
		DW	(?_HLDMAZE16_DOOR3_LOCKED&$FFFF)

;********************************
?_HLDMAZE16_DR_3_END
	DB	CMD_END

;********************************
?_HLDMAZE16_DR_4
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$20
		DB	:?_HLDMAZE16_DR_4_END
		DW	(?_HLDMAZE16_DR_4_END&$FFFF)

	DB	CMD_JUMP
		DB	:?_HLDMAZE16_DOOR4_LOCKED
		DW	(?_HLDMAZE16_DOOR4_LOCKED&$FFFF)

;********************************
?_HLDMAZE16_DR_4_END
	DB	CMD_END

;********************************
?_HLDMAZE16_DR_5
	DB	CMD_JUMP
		DB	:?_HLDMAZE16_GRUSOME_D
		DW	(?_HLDMAZE16_GRUSOME_D&$FFFF)

;********************************
?_HLDMAZE16_TR_1
	DB	CMD_TOGGLEONCE
		DW	(XRAM_SAVEBITS+$0004)
		DB	$01
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$FA
		DB	$FB
		DW	$D69A

	DB	CMD_END

;********************************
?_HLDMAZE16_TR_2
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$000F)
		DB	$08
		DB	INV_TYPE_ITEM
		DB	INV_RUNEOFPOWER
		DW	$D16E

;********************************
?_HLDMAZE16_TR_3

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$12),?HURRY
		DB	(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$03),(?AL+$18),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$0F),(?AL+$0E),(?AL+$0F),?PERD,?WAIT
		DB	(?AU+$08),?APST,(?AL+$03),?SPCE,(?AL+$01),(?AL+$04),(?AL+$13),(?AL+$13),(?AL+$04),(?AL+$11),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?HURRY
		DB	(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HLDMAZE16_TR_4

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$12),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?HURRY
		DB	(?AL+$07),(?AL+$04),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?SPCE,(?AL+$13),(?AL+$11),(?AL+$18),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?HURRY
		DB	(?AL+$08),(?AL+$0D),?SPCE,(?AL+$01),(?AL+$04),(?AL+$03),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HLDMAZE16_TR_5

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$01),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AL+$04),(?AL+$0C),(?AL+$08),(?AL+$13),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$0F),(?AL+$00),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$06),(?AL+$11),(?AL+$04),(?AL+$04),(?AL+$0D),(?AL+$08),(?AL+$12),(?AL+$07),?WAIT
		DB	(?AL+$00),(?AL+$14),(?AL+$11),(?AL+$00),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HLDMAZE16_TR_6

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AL+$0E),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$00),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$06),(?AL+$11),(?AL+$00),(?AL+$15),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HLDMAZE16_TR_7

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$0E),(?AL+$0D),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$00),(?AL+$0B),?SPCE,(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$0F),(?AL+$0B),(?AL+$00),(?AL+$02),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HLDMAZE16_TR_8

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HLDMAZE16_TR_9

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HLDMAZE16_TR_10

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$0D),(?AL+$0E),(?AL+$13),(?AL+$04),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$07),(?AL+$0C),(?AL+$0C),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$04),(?AL+$03),?HURRY
		DB	(?AL+$08),(?AL+$0D),?SPCE,(?AL+$16),(?AL+$04),(?AL+$08),(?AL+$11),(?AL+$03),?WAIT
		DB	(?AL+$12),(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$06),(?AL+$06),(?AL+$0B),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$03),(?AL+$0E),(?AL+$13),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HLDMAZE16_TXT1

	DB	CMD_TEXTICON
		DW	ICON_GUY02

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
		DW	ICON_GUY02

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?COMM,?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$0D),?COMM,?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$00),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_HLDMAZE16_TXT2

	DB	CMD_TEXTICON
		DW	ICON_YOUNGMAN

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
		DW	ICON_YOUNGMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?COMM,?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$0D),?COMM,?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$00),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_HLDMAZE16_TXT3

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?DASH,(?AU+$08),(?AU+$13),?APST,(?AU+$12),?SPCE,(?AU+$0B),(?AU+$0E),(?AU+$02),(?AU+$0A),(?AU+$04),(?AU+$03),?DASH,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$03

	DB	CMD_END

;********************************
?_HLDMAZE16_TXT4

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?DASH,(?AU+$13),(?AU+$0E),(?AU+$0D),(?AU+$18),?SPCE,(?AU+$14),(?AU+$0D),(?AU+$0B),(?AU+$0E),(?AU+$02),(?AU+$0A),(?AU+$12),?HURRY
		DB	(?AU+$13),(?AU+$07),(?AU+$04),?SPCE,(?AU+$03),(?AU+$0E),(?AU+$0E),(?AU+$11),?PERD,?SPCE,(?AU+$13),(?AU+$07),(?AU+$04),?WAIT
		DB	(?AU+$0A),(?AU+$04),(?AU+$18),?SPCE,(?AU+$09),(?AU+$00),(?AU+$0C),(?AU+$12),?SPCE,(?AU+$00),(?AU+$0D),(?AU+$03),?HURRY
		DB	(?AU+$01),(?AU+$11),(?AU+$04),(?AU+$00),(?AU+$0A),(?AU+$12),?SPCE,(?AU+$08),(?AU+$0D),?SPCE,(?AU+$13),(?AU+$07),(?AU+$04),?WAIT
		DB	(?AU+$0B),(?AU+$0E),(?AU+$02),(?AU+$0A),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_HLDMAZE16_TXT5

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$12),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$18),?HURRY
		DB	(?AL+$06),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$0C),(?AL+$0E),(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$0D),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$18),?SPCE,(?AL+$04),(?AL+$17),(?AL+$0F),(?AL+$04),(?AL+$02),(?AL+$13),(?AL+$04),(?AL+$03),?PERD,?WAIT
		DB	(?AU+$02),(?AL+$14),(?AL+$11),(?AL+$08),(?AL+$0E),(?AL+$12),(?AL+$08),(?AL+$13),(?AL+$18),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$08),(?AL+$13),(?AL+$12),?WAIT
		DB	(?AL+$02),(?AL+$0E),(?AL+$0D),(?AL+$12),(?AL+$04),(?AL+$10),(?AL+$14),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),(?AL+$12),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$05

	DB	CMD_END

;********************************
?_HLDMAZE16
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HLDMAZE16&$FFFF)
		DB	:MAP_HLDMAZE16

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HLDMAZE16&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_HLDMAZE16&$FFFF)

;********************************
?_HLDMAZE16_RETURN
	DB	CMD_LOADVRAM
		DW	(VRM_HLDMAZE&$FFFF)
		DB	:VRM_HLDMAZE
		DW	(PAL_HLDMAZE&$FFFF)
		DB	:PAL_HLDMAZE

	DB	CMD_SONGSTART
		DB	SONGID_shadowhold

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D118
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
		DB	:?_HLDMAZE16_RETURN
		DW	(?_HLDMAZE16_RETURN&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_IF
		DB	EXPR_NOT
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$10
		DB	:_SKIP1
		DW	(_SKIP1&$FFFF)

	DB	CMD_COPYTILEBLOCK
		DW	$D5EC
		DB	$02
		DB	$02
		DW	$D5DD
		DB	$1B
		DB	$10

;********************************
_SKIP1
	DB	CMD_IF
		DB	EXPR_NOT
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$20
		DB	:_SKIP2
		DW	(_SKIP2&$FFFF)

	DB	CMD_COPYTILEBLOCK
		DW	$D5EC
		DB	$02
		DB	$02
		DW	$D5F9
		DB	$1B
		DB	$2C

;********************************
_SKIP2
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0081)&$FFFF
		DB	$20
		DB	:_HLDMAZE16_NEXT
		DW	(_HLDMAZE16_NEXT&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TRIGGER_AI&$FFFF)
		DB	$10
		DB	$1F
		DW	$D6B9
		DB	$00
		DB	:?_MAN03_STAND_UP_ANIM
		DW	(?_MAN03_STAND_UP_ANIM&$FFFF)
		DB	:?_HLDMAZE16_PRISONER_FREE1
		DW	(?_HLDMAZE16_PRISONER_FREE1&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_MAN03
		DW	(BIT_MAN03&$FFFF)
		DW	$8000
		DB	$00

;********************************
_HLDMAZE16_NEXT
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0081)&$FFFF
		DB	$40
		DB	:_HLDMAZE16_NEXT_END
		DW	(_HLDMAZE16_NEXT_END&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TRIGGER_AI&$FFFF)
		DB	$2D
		DB	$1F
		DW	$D6D6
		DB	$30
		DB	:?_MAN04_STAND_UP_ANIM
		DW	(?_MAN04_STAND_UP_ANIM&$FFFF)
		DB	:?_HLDMAZE16_PRISONER_FREE2
		DW	(?_HLDMAZE16_PRISONER_FREE2&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_MAN04
		DW	(BIT_MAN04&$FFFF)
		DW	$8300
		DB	$00

;********************************
_HLDMAZE16_NEXT_END
	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_HLDMAZE16_PRISONER_FREE1
	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0081)
		DB	$20

	DB	CMD_SETTEXT
		DB	:?_HLDMAZE16_TXT1
		DW	(?_HLDMAZE16_TXT1&$FFFF)

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
		DB	:?_MAN03_STAND_UP_ANIM
		DW	(?_MAN03_STAND_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_JUMP
		DB	:_GO_AROUND
		DW	(_GO_AROUND&$FFFF)

;********************************
_DOWN
	DB	CMD_THISACTORSETANIM
		DB	:?_MAN03_STAND_DOWN_ANIM
		DW	(?_MAN03_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_JUMP
		DB	:_MOVE_IT
		DW	(_MOVE_IT&$FFFF)

;********************************
_LEFT
	DB	CMD_THISACTORSETANIM
		DB	:?_MAN03_STAND_LEFT_ANIM
		DW	(?_MAN03_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_JUMP
		DB	:_MOVE_IT
		DW	(_MOVE_IT&$FFFF)

;********************************
_RIGHT
	DB	CMD_THISACTORSETANIM
		DB	:?_MAN03_STAND_RIGHT_ANIM
		DW	(?_MAN03_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_JUMP
		DB	:_MOVE_IT
		DW	(_MOVE_IT&$FFFF)

;********************************
_MOVE_IT
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN03_RUN_UP_ANIM
		DW	(?_MAN03_RUN_UP_ANIM&$FFFF)
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
		DB	:?_MAN03_RUN_RIGHT_ANIM
		DW	(?_MAN03_RUN_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_MAN03_RUN_UP_ANIM
		DW	(?_MAN03_RUN_UP_ANIM&$FFFF)
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
?_HLDMAZE16_PRISONER_FREE2
	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0081)
		DB	$40

	DB	CMD_SETTEXT
		DB	:?_HLDMAZE16_TXT2
		DW	(?_HLDMAZE16_TXT2&$FFFF)

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
		DB	:_GO_AROUND
		DW	(_GO_AROUND&$FFFF)

;********************************
_DOWN
	DB	CMD_THISACTORSETANIM
		DB	:?_MAN04_STAND_DOWN_ANIM
		DW	(?_MAN04_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_JUMP
		DB	:_MOVE_IT
		DW	(_MOVE_IT&$FFFF)

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
		DB	:?_MAN04_RUN_UP_ANIM
		DW	(?_MAN04_RUN_UP_ANIM&$FFFF)
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
		DB	:?_MAN04_RUN_UP_ANIM
		DW	(?_MAN04_RUN_UP_ANIM&$FFFF)
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
?_HLDMAZE16_DOOR3_LOCKED
	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$001C)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:?_HLDMAZE16_UNLOCK_DOOR3
		DW	(?_HLDMAZE16_UNLOCK_DOOR3&$FFFF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_WALK_UP_ANIM
		DW	(?_HERO_WALK_UP_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$08

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_HLDMAZE16_TXT3
		DW	(?_HLDMAZE16_TXT3&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$03

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_JUMP
		DB	:?_HLDMAZE16_DOOR3_LOCKED_END
		DW	(?_HLDMAZE16_DOOR3_LOCKED_END&$FFFF)

;********************************
?_HLDMAZE16_UNLOCK_DOOR3
	DB	CMD_SETTEXT
		DB	:?_HLDMAZE16_TXT4
		DW	(?_HLDMAZE16_TXT4&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_COPYTILEBLOCK
		DW	$D5EC
		DB	$02
		DB	$02
		DW	$D5DD
		DB	$1B
		DB	$10

	DB	CMD_EXPRXRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$001C)
		DB	EXPR_SUB
		DB	EXPR_XRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$001C)&$FFFF
		DB	EXPR_BYTECONST,$01

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0000)
		DB	$10

;********************************
?_HLDMAZE16_DOOR3_LOCKED_END
	DB	CMD_END

;********************************
?_HLDMAZE16_DOOR4_LOCKED
	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$001C)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:?_HLDMAZE16_UNLOCK_DOOR4
		DW	(?_HLDMAZE16_UNLOCK_DOOR4&$FFFF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_WALK_UP_ANIM
		DW	(?_HERO_WALK_UP_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$08

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_HLDMAZE16_TXT3
		DW	(?_HLDMAZE16_TXT3&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$03

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_JUMP
		DB	:?_HLDMAZE16_DOOR4_LOCKED_END
		DW	(?_HLDMAZE16_DOOR4_LOCKED_END&$FFFF)

;********************************
?_HLDMAZE16_UNLOCK_DOOR4
	DB	CMD_SETTEXT
		DB	:?_HLDMAZE16_TXT4
		DW	(?_HLDMAZE16_TXT4&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_COPYTILEBLOCK
		DW	$D5EC
		DB	$02
		DB	$02
		DW	$D5F9
		DB	$1B
		DB	$2C

	DB	CMD_EXPRXRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$001C)
		DB	EXPR_SUB
		DB	EXPR_XRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$001C)&$FFFF
		DB	EXPR_BYTECONST,$01

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0000)
		DB	$20

;********************************
?_HLDMAZE16_DOOR4_LOCKED_END
	DB	CMD_END

;********************************
?_HLDMAZE16_GRUSOME_D
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

	DB	CMD_DELAY
		DB	$40

	DB	CMD_SCROLLMAP
		DB	$74
		DB	$00
		DB	$FF
		DB	$30
		DB	$00
		DB	$00
		DB	$30
		DB	$01
		DB	$00
		DB	$30
		DB	$00
		DB	$00
		DB	$30
		DB	$FF
		DB	$00
		DB	$74
		DB	$00
		DB	$01
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_HLDMAZE16_TXT5
		DW	(?_HLDMAZE16_TXT5&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$05

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_HLDMAZE15
	GLOBAL	?_HLDMAZE17
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	?_END
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_HLDMAZE16
	GLOBAL	HS_HLDMAZE16
	GLOBAL	TR_HLDMAZE16
	GLOBAL	VRM_HLDMAZE
	GLOBAL	PAL_HLDMAZE
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
	GLOBAL	?_MAN03_STAND_UP_ANIM
	GLOBAL	BIT_MAN03
	GLOBAL	ACTOR01
	GLOBAL	?_MAN04_STAND_UP_ANIM
	GLOBAL	BIT_MAN04
	GLOBAL	?_MAN03_STAND_DOWN_ANIM
	GLOBAL	?_MAN03_STAND_LEFT_ANIM
	GLOBAL	?_MAN03_STAND_RIGHT_ANIM
	GLOBAL	?_MAN03_RUN_UP_ANIM
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_MAN03_RUN_RIGHT_ANIM
	GLOBAL	?_MAN04_STAND_DOWN_ANIM
	GLOBAL	?_MAN04_STAND_LEFT_ANIM
	GLOBAL	?_MAN04_STAND_RIGHT_ANIM
	GLOBAL	?_MAN04_RUN_UP_ANIM
	GLOBAL	?_MAN04_RUN_LEFT_ANIM
	GLOBAL	XRAM_INVENTORY_ITEMS
	GLOBAL	?ANIM_AI
	GLOBAL	?_HERO_WALK_UP_ANIM
	GLOBAL	?_HERO_WALK_DOWN_ANIM
	GLOBAL	?_HERO_STAND_UP_ANIM

;********************************
	END
;********************************