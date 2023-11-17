;Size:11672
                    
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\UNDERNEATH\TOWN\MAP01\UNDTOWN01.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_UNDTOWN01_DR_1
	DB	CMD_HEROSETDOOR
		DB	$13
		DB	$15

	DB	CMD_JUMP
		DB	:?_OVRSURFACE02
		DW	(?_OVRSURFACE02&$FFFF)

;********************************
?_UNDTOWN01_DR_2
	DB	CMD_HEROSETDOOR
		DB	$15
		DB	$16

	DB	CMD_JUMP
		DB	:?_OVRSURFACE02
		DW	(?_OVRSURFACE02&$FFFF)

;********************************
?_UNDTOWN01_DR_3
	DB	CMD_HEROTODOOR
		DB	$08
		DB	$06
		DB	$11
		DB	$0E

	DB	CMD_JUMP
		DB	:?_UNDTOWN02
		DW	(?_UNDTOWN02&$FFFF)

;********************************
?_UNDTOWN01_DR_4
	DB	CMD_HEROTODOOR
		DB	$16
		DB	$08
		DB	$10
		DB	$13

	DB	CMD_JUMP
		DB	:?_UNDTOWN03
		DW	(?_UNDTOWN03&$FFFF)

;********************************
?_UNDTOWN01_DR_5
	DB	CMD_HEROTODOOR
		DB	$22
		DB	$03
		DB	$12
		DB	$09

	DB	CMD_JUMP
		DB	:?_UNDTOWN04
		DW	(?_UNDTOWN04&$FFFF)

;********************************
?_UNDTOWN01_DR_6
	DB	CMD_HEROTODOOR
		DB	$2B
		DB	$04
		DB	$0F
		DB	$0E

	DB	CMD_JUMP
		DB	:?_UNDTOWN05
		DW	(?_UNDTOWN05&$FFFF)

;********************************
?_UNDTOWN01_DR_7
	DB	CMD_HEROTODOOR
		DB	$20
		DB	$0B
		DB	$21
		DB	$13

	DB	CMD_JUMP
		DB	:?_UNDTOWN06
		DW	(?_UNDTOWN06&$FFFF)

;********************************
?_UNDTOWN01_DR_8
	DB	CMD_HEROTODOOR
		DB	$0A
		DB	$03
		DB	$1B
		DB	$09

	DB	CMD_JUMP
		DB	:?_UNDTOWN07
		DW	(?_UNDTOWN07&$FFFF)

;********************************
?_UNDTOWN01_DR_9
	DB	CMD_HEROTODOOR
		DB	$0D
		DB	$06
		DB	$2C
		DB	$09

	DB	CMD_JUMP
		DB	:?_UNDTOWN08
		DW	(?_UNDTOWN08&$FFFF)

;********************************
?_UNDTOWN01_DR_10
	DB	CMD_JUMP
		DB	:?_UNDTOWN01_LOCKED
		DW	(?_UNDTOWN01_LOCKED&$FFFF)

	DB	CMD_END

;********************************
?_UNDTOWN01_DR_11
	DB	CMD_HEROSETDOOR
		DB	$12
		DB	$16

	DB	CMD_JUMP
		DB	:?_OVRSURFACE02
		DW	(?_OVRSURFACE02&$FFFF)

;********************************
?_UNDTOWN01_DR_12
	DB	CMD_END

;********************************
?_UNDTOWN01_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$000C)
		DB	$04
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_SAP
		DW	$D657

	DB	CMD_END

;********************************
?_UNDTOWN01_DR_3B
;********************************
?_UNDTOWN01_DR_4B
;********************************
?_UNDTOWN01_DR_5B
;********************************
?_UNDTOWN01_DR_6B
;********************************
?_UNDTOWN01_DR_7B
;********************************
?_UNDTOWN01_DR_8B
;********************************
?_UNDTOWN01_DR_9B
;********************************
?_UNDTOWN01_DR_10B
	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_UNDTOWN_RUINS
		DW	(?_UNDTOWN_RUINS&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_END

;********************************
?_UNDTOWN_RUINS
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN_RUINS_TXT
		DW	(?_UNDTOWN_RUINS_TXT&$FFFF)

	DB	CMD_END

;********************************
?_UNDTOWN_RUINS_TXT

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$0F),(?AL+$08),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	?SPCE,(?AL+$11),(?AL+$14),(?AL+$01),(?AL+$01),(?AL+$0B),(?AL+$04),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_PRISONER_TXT_1

	DB	CMD_TEXTICON
		DW	ICON_GUY02

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),(?AL+$16),(?AL+$0D),?APST,(?AL+$12),?HURRY
		DB	(?AL+$03),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$18),(?AL+$04),(?AL+$03),?EXCL,?WAIT
		DB	(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$07),(?AU+$07),(?AU+$07),(?AU+$07),?EXCL,?HURRY
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$07),(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$03),?QUST,?WAIT
		DB	(?AU+$07),(?AL+$04),(?AL+$18),?COMM,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$06),(?AL+$14),(?AL+$18),?SPCE,(?AL+$16),(?AL+$07),(?AL+$0E),?SPCE,(?AL+$05),(?AL+$11),(?AL+$04),(?AL+$04),(?AL+$03),?WAIT
		DB	(?AL+$0C),(?AL+$04),?SPCE,(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$0F),(?AL+$11),(?AL+$08),(?AL+$12),(?AL+$0E),(?AL+$0D),?PERD,?HURRY
		DB	(?AU+$08),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$03),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$07),(?AL+$04),(?AL+$0B),(?AL+$0F),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$0E),(?AL+$11),(?AL+$11),(?AL+$18),?COMM,?SPCE,(?AU+$08),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?HURRY
		DB	(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$06),(?AL+$11),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_GUY02

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$04),?COMM,?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$00),(?AL+$0C),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$03),(?AL+$18),?SPCE,(?AL+$08),(?AL+$0D),?WAIT
		DB	(?AL+$03),(?AL+$04),(?AL+$01),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?PERD,?HURRY
		DB	(?AU+$13),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_ITEM
		DB	INV_MASTER_RUNE
		DB	$01

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$00),?HURRY
		DB	?FORMAT,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_PRISONER_TXT_2

	DB	CMD_TEXTICON
		DW	ICON_GUY02

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$0A),(?AL+$12),?SPCE,(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),?HURRY
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$05),(?AL+$11),(?AL+$04),(?AL+$04),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$0C),(?AL+$04),?EXCL,?WAIT
		DB	(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$07),(?AU+$07),(?AU+$07),(?AU+$07),?EXCL,?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_ELDERD_TALK_TXT

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0C),(?AL+$0E),(?AL+$12),(?AL+$13),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$14),(?AL+$0F),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_GOT_ARROW

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$13),?HURRY
		DB	(?AU+$16),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AU+$00),(?AL+$11),(?AL+$11),(?AL+$0E),(?AL+$16),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_ITEM
		DB	INV_WENCES_ARROW
		DB	$01

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0080)
		DB	$20

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_ELDER_TALK_TXTX

	DB	CMD_TEXTICON
		DW	ICON_MOTASH

	DB	CMD_TEXTWRITE
		DB	(?AU+$04),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$18),(?AL+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$18),?SPCE,(?AL+$0E),(?AL+$05),(?AL+$05),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$04),(?AL+$04),(?AL+$13),(?AL+$12),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_GRUKSPEK

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$16),(?AL+$00),(?AL+$0B),(?AL+$0A),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_GRUK

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$04),(?AL+$00),(?AL+$07),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),?SPCE,(?AL+$12),(?AL+$0E),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$12),(?AL+$00),(?AL+$05),(?AL+$04),?HURRY
		DB	(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?SPCE,(?AU+$02),(?AL+$0E),(?AL+$0C),(?AL+$04),?WAIT
		DB	(?AL+$0E),(?AL+$0D),?COMM,?SPCE,(?AL+$0B),(?AL+$04),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$06),(?AL+$0E),?HURRY
		DB	(?AL+$16),(?AL+$00),(?AL+$08),(?AL+$13),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AU+$06),(?AL+$0E),(?AL+$06),(?AL+$0E),(?AL+$11),?APST,(?AL+$12),?WAIT
		DB	(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_GRUK

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$16),(?AL+$07),(?AL+$18),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?HURRY
		DB	(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$12),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?SPCE,(?AL+$04),(?AL+$11),?PERD,?PERD,?PERD,?SPCE,(?AL+$14),(?AL+$07),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$0F),(?AL+$0B),(?AL+$00),(?AL+$02),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$02),(?AL+$0B),(?AL+$0E),(?AL+$12),(?AL+$04),(?AL+$11),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$0B),(?AL+$04),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$06),(?AL+$0E),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$0D

	DB	CMD_END

;********************************
?_UNDTOWN01_TXT_1PRE

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$18),?SPCE,(?AL+$12),(?AL+$08),(?AL+$12),(?AL+$13),(?AL+$04),(?AL+$11),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0C),(?AL+$04),?HURRY
		DB	(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?EXCL,?SPCE,(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AL+$12),(?AL+$0E),?WAIT
		DB	(?AL+$07),(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$18),?EXCL,?SPCE,(?AU+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$07),(?AL+$04),(?AL+$0B),(?AL+$0F),(?AL+$04),(?AL+$03),?SPCE,(?AL+$12),(?AL+$00),(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$07),(?AL+$04),(?AL+$11),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$04),(?AL+$11),(?AL+$11),?PERD,?PERD,?PERD,?HURRY
		DB	(?AL+$00),(?AL+$02),(?AL+$13),(?AL+$14),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?PERD,?PERD,?PERD,?WAIT
		DB	(?AL+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?COMM,?SPCE,(?AU+$08),?SPCE,(?AL+$0C),(?AL+$04),(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AU+$08),?SPCE,(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?DASH,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$0A),(?AL+$12),?COMM,?SPCE,(?AL+$14),(?AL+$07),?PERD,?PERD,?PERD,?WAIT
		DB	(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?HURRY
		DB	(?AL+$0D),(?AL+$00),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$0A),(?AL+$12),?COMM,?SPCE,(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?EXCL,?HURRY
		DB	(?AU+$12),(?AL+$08),(?AL+$12),?SPCE,(?AL+$16),(?AL+$04),(?AL+$0D),(?AL+$13),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$05),(?AL+$00),(?AL+$11),(?AL+$0C),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$13),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$12),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$12),(?AL+$00),(?AL+$18),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$0A),(?AL+$12),?HURRY
		DB	(?AL+$13),(?AL+$0E),(?AL+$0E),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_DELAY
		DB	$40


	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?COMM,?SPCE,(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),?HURRY
		DB	(?AL+$13),(?AL+$11),(?AL+$18),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$01),(?AL+$04),?WAIT
		DB	(?AL+$11),(?AL+$14),(?AL+$03),(?AL+$04),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$16),(?AL+$07),(?AL+$18),?HURRY
		DB	(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$08),(?AL+$0D),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$14),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),(?AL+$0D),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$07),?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),(?AL+$16),(?AL+$00),(?AL+$18),?QUST,?WAIT
		DB	(?AU+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$12),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$0E),?COMM,?SPCE,(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$0E),(?AL+$0D),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?QUST,?SPCE,(?AU+$16),(?AL+$07),(?AL+$0E),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$13),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$14),(?AL+$11),(?AL+$04),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTMASTER
		DB	$01

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),?SPCE,(?AL+$16),(?AL+$07),(?AL+$0E),(?AL+$00),?EXCL,?WAIT
		DB	(?AU+$04),(?AL+$00),(?AL+$11),(?AL+$13),(?AL+$07),(?AL+$10),(?AL+$14),(?AL+$00),(?AL+$0A),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTMASTER
		DB	$02

	DB	CMD_END

;********************************
?_UNDTOWN01_TXT_1PRE2

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$04),(?AL+$00),(?AL+$11),(?AL+$13),(?AL+$07),(?AL+$10),(?AL+$14),(?AL+$00),(?AL+$0A),(?AL+$04),?QUST,?WAIT
		DB	(?AU+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTMASTER
		DB	$03

	DB	CMD_END

;********************************
?_UNDTOWN01_TXT_1

	DB	CMD_TEXTICON
		DW	ICON_MOTASH

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$00),?SPCE,(?AL+$15),(?AL+$08),(?AL+$02),(?AL+$08),(?AL+$0E),(?AL+$14),(?AL+$12),?HURRY
		DB	(?AL+$04),(?AL+$00),(?AL+$11),(?AL+$13),(?AL+$07),(?AL+$10),(?AL+$14),(?AL+$00),(?AL+$0A),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WOMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$11),(?AL+$00),(?AL+$13),(?AL+$04),?COMM,?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$16),(?AL+$07),(?AL+$0E),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),(?AL+$16),(?AL+$0D),?WAIT
		DB	(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$01),(?AL+$04),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$14),(?AL+$12),(?AL+$07),(?AL+$04),(?AL+$03),?EXCL,?WAIT
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$12),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?HURRY
		DB	(?AL+$16),(?AL+$04),?SPCE,(?AL+$03),(?AL+$0E),?COMM,?SPCE,(?AU+$04),(?AL+$0B),(?AL+$03),(?AL+$04),(?AL+$11),?QUST,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_TEXTICON
		DW	ICON_MOTASH

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),?SPCE,(?AL+$0D),(?AL+$04),(?AL+$04),(?AL+$03),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$03),(?AL+$0E),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?COMM,?WAIT
		DB	(?AL+$18),(?AL+$04),(?AL+$12),?PERD,?PERD,?PERD,?SPCE,(?AL+$0F),(?AL+$04),(?AL+$11),(?AL+$07),(?AL+$00),(?AL+$0F),(?AL+$12),?HURRY
		DB	(?AL+$16),(?AL+$04),?SPCE,(?AL+$12),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?WAIT
		DB	(?AL+$04),(?AL+$15),(?AL+$00),(?AL+$02),(?AL+$14),(?AL+$00),(?AL+$13),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$14),(?AL+$11),(?AL+$05),(?AL+$00),(?AL+$02),(?AL+$04),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_SETEVENTMASTER
		DB	$14

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?APST,(?AL+$13),?EXCL,?SPCE,(?AU+$08),(?AL+$13),?APST,(?AL+$12),?HURRY
		DB	(?AL+$13),(?AL+$0E),(?AL+$0E),?SPCE,(?AL+$03),(?AL+$00),(?AL+$0D),(?AL+$06),(?AL+$04),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$12),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$00),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$16),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$03

	DB	CMD_TEXTICON
		DW	ICON_WOMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$00),(?AL+$12),?HURRY
		DB	(?AL+$03),(?AL+$00),(?AL+$0D),(?AL+$06),(?AL+$04),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$12),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$18),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$04

	DB	CMD_TEXTICON
		DW	ICON_MOTASH

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$0E),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$0E),(?AL+$0D),?COMM,?SPCE,(?AL+$07),(?AL+$0E),(?AL+$0B),(?AL+$03),?HURRY
		DB	(?AL+$0E),(?AL+$0D),?PERD,?PERD,?PERD,?SPCE,(?AL+$0B),(?AL+$04),(?AL+$13),?SPCE,(?AL+$0C),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_GOGOR

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$0B),(?AL+$08),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$10),(?AL+$14),(?AL+$00),(?AL+$0A),(?AL+$04),?EXCL,?WAIT
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$01),(?AL+$08),(?AL+$06),?HURRY
		DB	(?AL+$03),(?AL+$04),(?AL+$00),(?AL+$0B),?QUST,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$05

	DB	CMD_SETEVENTMASTER
		DB	$15

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AU+$07),(?AU+$14),(?AU+$13),?SPCE,(?AU+$14),(?AU+$0F),?SPCE,(?AU+$06),(?AU+$0E),(?AU+$06),(?AU+$0E),(?AU+$11),?EXCL,?EXCL,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$0D),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$01),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$02),(?AL+$07),(?AL+$0E),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTMASTER
		DB	$02

	DB	CMD_SETEVENTTEXT
		DB	$06

	DB	CMD_WAITEVENTMASTER
		DB	$01


	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$08),(?AL+$12),?EXCL,?SPCE,(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$03),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_GRUK

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AL+$01),(?AL+$14),(?AL+$11),(?AL+$12),(?AL+$13),?SPCE,(?AL+$14),(?AL+$0F),?SPCE,(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$06),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$0D),(?AL+$04),(?AL+$00),(?AL+$11),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$05),(?AL+$00),(?AL+$11),(?AL+$0C),?PERD,?PERD,?PERD,?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$10),(?AL+$14),(?AL+$00),(?AL+$0A),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$11),(?AL+$13),(?AL+$04),(?AL+$03),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?WAIT
		DB	(?AL+$03),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$18),(?AL+$04),(?AL+$03),?SPCE,(?AL+$0C),(?AL+$18),?HURRY
		DB	(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$12),(?AL+$04),?EXCL,?SPCE,(?AU+$0E),(?AL+$16),(?AL+$16),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$07

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$00),(?AL+$08),(?AL+$13),?PERD,?PERD,?PERD,?SPCE,(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$16),(?AL+$00),(?AL+$12),?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$01),(?AL+$14),(?AL+$11),(?AL+$12),(?AL+$13),?SPCE,(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$06),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),?QUST,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$08

	DB	CMD_TEXTICON
		DW	ICON_GRUK

	DB	CMD_TEXTWRITE
		DB	(?AU+$14),(?AL+$0D),(?AL+$06),(?AL+$07),?PERD,?PERD,?PERD,?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AL+$0B),(?AL+$00),(?AL+$11),(?AL+$06),(?AL+$04),?PERD,?PERD,?PERD,?SPCE,(?AL+$01),(?AL+$0B),(?AL+$00),(?AL+$02),(?AL+$0A),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$0D),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?SPCE,(?AU+$12),(?AL+$07),(?AL+$00),(?AL+$03),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AU+$06),(?AL+$04),(?AL+$18),(?AL+$12),(?AL+$04),(?AL+$11),?QUST,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$09

	DB	CMD_TEXTICON
		DW	ICON_GOGOR

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$14),(?AL+$07),?QUST,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?COMM,?WAIT
		DB	(?AL+$05),(?AL+$0B),(?AL+$00),(?AL+$01),(?AL+$01),(?AL+$18),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?QUST,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$03),?SPCE,(?AL+$01),(?AL+$04),(?AL+$13),(?AL+$13),(?AL+$04),(?AL+$11),?WAIT
		DB	(?AL+$13),(?AL+$00),(?AL+$0B),(?AL+$0A),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$0A

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$04),(?AL+$17),(?AL+$0F),(?AL+$0B),(?AL+$00),(?AL+$08),(?AL+$0D),?PERD,?SPCE,(?AU+$08),(?AL+$05),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$06),(?AL+$04),(?AL+$18),(?AL+$12),(?AL+$04),(?AL+$11),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$02),(?AL+$0B),(?AL+$0E),(?AL+$12),(?AL+$04),(?AL+$03),?COMM,?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$10),(?AL+$14),(?AL+$00),(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$12),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$0F),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?QUST,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$0B

	DB	CMD_TEXTICON
		DW	ICON_MOTASH

	DB	CMD_TEXTWRITE
		DB	(?AU+$14),(?AL+$0B),(?AL+$0A),?COMM,?SPCE,(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$02),(?AL+$00),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AU+$06),(?AL+$11),(?AL+$14),(?AL+$0A),?PERD,?SPCE,(?AU+$16),(?AL+$04),?APST,(?AL+$0B),(?AL+$0B),?WAIT
		DB	(?AL+$06),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$02),(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AU+$12),(?AL+$07),(?AL+$00),(?AL+$03),(?AL+$0E),(?AL+$16),?WAIT
		DB	(?AU+$06),(?AL+$04),(?AL+$18),(?AL+$12),(?AL+$04),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_GRUK

	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$04),?SPCE,(?AL+$02),(?AL+$00),(?AL+$11),(?AL+$04),(?AL+$05),(?AL+$14),(?AL+$0B),?PERD,?PERD,?PERD,?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$10),(?AL+$14),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?WAIT
		DB	(?AL+$0C),(?AL+$14),(?AL+$02),(?AL+$07),?SPCE,(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$0D),(?AL+$06),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WOMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$04),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$06),(?AL+$0E),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTMASTER
		DB	$04

	DB	CMD_DELAY
		DB	$01

	DB	CMD_SETEVENTMASTER
		DB	$04

	DB	CMD_END

;********************************
?_UNDTOWN01_OH_NO_TXT

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$07),?SPCE,(?AL+$0D),(?AL+$0E),?EXCL,?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTMASTER
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_BU_TXT_1A

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$0A),(?AL+$00),(?AL+$18),?COMM,?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?HURRY
		DB	(?AL+$06),(?AL+$0E),(?AL+$0E),(?AL+$03),?SPCE,(?AL+$04),(?AL+$0D),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),?PERD,?WAIT
		DB	(?AU+$13),(?AL+$04),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$12),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$11),(?AL+$04),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$02),(?AL+$0E),(?AL+$11),(?AL+$04),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$16),(?AL+$00),(?AL+$08),(?AL+$13),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$0C),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTMASTER
		DB	$09

	DB	CMD_END

