;Size:2506
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\UNDERNEATH\CAVERN\MAP08\UNDCAVE08.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_UNDCAVERN08_DR_1
	DB	CMD_HEROTODOOR
		DB	$03
		DB	$0C
		DB	$0E
		DB	$0D

	DB	CMD_JUMP
		DB	:?_UNDCAVERN07
		DW	(?_UNDCAVERN07&$FFFF)

;********************************
?_UNDCAVERN08_TR_1
	DB	CMD_JUMP
		DB	:?_UNDCAVE08_FOSSIK_RING
		DW	(?_UNDCAVE08_FOSSIK_RING&$FFFF)

;********************************
?_UNDCAVERN08_TR_2

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0F),(?AL+$0E),(?AL+$12),(?AL+$12),(?AL+$08),(?AL+$01),(?AL+$0B),(?AL+$18),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$02),(?AL+$0E),(?AL+$0C),(?AL+$0F),(?AL+$0B),(?AL+$04),(?AL+$17),?WAIT
		DB	(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$14),(?AL+$0C),(?AL+$04),(?AL+$0D),(?AL+$13),?HURRY
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$0C),(?AL+$08),(?AL+$0D),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	(?AU+$0E),(?AL+$11),?SPCE,(?AL+$00),?SPCE,(?AL+$01),(?AL+$04),(?AL+$03),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDCAVERN08_TR_3

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),?SPCE,(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0B),?SPCE,(?AL+$0C),(?AL+$08),(?AL+$0D),(?AL+$04),(?AL+$11),?APST,(?AL+$12),?HURRY
		DB	(?AL+$01),(?AL+$04),(?AL+$03),?PERD,?WAIT
		DB	(?AU+$12),(?AL+$0E),(?AL+$05),(?AL+$13),?SPCE,(?AL+$00),(?AL+$12),?SPCE,(?AL+$00),?SPCE,(?AL+$01),(?AL+$08),(?AL+$06),?HURRY
		DB	(?AL+$0E),(?AL+$0B),?APST,?SPCE,(?AL+$12),(?AL+$0B),(?AL+$00),(?AL+$01),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$0D),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDCAVERN08_TR_4

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$02),(?AL+$07),(?AL+$00),(?AL+$08),(?AL+$11),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$12),?SPCE,(?AL+$12),(?AL+$02),(?AL+$11),(?AL+$00),(?AL+$13),(?AL+$02),(?AL+$07),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$08),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDCAVERN08_TR_5

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$02),(?AL+$07),(?AL+$00),(?AL+$08),(?AL+$11),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$12),?SPCE,(?AL+$12),(?AL+$02),(?AL+$11),(?AL+$00),(?AL+$13),(?AL+$02),(?AL+$07),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AU+$00),(?AU+$0D),(?AU+$03),?SPCE,(?AL+$01),(?AL+$08),(?AL+$13),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$11),(?AL+$0A),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$12),(?AL+$02),(?AL+$00),(?AL+$11),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDCAVERN08_TR_6

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$12),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$07),(?AL+$00),(?AL+$12),?WAIT
		DB	(?AL+$12),(?AL+$04),(?AL+$11),(?AL+$15),(?AL+$04),(?AL+$03),?SPCE,(?AL+$00),(?AL+$12),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$12),(?AL+$02),(?AL+$11),(?AL+$00),(?AL+$13),(?AL+$02),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$0F),(?AL+$0E),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$13),(?AL+$04),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$16),(?AL+$07),(?AL+$08),(?AL+$0B),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDCAVERN08_TXT_1

	DB	CMD_TEXTICON
		DW	ICON_LOGAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$08),?PERD,?SPCE,?SPCE,(?AU+$12),(?AU+$0D),(?AU+$08),(?AU+$0A),(?AU+$13),?HURRY
		DB	(?AU+$12),(?AU+$0D),(?AU+$08),(?AU+$0A),(?AU+$13),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$14),(?AL+$07),?PERD,?PERD,?PERD,?SPCE,(?AL+$07),(?AL+$08),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_LOGAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$02),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AU+$0F),(?AL+$11),(?AL+$0E),(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$02),(?AL+$13),(?AL+$0E),(?AL+$11),?WAIT
		DB	(?AU+$06),(?AL+$00),(?AL+$11),(?AL+$00),(?AL+$06),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$04),(?AL+$11),(?AL+$12),(?AL+$04),(?AL+$11),(?AL+$0A),(?AL+$04),(?AL+$11),?SPCE,(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_LOGAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$0F),(?AL+$11),(?AL+$0E),(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$02),(?AL+$13),(?AL+$0E),(?AL+$11),?HURRY
		DB	(?AU+$06),(?AL+$00),(?AL+$11),(?AL+$00),(?AL+$06),(?AL+$04),?EXCL,?SPCE,(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$12),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$08),(?AL+$0D),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$07),(?AL+$04),(?AL+$00),(?AL+$03),(?AL+$10),(?AL+$14),(?AL+$00),(?AL+$11),(?AL+$13),(?AL+$04),(?AL+$11),(?AL+$12),?WAIT
		DB	(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$08),(?AL+$0D),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$14),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),(?AL+$0D),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$07),?PERD,?WAIT
		DB	(?AU+$0C),(?AL+$08),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$12),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$0C),(?AL+$04),?HURRY
		DB	(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$0E),(?AL+$14),(?AL+$13),?COMM,?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?HURRY
		DB	(?AL+$0C),(?AL+$08),(?AL+$0B),(?AL+$0A),?COMM,?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$01),(?AL+$14),(?AL+$18),?WAIT
		DB	(?AL+$0C),(?AL+$08),(?AL+$0D),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$04),(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$0F),(?AL+$0C),(?AL+$04),(?AL+$0D),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDCAVERN08_TXT_2
	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DL_ANIM
		DW	(?_HERO_STAND_DL_ANIM&$FFFF)


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WORVELINE

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AU+$11),(?AU+$11),(?AU+$11),(?AU+$11),(?AU+$11),(?AU+$11),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_LOGAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$0C),(?AL+$18),?HURRY
		DB	(?AL+$0B),(?AL+$08),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$01),(?AL+$08),(?AL+$12),(?AL+$08),(?AL+$16),(?AL+$0E),(?AL+$06),?WAIT
		DB	(?AU+$16),(?AL+$0E),(?AL+$11),(?AL+$15),(?AL+$04),(?AL+$0B),(?AL+$08),(?AL+$0D),(?AL+$04),?EXCL,?SPCE,(?AU+$12),(?AL+$00),(?AL+$18),?HURRY
		DB	(?AL+$07),(?AL+$08),?COMM,?SPCE,(?AU+$16),(?AL+$0E),(?AL+$11),(?AL+$15),(?AL+$08),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
?_UNDCAVERN08_TXT_3

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$14),(?AU+$06),(?AU+$07),?EXCL,?EXCL,?HURRY
		DB	?EOF

	DB	CMD_DELAY
		DB	$40

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$03

	DB	CMD_END

;********************************
?_UNDCAVERN08_TXT_4

	DB	CMD_TEXTICON
		DW	ICON_LOGAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$00),(?AL+$07),(?AL+$00),?SPCE,(?AL+$07),(?AL+$00),(?AL+$07),(?AL+$00),(?AL+$07),(?AL+$00),?EXCL,?EXCL,?HURRY
		DB	(?AU+$07),(?AL+$04),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$04),(?AL+$00),(?AL+$07),?COMM,?SPCE,(?AL+$06),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_LOGAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$07),?COMM,?SPCE,(?AL+$01),(?AL+$18),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$16),(?AL+$00),(?AL+$18),?COMM,?HURRY
		DB	(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$06),(?AL+$14),(?AL+$18),?WAIT
		DB	(?AL+$16),(?AL+$07),(?AL+$0E),?SPCE,(?AL+$12),(?AL+$04),(?AL+$0B),(?AL+$0B),(?AL+$12),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$14),(?AL+$05),(?AL+$05),?PERD,?WAIT
		DB	(?AU+$12),(?AU+$0D),(?AU+$08),(?AU+$0A),(?AU+$13),?SPCE,(?AU+$12),(?AU+$0D),(?AU+$08),(?AU+$0A),(?AU+$13),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$04

	DB	CMD_END

;********************************
?_UNDCAVERN08_TXT_5

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$0C),(?AL+$04),?SPCE,(?AL+$00),(?AL+$16),(?AL+$00),(?AL+$18),?HURRY
		DB	(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$05

	DB	CMD_END

;********************************
?_UNDCAVERN08_TXT_6

	DB	CMD_TEXTICON
		DW	ICON_LOGAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$04),(?AL+$04),(?AL+$03),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),?APST,?COMM,?HURRY
		DB	(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$08),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_UNDCAVERN08_LOGAN_SHOP
		DW	(?_UNDCAVERN08_LOGAN_SHOP&$FFFF)

;********************************
?_UNDCAVERN08_TXT_GRRRR

	DB	CMD_TEXTICON
		DW	ICON_WORVELINE

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AU+$11),(?AU+$11),(?AU+$11),(?AU+$11),?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$07

	DB	CMD_END

;********************************
?_UNDCAVERN08_LOGANG_TEXT

	DB	CMD_TEXTICON
		DW	ICON_LOGAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$04),(?AL+$04),(?AL+$03),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),?APST,?COMM,?HURRY
		DB	(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$08),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_UNDCAVERN08_LOGAN_SHOP
		DW	(?_UNDCAVERN08_LOGAN_SHOP&$FFFF)