;********************************
?_UNDTOWN01_BU_TXT_1

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$00),?SPCE,(?AL+$07),(?AL+$00),?SPCE,(?AL+$07),(?AL+$00),?SPCE,(?AL+$07),(?AL+$00),?EXCL,?HURRY
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?EXCL,?SPCE,(?AU+$08),(?AL+$13),?WAIT
		DB	(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),(?AL+$12),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$0D),(?AL+$06),(?AL+$04),(?AL+$11),?SPCE,(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$18),?WAIT
		DB	(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?SPCE,(?AU+$08),?SPCE,(?AL+$03),(?AL+$0E),?SPCE,(?AL+$08),(?AL+$13),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_MOTASH

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?PERD,?PERD,?PERD,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$12),(?AL+$00),(?AL+$18),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?COMM,?WAIT
		DB	(?AL+$0E),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$0C),(?AL+$00),(?AL+$0D),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_MOTASH

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$16),(?AL+$07),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$00),(?AL+$11),(?AL+$04),?PERD,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?WAIT
		DB	(?AL+$0D),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$12),(?AL+$14),(?AL+$02),(?AL+$02),(?AL+$04),(?AL+$04),(?AL+$03),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$0C),(?AL+$0F),(?AL+$07),?PERD,?SPCE,(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$05),(?AL+$00),(?AL+$02),(?AL+$13),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$16),(?AL+$07),(?AL+$0E),?SPCE,(?AU+$08),?WAIT
		DB	(?AL+$00),(?AL+$0C),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$12),?SPCE,(?AL+$0D),(?AL+$0E),?HURRY
		DB	(?AL+$03),(?AL+$08),(?AL+$05),(?AL+$05),(?AL+$04),(?AL+$11),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_MOTASH

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,(?AU+$08),?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),?PERD,?SPCE,(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$0D),?HURRY
		DB	(?AL+$00),(?AL+$0C),?SPCE,(?AU+$08),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$0C),(?AL+$04),(?AL+$04),(?AL+$13),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$12),(?AL+$00),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$05),(?AL+$00),(?AL+$13),(?AL+$04),?HURRY
		DB	(?AL+$00),(?AL+$12),?SPCE,(?AU+$06),(?AL+$0E),(?AL+$06),(?AL+$0E),(?AL+$11),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
?_UNDTOWN01_BU_TXT_1B

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$07),(?AL+$04),(?AL+$07),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$07),(?AL+$04),(?AL+$07),(?AL+$04),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$07),(?AU+$00),(?AU+$07),(?AU+$00),(?AU+$07),(?AU+$00),(?AU+$07),(?AU+$00),(?AU+$07),(?AU+$00),(?AU+$07),(?AU+$00),?EXCL,?EXCL,?WAIT
		DB	(?AU+$00),(?AL+$07),?COMM,?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$08),(?AL+$13),?COMM,?WAIT
		DB	(?AL+$12),(?AL+$14),(?AL+$02),(?AL+$07),?SPCE,(?AL+$00),?SPCE,(?AL+$05),(?AL+$00),(?AL+$13),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$0D),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$0E),(?AL+$03),?SPCE,(?AL+$04),(?AL+$0D),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$03

	DB	CMD_TEXTWRITE
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$00),?SPCE,(?AU+$16),(?AU+$0E),(?AU+$11),(?AU+$0C),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$04

	DB	CMD_END

;********************************
?_UNDTOWN01_BU_TXT_1C

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AU+$00),?SPCE,(?AU+$07),(?AU+$00),?SPCE,(?AU+$07),(?AU+$00),(?AU+$07),(?AU+$00),(?AU+$07),(?AU+$00),?EXCL,?EXCL,?WAIT
		DB	(?AU+$12),(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$11),(?AL+$0C),?COMM,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$0E),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$07),(?AL+$00),(?AL+$06),?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$05

	DB	CMD_END

;********************************
?_UNDTOWN01_BU_TXT_2

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?EXCL,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AU+$08),?SPCE,(?AL+$12),(?AL+$00),(?AL+$16),?SPCE,(?AL+$08),(?AL+$0D),?WAIT
		DB	(?AU+$0D),(?AL+$00),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$06

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$0F),(?AL+$05),(?AL+$05),(?AL+$13),?PERD,?SPCE,(?AU+$00),(?AL+$0D),(?AL+$0D),(?AL+$0E),(?AL+$18),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$0B),(?AL+$08),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$16),(?AL+$07),(?AL+$04),(?AL+$0B),(?AL+$0F),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$07

	DB	CMD_END

;********************************
?_UNDTOWN01_BU_TXT_2B

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$00),?SPCE,(?AL+$07),(?AL+$00),?SPCE,(?AL+$07),(?AL+$00),?SPCE,(?AL+$07),(?AL+$00),?EXCL,?HURRY
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?WAIT
		DB	(?AL+$16),(?AL+$07),(?AL+$0E),?SPCE,(?AL+$0A),(?AL+$04),(?AL+$04),(?AL+$0F),(?AL+$12),?HURRY
		DB	(?AL+$03),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$18),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$0C),(?AL+$18),?WAIT
		DB	(?AL+$06),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$12),?QUST,?SPCE,(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$09),(?AL+$0E),(?AL+$0A),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$0E),?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?PERD,?PERD,?PERD,?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$04),(?AL+$12),?COMM,?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$0D),(?AL+$0E),?SPCE,(?AL+$0C),(?AL+$0E),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$08),(?AL+$0D),(?AL+$13),(?AL+$04),(?AL+$11),(?AL+$05),(?AL+$04),(?AL+$11),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?HURRY
		DB	(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?PERD,?SPCE,(?AU+$03),(?AL+$08),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WENCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$0E),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$08),(?AL+$13),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$08

	DB	CMD_END

;********************************
?_UNDTOWN01_BU_TXT_3

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$11),(?AL+$11),?PERD,?PERD,?PERD,?SPCE,(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$09

	DB	CMD_SETEVENTMASTER
		DB	$0B

	DB	CMD_TEXTICON
		DW	ICON_WENCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AL+$16),(?AL+$07),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AU+$08),?SPCE,(?AL+$0E),(?AL+$16),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$06),(?AL+$14),(?AL+$18),?SPCE,(?AL+$0C),(?AL+$18),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$05),(?AL+$04),?EXCL,?WAIT
		DB	(?AU+$12),(?AL+$13),(?AL+$00),(?AL+$18),?SPCE,(?AL+$00),(?AL+$16),(?AL+$00),(?AL+$18),?SPCE,(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?HURRY
		DB	(?AL+$07),(?AL+$08),(?AL+$0C),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$0B),(?AL+$00),(?AL+$12),(?AL+$13),?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?COMM,?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$12),(?AL+$0E),?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$0D),(?AL+$0E),(?AL+$18),(?AL+$08),(?AL+$0D),(?AL+$06),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$0A

	DB	CMD_SETEVENTMASTER
		DB	$0C

	DB	CMD_END

;********************************
?_UNDTOWN01_BU_TXT_4

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$0B),(?AL+$14),(?AL+$02),(?AL+$0A),(?AL+$18),?COMM,?HURRY
		DB	(?AL+$0A),(?AL+$08),(?AL+$03),?PERD,?SPCE,(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AL+$13),(?AL+$08),(?AL+$11),(?AL+$04),(?AL+$03),?WAIT
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$0C),(?AL+$18),?HURRY
		DB	(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$0B

	DB	CMD_SETEVENTMASTER
		DB	$0D

	DB	CMD_END

;********************************
?_UNDTOWN01_BU_TXT_5

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$00),(?AL+$12),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?COLN,?SPCE,(?AL+$0C),(?AL+$18),?SPCE,(?AU+$0D),(?AU+$00),(?AU+$0C),(?AU+$04),?WAIT
		DB	(?AL+$08),(?AL+$12),?SPCE,(?AU+$0C),(?AL+$0E),(?AL+$11),(?AL+$00),(?AL+$06),?PERD,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?HURRY
		DB	(?AL+$0B),(?AL+$08),(?AL+$05),(?AL+$04),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0E),(?AL+$0D),?WAIT
		DB	(?AL+$01),(?AL+$04),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$05),(?AL+$04),(?AL+$08),(?AL+$13),?PERD,?HURRY
		DB	(?AU+$0C),(?AL+$00),(?AL+$11),(?AL+$0A),?SPCE,(?AL+$0C),(?AL+$18),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$03),(?AL+$12),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$0C

	DB	CMD_SETEVENTMASTER
		DB	$0E

	DB	CMD_END

;********************************
?_UNDTOWN01_BU_TXT_6

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$0A),(?AL+$12),?SPCE,(?AU+$16),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WENCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$0E),?SPCE,(?AL+$0D),(?AL+$04),(?AL+$04),(?AL+$03),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?PERD,?SPCE,(?AU+$08),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$16),(?AL+$00),(?AL+$18),(?AL+$12),?WAIT
		DB	(?AL+$11),(?AL+$04),(?AL+$0F),(?AL+$00),(?AL+$18),?SPCE,(?AL+$0C),(?AL+$18),?SPCE,(?AL+$03),(?AL+$04),(?AL+$01),(?AL+$13),(?AL+$12),?HURRY
		DB	(?0+$01),(?0+$00),(?0+$00),?SPCE,(?AL+$0F),(?AL+$04),(?AL+$11),(?AL+$02),(?AL+$04),(?AL+$0D),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$0D

	DB	CMD_TEXTICON
		DW	ICON_WENCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?QUST,?SPCE,(?AU+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$11),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?APST,(?AL+$0C),?PERD,?PERD,?PERD,?SPCE,(?AL+$0E),(?AL+$0A),(?AL+$00),(?AL+$18),?PERD,?PERD,?PERD,?WAIT
		DB	(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$00),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$08),(?AL+$11),(?AL+$04),(?AL+$03),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$0E

	DB	CMD_TEXTICON
		DW	ICON_WENCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$18),?COMM,?SPCE,(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?QUST,?HURRY
		DB	?EOF

	DB	CMD_DELAY
		DB	$10

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?EXCL,?HURRY
		DB	?EOF

	DB	CMD_DELAY
		DB	$10

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$0F

	DB	CMD_END

;********************************
?_UNDTOWN01_KORGZET_TXT1

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$03),(?AL+$08),(?AL+$03),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$03),(?AL+$0E),?HURRY
		DB	(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?SPCE,(?AU+$06),(?AL+$11),(?AL+$14),(?AL+$0A),?QUST,?WAIT
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$03),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?SPCE,(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$14),(?AL+$12),?QUST,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_KORG

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),?SPCE,(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?PERD,?PERD,?PERD,?HURRY
		DB	(?AL+$14),(?AL+$07),?PERD,?PERD,?PERD,?SPCE,(?AU+$08),?WAIT
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$06),(?AL+$0E),(?AL+$13),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_KORGZET_TXT2

	DB	CMD_TEXTICON
		DW	ICON_ZET

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$07),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$02),(?AL+$11),(?AL+$18),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$14),(?AL+$03),?PERD,?PERD,?PERD,?SPCE,(?AL+$16),(?AL+$04),?WAIT
		DB	(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?SPCE,(?AL+$00),?SPCE,(?AU+$09),(?AL+$08),(?AL+$0D),(?AL+$0A),?HURRY
		DB	(?AU+$11),(?AL+$0E),(?AL+$0E),(?AL+$13),?COMM,?WAIT
		DB	(?AU+$05),(?AL+$0B),(?AL+$00),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),(?AL+$12),(?AL+$0E),(?AL+$0B),?COMM,?SPCE,(?AL+$00),?DASH,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
?_UNDTOWN01_KORGZET_TXT3

	DB	CMD_TEXTICON
		DW	ICON_KORG

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$07),(?AL+$00),(?AL+$03),(?AL+$03),(?AL+$14),(?AL+$0F),?COMM,?SPCE,(?AU+$19),(?AL+$04),(?AL+$13),?EXCL,?WAIT
		DB	(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$02),(?AL+$07),(?AL+$00),(?AL+$11),(?AL+$06),(?AL+$04),?COMM,?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$03),(?AL+$04),(?AL+$0C),(?AL+$00),(?AL+$0D),(?AL+$03),(?AL+$12),?EXCL,?SPCE,(?AU+$16),(?AL+$04),?HURRY
		DB	(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?SPCE,(?AL+$00),?SPCE,(?AU+$09),(?AL+$08),(?AL+$0A),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$13),?COMM,?WAIT
		DB	(?AU+$05),(?AL+$0B),(?AL+$00),(?AL+$0C),(?AL+$04),(?AL+$12),(?AL+$0E),(?AL+$0B),?COMM,?SPCE,(?AL+$00),?PERD,?PERD,?PERD,?HURRY
		DB	(?AL+$00),?PERD,?PERD,?PERD,?WAIT
		DB	(?AL+$14),(?AL+$07),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_DELAY
		DB	$20


	DB	CMD_TEXTICON
		DW	ICON_ZET

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,(?AU+$06),(?AL+$04),(?AL+$11),(?AL+$01),(?AL+$00),(?AL+$12),(?AL+$08),(?AL+$0B),?HURRY
		DB	(?AU+$05),(?AL+$11),(?AL+$0E),(?AL+$0D),(?AL+$03),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_KORG

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,(?AU+$06),(?AL+$04),(?AL+$11),(?AL+$12),(?AL+$08),?DASH,(?AL+$0B),(?AL+$0E),(?AL+$0D),(?AL+$03),?COMM,?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$00),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$03

	DB	CMD_END

;********************************
?_UNDTOWN01_KORGZET_TXT4

	DB	CMD_TEXTICON
		DW	ICON_ZET

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,(?AU+$05),(?AL+$0B),(?AL+$00),(?AL+$0A),?SPCE,(?AU+$11),(?AL+$0E),(?AL+$0E),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$28

	DB	CMD_TEXTICON
		DW	ICON_KORG

	DB	CMD_TEXTWRITE
		DB	(?AU+$05),(?AU+$00),(?AU+$0A),(?AU+$11),(?AU+$0E),(?AU+$0E),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ZET

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$11),(?AL+$08),(?AL+$03),(?AL+$08),(?AL+$02),(?AL+$14),(?AL+$0B),(?AL+$0E),(?AL+$14),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$04

	DB	CMD_END

;********************************
?_UNDTOWN01_KORGZET_TXT5

	DB	CMD_TEXTICON
		DW	ICON_KORG

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$0D),(?AL+$18),(?AL+$16),(?AL+$00),(?AL+$18),?COMM,?SPCE,(?AL+$08),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$06),(?AL+$08),(?AL+$15),(?AL+$04),?SPCE,(?AL+$14),(?AL+$12),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$0E),(?AL+$12),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),(?AL+$12),?EXCL,?HURRY
		DB	(?AU+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$16),(?AL+$08),(?AL+$12),(?AL+$04),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$0D),(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$07),(?AL+$04),(?AL+$00),(?AL+$11),?SPCE,(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),?WAIT
		DB	(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),?EXCL,?SPCE,(?AU+$07),(?AU+$00),?SPCE,(?AU+$07),(?AU+$00),?SPCE,(?AU+$07),(?AU+$00),?HURRY
		DB	(?AU+$07),(?AU+$00),?SPCE,(?AU+$07),(?AU+$00),?SPCE,(?AU+$07),(?AU+$00),?SPCE,(?AU+$07),(?AU+$00),?SPCE,(?AU+$07),(?AU+$00),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$05

	DB	CMD_END

;********************************
?_UNDTOWN01_KORGZET_TXT6

	DB	CMD_TEXTICON
		DW	ICON_ZET

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$08),(?AL+$0D),(?AL+$02),(?AL+$08),(?AL+$03),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?COMM,?HURRY
		DB	(?AL+$12),(?AL+$08),(?AL+$0D),(?AL+$02),(?AL+$04),?SPCE,(?AL+$07),(?AL+$04),?SPCE,(?AL+$05),(?AL+$00),(?AL+$08),(?AL+$0B),(?AL+$04),(?AL+$03),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$0C),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$08),(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$08),(?AL+$13),?COMM,?HURRY
		DB	(?AL+$16),(?AL+$04),?APST,(?AL+$11),(?AL+$04),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$00),(?AL+$01),(?AL+$00),(?AL+$0D),(?AL+$03),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$03),?SPCE,(?AL+$13),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$14),(?AL+$0D),(?AL+$0D),(?AL+$04),(?AL+$0B),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AU+$0D),(?AL+$0E),(?AL+$11),(?AL+$13),(?AL+$07),?PERD,?SPCE,(?AU+$01),(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$08),(?AL+$13),(?AL+$04),(?AL+$0C),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$08),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$12),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),?PERD,?SPCE,(?AU+$07),(?AL+$04),?SPCE,(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$07),(?AL+$04),?COMM,?SPCE,(?AL+$16),(?AL+$04),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$01),(?AL+$04),?DASH,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_KORG

	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AU+$04),(?AU+$13),?APST,(?AU+$12),?SPCE,(?AU+$06),(?AU+$0E),?COMM,?SPCE,(?AU+$19),(?AU+$04),(?AU+$13),?EXCL,?WAIT
		DB	(?AU+$10),(?AU+$14),(?AU+$08),(?AU+$13),?SPCE,(?AU+$0C),(?AU+$04),(?AU+$12),(?AU+$12),(?AU+$08),(?AU+$0D),(?AU+$06),?HURRY
		DB	(?AU+$00),(?AU+$11),(?AU+$0E),(?AU+$14),(?AU+$0D),(?AU+$03),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ZET

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,(?AL+$06),(?AL+$11),(?AL+$14),(?AL+$0C),(?AL+$01),(?AL+$0B),(?AL+$04),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_FADEOUTSONG
		DB	$50

	DB	CMD_SETEVENTTEXT
		DB	$06

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDTOWN01_KORGZET_TXT7
	DB	CMD_SONGSTART
		DB	SONGID_undtown


	DB	CMD_TEXTICON
		DW	ICON_MOTASH

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?APST,(?AL+$15),(?AL+$04),?SPCE,(?AL+$0D),(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),?SPCE,(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$0D),?HURRY
		DB	(?AL+$07),(?AL+$04),(?AL+$00),(?AL+$11),(?AL+$03),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$13),(?AL+$07),(?AL+$0E),(?AL+$12),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),(?AL+$12),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$04),?SPCE,(?AL+$0D),(?AL+$04),(?AL+$08),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_DELAY
		DB	$40


	DB	CMD_TEXTICON
		DW	ICON_ULK

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$16),(?AL+$04),?HURRY
		DB	(?AL+$06),(?AL+$0E),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$03),(?AL+$0E),?COMM,?WAIT
		DB	(?AU+$0C),(?AL+$0E),(?AL+$13),(?AL+$00),(?AL+$12),(?AL+$07),?QUST,?SPCE,(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?HURRY
		DB	(?AL+$06),(?AL+$0E),(?AL+$0D),(?AL+$0D),(?AL+$00),?SPCE,(?AL+$07),(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AU+$06),(?AL+$11),(?AL+$14),(?AL+$0A),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_MOTASH

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?PERD,?PERD,?PERD,?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$07

	DB	CMD_END

;********************************
?_UNDTOWN01_KORGZET_TXT8

	DB	CMD_TEXTICON
		DW	ICON_GOGOR

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$08),(?AL+$12),(?AL+$04),?WAIT
		DB	(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_MOTASH

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$11),(?AL+$14),(?AL+$0A),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AL+$0A),(?AL+$08),(?AL+$03),(?AL+$0D),(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$04),(?AL+$03),?SPCE,(?AL+$01),(?AL+$18),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?WAIT
		DB	(?AL+$16),(?AL+$04),(?AL+$08),(?AL+$11),(?AL+$03),?DASH,(?AL+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?EXCL,?SPCE,(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$18),?WAIT
		DB	(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$08),(?AL+$0D),?HURRY
		DB	(?AL+$13),(?AL+$0E),(?AL+$16),(?AL+$0D),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$03),(?AL+$04),(?AL+$0C),(?AL+$00),(?AL+$0D),(?AL+$03),(?AL+$12),?SPCE,(?AL+$16),(?AL+$07),(?AL+$08),(?AL+$02),(?AL+$07),?HURRY
		DB	(?AL+$16),(?AL+$04),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$0C),(?AL+$04),(?AL+$04),(?AL+$13),?PERD,?WAIT
		DB	(?AU+$14),(?AL+$0B),(?AL+$0A),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$18),?HURRY
		DB	(?AL+$14),(?AL+$0F),(?AL+$12),(?AL+$04),(?AL+$13),?SPCE,(?AL+$00),(?AL+$01),(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$08),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$50

	DB	CMD_DELAY
		DB	$40


	DB	CMD_TEXTICON
		DW	ICON_GOGOR

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$03),(?AL+$08),(?AL+$03),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$18),?HURRY
		DB	(?AL+$06),(?AL+$0E),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_MOTASH

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$18),?SPCE,(?AL+$12),(?AL+$00),(?AL+$08),(?AL+$03),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$18),?HURRY
		DB	(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$00),(?AL+$01),(?AL+$00),(?AL+$0D),(?AL+$03),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$03),?HURRY
		DB	(?AL+$13),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?SPCE,(?AL+$13),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$13),(?AL+$14),(?AL+$0D),(?AL+$0D),(?AL+$04),(?AL+$0B),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$0D),(?AL+$0E),(?AL+$11),(?AL+$13),(?AL+$07),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_GOGOR

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$02),(?AL+$00),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?PERD,?SPCE,(?AU+$16),(?AL+$00),(?AL+$08),(?AL+$13),?WAIT
		DB	(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$08

	DB	CMD_END

;********************************
?_UNDTOWN01_ELDER_TXT_KZ

	DB	CMD_TEXTICON
		DW	ICON_MOTASH

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$0E),?SPCE,(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$0E),(?AL+$12),(?AL+$04),?HURRY
		DB	(?AL+$06),(?AL+$14),(?AL+$18),(?AL+$12),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$18),(?AL+$16),(?AL+$00),(?AL+$18),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_OLDMAN03_TXT01

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$07),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$0B),(?AL+$18),?HURRY
		DB	(?AL+$11),(?AL+$04),(?AL+$02),(?AL+$0E),(?AL+$0C),(?AL+$0C),(?AL+$04),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?WAIT
		DB	(?AL+$13),(?AL+$11),(?AL+$18),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AU+$06),(?AL+$11),(?AL+$14),(?AL+$0A),?APST,(?AL+$12),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),?WAIT
		DB	(?AL+$12),(?AL+$0E),(?AL+$14),(?AL+$05),(?AL+$05),(?AL+$0B),(?AL+$04),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_OLDLADY03_TXT01

	DB	CMD_TEXTICON
		DW	ICON_OLDWOMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$02),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$14),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),(?AL+$0D),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$07),?COMM,?WAIT
		DB	(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$0D),(?AL+$06),(?AL+$04),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_MAN03_TXT01

	DB	CMD_TEXTICON
		DW	ICON_YOUNGMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0C),(?AL+$04),(?AL+$13),?HURRY
		DB	(?AU+$06),(?AL+$11),(?AL+$14),(?AL+$0A),?QUST,?WAIT
		DB	(?AU+$06),(?AL+$11),(?AL+$14),(?AL+$0A),?APST,(?AL+$12),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),?HURRY
		DB	(?AL+$05),(?AL+$00),(?AL+$11),(?AL+$0C),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$05),(?AL+$00),(?AL+$0C),(?AL+$0E),(?AL+$14),(?AL+$12),?WAIT
		DB	(?AL+$00),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_GIRL03_TXT01

	DB	CMD_TEXTICON
		DW	ICON_GIRL

	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$14),(?AL+$12),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),(?AL+$12),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$18),(?AL+$14),(?AL+$0C),(?AL+$0C),(?AL+$18),?EXCL,?SPCE,(?AU+$0C),(?AL+$18),?WAIT
		DB	(?AU+$0C),(?AL+$0E),(?AL+$0C),(?AL+$0C),(?AL+$18),?SPCE,(?AL+$12),(?AL+$00),(?AL+$18),(?AL+$12),?SPCE,(?AL+$08),(?AL+$05),?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$04),(?AL+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),(?AL+$0E),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$0D),(?AL+$18),?WAIT
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$0C),?SPCE,(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$0F),(?AL+$0E),(?AL+$0F),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AU+$08),?WAIT
		DB	(?AL+$12),(?AL+$13),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$18),?APST,(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$14),(?AL+$0C),(?AL+$0C),(?AL+$18),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0094)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:_ADD
		DW	(_ADD&$FFFF)

	DB	CMD_END