;********************************
?_UNDCAVERN08_LOGAN_SHOP
	DB	CMD_MENUSHOP
		DB	:_DONE
		DW	(_DONE&$FFFF)
		DW	$000D
		DB	$04
		DB	INV_BALOO_SAP
		DW	$0023
		DB	INV_BALOO_ROOT
		DW	$003C
		DB	INV_REMEDY_DRINK
		DW	$0014
		DB	INV_POWER_GEM
		DW	$0005

	DB	CMD_SETEVENTTEXT
		DB	$01

;********************************
_DONE

	DB	CMD_TEXTICON
		DW	ICON_LOGAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$01),(?AL+$04),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$0D),(?AL+$06),(?AL+$04),(?AL+$11),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$14),(?AL+$01),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDCAVERN08_TXT_RINGSMITH
	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)


	DB	CMD_TEXTICON
		DW	ICON_FOSSIK

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$0B),(?AL+$0B),(?AL+$0E),?PERD,?WAIT
		DB	(?AU+$0D),(?AL+$08),(?AL+$02),(?AL+$04),?SPCE,(?AL+$03),(?AL+$00),(?AL+$18),?COMM,?HURRY
		DB	(?AL+$08),(?AL+$12),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$08),(?AL+$13),?QUST,?WAIT
		DB	?EOF

;********************************
_BACK_TO_MENU
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?SPCE,(?AU+$05),(?AL+$0E),(?AL+$11),(?AL+$06),(?AL+$04),?SPCE,?SPCE,(?AU+$04),(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$0F),?HURRY
		DB	?SPCE,(?AU+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?SPCE,?SPCE,(?AU+$03),(?AL+$0E),(?AL+$0D),(?AL+$04)
		DB	?EOF

	DB	CMD_TEXTMENU
		DB	$04
		DB	:_RINGSMITH
		DW	(_RINGSMITH&$FFFF)
		DB	:_UPGRADE
		DW	(_UPGRADE&$FFFF)
		DB	:_RINGBANK
		DW	(_RINGBANK&$FFFF)
		DB	:_END
		DW	(_END&$FFFF)

;********************************
_UPGRADE
	DB	CMD_TEXTCLOSE

	DB	CMD_MENURINGUPGRADE
		DW	$0010
		DB	$0F
		DB	GUM_GUM
		DB	PORKUSLIME
		DB	BRUB
		DB	GHOSTBWISP
		DB	AGOVO
		DB	WEEBAT
		DB	CAVERUDWOT
		DB	GIANTKORIT
		DB	BISIWOG
		DB	PARMALAG
		DB	TUSK_BWISP
		DB	VULBOR
		DB	MUSH_HYREN
		DB	LEAF_HYREN
		DB	ORMAGON

	DB	CMD_JUMP
		DB	:_BACK_TO_MENU
		DW	(_BACK_TO_MENU&$FFFF)

;********************************
_RINGBANK
	DB	CMD_TEXTCLOSE

	DB	CMD_MENURINGBANK

	DB	CMD_JUMP
		DB	:_BACK_TO_MENU
		DW	(_BACK_TO_MENU&$FFFF)

;********************************
_RINGSMITH
	DB	CMD_TEXTICON
		DW	ICON_FOSSIK

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_MENURINGSMITH
		DB	:_BANK_FULL
		DW	(_BANK_FULL&$FFFF)
		DB	:_BACK_TO_MENU
		DW	(_BACK_TO_MENU&$FFFF)
		DW	$0079
		DB	$0F
		DB	GUM_GUM
		DB	GUM_GUM
		DB	$01
		DB	CREATURE_NULL
		DB	$00
		DW	$0032
		DB	$0A
		DB	PORKUSLIME
		DB	PORKUSLIME
		DB	$02
		DB	GUM_GUM
		DB	$01
		DW	$0032
		DB	$0A
		DB	BRUB
		DB	BRUB
		DB	$02
		DB	CREATURE_NULL
		DB	$00
		DW	$0032
		DB	$0A
		DB	GHOSTBWISP
		DB	GHOSTBWISP
		DB	$03
		DB	PARMALAG
		DB	$01
		DW	$0046
		DB	$0A
		DB	AGOVO
		DB	AGOVO
		DB	$02
		DB	CREATURE_NULL
		DB	$00
		DW	$0046
		DB	$0D
		DB	WEEBAT
		DB	WEEBAT
		DB	$02
		DB	WEEBO
		DB	$01
		DW	$0046
		DB	$0D
		DB	CAVERUDWOT
		DB	CAVERUDWOT
		DB	$03
		DB	CREATURE_NULL
		DB	$00
		DW	$0064
		DB	$0D
		DB	GIANTKORIT
		DB	GIANTKORIT
		DB	$02
		DB	WEEBO
		DB	$01
		DW	$0064
		DB	$0F
		DB	BISIWOG
		DB	BISIWOG
		DB	$01
		DB	CREATURE_NULL
		DB	$00
		DW	$0064
		DB	$0F
		DB	PARMALAG
		DB	PARMALAG
		DB	$02
		DB	CREATURE_NULL
		DB	$00
		DW	$0064
		DB	$0F
		DB	TUSK_BWISP
		DB	TUSK_BWISP
		DB	$02
		DB	PARMALAG
		DB	$01
		DW	$0078
		DB	$0F
		DB	VULBOR
		DB	VULBOR
		DB	$03
		DB	CREATURE_NULL
		DB	$00
		DW	$0078
		DB	$0F
		DB	MUSH_HYREN
		DB	MUSH_HYREN
		DB	$03
		DB	WEEBO
		DB	$01
		DW	$00C8
		DB	$32
		DB	CAVE_HYREN
		DB	CAVE_HYREN
		DB	$04
		DB	CREATURE_NULL
		DB	$00
		DW	$012C
		DB	$32
		DB	ORMAGON
		DB	ORMAGON
		DB	$01
		DB	WEEBO
		DB	$01
		DW	$0190
		DB	$3C

;********************************
_DONE
	DB	CMD_THATACTORSETSCRIPT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_UNDCAVERN08_SMITHY
		DW	(?_UNDCAVERN08_SMITHY&$FFFF)

	DB	CMD_WAITANYEVENTMASTER


	DB	CMD_TEXTICON
		DW	ICON_FOSSIK

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?HURRY
		DB	?FORMAT,?WAIT
		DB	(?AU+$08),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$11),(?AL+$18),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$0D),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$0D),(?AL+$04),(?AL+$16),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?COMM,?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$00),(?AL+$11),(?AL+$04),(?AL+$00),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$13),(?AL+$12),(?AL+$08),(?AL+$03),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$06),(?AL+$00),(?AL+$11),(?AL+$00),(?AL+$06),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?WAIT
		DB	(?AL+$06),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_JUMPLOCAL
		DW	(_BACK_TO_MENU&$FFFF)

;********************************
_BANK_FULL

	DB	CMD_TEXTICON
		DW	ICON_FOSSIK

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AU+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AU+$01),(?AL+$00),(?AL+$0D),(?AL+$0A),?HURRY
		DB	(?AL+$08),(?AL+$12),?SPCE,(?AL+$05),(?AL+$14),(?AL+$0B),(?AL+$0B),?PERD,?WAIT
		DB	?EOF

	DB	CMD_JUMPLOCAL
		DW	(_BACK_TO_MENU&$FFFF)

;********************************
_END

	DB	CMD_TEXTICON
		DW	ICON_FOSSIK

	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?EXCL,?WAIT
		DB	(?AU+$05),(?AL+$0E),(?AL+$12),(?AL+$12),(?AL+$08),(?AL+$0A),?APST,(?AL+$12),?SPCE,(?AU+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AU+$12),(?AL+$07),(?AL+$0E),(?AL+$0F),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$16),(?AL+$00),(?AL+$18),(?AL+$12),?WAIT
		DB	(?AL+$0E),(?AL+$0F),(?AL+$04),(?AL+$0D),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SCROLLMAP
		DB	$18
		DB	$FE
		DB	$00
		DB	$00

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_END

;********************************
?_UNDCAVE08_INN_TXT

	DB	CMD_TEXTICON
		DW	ICON_OLDWOMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$0E),(?AL+$11),(?AL+$00),(?AL+$06),?SPCE,(?AL+$03),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$18),(?AL+$04),(?AL+$03),?HURRY
		DB	(?AL+$0C),(?AL+$18),?SPCE,(?AL+$08),(?AL+$0D),(?AL+$0D),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AU+$08),?WAIT
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$12),(?AL+$13),(?AL+$08),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$11),(?AL+$04),(?AL+$02),(?AL+$0E),(?AL+$11),(?AL+$03),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$09),(?AL+$0E),(?AL+$14),(?AL+$11),(?AL+$0D),(?AL+$04),(?AL+$18),?PERD,?SPCE,(?AU+$16),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?SPCE,(?AU+$18),(?AL+$04),(?AL+$12),?HURRY
		DB	?SPCE,(?AU+$0D),(?AL+$0E)
		DB	?EOF

	DB	CMD_TEXTMENU
		DB	$02
		DB	:_UND_INN_YES2
		DW	(_UND_INN_YES2&$FFFF)
		DB	:_UND_INN_NO2
		DW	(_UND_INN_NO2&$FFFF)

;********************************
_UND_INN_YES2
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_OLDWOMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$0E),(?AL+$0E),(?AL+$03),?SPCE,(?AL+$0D),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETLOADSCRIPT
		DB	:?_LOAD_UNDCAVE08
		DW	(?_LOAD_UNDCAVE08&$FFFF)

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_SAVEGAME
		DB	$01

	DB	CMD_DELAY
		DB	$40

	DB	CMD_JUMP
		DB	:?_UNDCAVE08_TONY_WAKING
		DW	(?_UNDCAVE08_TONY_WAKING&$FFFF)