;********************************
_ADD
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0094)
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_WOMAN_TXT01

	DB	CMD_TEXTICON
		DW	ICON_WOMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$11),(?AL+$14),(?AL+$0A),?SPCE,(?AL+$0E),(?AL+$16),(?AL+$0D),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$05),(?AL+$00),(?AL+$11),(?AL+$0C),?WAIT
		DB	(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$02),(?AL+$00),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$0D),(?AL+$12),?HURRY
		DB	(?AU+$04),(?AL+$00),(?AL+$12),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_OLDMAN03_TXT01B

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$05),(?AL+$0B),(?AL+$00),(?AL+$0C),(?AL+$04),(?AL+$12),(?AL+$0E),(?AL+$0B),?QUST,?WAIT
		DB	(?AU+$08),(?AL+$12),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AL+$01),(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$00),(?AL+$06),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_OLDLADY03_TXT01B

	DB	CMD_TEXTICON
		DW	ICON_OLDWOMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),?HURRY
		DB	(?AU+$08),?APST,(?AL+$15),(?AL+$04),?SPCE,(?AL+$07),(?AL+$04),(?AL+$00),(?AL+$11),(?AL+$03),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$00),?WAIT
		DB	(?AU+$06),(?AL+$04),(?AL+$11),(?AL+$12),(?AL+$08),(?AL+$0B),(?AL+$0E),(?AL+$0D),(?AL+$03),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_MAN03_TXT01B

	DB	CMD_TEXTICON
		DW	ICON_YOUNGMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$07),(?AL+$04),(?AL+$02),(?AL+$0A),?HURRY
		DB	(?AL+$08),(?AL+$12),?SPCE,(?AL+$00),?SPCE,(?AU+$05),(?AL+$00),(?AL+$0A),(?AL+$11),(?AL+$0E),(?AL+$0E),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_GIRL03_TXT01B

	DB	CMD_TEXTICON
		DW	ICON_GIRL

	DB	CMD_TEXTWRITE
		DB	(?AU+$09),(?AL+$08),(?AL+$0A),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$13),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$09),(?AL+$08),(?AL+$0A),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$13),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$0E),(?AL+$0D),(?AL+$04),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?WAIT
		DB	(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$12),?HURRY
		DB	(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$04),(?AL+$08),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_WOMAN_TXT01B

	DB	CMD_TEXTICON
		DW	ICON_WOMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$00),(?AL+$01),(?AL+$00),(?AL+$0D),(?AL+$03),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$03),?HURRY
		DB	(?AL+$13),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$13),(?AL+$14),(?AL+$0D),(?AL+$0D),(?AL+$04),(?AL+$0B),(?AL+$12),?WAIT
		DB	(?AU+$0D),(?AL+$0E),(?AL+$11),(?AL+$13),(?AL+$07),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN_MORAGBAT
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$00
		DB	$00
		DB	$00

	DB	CMD_SCREENWIPE
		DW	(?DO_SCREENFX_SWIRL&$FFFF)
		DB	SONGID_boss

	DB	CMD_BTLNEW
		DB	UNDERNEATH_ARENA1
		DB	MORAG
		DB	$63
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLNEXTTURN

	DB	CMD_SETWRAMBYTE
		DW	(BTL_ENEMY_ENGL+$0000)
		DB	WRAM_BATTLE
		DB	$FF

	DB	CMD_SETWRAMBYTE
		DW	(BTL_ENEMY_ENGH+$0000)
		DB	WRAM_BATTLE
		DB	$9B


	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$0E),?COMM,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$14),(?AL+$0F),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$12),(?AL+$04),?SPCE,(?AL+$0F),(?AL+$04),(?AL+$0E),(?AL+$0F),(?AL+$0B),(?AL+$04),?QUST,?HURRY
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),?WAIT
		DB	(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$13),(?AL+$07),?SPCE,(?AL+$0C),(?AL+$18),?HURRY
		DB	(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	KOIL
		DB	$0A
		DB	$19
		DB	$00

;********************************
_LOOP
	DB	CMD_BTLNEXTTURN

	DB	CMD_IF
		DB	EXPR_WBANK
		DB	WRAM_BATTLE
		DB	EXPR_NOTEQU
		DB	EXPR_XRAMBYTE
		DW	(BTL_CREATURE_SLOTS+$0006)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:_LOOP
		DW	(_LOOP&$FFFF)


	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_THATACTORSETSCRIPT
		DB	(((ACTOR0C-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_MORAG_BATTLE_TAUNT_ANIM
		DW	(?_MORAG_BATTLE_TAUNT_ANIM&$FFFF)

	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$0E),(?AL+$11),(?AL+$04),?SPCE,(?AL+$08),(?AL+$0C),(?AL+$0F),(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$12),(?AL+$08),(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$0D),?SPCE,(?AU+$08),?SPCE,(?AL+$13),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),(?AL+$13),?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$12),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?HURRY
		DB	(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$02),(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THATACTORSETSCRIPT
		DB	(((ACTOR0C-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_MORAG_BATTLE_STAND_ANIM
		DW	(?_MORAG_BATTLE_STAND_ANIM&$FFFF)

;********************************
_MORAG_BIGGIE_LOOP
	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	BORGOR
		DB	$63
		DB	$C8
		DB	$00

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	BORGOR
		DB	$63
		DB	$C8
		DB	$00

	DB	CMD_BTLNEXTTURN

	DB	CMD_JUMPLOCAL
		DW	(_MORAG_BIGGIE_LOOP&$FFFF)

;********************************
?_UNDTOWN01
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$01

	DB	CMD_SWITCH
		DB	EXPR_GAMECOUNT
		DB	:?_UNDTOWN01_GENERIC_PRE
		DW	$0007
		DW	(?_UNDTOWN01_GENERIC_PRE&$FFFF)
		DB	:?_UNDTOWN01_GENERIC_DURING
		DW	$0008
		DW	(?_UNDTOWN01_GENERIC_DURING&$FFFF)
		DB	:?_UNDTOWN01_GENERIC_DURING
		DW	$0009
		DW	(?_UNDTOWN01_GENERIC_DURING&$FFFF)
		DB	:?_UNDTOWN01_BEAT_UNDERNEATH
		DW	$000A
		DW	(?_UNDTOWN01_BEAT_UNDERNEATH&$FFFF)
		DB	$FF

;********************************
?_UNDTOWN01_GENERIC_POST
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTOWN01B&$FFFF)
		DB	:MAP_UNDTOWN01B

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTOWN01B&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D131
		DB	$00
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$16
		DB	$17
		DW	$D57A
		DB	$00
		DB	:?_UNDTOWN01_ELDERX
		DW	(?_UNDTOWN01_ELDERX&$FFFF)
		DB	:?_UNDTOWN01_ELDER_TALKX
		DW	(?_UNDTOWN01_ELDER_TALKX&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TRIGGER_AI&$FFFF)
		DB	$17
		DB	$16
		DW	$D53F
		DB	$30
		DB	:?_ARROW_STOPPED_RIGHT_ANIM
		DW	(?_ARROW_STOPPED_RIGHT_ANIM&$FFFF)
		DB	:?_UNDTOWN01_ARROW_TALKX
		DW	(?_UNDTOWN01_ARROW_TALKX&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$1F
		DB	$17
		DW	$D583
		DB	$32
		DB	:?_UNDTOWN01_HUNTER
		DW	(?_UNDTOWN01_HUNTER&$FFFF)
		DB	:?_UNDTOWN01_HUNTER_TALKX
		DW	(?_UNDTOWN01_HUNTER_TALKX&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$22
		DB	$16
		DW	$D54A
		DB	$62
		DB	:?_UNDTOWN01_PRISONER4
		DW	(?_UNDTOWN01_PRISONER4&$FFFF)
		DB	:?_UNDTOWN01_PRISONER_TXT
		DW	(?_UNDTOWN01_PRISONER_TXT&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_ELDERWORM
		DW	(BIT_ELDERWORM&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$02
		DB	:BIT_ARROW
		DW	(BIT_ARROW&$FFFF)
		DW	$8300
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_MAN04
		DW	(BIT_MAN04&$FFFF)
		DW	$8320
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$62
		DB	:BIT_MAN03
		DW	(BIT_MAN03&$FFFF)
		DW	$8620
		DB	$00

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_destruction

	DB	CMD_IF
		DB	EXPR_NOT
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0081)&$FFFF
		DB	$08
		DB	:_UNDTOWN02_POST_END
		DW	(_UNDTOWN02_POST_END&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

;********************************
_UNDTOWN02_POST_END
	DB	CMD_IF
		DB	EXPR_OR
		DB	EXPR_GRTR
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$0B
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$008F)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:_SKIP_HUNTER
		DW	(_SKIP_HUNTER&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

;********************************
_SKIP_HUNTER
	DB	CMD_SCENEREADY

	DB	CMD_IF
		DB	EXPR_NOT
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0080)&$FFFF
		DB	$20
		DB	:?_ARROW_STARTER
		DW	(?_ARROW_STARTER&$FFFF)

	DB	CMD_END

;********************************
?_UNDTOWN01_PRISONER4
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN03_STAND_DL_ANIM
		DW	(?_MAN03_STAND_DL_ANIM&$FFFF)
		DB	$10
		DB	:?_MAN03_STAND_DOWN_ANIM
		DW	(?_MAN03_STAND_DOWN_ANIM&$FFFF)
		DB	$30
		DB	:?_MAN03_STAND_UR_ANIM
		DW	(?_MAN03_STAND_UR_ANIM&$FFFF)
		DB	$20
		DB	:?_MAN03_STAND_UP_ANIM
		DW	(?_MAN03_STAND_UP_ANIM&$FFFF)
		DB	$04
		DB	:?_MAN03_STAND_UL_ANIM
		DW	(?_MAN03_STAND_UL_ANIM&$FFFF)
		DB	$04
		DB	:?_MAN03_STAND_LEFT_ANIM
		DW	(?_MAN03_STAND_LEFT_ANIM&$FFFF)
		DB	$04
		DB	:?_MAN03_STAND_DL_ANIM
		DW	(?_MAN03_STAND_DL_ANIM&$FFFF)
		DB	$04
		DB	:?_MAN03_STAND_DOWN_ANIM
		DW	(?_MAN03_STAND_DOWN_ANIM&$FFFF)
		DB	$04
		DB	:?_MAN03_STAND_DR_ANIM
		DW	(?_MAN03_STAND_DR_ANIM&$FFFF)
		DB	$04
		DB	:?_MAN03_STAND_RIGHT_ANIM
		DW	(?_MAN03_STAND_RIGHT_ANIM&$FFFF)
		DB	$30
		DB	:?_MAN03_STAND_LEFT_ANIM
		DW	(?_MAN03_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_MAN03_RUN_LEFT_ANIM
		DW	(?_MAN03_RUN_LEFT_ANIM&$FFFF)
		DB	$50
		DB	:?_MAN03_STAND_LEFT_ANIM
		DW	(?_MAN03_STAND_LEFT_ANIM&$FFFF)
		DB	$38
		DB	:?_MAN03_STAND_DL_ANIM
		DW	(?_MAN03_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_MAN03_STAND_DOWN_ANIM
		DW	(?_MAN03_STAND_DOWN_ANIM&$FFFF)
		DB	$04
		DB	:?_MAN03_STAND_DR_ANIM
		DW	(?_MAN03_STAND_DR_ANIM&$FFFF)
		DB	$30
		DB	:?_MAN03_STAND_DOWN_ANIM
		DW	(?_MAN03_STAND_DOWN_ANIM&$FFFF)
		DB	$20
		DB	:?_MAN03_RUN_DOWN_ANIM
		DW	(?_MAN03_RUN_DOWN_ANIM&$FFFF)
		DB	$50
		DB	:?_MAN03_STAND_DOWN_ANIM
		DW	(?_MAN03_STAND_DOWN_ANIM&$FFFF)
		DB	$20
		DB	:?_MAN03_STAND_DR_ANIM
		DW	(?_MAN03_STAND_DR_ANIM&$FFFF)
		DB	$04
		DB	:?_MAN03_STAND_RIGHT_ANIM
		DW	(?_MAN03_STAND_RIGHT_ANIM&$FFFF)
		DB	$04
		DB	:?_MAN03_STAND_UR_ANIM
		DW	(?_MAN03_STAND_UR_ANIM&$FFFF)
		DB	$40
		DB	:?_MAN03_STAND_UL_ANIM
		DW	(?_MAN03_STAND_UL_ANIM&$FFFF)
		DB	$30
		DB	:?_MAN03_STAND_UR_ANIM
		DW	(?_MAN03_STAND_UR_ANIM&$FFFF)
		DB	$30
		DB	:?_MAN03_STAND_RIGHT_ANIM
		DW	(?_MAN03_STAND_RIGHT_ANIM&$FFFF)
		DB	$30
		DB	:?_MAN03_RUN_UP_ANIM
		DW	(?_MAN03_RUN_UP_ANIM&$FFFF)
		DB	$50
		DB	:?_MAN03_STAND_UP_ANIM
		DW	(?_MAN03_STAND_UP_ANIM&$FFFF)
		DB	$30
		DB	:?_MAN03_STAND_UR_ANIM
		DW	(?_MAN03_STAND_UR_ANIM&$FFFF)
		DB	$04
		DB	:?_MAN03_STAND_RIGHT_ANIM
		DW	(?_MAN03_STAND_RIGHT_ANIM&$FFFF)
		DB	$04
		DB	:?_MAN03_STAND_DR_ANIM
		DW	(?_MAN03_STAND_DR_ANIM&$FFFF)
		DB	$04
		DB	:?_MAN03_STAND_DOWN_ANIM
		DW	(?_MAN03_STAND_DOWN_ANIM&$FFFF)
		DB	$04
		DB	:?_MAN03_STAND_DL_ANIM
		DW	(?_MAN03_STAND_DL_ANIM&$FFFF)
		DB	$30
		DB	:?_MAN03_STAND_DR_ANIM
		DW	(?_MAN03_STAND_DR_ANIM&$FFFF)
		DB	$40
		DB	:?_MAN03_STAND_RIGHT_ANIM
		DW	(?_MAN03_STAND_RIGHT_ANIM&$FFFF)
		DB	$30
		DB	:?_MAN03_RUN_RIGHT_ANIM
		DW	(?_MAN03_RUN_RIGHT_ANIM&$FFFF)
		DB	$50
		DB	:?_MAN03_STAND_RIGHT_ANIM
		DW	(?_MAN03_STAND_RIGHT_ANIM&$FFFF)
		DB	$30
		DB	:?_MAN03_STAND_DR_ANIM
		DW	(?_MAN03_STAND_DR_ANIM&$FFFF)
		DB	$04
		DB	:?_MAN03_STAND_DOWN_ANIM
		DW	(?_MAN03_STAND_DOWN_ANIM&$FFFF)
		DB	$04
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_UNDTOWN01_PRISONER4&$FFFF)

;********************************
?_UNDTOWN01_PRISONER_TXT
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$008B)&$FFFF
		DB	$08
		DB	:_TALKED
		DW	(_TALKED&$FFFF)

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$008B)
		DB	$08

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_PRISONER_TXT_1
		DW	(?_UNDTOWN01_PRISONER_TXT_1&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_MAN03
		DW	(?_FACE_MAN03&$FFFF)

;********************************
_TALKED
	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_PRISONER_TXT_2
		DW	(?_UNDTOWN01_PRISONER_TXT_2&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_MAN03
		DW	(?_FACE_MAN03&$FFFF)

;********************************
?_ARROW_STARTER
	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_END

;********************************
?_UNDTOWN01_ELDER_TALKX
	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_ELDERD_TALK_TXT
		DW	(?_UNDTOWN01_ELDERD_TALK_TXT&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_ELDERWORM
		DW	(?_FACE_ELDERWORM&$FFFF)

;********************************
?_UNDTOWN01_ELDERX
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ELDERWORM_LEFT_ANIM
		DW	(?_ELDERWORM_LEFT_ANIM&$FFFF)
		DB	$30
		DB	:?_ELDERWORM_STOP_LEFT_ANIM
		DW	(?_ELDERWORM_STOP_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_ELDERWORM_STOP_RIGHT_ANIM
		DW	(?_ELDERWORM_STOP_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_ELDERWORM_STOP_LEFT_ANIM
		DW	(?_ELDERWORM_STOP_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_ELDERWORM_RIGHT_ANIM
		DW	(?_ELDERWORM_RIGHT_ANIM&$FFFF)
		DB	$30
		DB	:?_ELDERWORM_STOP_RIGHT_ANIM
		DW	(?_ELDERWORM_STOP_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_ELDERWORM_STOP_LEFT_ANIM
		DW	(?_ELDERWORM_STOP_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_ELDERWORM_STOP_RIGHT_ANIM
		DW	(?_ELDERWORM_STOP_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_JUMP
		DB	:?_UNDTOWN01_ELDERX
		DW	(?_UNDTOWN01_ELDERX&$FFFF)

;********************************
?_UNDTOWN01_ARROW_TALKX
	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_GOT_ARROW
		DW	(?_UNDTOWN01_GOT_ARROW&$FFFF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THISACTORSTOP

;********************************
?_UNDTOWN01_HUNTER
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN04_STAND_DOWN_ANIM
		DW	(?_MAN04_STAND_DOWN_ANIM&$FFFF)
		DB	$3C
		DB	:?_MAN04_WALK_RIGHT_ANIM
		DW	(?_MAN04_WALK_RIGHT_ANIM&$FFFF)
		DB	$3C
		DB	:?_MAN04_STAND_DOWN_ANIM
		DW	(?_MAN04_STAND_DOWN_ANIM&$FFFF)
		DB	$1E
		DB	:?_MAN04_STAND_DR_ANIM
		DW	(?_MAN04_STAND_DR_ANIM&$FFFF)
		DB	$1E
		DB	:?_MAN04_STAND_DL_ANIM
		DW	(?_MAN04_STAND_DL_ANIM&$FFFF)
		DB	$1E
		DB	:?_MAN04_WALK_LEFT_ANIM
		DW	(?_MAN04_WALK_LEFT_ANIM&$FFFF)
		DB	$3C
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_UNDTOWN01_HUNTER&$FFFF)

;********************************
?_UNDTOWN01_HUNTER_TALKX
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008F)
		DB	$01

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_HUNTER_TALK_TXT
		DW	(?_UNDTOWN01_HUNTER_TALK_TXT&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_MAN04
		DW	(?_FACE_MAN04&$FFFF)

;********************************
?_UNDTOWN01_HUNTER_LEAVES
	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_FACEHERO
		DB	EXPR_BYTECONST,$01
		DB	:_WALK_LEFT_FIRST
		DW	(_WALK_LEFT_FIRST&$FFFF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN04_WALK_LEFT_ANIM
		DW	(?_MAN04_WALK_LEFT_ANIM&$FFFF)
		DB	$64
		DB	$00

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_SETMASTER
		DB	:_STOP_MAN04
		DW	(_STOP_MAN04&$FFFF)

	DB	CMD_THISACTORRESTORESTATE

	DB	CMD_END

;********************************
_WALK_LEFT_FIRST
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN04_WALK_UP_ANIM
		DW	(?_MAN04_WALK_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_MAN04_WALK_LEFT_ANIM
		DW	(?_MAN04_WALK_LEFT_ANIM&$FFFF)
		DB	$64
		DB	$00

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UL_ANIM
		DW	(?_HERO_STAND_UL_ANIM&$FFFF)

	DB	CMD_SETMASTER
		DB	:_STOP_MAN04
		DW	(_STOP_MAN04&$FFFF)

	DB	CMD_THISACTORRESTORESTATE

	DB	CMD_END

;********************************
_STOP_MAN04
	DB	CMD_THATACTORSTOP
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_END

;********************************
?_UNDTOWN01_HUNTER_TALK_TXT

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$0B),(?AL+$0B),(?AL+$0E),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YOUNGMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$18),?EXCL,?SPCE,(?AU+$16),(?AL+$00),(?AL+$13),(?AL+$02),(?AL+$07),?HURRY
		DB	(?AL+$16),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$16),(?AL+$00),(?AL+$0B),(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$14),(?AL+$07),?QUST,?SPCE,(?AU+$16),(?AL+$07),(?AL+$18),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YOUNGMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$04),(?AL+$02),(?AL+$00),(?AL+$14),(?AL+$12),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$0C),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?SPCE,(?AL+$03),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$18),?WAIT
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$04),(?AL+$15),(?AL+$08),(?AL+$03),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$05),?SPCE,(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?QUST,?SPCE,(?AU+$00),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$03),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$18),(?AL+$04),(?AL+$03),?SPCE,(?AL+$13),(?AL+$0E),(?AL+$16),(?AL+$0D),?PERD,?HURRY
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YOUNGMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$04),(?AL+$17),(?AL+$00),(?AL+$02),(?AL+$13),(?AL+$0B),(?AL+$18),?EXCL,?SPCE,(?AU+$00),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$03),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),?SPCE,(?AL+$03),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$18),(?AL+$04),(?AL+$03),?HURRY
		DB	(?AL+$08),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$04),(?AL+$15),(?AL+$08),(?AL+$0B),?SPCE,(?AL+$06),(?AL+$14),(?AL+$18),?SPCE,(?AL+$16),(?AL+$07),(?AL+$0E),?APST,(?AL+$12),?WAIT
		DB	(?AL+$0D),(?AL+$00),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?DASH,?DASH,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YOUNGMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),?SPCE,(?AL+$06),(?AL+$08),(?AL+$00),(?AL+$0D),(?AL+$13),?SPCE,(?AU+$03),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0C),?HURRY
		DB	(?AU+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?EXCL,?SPCE,(?AU+$08),?WAIT
		DB	(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$16),(?AL+$07),(?AL+$0E),?HURRY
		DB	(?AL+$12),(?AL+$14),(?AL+$0C),(?AL+$0C),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$03),?SPCE,(?AL+$08),(?AL+$13),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?HURRY
		DB	(?AL+$01),(?AL+$08),(?AL+$06),(?AL+$06),(?AL+$04),(?AL+$11),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$0D),?WAIT
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$12),(?AL+$04),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$01),(?AL+$04),(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$14),(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$02),(?AL+$13),(?AL+$04),(?AL+$03),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$08),(?AL+$13),?SPCE,(?AL+$04),(?AL+$17),(?AL+$08),(?AL+$12),(?AL+$13),(?AL+$12),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AU+$14),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),(?AL+$0D),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$07),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?HURRY
		DB	(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$13),(?AL+$04),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$08),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$05),(?AL+$08),(?AL+$11),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0B),?SPCE,(?AL+$0F),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$05),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YOUNGMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$04),(?AL+$12),?PERD,?SPCE,(?AU+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$0F),(?AL+$0B),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$03),?WAIT
		DB	(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$02),(?AL+$00),(?AL+$13),(?AL+$02),(?AL+$07),?SPCE,(?AL+$08),(?AL+$13),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YOUNGMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?PERD,?HURRY
		DB	(?AU+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AL+$16),(?AL+$00),(?AL+$0B),(?AL+$0A),(?AL+$04),(?AL+$03),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$04),(?AL+$15),(?AL+$08),(?AL+$03),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$07),?COMM,?SPCE,(?AL+$12),(?AL+$0E),(?AL+$11),(?AL+$11),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YOUNGMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$13),(?AL+$0E),(?AL+$0E),?SPCE,(?AL+$0B),(?AL+$00),(?AL+$13),(?AL+$04),?HURRY
		DB	(?AL+$0D),(?AL+$0E),(?AL+$16),?COMM,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$15),(?AL+$04),?WAIT
		DB	(?AL+$00),(?AL+$0B),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$03),(?AL+$18),?SPCE,(?AL+$11),(?AL+$14),(?AL+$08),(?AL+$0D),(?AL+$04),(?AL+$03),?HURRY
		DB	(?AL+$08),(?AL+$13),?PERD,?SPCE,(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$0B),(?AL+$18),?WAIT
		DB	(?AL+$16),(?AL+$00),(?AL+$18),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$02),(?AL+$0A),?HURRY
		DB	(?AL+$08),(?AL+$13),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?WAIT
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$06),(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AU+$03),(?AL+$04),(?AL+$04),(?AL+$0F),?SPCE,(?AU+$00),(?AL+$0B),(?AL+$06),(?AL+$00),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?COMM,?SPCE,(?AL+$08),(?AL+$05),?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),?SPCE,(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$03),?WAIT
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$01),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$06),(?AL+$08),(?AL+$15),(?AL+$04),?WAIT
		DB	(?AL+$08),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YOUNGMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$0A),(?AL+$12),?PERD,?SPCE,(?AU+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$0C),(?AL+$04),(?AL+$00),(?AL+$0D),(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?SPCE,(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?WAIT
		DB	(?AL+$01),(?AL+$04),?SPCE,(?AL+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$00),(?AL+$01),(?AL+$00),(?AL+$0D),(?AL+$03),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$03),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$13),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$0D),(?AL+$0E),(?AL+$11),(?AL+$13),(?AL+$07),?PERD,?HURRY
		DB	(?AU+$12),(?AL+$04),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0B),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THATACTORSETSCRIPT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_UNDTOWN01_HUNTER_LEAVES
		DW	(?_UNDTOWN01_HUNTER_LEAVES&$FFFF)

	DB	CMD_END