;********************************
_UND_INN_NO2
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_OLDWOMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$02),(?AL+$00),(?AL+$11),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_LOAD_UNDCAVE08
	DB	CMD_HEROSETDOOR
		DB	$11
		DB	$0C

;********************************
?_UNDCAVERN08
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$01

	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0080)&$FFFF
		DB	$01
		DB	:?_UNDCAVERN08_GENERIC
		DW	(?_UNDCAVERN08_GENERIC&$FFFF)

;********************************
?_UNDCAVERN08_UNDERNEATH
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDCAVERN08&$FFFF)
		DB	:MAP_UNDCAVERN08

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDCAVERN08&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_UNDCAVERN08&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$0D
		DB	$13
		DW	$D189
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$02
		DB	$04
		DW	$D052
		DB	$00
		DB	:?_LOGAN_STAND_RIGHT_ANIM
		DW	(?_LOGAN_STAND_RIGHT_ANIM&$FFFF)
		DB	:?_UNDCAVERN08_LOGAN
		DW	(?_UNDCAVERN08_LOGAN&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$02
		DB	$06
		DW	$D07A
		DB	$30
		DB	:?_WORVELINE_ANIM
		DW	(?_WORVELINE_ANIM&$FFFF)
		DB	:?_UNDCAVERN08_WORVELINE
		DW	(?_UNDCAVERN08_WORVELINE&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0E
		DB	$04
		DW	$D05E
		DB	$0A
		DB	:?_FOSSIK_STAND_ANIM
		DW	(?_FOSSIK_STAND_ANIM&$FFFF)
		DB	:?_UNDCAVE08_FOSSIK_RING
		DW	(?_UNDCAVE08_FOSSIK_RING&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0B
		DB	$0B
		DW	$D0E7
		DB	$78
		DB	:?_OLDLADY03_STAND_DOWN_ANIM
		DW	(?_OLDLADY03_STAND_DOWN_ANIM&$FFFF)
		DB	:?_UNDCAVE08_INNKEEPER
		DW	(?_UNDCAVE08_INNKEEPER&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$28
		DB	:BIT_OLDLADY03
		DW	(BIT_OLDLADY03&$FFFF)
		DW	$8780
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_LOGAN
		DW	(BIT_LOGAN&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$0A
		DB	:BIT_WORVELINE
		DW	(BIT_WORVELINE&$FFFF)
		DW	$8300
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$3F
		DB	:BIT_FOSSIKRING
		DW	(BIT_FOSSIKRING&$FFFF)
		DW	$83A0
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_undtown

	DB	CMD_SCENEREADY

	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$0A
		DB	:_STARTER
		DW	(_STARTER&$FFFF)

	DB	CMD_END

;********************************
_STARTER
	DB	CMD_THATACTORSTART
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_END

;********************************
?_WORVELINE_ANIM
	DB	CMD_THISACTORSETANIM
		DB	:?_WORVELINE_STAND_RIGHT_ANIM
		DW	(?_WORVELINE_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WORVELINE_SUCKIT_RIGHT_ANIM
		DW	(?_WORVELINE_SUCKIT_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	:?_WORVELINE_STAND_RIGHT_ANIM
		DW	(?_WORVELINE_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETEVENTMASTER
		DB	$02

	DB	CMD_WAITEVENTMASTER
		DB	$03

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WORVELINE_MOVE_RIGHT_ANIM
		DW	(?_WORVELINE_MOVE_RIGHT_ANIM&$FFFF)
		DB	$0C
		DB	:?_WORVELINE_MOVE_LEFT_ANIM
		DW	(?_WORVELINE_MOVE_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_WORVELINE_MOVE_UP_ANIM
		DW	(?_WORVELINE_MOVE_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_WORVELINE_STAND_RIGHT_ANIM
		DW	(?_WORVELINE_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETEVENTMASTER
		DB	$04

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WORVELINE_HOP_UP_ANIM
		DW	(?_WORVELINE_HOP_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_WORVELINE_MOVE_RIGHT_ANIM
		DW	(?_WORVELINE_MOVE_RIGHT_ANIM&$FFFF)
		DB	$19
		DB	:?_WORVELINE_MOVE_DOWN_ANIM
		DW	(?_WORVELINE_MOVE_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_WORVELINE_MOVE_RIGHT_ANIM
		DW	(?_WORVELINE_MOVE_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_WORVELINE_MOVE_LEFT_ANIM
		DW	(?_WORVELINE_MOVE_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_WORVELINE_MOVE_RIGHT_ANIM
		DW	(?_WORVELINE_MOVE_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_WORVELINE_MOVE_LEFT_ANIM
		DW	(?_WORVELINE_MOVE_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_WORVELINE_MOVE_RIGHT_ANIM
		DW	(?_WORVELINE_MOVE_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_WORVELINE_MOVE_LEFT_ANIM
		DW	(?_WORVELINE_MOVE_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_WORVELINE_MOVE_RIGHT_ANIM
		DW	(?_WORVELINE_MOVE_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_WORVELINE_MOVE_LEFT_ANIM
		DW	(?_WORVELINE_MOVE_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_WORVELINE_MOVE_RIGHT_ANIM
		DW	(?_WORVELINE_MOVE_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_WORVELINE_MOVE_LEFT_ANIM
		DW	(?_WORVELINE_MOVE_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_WORVELINE_MOVE_RIGHT_ANIM
		DW	(?_WORVELINE_MOVE_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_WORVELINE_MOVE_LEFT_ANIM
		DW	(?_WORVELINE_MOVE_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_WORVELINE_STAND_LEFT_ANIM
		DW	(?_WORVELINE_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTMASTER
		DB	$09

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WORVELINE_HOP_DOWN_ANIM
		DW	(?_WORVELINE_HOP_DOWN_ANIM&$FFFF)
		DB	$09
		DB	:?_WORVELINE_MOVE_UP_ANIM
		DW	(?_WORVELINE_MOVE_UP_ANIM&$FFFF)
		DB	$00
		DB	:?_WORVELINE_MOVE_LEFT_ANIM
		DW	(?_WORVELINE_MOVE_LEFT_ANIM&$FFFF)
		DB	$1E
		DB	:?_WORVELINE_STAND_RIGHT_ANIM
		DW	(?_WORVELINE_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETEVENTMASTER
		DB	$05

	DB	CMD_END

;********************************
?_UNDCAVERN08_LOGAN
	DB	CMD_THISACTORSETANIM
		DB	:?_LOGAN_STAND_RIGHT_ANIM
		DW	(?_LOGAN_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0080)&$FFFF
		DB	$01
		DB	:_LOGAN_TALKS_LESS
		DW	(_LOGAN_TALKS_LESS&$FFFF)

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0080)
		DB	$01

	DB	CMD_SETTEXT
		DB	:?_UNDCAVERN08_TXT_1
		DW	(?_UNDCAVERN08_TXT_1&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_SETEVENTMASTER
		DB	$01

	DB	CMD_WAITEVENTMASTER
		DB	$02

	DB	CMD_SETTEXT
		DB	:?_UNDCAVERN08_TXT_2
		DW	(?_UNDCAVERN08_TXT_2&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_UNDCAVERN08_TONY
		DW	(?_UNDCAVERN08_TONY&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$05

	DB	CMD_SETTEXT
		DB	:?_UNDCAVERN08_TXT_4
		DW	(?_UNDCAVERN08_TXT_4&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$04

	DB	CMD_SETEVENTMASTER
		DB	$06

	DB	CMD_WAITEVENTMASTER
		DB	$07

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_JUMP
		DB	:_RESTORE
		DW	(_RESTORE&$FFFF)

;********************************
_LOGAN_TALKS_LESS
	DB	CMD_SETTEXT
		DB	:?_UNDCAVERN08_TXT_6
		DW	(?_UNDCAVERN08_TXT_6&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_LOGAN
		DW	(?_FACE_LOGAN&$FFFF)

;********************************
_RESTORE
	DB	CMD_THISACTORRESTORESTATE

	DB	CMD_END

;********************************
?_UNDCAVERN08_TONY
	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_SETEVENTMASTER
		DB	$03

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_DL_ANIM
		DW	(?_HERO_STAND_DL_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$04

	DB	CMD_DELAY
		DB	$20

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_RUN_RIGHT_ANIM
		DW	(?_HERO_RUN_RIGHT_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDCAVERN08_TXT_3
		DW	(?_UNDCAVERN08_TXT_3&$FFFF)

	DB	CMD_DELAY
		DB	$19

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_RUN_DOWN_ANIM
		DW	(?_HERO_RUN_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_RUN_RIGHT_ANIM
		DW	(?_HERO_RUN_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_RUN_LEFT_ANIM
		DW	(?_HERO_RUN_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_RUN_RIGHT_ANIM
		DW	(?_HERO_RUN_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_RUN_LEFT_ANIM
		DW	(?_HERO_RUN_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_RUN_RIGHT_ANIM
		DW	(?_HERO_RUN_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_RUN_LEFT_ANIM
		DW	(?_HERO_RUN_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_RUN_RIGHT_ANIM
		DW	(?_HERO_RUN_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_RUN_LEFT_ANIM
		DW	(?_HERO_RUN_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_RUN_RIGHT_ANIM
		DW	(?_HERO_RUN_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_RUN_LEFT_ANIM
		DW	(?_HERO_RUN_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_RUN_RIGHT_ANIM
		DW	(?_HERO_RUN_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_RUN_LEFT_ANIM
		DW	(?_HERO_RUN_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$03

	DB	CMD_SETEVENTMASTER
		DB	$09

	DB	CMD_WAITEVENTMASTER
		DB	$06

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDCAVERN08_TXT_5
		DW	(?_UNDCAVERN08_TXT_5&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$05

	DB	CMD_SETEVENTMASTER
		DB	$07

	DB	CMD_END

;********************************
?_UNDCAVERN08_WORVELINE
	DB	CMD_SETTEXT
		DB	:?_UNDCAVERN08_TXT_GRRRR
		DW	(?_UNDCAVERN08_TXT_GRRRR&$FFFF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WORVELINE_SUCKIT_RIGHT_ANIM
		DW	(?_WORVELINE_SUCKIT_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_WORVELINE_SUCKIT_RIGHT_ANIM
		DW	(?_WORVELINE_SUCKIT_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_WORVELINE_STAND_RIGHT_ANIM
		DW	(?_WORVELINE_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$07

	DB	CMD_THISACTORRESTORESTATE

	DB	CMD_END

;********************************
?_UNDCAVE08_FOSSIK_RING
	DB	CMD_SCROLLMAP
		DB	$18
		DB	$02
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_UNDCAVERN08_TXT_RINGSMITH
		DW	(?_UNDCAVERN08_TXT_RINGSMITH&$FFFF)

	DB	CMD_END

;********************************
?_UNDCAVERN08_SMITHY
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_FOSSIK_MAKE_RING_ANIM
		DW	(?_FOSSIK_MAKE_RING_ANIM&$FFFF)
		DB	$FF
		DB	$00

	DB	CMD_THISACTORSETANIM
		DB	:?_FOSSIK_STAND_ANIM
		DW	(?_FOSSIK_STAND_ANIM&$FFFF)

	DB	CMD_SETANYEVENTMASTER

	DB	CMD_END

;********************************
?_UNDCAVERN08_GENERIC
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDCAVERN08&$FFFF)
		DB	:MAP_UNDCAVERN08

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDCAVERN08&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_UNDCAVERN08&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$0D
		DB	$13
		DW	$D189
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$02
		DB	$04
		DW	$D052
		DB	$00
		DB	:?_LOGAN_STAND_RIGHT_ANIM
		DW	(?_LOGAN_STAND_RIGHT_ANIM&$FFFF)
		DB	:?_UNDCAVERN08_LOGAN
		DW	(?_UNDCAVERN08_LOGAN&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$02
		DB	$06
		DW	$D07A
		DB	$30
		DB	:?_WORVELINE_ANIM
		DW	(?_WORVELINE_ANIM&$FFFF)
		DB	:?_UNDCAVERN08_WORVELINE
		DW	(?_UNDCAVERN08_WORVELINE&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0E
		DB	$04
		DW	$D05E
		DB	$0A
		DB	:?_FOSSIK_STAND_ANIM
		DW	(?_FOSSIK_STAND_ANIM&$FFFF)
		DB	:?_UNDCAVE08_FOSSIK_RING
		DW	(?_UNDCAVE08_FOSSIK_RING&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0B
		DB	$0B
		DW	$D0E7
		DB	$78
		DB	:?_OLDLADY03_STAND_DOWN_ANIM
		DW	(?_OLDLADY03_STAND_DOWN_ANIM&$FFFF)
		DB	:?_UNDCAVE08_INNKEEPER
		DW	(?_UNDCAVE08_INNKEEPER&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$28
		DB	:BIT_OLDLADY03
		DW	(BIT_OLDLADY03&$FFFF)
		DW	$8780
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_LOGAN
		DW	(BIT_LOGAN&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$0A
		DB	:BIT_WORVELINE
		DW	(BIT_WORVELINE&$FFFF)
		DW	$8300
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$3F
		DB	:BIT_FOSSIKRING
		DW	(BIT_FOSSIKRING&$FFFF)
		DW	$83A0
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_undtown

	DB	CMD_SCENEREADY

	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$0A
		DB	:_STARTER
		DW	(_STARTER&$FFFF)

	DB	CMD_END

;********************************
_STARTER
	DB	CMD_THATACTORSTART
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_END

;********************************
?_UNDCAVE08_TONY_WAKING
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDCAVERN08&$FFFF)
		DB	:MAP_UNDCAVERN08

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDCAVERN08&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_UNDCAVERN08&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_PALCLEARANIM
		DB	$0F
		DW	$7FFF

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0E
		DB	$0C
		DW	$D0FE
		DB	$00
		DB	:_TONY_WAKING
		DW	(_TONY_WAKING&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$02
		DB	$04
		DW	$D052
		DB	$00
		DB	:?_LOGAN_STAND_RIGHT_ANIM
		DW	(?_LOGAN_STAND_RIGHT_ANIM&$FFFF)
		DB	:?_UNDCAVERN08_LOGAN
		DW	(?_UNDCAVERN08_LOGAN&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$02
		DB	$06
		DW	$D07A
		DB	$30
		DB	:?_WORVELINE_ANIM
		DW	(?_WORVELINE_ANIM&$FFFF)
		DB	:?_UNDCAVERN08_WORVELINE
		DW	(?_UNDCAVERN08_WORVELINE&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0E
		DB	$04
		DW	$D05E
		DB	$0A
		DB	:?_FOSSIK_STAND_ANIM
		DW	(?_FOSSIK_STAND_ANIM&$FFFF)
		DB	:?_UNDCAVE08_FOSSIK_RING
		DW	(?_UNDCAVE08_FOSSIK_RING&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0B
		DB	$0B
		DW	$D0E7
		DB	$78
		DB	:?_OLDLADY03_STAND_DOWN_ANIM
		DW	(?_OLDLADY03_STAND_DOWN_ANIM&$FFFF)
		DB	:?_UNDCAVE08_INNKEEPER
		DW	(?_UNDCAVE08_INNKEEPER&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$28
		DB	:BIT_OLDLADY03
		DW	(BIT_OLDLADY03&$FFFF)
		DW	$8780
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_LOGAN
		DW	(BIT_LOGAN&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$0A
		DB	:BIT_WORVELINE
		DW	(BIT_WORVELINE&$FFFF)
		DW	$8300
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$3F
		DB	:BIT_FOSSIKRING
		DW	(BIT_FOSSIKRING&$FFFF)
		DW	$83A0
		DB	$00

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

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_undtown

	DB	CMD_SCENEREADY

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_END

;********************************
_TONY_WAKING
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_INBED_RIGHT_ANIM
		DW	(?_HERO_INBED_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	:?_HERO_INBED_LEFT_ANIM
		DW	(?_HERO_INBED_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_OUTTABED_LEFT
		DW	(?_HERO_OUTTABED_LEFT&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_END

;********************************
?_UNDCAVE08_INNKEEPER
	DB	CMD_THISACTORSETANIM
		DB	:?_OLDLADY03_STAND_DOWN_ANIM
		DW	(?_OLDLADY03_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDCAVE08_INN_TXT
		DW	(?_UNDCAVE08_INN_TXT&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_OLDLADY03
		DW	(?_FACE_OLDLADY03&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_UNDCAVERN07
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?_HERO_STAND_DL_ANIM
	GLOBAL	?ANIM_AI
	GLOBAL	?_HERO_STAND_RIGHT_ANIM
	GLOBAL	ACTOR02
	GLOBAL	?HERO_AI
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	MAP_UNDCAVERN08
	GLOBAL	HS_UNDCAVERN08
	GLOBAL	TR_UNDCAVERN08
	GLOBAL	PAL_HERO
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR00
	GLOBAL	?TALKER_AI
	GLOBAL	?_LOGAN_STAND_RIGHT_ANIM
	GLOBAL	ACTOR01
	GLOBAL	?_FOSSIK_STAND_ANIM
	GLOBAL	ACTOR03
	GLOBAL	?_OLDLADY03_STAND_DOWN_ANIM
	GLOBAL	BIT_OLDLADY03
	GLOBAL	BIT_LOGAN
	GLOBAL	BIT_WORVELINE
	GLOBAL	BIT_FOSSIKRING
	GLOBAL	?_WORVELINE_STAND_RIGHT_ANIM
	GLOBAL	?_WORVELINE_SUCKIT_RIGHT_ANIM
	GLOBAL	?_WORVELINE_MOVE_RIGHT_ANIM
	GLOBAL	?_WORVELINE_MOVE_LEFT_ANIM
	GLOBAL	?_WORVELINE_MOVE_UP_ANIM
	GLOBAL	?_WORVELINE_HOP_UP_ANIM
	GLOBAL	?_WORVELINE_MOVE_DOWN_ANIM
	GLOBAL	?_WORVELINE_STAND_LEFT_ANIM
	GLOBAL	?_WORVELINE_HOP_DOWN_ANIM
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_FACE_LOGAN
	GLOBAL	?_HERO_STAND_LEFT_ANIM
	GLOBAL	?_HERO_RUN_RIGHT_ANIM
	GLOBAL	?_HERO_RUN_DOWN_ANIM
	GLOBAL	?_HERO_RUN_LEFT_ANIM
	GLOBAL	?_FOSSIK_MAKE_RING_ANIM
	GLOBAL	?_HERO_INBED_RIGHT_ANIM
	GLOBAL	?_HERO_INBED_LEFT_ANIM
	GLOBAL	?_HERO_OUTTABED_LEFT
	GLOBAL	?_FACE_OLDLADY03

;********************************
	END
;********************************