;********************************
?_UNDTOWN01_GENERIC_DURING
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTOWN01&$FFFF)
		DB	:MAP_UNDTOWN01

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTOWN01&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_UNDTOWN01&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D131
		DB	$00
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_undtown

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_UNDTOWN01_GENERIC_PRE
	DB	CMD_IF
		DB	EXPR_AND
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$07
		DB	EXPR_EQU
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$02
		DB	:?_UNDTOWN01_KORGZET
		DW	(?_UNDTOWN01_KORGZET&$FFFF)

	DB	CMD_IF
		DB	EXPR_AND
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$07
		DB	EXPR_EQU
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$06
		DB	:?_UNDTOWN01_UNDERNEATH
		DW	(?_UNDTOWN01_UNDERNEATH&$FFFF)

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTOWN01&$FFFF)
		DB	:MAP_UNDTOWN01

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTOWN01&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_UNDTOWN01&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D131
		DB	$00
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$16
		DB	$26
		DW	$D8FE
		DB	$00
		DB	:?_UNDTOWN01_OLDMAN03
		DW	(?_UNDTOWN01_OLDMAN03&$FFFF)
		DB	:?_UNDTOWN01_OLDMAN03_TALK
		DW	(?_UNDTOWN01_OLDMAN03_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0F
		DB	$07
		DW	$D1B3
		DB	$1A
		DB	:?_UNDTOWN01_OLDLADY03
		DW	(?_UNDTOWN01_OLDLADY03&$FFFF)
		DB	:?_UNDTOWN01_OLDLADY03_TALK
		DW	(?_UNDTOWN01_OLDLADY03_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$1F
		DB	$09
		DW	$D23B
		DB	$42
		DB	:?_UNDTOWN01_MAN03
		DW	(?_UNDTOWN01_MAN03&$FFFF)
		DB	:?_UNDTOWN01_MAN03_TALK
		DW	(?_UNDTOWN01_MAN03_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$2D
		DB	$12
		DW	$D465
		DB	$6D
		DB	:?_UNDTOWN01_GIRL03
		DW	(?_UNDTOWN01_GIRL03&$FFFF)
		DB	:?_UNDTOWN01_GIRL03_TALK
		DW	(?_UNDTOWN01_GIRL03_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$18
		DB	$12
		DW	$D450
		DB	$95
		DB	:?_UNDTOWN01_WOMAN
		DW	(?_UNDTOWN01_WOMAN&$FFFF)
		DB	:?_UNDTOWN01_WOMAN_TALK
		DW	(?_UNDTOWN01_WOMAN_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$1A
		DB	$16
		DW	$D542
		DB	$BA
		DB	:?_UNDTOWN01_BOY
		DW	(?_UNDTOWN01_BOY&$FFFF)
		DB	:?_UNDTOWN01_BOY_TALK
		DW	(?_UNDTOWN01_BOY_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$1A
		DB	:BIT_OLDMAN03
		DW	(BIT_OLDMAN03&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$28
		DB	:BIT_OLDLADY03
		DW	(BIT_OLDLADY03&$FFFF)
		DW	$81A0
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$2B
		DB	:BIT_MAN03
		DW	(BIT_MAN03&$FFFF)
		DW	$8420
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$28
		DB	:BIT_GIRL03
		DW	(BIT_GIRL03&$FFFF)
		DW	$86D0
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$25
		DB	:BIT_WOMAN
		DW	(BIT_WOMAN&$FFFF)
		DW	$8950
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_BOY
		DW	(BIT_BOY&$FFFF)
		DW	$8BA0
		DB	$00

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_undtown

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_UNDTOWN01_OLDMAN03_TALK
	DB	CMD_THISACTORSETANIM
		DB	:?_OLDMAN03_STAND_LEFT_ANIM
		DW	(?_OLDMAN03_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:_GRUK
		DW	(_GRUK&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_OLDMAN03_TXT01
		DW	(?_UNDTOWN01_OLDMAN03_TXT01&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_OLDMAN03
		DW	(?_FACE_OLDMAN03&$FFFF)

;********************************
_GRUK
	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_OLDMAN03_TXT01B
		DW	(?_UNDTOWN01_OLDMAN03_TXT01B&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_OLDMAN03
		DW	(?_FACE_OLDMAN03&$FFFF)

;********************************
?_UNDTOWN01_OLDLADY03_TALK
	DB	CMD_THISACTORSETANIM
		DB	:?_OLDLADY03_STAND_LEFT_ANIM
		DW	(?_OLDLADY03_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:_GRUK
		DW	(_GRUK&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_OLDLADY03_TXT01
		DW	(?_UNDTOWN01_OLDLADY03_TXT01&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_OLDLADY03
		DW	(?_FACE_OLDLADY03&$FFFF)

;********************************
_GRUK
	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_OLDLADY03_TXT01B
		DW	(?_UNDTOWN01_OLDLADY03_TXT01B&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_OLDLADY03
		DW	(?_FACE_OLDLADY03&$FFFF)

;********************************
?_UNDTOWN01_MAN03_TALK
	DB	CMD_THISACTORSETANIM
		DB	:?_MAN03_STAND_LEFT_ANIM
		DW	(?_MAN03_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:_GRUK
		DW	(_GRUK&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_MAN03_TXT01
		DW	(?_UNDTOWN01_MAN03_TXT01&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_MAN03
		DW	(?_FACE_MAN03&$FFFF)

;********************************
_GRUK
	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_MAN03_TXT01B
		DW	(?_UNDTOWN01_MAN03_TXT01B&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_MAN03
		DW	(?_FACE_MAN03&$FFFF)

;********************************
?_UNDTOWN01_GIRL03_TALK
	DB	CMD_THISACTORSETANIM
		DB	:?_GIRL03_STAND_LEFT_ANIM
		DW	(?_GIRL03_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:_GRUK
		DW	(_GRUK&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_GIRL03_TXT01
		DW	(?_UNDTOWN01_GIRL03_TXT01&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_GIRL03
		DW	(?_FACE_GIRL03&$FFFF)

;********************************
_GRUK
	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_GIRL03_TXT01B
		DW	(?_UNDTOWN01_GIRL03_TXT01B&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_GIRL03
		DW	(?_FACE_GIRL03&$FFFF)

;********************************
?_UNDTOWN01_WOMAN_TALK
	DB	CMD_THISACTORSETANIM
		DB	:?_WOMAN_STAND_DOWN_ANIM
		DW	(?_WOMAN_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:_GRUK
		DW	(_GRUK&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_WOMAN_TXT01
		DW	(?_UNDTOWN01_WOMAN_TXT01&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_WOMAN
		DW	(?_FACE_WOMAN&$FFFF)

;********************************
_GRUK
	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_WOMAN_TXT01B
		DW	(?_UNDTOWN01_WOMAN_TXT01B&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_WOMAN
		DW	(?_FACE_WOMAN&$FFFF)

;********************************
?_UNDTOWN01_BOY_TALK
	DB	CMD_SETTEXT
		DB	:_TXT_GRUK_DEAL
		DW	(_TXT_GRUK_DEAL&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_BOY
		DW	(?_FACE_BOY&$FFFF)

;********************************
_TXT_GRUK_DEAL

	DB	CMD_TEXTICON
		DW	ICON_BOY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?SPCE,(?AL+$00),?SPCE,(?AU+$06),(?AL+$11),(?AL+$14),(?AL+$0A),?HURRY
		DB	(?AL+$0F),(?AL+$00),(?AL+$0D),(?AL+$02),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$03),(?AL+$04),(?AL+$00),(?AL+$0B),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_BOY
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_BOY_STAND_DL_ANIM
		DW	(?_BOY_STAND_DL_ANIM&$FFFF)
		DB	$A0
		DB	:?_BOY_RUN_RIGHT_ANIM
		DW	(?_BOY_RUN_RIGHT_ANIM&$FFFF)
		DB	$A0
		DB	:?_BOY_RUN_UP_ANIM
		DW	(?_BOY_RUN_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_BOY_STAND_UL_ANIM
		DW	(?_BOY_STAND_UL_ANIM&$FFFF)
		DB	$20
		DB	:?_BOY_STAND_UR_ANIM
		DW	(?_BOY_STAND_UR_ANIM&$FFFF)
		DB	$20
		DB	:?_BOY_RUN_DOWN_ANIM
		DW	(?_BOY_RUN_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_BOY_RUN_LEFT_ANIM
		DW	(?_BOY_RUN_LEFT_ANIM&$FFFF)
		DB	$A0
		DB	:?_BOY_STAND_DR_ANIM
		DW	(?_BOY_STAND_DR_ANIM&$FFFF)
		DB	$A0
		DB	$00

	DB	CMD_JUMP
		DB	:?_UNDTOWN01_BOY
		DW	(?_UNDTOWN01_BOY&$FFFF)

;********************************
?_UNDTOWN01_OLDMAN03
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_OLDMAN03_WALK_LEFT_ANIM
		DW	(?_OLDMAN03_WALK_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_OLDMAN03_STAND_LEFT_ANIM
		DW	(?_OLDMAN03_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_OLDMAN03_WALK_UP_ANIM
		DW	(?_OLDMAN03_WALK_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_OLDMAN03_STAND_LEFT_ANIM
		DW	(?_OLDMAN03_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_OLDMAN03_STAND_DL_ANIM
		DW	(?_OLDMAN03_STAND_DL_ANIM&$FFFF)
		DB	$40
		DB	:?_OLDMAN03_STAND_UL_ANIM
		DW	(?_OLDMAN03_STAND_UL_ANIM&$FFFF)
		DB	$40
		DB	:?_OLDMAN03_WALK_DOWN_ANIM
		DW	(?_OLDMAN03_WALK_DOWN_ANIM&$FFFF)
		DB	$20
		DB	:?_OLDMAN03_STAND_DR_ANIM
		DW	(?_OLDMAN03_STAND_DR_ANIM&$FFFF)
		DB	$40
		DB	:?_OLDMAN03_STAND_UR_ANIM
		DW	(?_OLDMAN03_STAND_UR_ANIM&$FFFF)
		DB	$40
		DB	:?_OLDMAN03_WALK_UP_ANIM
		DW	(?_OLDMAN03_WALK_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_OLDMAN03_STAND_LEFT_ANIM
		DW	(?_OLDMAN03_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_OLDMAN03_WALK_RIGHT_ANIM
		DW	(?_OLDMAN03_WALK_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	:?_OLDMAN03_STAND_DOWN_ANIM
		DW	(?_OLDMAN03_STAND_DOWN_ANIM&$FFFF)
		DB	$20
		DB	:?_OLDMAN03_STAND_DL_ANIM
		DW	(?_OLDMAN03_STAND_DL_ANIM&$FFFF)
		DB	$20
		DB	:?_OLDMAN03_STAND_LEFT_ANIM
		DW	(?_OLDMAN03_STAND_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_OLDMAN03_STAND_UL_ANIM
		DW	(?_OLDMAN03_STAND_UL_ANIM&$FFFF)
		DB	$20
		DB	:?_OLDMAN03_STAND_UP_ANIM
		DW	(?_OLDMAN03_STAND_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_OLDMAN03_STAND_UR_ANIM
		DW	(?_OLDMAN03_STAND_UR_ANIM&$FFFF)
		DB	$20
		DB	:?_OLDMAN03_STAND_RIGHT_ANIM
		DW	(?_OLDMAN03_STAND_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_OLDMAN03_STAND_DR_ANIM
		DW	(?_OLDMAN03_STAND_DR_ANIM&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_JUMP
		DB	:?_UNDTOWN01_OLDMAN03
		DW	(?_UNDTOWN01_OLDMAN03&$FFFF)

;********************************
?_UNDTOWN01_OLDLADY03
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_OLDLADY03_STAND_LEFT_ANIM
		DW	(?_OLDLADY03_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_OLDLADY03_WALK_LEFT_ANIM
		DW	(?_OLDLADY03_WALK_LEFT_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_OLDLADY03_STAND_DOWN_ANIM
		DW	(?_OLDLADY03_STAND_DOWN_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_OLDLADY03_STAND_DL_ANIM
		DW	(?_OLDLADY03_STAND_DL_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_OLDLADY03_STAND_DR_ANIM
		DW	(?_OLDLADY03_STAND_DR_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_OLDLADY03_WALK_RIGHT_ANIM
		DW	(?_OLDLADY03_WALK_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_OLDLADY03_STAND_RIGHT_ANIM
		DW	(?_OLDLADY03_STAND_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_OLDLADY03_STAND_UR_ANIM
		DW	(?_OLDLADY03_STAND_UR_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_OLDLADY03_STAND_UL_ANIM
		DW	(?_OLDLADY03_STAND_UL_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_JUMP
		DB	:?_UNDTOWN01_OLDLADY03
		DW	(?_UNDTOWN01_OLDLADY03&$FFFF)

;********************************
?_UNDTOWN01_MAN03
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN03_WALK_DOWN_ANIM
		DW	(?_MAN03_WALK_DOWN_ANIM&$FFFF)
		DB	$30
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN03_STAND_LEFT_ANIM
		DW	(?_MAN03_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN03_WALK_RIGHT_ANIM
		DW	(?_MAN03_WALK_RIGHT_ANIM&$FFFF)
		DB	$30
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN03_STAND_RIGHT_ANIM
		DW	(?_MAN03_STAND_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN03_STAND_DL_ANIM
		DW	(?_MAN03_STAND_DL_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN03_WALK_LEFT_ANIM
		DW	(?_MAN03_WALK_LEFT_ANIM&$FFFF)
		DB	$30
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN03_STAND_DOWN_ANIM
		DW	(?_MAN03_STAND_DOWN_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN03_STAND_DR_ANIM
		DW	(?_MAN03_STAND_DR_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN03_WALK_UP_ANIM
		DW	(?_MAN03_WALK_UP_ANIM&$FFFF)
		DB	$30
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN03_STAND_DOWN_ANIM
		DW	(?_MAN03_STAND_DOWN_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAN03_STAND_DR_ANIM
		DW	(?_MAN03_STAND_DR_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_JUMP
		DB	:?_UNDTOWN01_MAN03
		DW	(?_UNDTOWN01_MAN03&$FFFF)

;********************************
?_UNDTOWN01_GIRL03
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GIRL03_STAND_LEFT_ANIM
		DW	(?_GIRL03_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_GIRL03_WALK_LEFT_ANIM
		DW	(?_GIRL03_WALK_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_GIRL03_STAND_LEFT_ANIM
		DW	(?_GIRL03_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_GIRL03_WALK_UP_ANIM
		DW	(?_GIRL03_WALK_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_GIRL03_STAND_LEFT_ANIM
		DW	(?_GIRL03_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_GIRL03_STAND_DL_ANIM
		DW	(?_GIRL03_STAND_DL_ANIM&$FFFF)
		DB	$40
		DB	:?_GIRL03_STAND_UL_ANIM
		DW	(?_GIRL03_STAND_UL_ANIM&$FFFF)
		DB	$40
		DB	:?_GIRL03_WALK_DOWN_ANIM
		DW	(?_GIRL03_WALK_DOWN_ANIM&$FFFF)
		DB	$20
		DB	:?_GIRL03_STAND_DR_ANIM
		DW	(?_GIRL03_STAND_DR_ANIM&$FFFF)
		DB	$40
		DB	:?_GIRL03_STAND_UR_ANIM
		DW	(?_GIRL03_STAND_UR_ANIM&$FFFF)
		DB	$40
		DB	:?_GIRL03_WALK_UP_ANIM
		DW	(?_GIRL03_WALK_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_GIRL03_STAND_LEFT_ANIM
		DW	(?_GIRL03_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_GIRL03_WALK_RIGHT_ANIM
		DW	(?_GIRL03_WALK_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	:?_GIRL03_STAND_DOWN_ANIM
		DW	(?_GIRL03_STAND_DOWN_ANIM&$FFFF)
		DB	$20
		DB	:?_GIRL03_STAND_DL_ANIM
		DW	(?_GIRL03_STAND_DL_ANIM&$FFFF)
		DB	$20
		DB	:?_GIRL03_STAND_LEFT_ANIM
		DW	(?_GIRL03_STAND_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_GIRL03_STAND_UL_ANIM
		DW	(?_GIRL03_STAND_UL_ANIM&$FFFF)
		DB	$20
		DB	:?_GIRL03_STAND_UP_ANIM
		DW	(?_GIRL03_STAND_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_GIRL03_STAND_UR_ANIM
		DW	(?_GIRL03_STAND_UR_ANIM&$FFFF)
		DB	$20
		DB	:?_GIRL03_STAND_RIGHT_ANIM
		DW	(?_GIRL03_STAND_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_GIRL03_STAND_DR_ANIM
		DW	(?_GIRL03_STAND_DR_ANIM&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_JUMP
		DB	:?_UNDTOWN01_GIRL03
		DW	(?_UNDTOWN01_GIRL03&$FFFF)

;********************************
?_UNDTOWN01_WOMAN
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WOMAN_STAND_DOWN_ANIM
		DW	(?_WOMAN_STAND_DOWN_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_JUMP
		DB	:?_UNDTOWN01_WOMAN
		DW	(?_UNDTOWN01_WOMAN&$FFFF)

;********************************
?_UNDTOWN01_KORGZET
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)
		DB	$03

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTOWN01&$FFFF)
		DB	:MAP_UNDTOWN01

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTOWN01&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_UNDTOWN01&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$3B
		DB	$15
		DW	$D527
		DB	$00
		DB	:?_UNDTOWN01_HERO_KZ
		DW	(?_UNDTOWN01_HERO_KZ&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$10
		DB	$10
		DW	$D3D0
		DB	$00
		DB	:?_UNDTOWN01_ELDER_KZ
		DW	(?_UNDTOWN01_ELDER_KZ&$FFFF)
		DB	:?_UNDTOWN01_ELDERSEZ
		DW	(?_UNDTOWN01_ELDERSEZ&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$11
		DB	$10
		DW	$D3D1
		DB	$25
		DB	:?_UNDTOWN01_ULK_KZ
		DW	(?_UNDTOWN01_ULK_KZ&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$11
		DB	$0E
		DW	$D359
		DB	$55
		DB	:?_UNDTOWN01_KORG_KZ
		DW	(?_UNDTOWN01_KORG_KZ&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0F
		DB	$0E
		DW	$D357
		DB	$7F
		DB	:?_UNDTOWN01_ZET_KZ
		DW	(?_UNDTOWN01_ZET_KZ&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$12
		DB	$15
		DW	$D4FE
		DB	$AF
		DB	:?_UNDTOWN01_GOGOR_KZ
		DW	(?_UNDTOWN01_GOGOR_KZ&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0F
		DB	$07
		DW	$D1B3
		DB	$25
		DB	:?_UNDTOWN01_OLDLADY03
		DW	(?_UNDTOWN01_OLDLADY03&$FFFF)
		DB	:?_UNDTOWN01_OLDLADY03_TALK
		DW	(?_UNDTOWN01_OLDLADY03_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$1F
		DB	$09
		DW	$D23B
		DB	$4D
		DB	:?_UNDTOWN01_MAN03
		DW	(?_UNDTOWN01_MAN03&$FFFF)
		DB	:?_UNDTOWN01_MAN03_TALK
		DW	(?_UNDTOWN01_MAN03_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$2D
		DB	$12
		DW	$D465
		DB	$78
		DB	:?_UNDTOWN01_GIRL03
		DW	(?_UNDTOWN01_GIRL03&$FFFF)
		DB	:?_UNDTOWN01_GIRL03_TALK
		DW	(?_UNDTOWN01_GIRL03_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$18
		DB	$12
		DW	$D450
		DB	$A0
		DB	:?_UNDTOWN01_WOMAN
		DW	(?_UNDTOWN01_WOMAN&$FFFF)
		DB	:?_UNDTOWN01_WOMAN_TALK
		DW	(?_UNDTOWN01_WOMAN_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$25
		DB	:BIT_OLDLADY05
		DW	(BIT_OLDLADY05&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_ULK
		DW	(BIT_ULK&$FFFF)
		DW	$8250
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$2A
		DB	:BIT_KORG
		DW	(BIT_KORG&$FFFF)
		DW	$8550
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_ZET
		DW	(BIT_ZET&$FFFF)
		DW	$87F0
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$36
		DB	:BIT_GOGOR
		DW	(BIT_GOGOR&$FFFF)
		DW	$8AF0
		DB	$00

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_kzbattle

	DB	CMD_SCENEREADY

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_DELAY
		DB	$A0

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0F
		DB	$16
		DW	$D537
		DB	$00
		DB	:?_UNDTOWN01_HERO_KZ2
		DW	(?_UNDTOWN01_HERO_KZ2&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_END

;********************************
?_UNDTOWN01_HERO_KZ
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_LEFT_ANIM
		DW	(?_HERO_WALK_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$30
		DB	$00

	DB	CMD_CAMERASEEK
		DB	$10
		DB	$10
		DB	$04

	DB	CMD_SETEVENTMASTER
		DB	$01

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_RUN_LEFT_ANIM
		DW	(?_HERO_RUN_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
?_UNDTOWN01_HERO_KZ2
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_RUN_UP_ANIM
		DW	(?_HERO_RUN_UP_ANIM&$FFFF)
		DB	$28
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$02
		DB	$04

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_END

;********************************
?_UNDTOWN01_ELDERSEZ
	DB	CMD_THISACTORSETANIM
		DB	:?_OLDLADY05_STAND_UP_ANIM
		DW	(?_OLDLADY05_STAND_UP_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_ELDER_TXT_KZ
		DW	(?_UNDTOWN01_ELDER_TXT_KZ&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_OLDLADY05
		DW	(?_FACE_OLDLADY05&$FFFF)

;********************************
?_UNDTOWN01_ELDER_KZ
	DB	CMD_THISACTORSETANIM
		DB	:?_OLDLADY05_STAND_UP_ANIM
		DW	(?_OLDLADY05_STAND_UP_ANIM&$FFFF)

	DB	CMD_SYNC
		DB	$02
		DB	$04

	DB	CMD_THISACTORSETANIM
		DB	:?_OLDLADY05_STAND_RIGHT_ANIM
		DW	(?_OLDLADY05_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_SCROLLMAP
		DB	$10
		DB	$00
		DB	$01
		DB	$00

	DB	CMD_END

;********************************
?_UNDTOWN01_ULK_KZ
	DB	CMD_THISACTORSETANIM
		DB	:?_ULK_STAND_UP_ANIM
		DW	(?_ULK_STAND_UP_ANIM&$FFFF)

	DB	CMD_SYNC
		DB	$02
		DB	$04

	DB	CMD_THISACTORSETANIM
		DB	:?_ULK_STAND_LEFT_ANIM
		DW	(?_ULK_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_KORGZET_TXT7
		DW	(?_UNDTOWN01_KORGZET_TXT7&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$07

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ULK_STAND_UL_ANIM
		DW	(?_ULK_STAND_UL_ANIM&$FFFF)
		DB	$10
		DB	:?_ULK_STAND_UP_ANIM
		DW	(?_ULK_STAND_UP_ANIM&$FFFF)
		DB	$60
		DB	:?_ULK_STAND_RIGHT_ANIM
		DW	(?_ULK_STAND_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ULK_RUN_DOWN_ANIM
		DW	(?_ULK_RUN_DOWN_ANIM&$FFFF)
		DB	$30
		DB	:?_ULK_STAND_DOWN_ANIM
		DW	(?_ULK_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$28
		DB	:BIT_OLDLADY03
		DW	(BIT_OLDLADY03&$FFFF)
		DW	$8250
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$2B
		DB	:BIT_MAN03
		DW	(BIT_MAN03&$FFFF)
		DW	$84D0
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_UNDTOWN01_KORG_KZ
	DB	CMD_THISACTORSETANIM
		DB	:?_KORG_STAND_DOWN_ANIM
		DW	(?_KORG_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_KORGZET_TXT1
		DW	(?_UNDTOWN01_KORGZET_TXT1&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_KORGZET_TXT3
		DW	(?_UNDTOWN01_KORGZET_TXT3&$FFFF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_KORG_STAND_LEFT_ANIM
		DW	(?_KORG_STAND_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_KORG_STAND_DOWN_ANIM
		DW	(?_KORG_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_KORG_STAND_DOWN_ANIM
		DW	(?_KORG_STAND_DOWN_ANIM&$FFFF)
		DB	$40
		DB	:?_KORG_STAND_DL_ANIM
		DW	(?_KORG_STAND_DL_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$28

	DB	CMD_THISACTORSETANIM
		DB	:?_KORG_STAND_DOWN_ANIM
		DW	(?_KORG_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$05

	DB	CMD_SYNC
		DB	$01
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_KORG_WALK_UP_ANIM
		DW	(?_KORG_WALK_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_KORG_WALK_LEFT_ANIM
		DW	(?_KORG_WALK_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_KORG_WALK_UP_ANIM
		DW	(?_KORG_WALK_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_KORG_STAND_UP_ANIM
		DW	(?_KORG_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_UNDTOWN01_ZET_KZ
	DB	CMD_THISACTORSETANIM
		DB	:?_ZET_STAND_DOWN_ANIM
		DW	(?_ZET_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_KORGZET_TXT2
		DW	(?_UNDTOWN01_KORGZET_TXT2&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$03

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_DELAY
		DB	$80

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_KORGZET_TXT4
		DW	(?_UNDTOWN01_KORGZET_TXT4&$FFFF)

	DB	CMD_THISACTORSETANIM
		DB	:?_ZET_STAND_DR_ANIM
		DW	(?_ZET_STAND_DR_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$04

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_KORGZET_TXT5
		DW	(?_UNDTOWN01_KORGZET_TXT5&$FFFF)

	DB	CMD_THISACTORSETANIM
		DB	:?_ZET_STAND_DOWN_ANIM
		DW	(?_ZET_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_SYNC
		DB	$01
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ZET_STAND_RIGHT_ANIM
		DW	(?_ZET_STAND_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_ZET_STAND_UR_ANIM
		DW	(?_ZET_STAND_UR_ANIM&$FFFF)
		DB	$10
		DB	:?_ZET_STAND_UP_ANIM
		DW	(?_ZET_STAND_UP_ANIM&$FFFF)
		DB	$50
		DB	:?_ZET_STAND_RIGHT_ANIM
		DW	(?_ZET_STAND_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_ZET_STAND_DOWN_ANIM
		DW	(?_ZET_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_KORGZET_TXT6
		DW	(?_UNDTOWN01_KORGZET_TXT6&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$06

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ZET_WALK_UP_ANIM
		DW	(?_ZET_WALK_UP_ANIM&$FFFF)
		DB	$40
		DB	:?_ZET_STAND_UP_ANIM
		DW	(?_ZET_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$02
		DB	$04

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_UNDTOWN01_GOGOR_KZ
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_WALK_UP_ANIM
		DW	(?_GOGOR_WALK_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_STAND_UL_ANIM
		DW	(?_GOGOR_STAND_UL_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_STAND_LEFT_ANIM
		DW	(?_GOGOR_STAND_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_STAND_DL_ANIM
		DW	(?_GOGOR_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_STAND_DOWN_ANIM
		DW	(?_GOGOR_STAND_DOWN_ANIM&$FFFF)
		DB	$40
		DB	:?_GOGOR_STAND_LEFT_ANIM
		DW	(?_GOGOR_STAND_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_WALK_UP_ANIM
		DW	(?_GOGOR_WALK_UP_ANIM&$FFFF)
		DB	$30
		DB	:?_GOGOR_STAND_LEFT_ANIM
		DW	(?_GOGOR_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_KORGZET_TXT8
		DW	(?_UNDTOWN01_KORGZET_TXT8&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$50

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_STAND_DOWN_ANIM
		DW	(?_GOGOR_STAND_DOWN_ANIM&$FFFF)
		DB	$40
		DB	:?_GOGOR_STAND_LEFT_ANIM
		DW	(?_GOGOR_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$08

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_WALK_UP_ANIM
		DW	(?_GOGOR_WALK_UP_ANIM&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_THATACTORSETSCRIPT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_OLDLADY05_STAND_UP_ANIM
		DW	(?_OLDLADY05_STAND_UP_ANIM&$FFFF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_WALK_LEFT_ANIM
		DW	(?_GOGOR_WALK_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_WALK_UP_ANIM
		DW	(?_GOGOR_WALK_UP_ANIM&$FFFF)
		DB	$30
		DB	:?_GOGOR_STAND_UP_ANIM
		DW	(?_GOGOR_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_DELAY
		DB	$20

	DB	CMD_THATACTORSETSCRIPT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_OLDLADY05_WALK_DOWN_ANIM
		DW	(?_OLDLADY05_WALK_DOWN_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$64

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$28
		DB	:BIT_GIRL03
		DW	(BIT_GIRL03&$FFFF)
		DW	$8780
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$25
		DB	:BIT_WOMAN
		DW	(BIT_WOMAN&$FFFF)
		DW	$8A00
		DB	$00

	DB	CMD_THATACTORSETAI
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_UNDTOWN01_UNDERNEATH
	DB	CMD_SETGAMECOUNT
		DW	$0008

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTOWN01&$FFFF)
		DB	:MAP_UNDTOWN01

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTOWN01&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_UNDTOWN01&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0C
		DB	$00
		DW	$D00C
		DB	$00
		DB	:?_UNDTOWN01_TONY_PRE
		DW	(?_UNDTOWN01_TONY_PRE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$2D
		DB	$16
		DW	$D555
		DB	$B4
		DB	:?_UNDTOWN01_ELDER
		DW	(?_UNDTOWN01_ELDER&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$22
		DB	$15
		DW	$D50E
		DB	$36
		DB	:?_UNDTOWN01_ULK
		DW	(?_UNDTOWN01_ULK&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$2B
		DB	$19
		DW	$D607
		DB	$8F
		DB	:?_UNDTOWN01_WOMANB
		DW	(?_UNDTOWN01_WOMANB&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$2E
		DB	$10
		DW	$D3EE
		DB	$00
		DB	:?_UNDTOWN01_GOGOR
		DW	(?_UNDTOWN01_GOGOR&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$35
		DB	$15
		DW	$D521
		DB	$66
		DB	:?_UNDTOWN01_GRUK
		DW	(?_UNDTOWN01_GRUK&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0C
		DB	$09
		DW	$D228
		DB	$36
		DB	:?_UNDTOWN01_ULK2
		DW	(?_UNDTOWN01_ULK2&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$36
		DB	:BIT_GOGOR
		DW	(BIT_GOGOR&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_ULK
		DW	(BIT_ULK&$FFFF)
		DW	$8360
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$29
		DB	:BIT_GRUK
		DW	(BIT_GRUK&$FFFF)
		DW	$8660
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$25
		DB	:BIT_WOMAN
		DW	(BIT_WOMAN&$FFFF)
		DW	$88F0
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$25
		DB	:BIT_OLDLADY05
		DW	(BIT_OLDLADY05&$FFFF)
		DW	$8B40
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_SONGSTART
		DB	SONGID_undtown

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_SETSCROLL
		DB	:?_UNDTOWN01_UNDERNEATH_QUAKE
		DW	(?_UNDTOWN01_UNDERNEATH_QUAKE&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$03

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_CAMERASEEK
		DB	$2C
		DB	$16
		DB	$03

	DB	CMD_DELAY
		DB	$40

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$29
		DB	$0E
		DW	$D371
		DB	$00
		DB	:?_UNDTOWN01_TONY
		DW	(?_UNDTOWN01_TONY&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$0A

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STANDR_ANIM
		DW	(?_HERO_STANDR_ANIM&$FFFF)

	DB	CMD_END

;********************************
?_UNDTOWN01_UNDERNEATH_QUAKE
	DB	CMD_SFX
		DB	SFXID_EARTHQUAKE

	DB	CMD_SCROLLMAP
		DB	$01
		DB	$FD
		DB	$00
		DB	$01
		DB	$00
		DB	$FD
		DB	$03
		DB	$01
		DB	$00
		DB	$01
		DB	$00
		DB	$03
		DB	$02
		DB	$FF
		DB	$00
		DB	$02
		DB	$00
		DB	$FF
		DB	$02
		DB	$01
		DB	$00
		DB	$02
		DB	$00
		DB	$01
		DB	$01
		DB	$00
		DB	$02
		DB	$01
		DB	$00
		DB	$FD
		DB	$01
		DB	$00
		DB	$03
		DB	$01
		DB	$00
		DB	$FD
		DB	$01
		DB	$00
		DB	$03
		DB	$01
		DB	$00
		DB	$FE
		DB	$01
		DB	$00
		DB	$02
		DB	$01
		DB	$00
		DB	$FE
		DB	$01
		DB	$00
		DB	$02
		DB	$01
		DB	$00
		DB	$FE
		DB	$00

	DB	CMD_JUMPRANDOM
		DB	$04
		DB	:_SHORT
		DW	(_SHORT&$FFFF)
		DB	:_NOTHING
		DW	(_NOTHING&$FFFF)
		DB	:_LONG
		DW	(_LONG&$FFFF)
		DB	:_MEDIUM
		DW	(_MEDIUM&$FFFF)

;********************************
_NOTHING
	DB	CMD_DELAY
		DB	$00

	DB	CMD_JUMP
		DB	:?_UNDTOWN01_UNDERNEATH_QUAKE
		DW	(?_UNDTOWN01_UNDERNEATH_QUAKE&$FFFF)

;********************************
_SHORT
	DB	CMD_SFX
		DB	SFXID_EARTHQUAKE_END

	DB	CMD_DELAY
		DB	$10

	DB	CMD_JUMP
		DB	:?_UNDTOWN01_UNDERNEATH_QUAKE
		DW	(?_UNDTOWN01_UNDERNEATH_QUAKE&$FFFF)

;********************************
_MEDIUM
	DB	CMD_SFX
		DB	SFXID_EARTHQUAKE_END

	DB	CMD_DELAY
		DB	$20

	DB	CMD_JUMP
		DB	:?_UNDTOWN01_UNDERNEATH_QUAKE
		DW	(?_UNDTOWN01_UNDERNEATH_QUAKE&$FFFF)

;********************************
_LONG
	DB	CMD_SFX
		DB	SFXID_EARTHQUAKE_END

	DB	CMD_DELAY
		DB	$40

	DB	CMD_JUMP
		DB	:?_UNDTOWN01_UNDERNEATH_QUAKE
		DW	(?_UNDTOWN01_UNDERNEATH_QUAKE&$FFFF)

;********************************
?_UNDTOWN01_TONY_PRE
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)
		DB	$30
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_TXT_1PRE
		DW	(?_UNDTOWN01_TXT_1PRE&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$02

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_STAND_DL_ANIM
		DW	(?_HERO_STAND_DL_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_DR_ANIM
		DW	(?_HERO_STAND_DR_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_TXT_1PRE2
		DW	(?_UNDTOWN01_TXT_1PRE2&$FFFF)

	DB	CMD_END

;********************************
?_UNDTOWN01_TONY
	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_TXT_1
		DW	(?_UNDTOWN01_TXT_1&$FFFF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_RUN_DOWN_ANIM
		DW	(?_HERO_RUN_DOWN_ANIM&$FFFF)
		DB	$18
		DB	:?_HERO_RUN_RIGHT_ANIM
		DW	(?_HERO_RUN_RIGHT_ANIM&$FFFF)
		DB	$18
		DB	:?_HERO_RUN_DOWN_ANIM
		DW	(?_HERO_RUN_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTMASTER
		DB	$14

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_DL_ANIM
		DW	(?_HERO_STAND_DL_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$15

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_DR_ANIM
		DW	(?_HERO_STAND_DR_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$02

	DB	CMD_THATACTORSTART
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SCROLLMAP
		DB	$40
		DB	$01
		DB	$00
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	:?_HERO_STAND_DR_ANIM
		DW	(?_HERO_STAND_DR_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$07

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_RUN_RIGHT_ANIM
		DW	(?_HERO_RUN_RIGHT_ANIM&$FFFF)
		DB	$1C
		DB	:?_HERO_RUN_DOWN_ANIM
		DW	(?_HERO_RUN_DOWN_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$0A

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$04

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_BACK_UP_ANIM
		DW	(?_HERO_BACK_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_STAND_DR_ANIM
		DW	(?_HERO_STAND_DR_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
?_UNDTOWN01_ELDER
	DB	CMD_THISACTORSETANIM
		DB	:?_OLDLADY05_STAND_UP_ANIM
		DW	(?_OLDLADY05_STAND_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORSETANIM
		DB	:?_OLDLADY05_STAND_LEFT_ANIM
		DW	(?_OLDLADY05_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_THISACTORSETANIM
		DB	:?_OLDLADY05_STAND_DOWN_ANIM
		DW	(?_OLDLADY05_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$06

	DB	CMD_THISACTORSETANIM
		DB	:?_OLDLADY05_STAND_RIGHT_ANIM
		DW	(?_OLDLADY05_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$0B

	DB	CMD_THISACTORSETANIM
		DB	:?_OLDLADY05_STAND_UR_ANIM
		DW	(?_OLDLADY05_STAND_UR_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$04

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_OLDLADY05_WALK_RIGHT_ANIM
		DW	(?_OLDLADY05_WALK_RIGHT_ANIM&$FFFF)
		DB	$C0
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_UNDTOWN01_ULK2
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ULK_RUN_UP_ANIM
		DW	(?_ULK_RUN_UP_ANIM&$FFFF)
		DB	$28
		DB	:?_ULK_STAND_UP_ANIM
		DW	(?_ULK_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ULK_WALK_DOWN_ANIM
		DW	(?_ULK_WALK_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_ULK_STAND_DOWN_ANIM
		DW	(?_ULK_STAND_DOWN_ANIM&$FFFF)
		DB	$20
		DB	:?_ULK_STAND_LEFT_ANIM
		DW	(?_ULK_STAND_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_ULK_STAND_UP_ANIM
		DW	(?_ULK_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ULK_STAND_LEFT_ANIM
		DW	(?_ULK_STAND_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_ULK_STAND_RIGHT_ANIM
		DW	(?_ULK_STAND_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_ULK_STAND_LEFT_ANIM
		DW	(?_ULK_STAND_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_ULK_STAND_RIGHT_ANIM
		DW	(?_ULK_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ULK_RUN_DOWN_ANIM
		DW	(?_ULK_RUN_DOWN_ANIM&$FFFF)
		DB	$40
		DB	:?_ULK_STAND_DOWN_ANIM
		DW	(?_ULK_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_UNDTOWN01_ULK
	DB	CMD_DELAY
		DB	$50

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ULK_WALK_RIGHT_ANIM
		DW	(?_ULK_WALK_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	:?_ULK_RUN_RIGHT_ANIM
		DW	(?_ULK_RUN_RIGHT_ANIM&$FFFF)
		DB	$18
		DB	:?_ULK_WALK_UP_ANIM
		DW	(?_ULK_WALK_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_ULK_WALK_RIGHT_ANIM
		DW	(?_ULK_WALK_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_ULK_STAND_DR_ANIM
		DW	(?_ULK_STAND_DR_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$05

	DB	CMD_THISACTORSETANIM
		DB	:?_ULK_STAND_RIGHT_ANIM
		DW	(?_ULK_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ULK_RUN_DOWN_ANIM
		DW	(?_ULK_RUN_DOWN_ANIM&$FFFF)
		DB	$08
		DB	:?_ULK_RUN_RIGHT_ANIM
		DW	(?_ULK_RUN_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_ULK_STAND_RIGHT_ANIM
		DW	(?_ULK_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$0B

	DB	CMD_THISACTORSETANIM
		DB	:?_ULK_STAND_DL_ANIM
		DW	(?_ULK_STAND_DL_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$04

	DB	CMD_THISACTORSETANIM
		DB	:?_ULK_STAND_RIGHT_ANIM
		DW	(?_ULK_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$0D

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ULK_WALK_LEFT_ANIM
		DW	(?_ULK_WALK_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_ULK_WALK_UP_ANIM
		DW	(?_ULK_WALK_UP_ANIM&$FFFF)
		DB	$70
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_UNDTOWN01_WOMANB
	DB	CMD_DELAY
		DB	$A0

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WOMAN_WALK_UP_ANIM
		DW	(?_WOMAN_WALK_UP_ANIM&$FFFF)
		DB	$30
		DB	:?_WOMAN_STAND_RIGHT_ANIM
		DW	(?_WOMAN_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$03

	DB	CMD_THISACTORSETANIM
		DB	:?_WOMAN_STAND_UL_ANIM
		DW	(?_WOMAN_STAND_UL_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$05

	DB	CMD_THISACTORSETANIM
		DB	:?_WOMAN_STAND_UR_ANIM
		DW	(?_WOMAN_STAND_UR_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_THISACTORSETANIM
		DB	:?_WOMAN_STAND_RIGHT_ANIM
		DW	(?_WOMAN_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$04

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WOMAN_WALK_RIGHT_ANIM
		DW	(?_WOMAN_WALK_RIGHT_ANIM&$FFFF)
		DB	$C4
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_UNDTOWN01_GOGOR
	DB	CMD_DELAY
		DB	$A0

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_WALK_DOWN_ANIM
		DW	(?_GOGOR_WALK_DOWN_ANIM&$FFFF)
		DB	$40
		DB	:?_GOGOR_STAND_DL_ANIM
		DW	(?_GOGOR_STAND_DL_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_THISACTORSETANIM
		DB	:?_GOGOR_STAND_DR_ANIM
		DW	(?_GOGOR_STAND_DR_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$09

	DB	CMD_THISACTORSETANIM
		DB	:?_GOGOR_STAND_RIGHT_ANIM
		DW	(?_GOGOR_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$04

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_WALK_RIGHT_ANIM
		DW	(?_GOGOR_WALK_RIGHT_ANIM&$FFFF)
		DB	$C0
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_UNDTOWN01_GRUK
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GRUK_WALK_LEFT_ANIM
		DW	(?_GRUK_WALK_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_GRUK_STAND_LEFT_ANIM
		DW	(?_GRUK_STAND_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_GRUK_WALK_LEFT_ANIM
		DW	(?_GRUK_WALK_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_GRUK_STAND_LEFT_ANIM
		DW	(?_GRUK_STAND_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_GRUK_WALK_LEFT_ANIM
		DW	(?_GRUK_WALK_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_GRUK_STAND_LEFT_ANIM
		DW	(?_GRUK_STAND_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_GRUK_WALK_LEFT_ANIM
		DW	(?_GRUK_WALK_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_GRUK_STAND_LEFT_ANIM
		DW	(?_GRUK_STAND_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_GRUK_WALK_LEFT_ANIM
		DW	(?_GRUK_WALK_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_GRUK_STAND_LEFT_ANIM
		DW	(?_GRUK_STAND_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_GRUK_WALK_LEFT_ANIM
		DW	(?_GRUK_WALK_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_GRUK_STAND_LEFT_ANIM
		DW	(?_GRUK_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETEVENTMASTER
		DB	$01

	DB	CMD_WAITEVENTTEXT
		DB	$08

	DB	CMD_THISACTORSETANIM
		DB	:?_GRUK_STAND_UP_ANIM
		DW	(?_GRUK_STAND_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$0B

	DB	CMD_THISACTORSETANIM
		DB	:?_GRUK_STAND_DL_ANIM
		DW	(?_GRUK_STAND_DL_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$04

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GRUK_STAND_RIGHT_ANIM
		DW	(?_GRUK_STAND_RIGHT_ANIM&$FFFF)
		DB	$60
		DB	$00

	DB	CMD_THISACTORSETANIM
		DB	:?_GRUK_STAND_LEFT_ANIM
		DW	(?_GRUK_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_GRUKSPEK
		DW	(?_UNDTOWN01_GRUKSPEK&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$0D

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GRUK_WALK_LEFT_ANIM
		DW	(?_GRUK_WALK_LEFT_ANIM&$FFFF)
		DB	$38
		DB	:?_GRUK_WALK_UP_ANIM
		DW	(?_GRUK_WALK_UP_ANIM&$FFFF)
		DB	$70
		DB	$00

	DB	CMD_SETEVENTMASTER
		DB	$0A

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_UNDTOWN01_BEAT_UNDERNEATH
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTOWN01B&$FFFF)
		DB	:MAP_UNDTOWN01B

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTOWN01B&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_UNDTOWN01&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$36
		DB	$15
		DW	$D522
		DB	$00
		DB	:?_UNDTOWN01_BU_HERO
		DW	(?_UNDTOWN01_BU_HERO&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$18
		DB	$17
		DW	$D57C
		DB	$00
		DB	:?_UNDTOWN01_BU_MORAG
		DW	(?_UNDTOWN01_BU_MORAG&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$1B
		DB	$18
		DW	$D5BB
		DB	$37
		DB	:?_UNDTOWN01_BU_ELDER
		DW	(?_UNDTOWN01_BU_ELDER&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$1A
		DB	$18
		DW	$D5BA
		DB	$5C
		DB	:?_UNDTOWN01_BU_WORM
		DW	(?_UNDTOWN01_BU_WORM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$1A
		DB	$18
		DW	$D5BA
		DB	$65
		DB	:?_SMOKE_ANIM
		DW	(?_SMOKE_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$13
		DB	$27
		DW	$D937
		DB	$74
		DB	:?_CORE01_STAND_LEFT_ANIM
		DW	(?_CORE01_STAND_LEFT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0E
		DB	$25
		DW	$D8BA
		DB	$74
		DB	:?_CORE01_STAND_DOWN_ANIM
		DW	(?_CORE01_STAND_DOWN_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$10
		DB	$22
		DW	$D808
		DB	$74
		DB	:?_CORE01_STAND_LEFT_ANIM
		DW	(?_CORE01_STAND_LEFT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$11
		DB	$20
		DW	$D791
		DB	$98
		DB	:?_CORE02_STAND_LEFT_ANIM
		DW	(?_CORE02_STAND_LEFT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0B
		DB	$20
		DW	$D78B
		DB	$98
		DB	:?_CORE02_STAND_UP_ANIM
		DW	(?_CORE02_STAND_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$29
		DB	:BIT_MORAG
		DW	(BIT_MORAG&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$07
		DB	:BIT_MORAGHURT
		DW	(BIT_MORAGHURT&$FFFF)
		DW	$8300
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$25
		DB	:BIT_OLDLADY05
		DW	(BIT_OLDLADY05&$FFFF)
		DW	$8370
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$09
		DB	:BIT_ELDERWORM
		DW	(BIT_ELDERWORM&$FFFF)
		DW	$85C0
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$0F
		DB	:BIT_SMOKE
		DW	(BIT_SMOKE&$FFFF)
		DW	$8650
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$24
		DB	:BIT_CORE01
		DW	(BIT_CORE01&$FFFF)
		DW	$8740
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$2C
		DB	:BIT_CORE02
		DW	(BIT_CORE02&$FFFF)
		DW	$8980
		DB	$00

	DB	CMD_SETCAMERA
		DB	$31
		DB	$15

	DB	CMD_SONGSTART
		DB	SONGID_morag

	DB	CMD_SCENEREADY

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_CAMERASEEK
		DB	$0E
		DB	$29
		DB	$04

	DB	CMD_SETSCROLL
		DB	:?_PANDESTRUCTION
		DW	(?_PANDESTRUCTION&$FFFF)

	DB	CMD_WAITEVENTSCROLL
		DB	$01

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$17
		DB	$23
		DW	$D84B
		DB	$74
		DB	:?_CORE01_RUN_UP_ANIM
		DW	(?_CORE01_RUN_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$1B
		DB	$1F
		DW	$D75F
		DB	$74
		DB	:?_CORE01_STAND_RIGHT_ANIM
		DW	(?_CORE01_STAND_RIGHT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$16
		DB	$26
		DW	$D8FE
		DB	$74
		DB	:?_CORE01_RUN_UP_ANIM
		DW	(?_CORE01_RUN_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$23
		DB	$18
		DW	$D5C3
		DB	$98
		DB	:?_CORE02_STAND_DOWN_ANIM
		DW	(?_CORE02_STAND_DOWN_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$21
		DB	$12
		DW	$D459
		DB	$98
		DB	:?_CORE02_STAND_RIGHT_ANIM
		DW	(?_CORE02_STAND_RIGHT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_WAITEVENTSCROLL
		DB	$02

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$18
		DB	$18
		DW	$D5B8
		DB	$74
		DB	:?_UNDTOWN01_BU_COREDUDE
		DW	(?_UNDTOWN01_BU_COREDUDE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_CAMERASEEK
		DB	$19
		DB	$18
		DB	$02

	DB	CMD_SETEVENTMASTER
		DB	$02

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTOP
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$1E
		DB	$17
		DW	$D582
		DB	$00
		DB	:?_UNDTOWN01_BU_HERO2
		DW	(?_UNDTOWN01_BU_HERO2&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_END

;********************************
?_UNDTOWN01_BU_HERO
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_RUN_LEFT_ANIM
		DW	(?_HERO_RUN_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_STAND_UL_ANIM
		DW	(?_HERO_STAND_UL_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_OH_NO_TXT
		DW	(?_UNDTOWN01_OH_NO_TXT&$FFFF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_STAND_UL_ANIM
		DW	(?_HERO_STAND_UL_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$04
		DB	:?_HERO_STAND_DL_ANIM
		DW	(?_HERO_STAND_DL_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
?_UNDTOWN01_BU_HERO2
	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$05

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_RUN_LEFT_ANIM
		DW	(?_HERO_RUN_LEFT_ANIM&$FFFF)
		DB	$18
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$10
		DB	$01
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_BU_TXT_2
		DW	(?_UNDTOWN01_BU_TXT_2&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$07

	DB	CMD_SETBTLRETURN
		DB	:?_UNDTOWN01_RETURN
		DW	(?_UNDTOWN01_RETURN&$FFFF)
		DB	:?_UNDTOWN01_RETURN
		DW	(?_UNDTOWN01_RETURN&$FFFF)

	DB	CMD_JUMP
		DB	:?_UNDTOWN_MORAGBAT
		DW	(?_UNDTOWN_MORAGBAT&$FFFF)

;********************************
?_UNDTOWN01_BU_MORAG
	DB	CMD_THISACTORSETANIM
		DB	:?_MORAG_HOVER_DOWN_ANIM
		DW	(?_MORAG_HOVER_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$02

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_BU_TXT_1A
		DW	(?_UNDTOWN01_BU_TXT_1A&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$09

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MORAG_HOVER_DL_ANIM
		DW	(?_MORAG_HOVER_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_MORAG_HOVER_UL_ANIM
		DW	(?_MORAG_HOVER_UL_ANIM&$FFFF)
		DB	$08
		DB	:?_MORAG_HOVER_UP_ANIM
		DW	(?_MORAG_HOVER_UP_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_BU_TXT_1
		DW	(?_UNDTOWN01_BU_TXT_1&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORSETANIM
		DB	:?_MORAG_HOVER_DR_ANIM
		DW	(?_MORAG_HOVER_DR_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MORAG_HOVER_UR_ANIM
		DW	(?_MORAG_HOVER_UR_ANIM&$FFFF)
		DB	$10
		DB	:?_MORAG_HOVER_UP_ANIM
		DW	(?_MORAG_HOVER_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_MORAG_HOVER_UL_ANIM
		DW	(?_MORAG_HOVER_UL_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_BU_TXT_1B
		DW	(?_UNDTOWN01_BU_TXT_1B&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$03

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MORAG_HOVER_UP_ANIM
		DW	(?_MORAG_HOVER_UP_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_UR_ANIM
		DW	(?_MORAG_HOVER_UR_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_DR_ANIM
		DW	(?_MORAG_HOVER_DR_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$04

	DB	CMD_THATACTORSTART
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_DELAY
		DB	$20

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_DELAY
		DB	$10

	DB	CMD_DELAY
		DB	$90

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MORAG_HOVER_DR_ANIM
		DW	(?_MORAG_HOVER_DR_ANIM&$FFFF)
		DB	$30
		DB	:?_MORAG_HOVER_DOWN_ANIM
		DW	(?_MORAG_HOVER_DOWN_ANIM&$FFFF)
		DB	$30
		DB	:?_MORAG_HOVER_DL_ANIM
		DW	(?_MORAG_HOVER_DL_ANIM&$FFFF)
		DB	$30
		DB	:?_MORAG_HOVER_DR_ANIM
		DW	(?_MORAG_HOVER_DR_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_BU_TXT_1C
		DW	(?_UNDTOWN01_BU_TXT_1C&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$06

	DB	CMD_END

;********************************
?_UNDTOWN01_BU_COREDUDE
	DB	CMD_THISACTORSETANIM
		DB	:?_CORE01_STAND_UP_ANIM
		DW	(?_CORE01_STAND_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$09

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_CORE01_STAND_UR_ANIM
		DW	(?_CORE01_STAND_UR_ANIM&$FFFF)
		DB	$04
		DB	:?_CORE01_STAND_RIGHT_ANIM
		DW	(?_CORE01_STAND_RIGHT_ANIM&$FFFF)
		DB	$04
		DB	:?_CORE01_STAND_DR_ANIM
		DW	(?_CORE01_STAND_DR_ANIM&$FFFF)
		DB	$04
		DB	:?_CORE01_WALK_DOWN_ANIM
		DW	(?_CORE01_WALK_DOWN_ANIM&$FFFF)
		DB	$60
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_UNDTOWN01_BU_ELDER
	DB	CMD_THISACTORSETANIM
		DB	:?_OLDLADY05_STAND_LEFT_ANIM
		DW	(?_OLDLADY05_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$09

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_OLDLADY05_WALK_LEFT_ANIM
		DW	(?_OLDLADY05_WALK_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_OLDLADY05_STAND_UL_ANIM
		DW	(?_OLDLADY05_STAND_UL_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
?_UNDTOWN01_BU_WORM
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ELDERWORM_STOP_LEFT_ANIM
		DW	(?_ELDERWORM_STOP_LEFT_ANIM&$FFFF)
		DB	$50
		DB	:?_ELDERWORM_STOP_RIGHT_ANIM
		DW	(?_ELDERWORM_STOP_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_ELDERWORM_STOP_LEFT_ANIM
		DW	(?_ELDERWORM_STOP_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_ELDERWORM_STOP_RIGHT_ANIM
		DW	(?_ELDERWORM_STOP_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_ELDERWORM_STOP_LEFT_ANIM
		DW	(?_ELDERWORM_STOP_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_ELDERWORM_LEFT_ANIM
		DW	(?_ELDERWORM_LEFT_ANIM&$FFFF)
		DB	$80
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_UNDTOWN01_BU_WENCE
	DB	CMD_THISACTORSETANIM
		DB	:?_WENCE_BOW_RIGHT_ANIM
		DW	(?_WENCE_BOW_RIGHT_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$80

	DB	CMD_WAITEVENTTEXT
		DB	$09

	DB	CMD_SONGSTART
		DB	SONGID_wencetheme

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WENCE_WALK_RIGHT_ANIM
		DW	(?_WENCE_WALK_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_WENCE_STAND_RIGHT_ANIM
		DW	(?_WENCE_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTMASTER
		DB	$0F

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WENCE_WALK_RIGHT_ANIM
		DW	(?_WENCE_WALK_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	:?_WENCE_STAND_RIGHT_ANIM
		DW	(?_WENCE_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$0D

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WENCE_RUN_RIGHT_ANIM
		DW	(?_WENCE_RUN_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_WENCE_STAND_RIGHT_ANIM
		DW	(?_WENCE_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
?_UNDTOWN01_BU_ARROW
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ARROW_FLY_RIGHT_ANIM
		DW	(?_ARROW_FLY_RIGHT_ANIM&$FFFF)
		DB	$07
		DB	$00

	DB	CMD_SFX
		DB	SFXID_MISC05

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ARROW_FLY_RIGHT_ANIM
		DW	(?_ARROW_FLY_RIGHT_ANIM&$FFFF)
		DB	$07
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ARROW_STOP_RIGHT_ANIM
		DW	(?_ARROW_STOP_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SONGSTOP

	DB	CMD_SETEVENTMASTER
		DB	$0A

	DB	CMD_WAITEVENTMASTER
		DB	$0B

	DB	CMD_THISACTORSETANIM
		DB	:?_ARROW_STUCK_RIGHT_ANIM
		DW	(?_ARROW_STUCK_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$0C

	DB	CMD_THISACTORSETANIM
		DB	:?_ARROW_STUCK_LEFT_ANIM
		DW	(?_ARROW_STUCK_LEFT_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$0D

	DB	CMD_THISACTORSETANIM
		DB	:?_ARROW_STUCK_RIGHT_ANIM
		DW	(?_ARROW_STUCK_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$0E

	DB	CMD_THISACTORSETANIM
		DB	:?_ARROW_FALL_RIGHT_ANIM
		DW	(?_ARROW_FALL_RIGHT_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$20

	DB	CMD_SETEVENTMASTER
		DB	$0F

	DB	CMD_END

;********************************
?_PANDESTRUCTION
	DB	CMD_SCROLLMAP
		DB	$28
		DB	$00
		DB	$FE
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$28
		DB	$02
		DB	$FE
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$18
		DB	$02
		DB	$00
		DB	$00

	DB	CMD_SETEVENTSCROLL
		DB	$01

	DB	CMD_SCROLLMAP
		DB	$48
		DB	$02
		DB	$00
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$28
		DB	$02
		DB	$FE
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$28
		DB	$00
		DB	$FE
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$28
		DB	$FE
		DB	$FE
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$60
		DB	$FE
		DB	$00
		DB	$00

	DB	CMD_DELAY
		DB	$20

	DB	CMD_SETEVENTSCROLL
		DB	$02

	DB	CMD_END

;********************************
?_UNDTOWN01_LOCKED
	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_UNDTOWN01_LOCKED_TONY
		DW	(?_UNDTOWN01_LOCKED_TONY&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_LOCKED_TXT
		DW	(?_UNDTOWN01_LOCKED_TXT&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_END

;********************************
?_UNDTOWN01_LOCKED_TXT

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$02),(?AL+$0A),(?AL+$04),(?AL+$03),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDTOWN01_LOCKED_TONY
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
?_UNDTOWN01_RETURN
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTOWN01B&$FFFF)
		DB	:MAP_UNDTOWN01B

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTOWN01B&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_UNDTOWN01&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$1B
		DB	$17
		DW	$D57F
		DB	$00
		DB	:?_UNDTOWN01_RETURN_HERO
		DW	(?_UNDTOWN01_RETURN_HERO&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$18
		DB	$17
		DW	$D57C
		DB	$00
		DB	:?_UNDTOWN01_RETURN_MORAG
		DW	(?_UNDTOWN01_RETURN_MORAG&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$1A
		DB	$18
		DW	$D5BA
		DB	$37
		DB	:?_SMOKE_ANIM
		DW	(?_SMOKE_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR09-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$14
		DB	$17
		DW	$D578
		DB	$4B
		DB	:?_UNDTOWN01_BU_WENCE
		DW	(?_UNDTOWN01_BU_WENCE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR10-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$14
		DB	$16
		DW	$D53C
		DB	$7A
		DB	:?_UNDTOWN01_BU_ARROW
		DW	(?_UNDTOWN01_BU_ARROW&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$29
		DB	:BIT_MORAG
		DW	(BIT_MORAG&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$07
		DB	:BIT_MORAGHURT
		DW	(BIT_MORAGHURT&$FFFF)
		DW	$8300
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$0F
		DB	:BIT_SMOKE
		DW	(BIT_SMOKE&$FFFF)
		DW	$8370
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$29
		DB	:BIT_WENCE
		DW	(BIT_WENCE&$FFFF)
		DW	$84B0
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$06
		DB	:BIT_WENCEARROW
		DW	(BIT_WENCEARROW&$FFFF)
		DW	$8740
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$02
		DB	:BIT_ARROW
		DW	(BIT_ARROW&$FFFF)
		DW	$87A0
		DB	$00

	DB	CMD_SETCAMERA
		DB	$1A
		DB	$16

	DB	CMD_SONGSTART
		DB	SONGID_morag

	DB	CMD_SCENEREADY

	DB	CMD_WAITEVENTTEXT
		DB	$0F

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$A0
		DB	$0F

	DB	CMD_DELAY
		DB	$78

	DB	CMD_SETGAMECOUNT
		DW	$000B

	DB	CMD_JUMP
		DB	:?_NRMFOREST07_BEAT_UNDERNEATH
		DW	(?_NRMFOREST07_BEAT_UNDERNEATH&$FFFF)

	DB	CMD_END

;********************************
?_UNDTOWN01_RETURN_HERO
	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_SLOSHED_LEFT
		DW	(?_HERO_SLOSHED_LEFT&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$0F

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_BU_TXT_6
		DW	(?_UNDTOWN01_BU_TXT_6&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$0E

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_SLOSHED_LEFT
		DW	(?_HERO_SLOSHED_LEFT&$FFFF)

	DB	CMD_END

;********************************
?_UNDTOWN01_RETURN_MORAG
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MORAG_HOVER_DR_ANIM
		DW	(?_MORAG_HOVER_DR_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_BU_TXT_2B
		DW	(?_UNDTOWN01_BU_TXT_2B&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$08

	DB	CMD_THISACTORSETANIM
		DB	:?_MORAG_HOVER_DL_ANIM
		DW	(?_MORAG_HOVER_DL_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$10

	DB	CMD_THATACTORSTART
		DB	(((ACTOR09-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR10-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_WAITEVENTMASTER
		DB	$0A

	DB	CMD_THISACTORSETANIM
		DB	:?_MORAG_HURT_LEFT
		DW	(?_MORAG_HURT_LEFT&$FFFF)

	DB	CMD_DELAY
		DB	$20

	DB	CMD_SCROLLMAP
		DB	$20
		DB	$FF
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_BU_TXT_3
		DW	(?_UNDTOWN01_BU_TXT_3&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$09

	DB	CMD_THISACTORSETANIM
		DB	:?_MORAG_HOVER_DL_ANIM
		DW	(?_MORAG_HOVER_DL_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$0A

	DB	CMD_THISACTORSETANIM
		DB	:?_MORAG_HOVER_UR_ANIM
		DW	(?_MORAG_HOVER_UR_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_BU_TXT_4
		DW	(?_UNDTOWN01_BU_TXT_4&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$0B

	DB	CMD_THISACTORSETANIM
		DB	:?_MORAG_HOVER_DL_ANIM
		DW	(?_MORAG_HOVER_DL_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDTOWN01_BU_TXT_5
		DW	(?_UNDTOWN01_BU_TXT_5&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$0C

	DB	CMD_THISACTORSETANIM
		DB	:?_MORAG_FLICKER
		DW	(?_MORAG_FLICKER&$FFFF)

	DB	CMD_DELAY
		DB	$10

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_UNDTOWN01_ENDING
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTOWN01B&$FFFF)
		DB	:MAP_UNDTOWN01B

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTOWN01B&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$10
		DB	$15
		DW	$D4FC
		DB	$00
		DB	:?_UNDTOWN01_GOGOR_END
		DW	(?_UNDTOWN01_GOGOR_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$14
		DB	$15
		DW	$D500
		DB	$36
		DB	:?_UNDTOWN01_ULK_END
		DW	(?_UNDTOWN01_ULK_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$17
		DB	$16
		DW	$D53F
		DB	$66
		DB	:?_UNDTOWN01_GRUK_END
		DW	(?_UNDTOWN01_GRUK_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$17
		DB	$14
		DW	$D4C7
		DB	$8F
		DB	:?_UNDTOWN01_LOGAN_END
		DW	(?_UNDTOWN01_LOGAN_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$18
		DB	$14
		DW	$D4C8
		DB	$B9
		DB	:?_UNDTOWN01_WORVELINE_END
		DW	(?_UNDTOWN01_WORVELINE_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$10
		DB	$15
		DW	$D4FC
		DB	$C3
		DB	:?_UNDTOWN01_ELDERWORM_END
		DW	(?_UNDTOWN01_ELDERWORM_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$36
		DB	:BIT_GOGOR
		DW	(BIT_GOGOR&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_ULK
		DW	(BIT_ULK&$FFFF)
		DW	$8360
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$29
		DB	:BIT_GRUK
		DW	(BIT_GRUK&$FFFF)
		DW	$8660
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$2A
		DB	:BIT_LOGAN
		DW	(BIT_LOGAN&$FFFF)
		DW	$88F0
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$0A
		DB	:BIT_WORVELINE
		DW	(BIT_WORVELINE&$FFFF)
		DW	$8B90
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$09
		DB	:BIT_ELDERWORM
		DW	(BIT_ELDERWORM&$FFFF)
		DW	$8C30
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETCAMERA
		DB	$17
		DB	$16

	DB	CMD_SCENEREADY

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_JUMP
		DB	:?_CLDLAVAVENT05_ENDING
		DW	(?_CLDLAVAVENT05_ENDING&$FFFF)

	DB	CMD_END

;********************************
?_UNDTOWN01_GOGOR_END
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_WALK_RIGHT_ANIM
		DW	(?_GOGOR_WALK_RIGHT_ANIM&$FFFF)
		DB	$30
		DB	:?_GOGOR_STAND_RIGHT_ANIM
		DW	(?_GOGOR_STAND_RIGHT_ANIM&$FFFF)
		DB	$30
		DB	$00

	DB	CMD_SYNC
		DB	$01
		DB	$03

	DB	CMD_DELAY
		DB	$80

	DB	CMD_DELAY
		DB	$80

	DB	CMD_DELAY
		DB	$48

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_STAND_RIGHT_ANIM
		DW	(?_GOGOR_STAND_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_STAND_DR_ANIM
		DW	(?_GOGOR_STAND_DR_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$02
		DB	$05

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_STAND_RIGHT_ANIM
		DW	(?_GOGOR_STAND_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_STAND_UR_ANIM
		DW	(?_GOGOR_STAND_UR_ANIM&$FFFF)
		DB	$04
		DB	:?_GOGOR_STAND_UP_ANIM
		DW	(?_GOGOR_STAND_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_STAND_RIGHT_ANIM
		DW	(?_GOGOR_STAND_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_STAND_DOWN_ANIM
		DW	(?_GOGOR_STAND_DOWN_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_SYNC
		DB	$03
		DB	$02

	DB	CMD_SYNC
		DB	$04
		DB	$05

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GOGOR_RUN_RIGHT_ANIM
		DW	(?_GOGOR_RUN_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_GOGOR_RUN_DOWN_ANIM
		DW	(?_GOGOR_RUN_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_RUN_RIGHT_ANIM
		DW	(?_GOGOR_RUN_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	:?_GOGOR_RUN_UP_ANIM
		DW	(?_GOGOR_RUN_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_GOGOR_RUN_LEFT_ANIM
		DW	(?_GOGOR_RUN_LEFT_ANIM&$FFFF)
		DB	$30
		DB	:?_GOGOR_RUN_DOWN_ANIM
		DW	(?_GOGOR_RUN_DOWN_ANIM&$FFFF)
		DB	$18
		DB	:?_GOGOR_RUN_RIGHT_ANIM
		DW	(?_GOGOR_RUN_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_RUN_UP_ANIM
		DW	(?_GOGOR_RUN_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_RUN_LEFT_ANIM
		DW	(?_GOGOR_RUN_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_RUN_DOWN_ANIM
		DW	(?_GOGOR_RUN_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_RUN_RIGHT_ANIM
		DW	(?_GOGOR_RUN_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_RUN_UP_ANIM
		DW	(?_GOGOR_RUN_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_RUN_LEFT_ANIM
		DW	(?_GOGOR_RUN_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_RUN_DOWN_ANIM
		DW	(?_GOGOR_RUN_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_RUN_RIGHT_ANIM
		DW	(?_GOGOR_RUN_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_RUN_UP_ANIM
		DW	(?_GOGOR_RUN_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_RUN_LEFT_ANIM
		DW	(?_GOGOR_RUN_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_GOGOR_RUN_DOWN_ANIM
		DW	(?_GOGOR_RUN_DOWN_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_END

;********************************
?_UNDTOWN01_ULK_END
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ULK_STAND_RIGHT_ANIM
		DW	(?_ULK_STAND_RIGHT_ANIM&$FFFF)
		DB	$80
		DB	:?_ULK_WALK_RIGHT_ANIM
		DW	(?_ULK_WALK_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_ULK_STAND_DOWN_ANIM
		DW	(?_ULK_STAND_DOWN_ANIM&$FFFF)
		DB	$40
		DB	:?_ULK_STAND_RIGHT_ANIM
		DW	(?_ULK_STAND_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_ULK_STAND_UP_ANIM
		DW	(?_ULK_STAND_UP_ANIM&$FFFF)
		DB	$40
		DB	:?_ULK_STAND_UR_ANIM
		DW	(?_ULK_STAND_UR_ANIM&$FFFF)
		DB	$04
		DB	:?_ULK_WALK_RIGHT_ANIM
		DW	(?_ULK_WALK_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_ULK_STAND_RIGHT_ANIM
		DW	(?_ULK_STAND_RIGHT_ANIM&$FFFF)
		DB	$A0
		DB	$00

	DB	CMD_SYNC
		DB	$01
		DB	$03

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ULK_STAND_UR_ANIM
		DW	(?_ULK_STAND_UR_ANIM&$FFFF)
		DB	$04
		DB	:?_ULK_STAND_UP_ANIM
		DW	(?_ULK_STAND_UP_ANIM&$FFFF)
		DB	$40
		DB	:?_ULK_STAND_RIGHT_ANIM
		DW	(?_ULK_STAND_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_ULK_STAND_DOWN_ANIM
		DW	(?_ULK_STAND_DOWN_ANIM&$FFFF)
		DB	$40
		DB	:?_ULK_STAND_DL_ANIM
		DW	(?_ULK_STAND_DL_ANIM&$FFFF)
		DB	$10
		DB	:?_ULK_STAND_LEFT_ANIM
		DW	(?_ULK_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_ULK_WALK_LEFT_ANIM
		DW	(?_ULK_WALK_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_ULK_STAND_LEFT_ANIM
		DW	(?_ULK_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_ULK_RUN_LEFT_ANIM
		DW	(?_ULK_RUN_LEFT_ANIM&$FFFF)
		DB	$18
		DB	:?_ULK_STAND_LEFT_ANIM
		DW	(?_ULK_STAND_LEFT_ANIM&$FFFF)
		DB	$80
		DB	:?_ULK_WALK_RIGHT_ANIM
		DW	(?_ULK_WALK_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_ULK_STAND_LEFT_ANIM
		DW	(?_ULK_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$02
		DB	$05

	DB	CMD_DELAY
		DB	$10

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ULK_STAND_DL_ANIM
		DW	(?_ULK_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	:?_ULK_STAND_UL_ANIM
		DW	(?_ULK_STAND_UL_ANIM&$FFFF)
		DB	$08
		DB	:?_ULK_WALK_RIGHT_ANIM
		DW	(?_ULK_WALK_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_ULK_STAND_LEFT_ANIM
		DW	(?_ULK_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$04
		DB	$05

	DB	CMD_DELAY
		DB	$0C

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ULK_STAND_DL_ANIM
		DW	(?_ULK_STAND_DL_ANIM&$FFFF)
		DB	$10
		DB	:?_ULK_STAND_DOWN_ANIM
		DW	(?_ULK_STAND_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_ULK_STAND_DR_ANIM
		DW	(?_ULK_STAND_DR_ANIM&$FFFF)
		DB	$10
		DB	:?_ULK_STAND_RIGHT_ANIM
		DW	(?_ULK_STAND_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_END

;********************************
?_UNDTOWN01_GRUK_END
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GRUK_STAND_RIGHT_ANIM
		DW	(?_GRUK_STAND_RIGHT_ANIM&$FFFF)
		DB	$60
		DB	:?_GRUK_STAND_UR_ANIM
		DW	(?_GRUK_STAND_UR_ANIM&$FFFF)
		DB	$40
		DB	:?_GRUK_STAND_RIGHT_ANIM
		DW	(?_GRUK_STAND_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_GRUK_STAND_DR_ANIM
		DW	(?_GRUK_STAND_DR_ANIM&$FFFF)
		DB	$40
		DB	:?_GRUK_STAND_UL_ANIM
		DW	(?_GRUK_STAND_UL_ANIM&$FFFF)
		DB	$60
		DB	:?_GRUK_STAND_UP_ANIM
		DW	(?_GRUK_STAND_UP_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_SYNC
		DB	$00
		DB	$03

	DB	CMD_DELAY
		DB	$20

	DB	CMD_SCROLLMAP
		DB	$20
		DB	$FF
		DB	$00
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_DELAY
		DB	$70

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GRUK_STAND_UP_ANIM
		DW	(?_GRUK_STAND_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_GRUK_STAND_LEFT_ANIM
		DW	(?_GRUK_STAND_LEFT_ANIM&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_SYNC
		DB	$01
		DB	$03

	DB	CMD_SYNC
		DB	$02
		DB	$05

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GRUK_RUN_LEFT_ANIM
		DW	(?_GRUK_RUN_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_GRUK_STAND_UP_ANIM
		DW	(?_GRUK_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$04
		DB	$05

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GRUK_STAND_UR_ANIM
		DW	(?_GRUK_STAND_UR_ANIM&$FFFF)
		DB	$08
		DB	:?_GRUK_STAND_RIGHT_ANIM
		DW	(?_GRUK_STAND_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_GRUK_STAND_DR_ANIM
		DW	(?_GRUK_STAND_DR_ANIM&$FFFF)
		DB	$10
		DB	:?_GRUK_STAND_RIGHT_ANIM
		DW	(?_GRUK_STAND_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_SYNC
		DB	$05
		DB	$02

	DB	CMD_DELAY
		DB	$40

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GRUK_STAND_UR_ANIM
		DW	(?_GRUK_STAND_UR_ANIM&$FFFF)
		DB	$04
		DB	:?_GRUK_STAND_UP_ANIM
		DW	(?_GRUK_STAND_UP_ANIM&$FFFF)
		DB	$04
		DB	:?_GRUK_STAND_UL_ANIM
		DW	(?_GRUK_STAND_UL_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
?_UNDTOWN01_LOGAN_END
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_LOGAN_STAND_UR_ANIM
		DW	(?_LOGAN_STAND_UR_ANIM&$FFFF)
		DB	$40
		DB	:?_LOGAN_STAND_RIGHT_ANIM
		DW	(?_LOGAN_STAND_RIGHT_ANIM&$FFFF)
		DB	$48
		DB	:?_LOGAN_STAND_DR_ANIM
		DW	(?_LOGAN_STAND_DR_ANIM&$FFFF)
		DB	$60
		DB	:?_LOGAN_STAND_DOWN_ANIM
		DW	(?_LOGAN_STAND_DOWN_ANIM&$FFFF)
		DB	$20
		DB	:?_LOGAN_STAND_DL_ANIM
		DW	(?_LOGAN_STAND_DL_ANIM&$FFFF)
		DB	$68
		DB	:?_LOGAN_STAND_DOWN_ANIM
		DW	(?_LOGAN_STAND_DOWN_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_SYNC
		DB	$00
		DB	$03

	DB	CMD_DELAY
		DB	$40

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_LOGAN_STAND_RIGHT_ANIM
		DW	(?_LOGAN_STAND_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_LOGAN_STAND_DR_ANIM
		DW	(?_LOGAN_STAND_DR_ANIM&$FFFF)
		DB	$04
		DB	:?_LOGAN_STAND_DOWN_ANIM
		DW	(?_LOGAN_STAND_DOWN_ANIM&$FFFF)
		DB	$04
		DB	:?_LOGAN_STAND_DL_ANIM
		DW	(?_LOGAN_STAND_DL_ANIM&$FFFF)
		DB	$04
		DB	:?_LOGAN_STAND_LEFT_ANIM
		DW	(?_LOGAN_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_LOGAN_STAND_DOWN_ANIM
		DW	(?_LOGAN_STAND_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_LOGAN_STAND_LEFT_ANIM
		DW	(?_LOGAN_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$02
		DB	$05

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_LOGAN_RUN_LEFT_ANIM
		DW	(?_LOGAN_RUN_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_LOGAN_STAND_DOWN_ANIM
		DW	(?_LOGAN_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$04
		DB	$05

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_LOGAN_STAND_DR_ANIM
		DW	(?_LOGAN_STAND_DR_ANIM&$FFFF)
		DB	$30
		DB	:?_LOGAN_STAND_RIGHT_ANIM
		DW	(?_LOGAN_STAND_RIGHT_ANIM&$FFFF)
		DB	$60
		DB	$00

	DB	CMD_SYNC
		DB	$05
		DB	$02

	DB	CMD_THATACTORSTART
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_DELAY
		DB	$30

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_LOGAN_STAND_DR_ANIM
		DW	(?_LOGAN_STAND_DR_ANIM&$FFFF)
		DB	$04
		DB	:?_LOGAN_STAND_DOWN_ANIM
		DW	(?_LOGAN_STAND_DOWN_ANIM&$FFFF)
		DB	$04
		DB	:?_LOGAN_STAND_DL_ANIM
		DW	(?_LOGAN_STAND_DL_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
?_UNDTOWN01_WORVELINE_END
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WORVELINE_STAND_RIGHT_ANIM
		DW	(?_WORVELINE_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$00
		DB	$03

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WORVELINE_STAND_LEFT_ANIM
		DW	(?_WORVELINE_STAND_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_WORVELINE_SUCKIT_LEFT_ANIM
		DW	(?_WORVELINE_SUCKIT_LEFT_ANIM&$FFFF)
		DB	$80
		DB	:?_WORVELINE_STAND_LEFT_ANIM
		DW	(?_WORVELINE_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$02
		DB	$05

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WORVELINE_SUCKIT_LEFT_ANIM
		DW	(?_WORVELINE_SUCKIT_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$03
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WORVELINE_MOVE_UP_ANIM
		DW	(?_WORVELINE_MOVE_UP_ANIM&$FFFF)
		DB	$08
		DB	:?_WORVELINE_MOVE_LEFT_ANIM
		DW	(?_WORVELINE_MOVE_LEFT_ANIM&$FFFF)
		DB	$30
		DB	:?_WORVELINE_MOVE_DOWN_ANIM
		DW	(?_WORVELINE_MOVE_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_WORVELINE_MOVE_RIGHT_ANIM
		DW	(?_WORVELINE_MOVE_RIGHT_ANIM&$FFFF)
		DB	$02
		DB	:?_WORVELINE_HOP_UP_ANIM
		DW	(?_WORVELINE_HOP_UP_ANIM&$FFFF)
		DB	$18
		DB	$00

	DB	CMD_SYNC
		DB	$04
		DB	$05

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WORVELINE_MOVE_RIGHT_ANIM
		DW	(?_WORVELINE_MOVE_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_WORVELINE_MOVE_DOWN_ANIM
		DW	(?_WORVELINE_MOVE_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_WORVELINE_MOVE_RIGHT_ANIM
		DW	(?_WORVELINE_MOVE_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	:?_WORVELINE_MOVE_UP_ANIM
		DW	(?_WORVELINE_MOVE_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_WORVELINE_MOVE_LEFT_ANIM
		DW	(?_WORVELINE_MOVE_LEFT_ANIM&$FFFF)
		DB	$30
		DB	:?_WORVELINE_MOVE_DOWN_ANIM
		DW	(?_WORVELINE_MOVE_DOWN_ANIM&$FFFF)
		DB	$18
		DB	:?_WORVELINE_MOVE_RIGHT_ANIM
		DW	(?_WORVELINE_MOVE_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_WORVELINE_MOVE_UP_ANIM
		DW	(?_WORVELINE_MOVE_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_WORVELINE_MOVE_LEFT_ANIM
		DW	(?_WORVELINE_MOVE_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_WORVELINE_MOVE_DOWN_ANIM
		DW	(?_WORVELINE_MOVE_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_WORVELINE_MOVE_RIGHT_ANIM
		DW	(?_WORVELINE_MOVE_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_WORVELINE_MOVE_UP_ANIM
		DW	(?_WORVELINE_MOVE_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_WORVELINE_MOVE_LEFT_ANIM
		DW	(?_WORVELINE_MOVE_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_WORVELINE_MOVE_DOWN_ANIM
		DW	(?_WORVELINE_MOVE_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_WORVELINE_MOVE_RIGHT_ANIM
		DW	(?_WORVELINE_MOVE_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_WORVELINE_MOVE_UP_ANIM
		DW	(?_WORVELINE_MOVE_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_WORVELINE_MOVE_LEFT_ANIM
		DW	(?_WORVELINE_MOVE_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_WORVELINE_MOVE_DOWN_ANIM
		DW	(?_WORVELINE_MOVE_DOWN_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_END

;********************************
?_UNDTOWN01_ELDERWORM_END
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ELDERWORM_RIGHT_ANIM
		DW	(?_ELDERWORM_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_ELDERWORM_STOP_RIGHT_ANIM
		DW	(?_ELDERWORM_STOP_RIGHT_ANIM&$FFFF)
		DB	$80
		DB	$00

	DB	CMD_SETEVENTMASTER
		DB	$01

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_OVRSURFACE02
	GLOBAL	?_UNDTOWN02
	GLOBAL	?_UNDTOWN03
	GLOBAL	?_UNDTOWN04
	GLOBAL	?_UNDTOWN05
	GLOBAL	?_UNDTOWN06
	GLOBAL	?_UNDTOWN07
	GLOBAL	?_UNDTOWN08
	GLOBAL	XRAM_TREASURE
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?ANIM_AI
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	?_HERO_WALK_DOWN_ANIM
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	?DO_SCREENFX_SWIRL
	GLOBAL	?_BATTLE_FADE_IN
	GLOBAL	BTL_ENEMY_ENGL
	GLOBAL	BTL_ENEMY_ENGH
	GLOBAL	BTL_CREATURE_SLOTS
	GLOBAL	ACTOR0C
	GLOBAL	?_MORAG_BATTLE_TAUNT_ANIM
	GLOBAL	?_MORAG_BATTLE_STAND_ANIM
	GLOBAL	MAP_UNDTOWN01B
	GLOBAL	HS_UNDTOWN01B
	GLOBAL	PAL_HERO
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR00
	GLOBAL	?TALKER_AI
	GLOBAL	ACTOR01
	GLOBAL	?TRIGGER_AI
	GLOBAL	?_ARROW_STOPPED_RIGHT_ANIM
	GLOBAL	ACTOR02
	GLOBAL	ACTOR03
	GLOBAL	BIT_ELDERWORM
	GLOBAL	BIT_ARROW
	GLOBAL	BIT_MAN04
	GLOBAL	BIT_MAN03
	GLOBAL	?_MAN03_STAND_DL_ANIM
	GLOBAL	?_MAN03_STAND_DOWN_ANIM
	GLOBAL	?_MAN03_STAND_UR_ANIM
	GLOBAL	?_MAN03_STAND_UP_ANIM
	GLOBAL	?_MAN03_STAND_UL_ANIM
	GLOBAL	?_MAN03_STAND_LEFT_ANIM
	GLOBAL	?_MAN03_STAND_DR_ANIM
	GLOBAL	?_MAN03_STAND_RIGHT_ANIM
	GLOBAL	?_MAN03_RUN_LEFT_ANIM
	GLOBAL	?_MAN03_RUN_DOWN_ANIM
	GLOBAL	?_MAN03_RUN_UP_ANIM
	GLOBAL	?_MAN03_RUN_RIGHT_ANIM
	GLOBAL	?_FACE_MAN03
	GLOBAL	?_FACE_ELDERWORM
	GLOBAL	?_ELDERWORM_LEFT_ANIM
	GLOBAL	?_ELDERWORM_STOP_LEFT_ANIM
	GLOBAL	?_ELDERWORM_STOP_RIGHT_ANIM
	GLOBAL	?_ELDERWORM_RIGHT_ANIM
	GLOBAL	?_MAN04_STAND_DOWN_ANIM
	GLOBAL	?_MAN04_WALK_RIGHT_ANIM
	GLOBAL	?_MAN04_STAND_DR_ANIM
	GLOBAL	?_MAN04_STAND_DL_ANIM
	GLOBAL	?_MAN04_WALK_LEFT_ANIM
	GLOBAL	?_FACE_MAN04
	GLOBAL	?_HERO_STAND_LEFT_ANIM
	GLOBAL	?_MAN04_WALK_UP_ANIM
	GLOBAL	?_HERO_STAND_UL_ANIM
	GLOBAL	MAP_UNDTOWN01
	GLOBAL	HS_UNDTOWN01
	GLOBAL	TR_UNDTOWN01
	GLOBAL	ACTOR04
	GLOBAL	ACTOR05
	GLOBAL	BIT_OLDMAN03
	GLOBAL	BIT_OLDLADY03
	GLOBAL	BIT_GIRL03
	GLOBAL	BIT_WOMAN
	GLOBAL	BIT_BOY
	GLOBAL	?_OLDMAN03_STAND_LEFT_ANIM
	GLOBAL	?_FACE_OLDMAN03
	GLOBAL	?_OLDLADY03_STAND_LEFT_ANIM
	GLOBAL	?_FACE_OLDLADY03
	GLOBAL	?_GIRL03_STAND_LEFT_ANIM
	GLOBAL	?_FACE_GIRL03
	GLOBAL	?_WOMAN_STAND_DOWN_ANIM
	GLOBAL	?_FACE_WOMAN
	GLOBAL	?_FACE_BOY
	GLOBAL	?_BOY_STAND_DL_ANIM
	GLOBAL	?_BOY_RUN_RIGHT_ANIM
	GLOBAL	?_BOY_RUN_UP_ANIM
	GLOBAL	?_BOY_STAND_UL_ANIM
	GLOBAL	?_BOY_STAND_UR_ANIM
	GLOBAL	?_BOY_RUN_DOWN_ANIM
	GLOBAL	?_BOY_RUN_LEFT_ANIM
	GLOBAL	?_BOY_STAND_DR_ANIM
	GLOBAL	?_OLDMAN03_WALK_LEFT_ANIM
	GLOBAL	?_OLDMAN03_WALK_UP_ANIM
	GLOBAL	?_OLDMAN03_STAND_DL_ANIM
	GLOBAL	?_OLDMAN03_STAND_UL_ANIM
	GLOBAL	?_OLDMAN03_WALK_DOWN_ANIM
	GLOBAL	?_OLDMAN03_STAND_DR_ANIM
	GLOBAL	?_OLDMAN03_STAND_UR_ANIM
	GLOBAL	?_OLDMAN03_WALK_RIGHT_ANIM
	GLOBAL	?_OLDMAN03_STAND_DOWN_ANIM
	GLOBAL	?_OLDMAN03_STAND_UP_ANIM
	GLOBAL	?_OLDMAN03_STAND_RIGHT_ANIM
	GLOBAL	?_OLDLADY03_WALK_LEFT_ANIM
	GLOBAL	?_OLDLADY03_STAND_DOWN_ANIM
	GLOBAL	?_OLDLADY03_STAND_DL_ANIM
	GLOBAL	?_OLDLADY03_STAND_DR_ANIM
	GLOBAL	?_OLDLADY03_WALK_RIGHT_ANIM
	GLOBAL	?_OLDLADY03_STAND_RIGHT_ANIM
	GLOBAL	?_OLDLADY03_STAND_UR_ANIM
	GLOBAL	?_OLDLADY03_STAND_UL_ANIM
	GLOBAL	?_MAN03_WALK_DOWN_ANIM
	GLOBAL	?_MAN03_WALK_RIGHT_ANIM
	GLOBAL	?_MAN03_WALK_LEFT_ANIM
	GLOBAL	?_MAN03_WALK_UP_ANIM
	GLOBAL	?_GIRL03_WALK_LEFT_ANIM
	GLOBAL	?_GIRL03_WALK_UP_ANIM
	GLOBAL	?_GIRL03_STAND_DL_ANIM
	GLOBAL	?_GIRL03_STAND_UL_ANIM
	GLOBAL	?_GIRL03_WALK_DOWN_ANIM
	GLOBAL	?_GIRL03_STAND_DR_ANIM
	GLOBAL	?_GIRL03_STAND_UR_ANIM
	GLOBAL	?_GIRL03_WALK_RIGHT_ANIM
	GLOBAL	?_GIRL03_STAND_DOWN_ANIM
	GLOBAL	?_GIRL03_STAND_UP_ANIM
	GLOBAL	?_GIRL03_STAND_RIGHT_ANIM
	GLOBAL	ACTOR06
	GLOBAL	ACTOR07
	GLOBAL	ACTOR08
	GLOBAL	BIT_OLDLADY05
	GLOBAL	BIT_ULK
	GLOBAL	BIT_KORG
	GLOBAL	BIT_ZET
	GLOBAL	BIT_GOGOR
	GLOBAL	?_HERO_WALK_LEFT_ANIM
	GLOBAL	?_HERO_RUN_LEFT_ANIM
	GLOBAL	?_HERO_RUN_UP_ANIM
	GLOBAL	?_HERO_STAND_RIGHT_ANIM
	GLOBAL	?_OLDLADY05_STAND_UP_ANIM
	GLOBAL	?_FACE_OLDLADY05
	GLOBAL	?_OLDLADY05_STAND_RIGHT_ANIM
	GLOBAL	?_ULK_STAND_UP_ANIM
	GLOBAL	?_ULK_STAND_LEFT_ANIM
	GLOBAL	?_ULK_STAND_UL_ANIM
	GLOBAL	?_ULK_STAND_RIGHT_ANIM
	GLOBAL	?_ULK_RUN_DOWN_ANIM
	GLOBAL	?_ULK_STAND_DOWN_ANIM
	GLOBAL	?_KORG_STAND_DOWN_ANIM
	GLOBAL	?_KORG_STAND_LEFT_ANIM
	GLOBAL	?_KORG_STAND_DL_ANIM
	GLOBAL	?_KORG_WALK_UP_ANIM
	GLOBAL	?_KORG_WALK_LEFT_ANIM
	GLOBAL	?_KORG_STAND_UP_ANIM
	GLOBAL	?_ZET_STAND_DOWN_ANIM
	GLOBAL	?_ZET_STAND_DR_ANIM
	GLOBAL	?_ZET_STAND_RIGHT_ANIM
	GLOBAL	?_ZET_STAND_UR_ANIM
	GLOBAL	?_ZET_STAND_UP_ANIM
	GLOBAL	?_ZET_WALK_UP_ANIM
	GLOBAL	?_GOGOR_WALK_UP_ANIM
	GLOBAL	?_GOGOR_STAND_UL_ANIM
	GLOBAL	?_GOGOR_STAND_LEFT_ANIM
	GLOBAL	?_GOGOR_STAND_DL_ANIM
	GLOBAL	?_GOGOR_STAND_DOWN_ANIM
	GLOBAL	?_GOGOR_WALK_LEFT_ANIM
	GLOBAL	?_GOGOR_STAND_UP_ANIM
	GLOBAL	?_OLDLADY05_WALK_DOWN_ANIM
	GLOBAL	BIT_GRUK
	GLOBAL	?_HERO_STANDR_ANIM
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_HERO_STAND_DL_ANIM
	GLOBAL	?_HERO_STAND_DR_ANIM
	GLOBAL	?_HERO_RUN_DOWN_ANIM
	GLOBAL	?_HERO_RUN_RIGHT_ANIM
	GLOBAL	?_HERO_BACK_UP_ANIM
	GLOBAL	?_OLDLADY05_STAND_LEFT_ANIM
	GLOBAL	?_OLDLADY05_STAND_DOWN_ANIM
	GLOBAL	?_OLDLADY05_STAND_UR_ANIM
	GLOBAL	?_OLDLADY05_WALK_RIGHT_ANIM
	GLOBAL	?_ULK_RUN_UP_ANIM
	GLOBAL	?_ULK_WALK_DOWN_ANIM
	GLOBAL	?_ULK_WALK_RIGHT_ANIM
	GLOBAL	?_ULK_RUN_RIGHT_ANIM
	GLOBAL	?_ULK_WALK_UP_ANIM
	GLOBAL	?_ULK_STAND_DR_ANIM
	GLOBAL	?_ULK_STAND_DL_ANIM
	GLOBAL	?_ULK_WALK_LEFT_ANIM
	GLOBAL	?_WOMAN_WALK_UP_ANIM
	GLOBAL	?_WOMAN_STAND_RIGHT_ANIM
	GLOBAL	?_WOMAN_STAND_UL_ANIM
	GLOBAL	?_WOMAN_STAND_UR_ANIM
	GLOBAL	?_WOMAN_WALK_RIGHT_ANIM
	GLOBAL	?_GOGOR_WALK_DOWN_ANIM
	GLOBAL	?_GOGOR_STAND_DR_ANIM
	GLOBAL	?_GOGOR_STAND_RIGHT_ANIM
	GLOBAL	?_GOGOR_WALK_RIGHT_ANIM
	GLOBAL	?_GRUK_WALK_LEFT_ANIM
	GLOBAL	?_GRUK_STAND_LEFT_ANIM
	GLOBAL	?_GRUK_STAND_UP_ANIM
	GLOBAL	?_GRUK_STAND_DL_ANIM
	GLOBAL	?_GRUK_STAND_RIGHT_ANIM
	GLOBAL	?_GRUK_WALK_UP_ANIM
	GLOBAL	?_SMOKE_ANIM
	GLOBAL	?_CORE01_STAND_LEFT_ANIM
	GLOBAL	?_CORE01_STAND_DOWN_ANIM
	GLOBAL	?_CORE02_STAND_LEFT_ANIM
	GLOBAL	?_CORE02_STAND_UP_ANIM
	GLOBAL	BIT_MORAG
	GLOBAL	BIT_MORAGHURT
	GLOBAL	BIT_SMOKE
	GLOBAL	BIT_CORE01
	GLOBAL	BIT_CORE02
	GLOBAL	?_CORE01_RUN_UP_ANIM
	GLOBAL	?_CORE01_STAND_RIGHT_ANIM
	GLOBAL	?_CORE02_STAND_DOWN_ANIM
	GLOBAL	?_CORE02_STAND_RIGHT_ANIM
	GLOBAL	?_MORAG_HOVER_DOWN_ANIM
	GLOBAL	?_MORAG_HOVER_DL_ANIM
	GLOBAL	?_MORAG_HOVER_UL_ANIM
	GLOBAL	?_MORAG_HOVER_UP_ANIM
	GLOBAL	?_MORAG_HOVER_DR_ANIM
	GLOBAL	?_MORAG_HOVER_UR_ANIM
	GLOBAL	?_CORE01_STAND_UP_ANIM
	GLOBAL	?_CORE01_STAND_UR_ANIM
	GLOBAL	?_CORE01_STAND_DR_ANIM
	GLOBAL	?_CORE01_WALK_DOWN_ANIM
	GLOBAL	?_OLDLADY05_WALK_LEFT_ANIM
	GLOBAL	?_OLDLADY05_STAND_UL_ANIM
	GLOBAL	?_WENCE_BOW_RIGHT_ANIM
	GLOBAL	?_WENCE_WALK_RIGHT_ANIM
	GLOBAL	?_WENCE_STAND_RIGHT_ANIM
	GLOBAL	?_WENCE_RUN_RIGHT_ANIM
	GLOBAL	?_ARROW_FLY_RIGHT_ANIM
	GLOBAL	?_ARROW_STOP_RIGHT_ANIM
	GLOBAL	?_ARROW_STUCK_RIGHT_ANIM
	GLOBAL	?_ARROW_STUCK_LEFT_ANIM
	GLOBAL	?_ARROW_FALL_RIGHT_ANIM
	GLOBAL	ACTOR09
	GLOBAL	ACTOR10
	GLOBAL	BIT_WENCE
	GLOBAL	BIT_WENCEARROW
	GLOBAL	?_NRMFOREST07_BEAT_UNDERNEATH
	GLOBAL	?_HERO_SLOSHED_LEFT
	GLOBAL	?_MORAG_HURT_LEFT
	GLOBAL	?_MORAG_FLICKER
	GLOBAL	BIT_LOGAN
	GLOBAL	BIT_WORVELINE
	GLOBAL	?_CLDLAVAVENT05_ENDING
	GLOBAL	?_GOGOR_STAND_UR_ANIM
	GLOBAL	?_GOGOR_RUN_RIGHT_ANIM
	GLOBAL	?_GOGOR_RUN_DOWN_ANIM
	GLOBAL	?_GOGOR_RUN_UP_ANIM
	GLOBAL	?_GOGOR_RUN_LEFT_ANIM
	GLOBAL	?_ULK_STAND_UR_ANIM
	GLOBAL	?_ULK_RUN_LEFT_ANIM
	GLOBAL	?_GRUK_STAND_UR_ANIM
	GLOBAL	?_GRUK_STAND_DR_ANIM
	GLOBAL	?_GRUK_STAND_UL_ANIM
	GLOBAL	?_GRUK_RUN_LEFT_ANIM
	GLOBAL	?_LOGAN_STAND_UR_ANIM
	GLOBAL	?_LOGAN_STAND_RIGHT_ANIM
	GLOBAL	?_LOGAN_STAND_DR_ANIM
	GLOBAL	?_LOGAN_STAND_DOWN_ANIM
	GLOBAL	?_LOGAN_STAND_DL_ANIM
	GLOBAL	?_LOGAN_STAND_LEFT_ANIM
	GLOBAL	?_LOGAN_RUN_LEFT_ANIM
	GLOBAL	?_WORVELINE_STAND_RIGHT_ANIM
	GLOBAL	?_WORVELINE_STAND_LEFT_ANIM
	GLOBAL	?_WORVELINE_SUCKIT_LEFT_ANIM
	GLOBAL	?_WORVELINE_MOVE_UP_ANIM
	GLOBAL	?_WORVELINE_MOVE_LEFT_ANIM
	GLOBAL	?_WORVELINE_MOVE_DOWN_ANIM
	GLOBAL	?_WORVELINE_MOVE_RIGHT_ANIM
	GLOBAL	?_WORVELINE_HOP_UP_ANIM

;********************************
	END
;********************************