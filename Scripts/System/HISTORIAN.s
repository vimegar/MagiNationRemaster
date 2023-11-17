;Size:5603
                     
;********************************
; C:\Work\Patrick's Project\scripts\SYSTEM\HISTORIAN.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HISTORIAN_EVU
	DB	CMD_SETTEXT
		DB	:?_HISTORIAN_EVU_TEXT
		DW	(?_HISTORIAN_EVU_TEXT&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_EVU
		DW	(?_FACE_EVU&$FFFF)

;********************************
?_HISTORIAN_EVU_TEXT
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0096)
		DB	$00


	DB	CMD_TEXTICON
		DW	ICON_EVU

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$0E),?SPCE,(?AL+$00),(?AL+$07),(?AL+$04),(?AL+$00),(?AL+$03),?PERD,?HURRY
		DB	(?AU+$00),(?AL+$12),(?AL+$0A),?SPCE,(?AL+$0C),(?AL+$04),?WAIT
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

;********************************
?_HISTORIAN_EVU_RETURN
	DB	CMD_MENUHISTORIAN


	DB	CMD_TEXTICON
		DW	ICON_EVU

	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(MENU_HISTORIAN_TYPE+$0000)&$FFFF
		DB	:?_TYPE_ITEM
		DW	INV_TYPE_ITEM
		DW	(?_TYPE_ITEM&$FFFF)
		DB	:?_TYPE_RELIC
		DW	INV_TYPE_RELIC
		DW	(?_TYPE_RELIC&$FFFF)
		DB	:?_TYPE_SPELL
		DW	INV_TYPE_SPELL
		DW	(?_TYPE_SPELL&$FFFF)
		DB	$FF

	DB	CMD_TEXTWRITE
		DB	(?AU+$19),(?AU+$19),(?AU+$19),(?AL+$19),(?AL+$19),(?AL+$19),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AL+$05),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$04),(?AL+$0D),?HURRY
		DB	(?AL+$00),(?AL+$12),(?AL+$0B),(?AL+$04),(?AL+$04),(?AL+$0F),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THISACTORRESTORESTATE

;********************************
?_HISTORIAN_CALD_TEXT
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0096)
		DB	$02

	DB	CMD_MENUHISTORIAN


	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(MENU_HISTORIAN_TYPE+$0000)&$FFFF
		DB	:?_TYPE_ITEM
		DW	INV_TYPE_ITEM
		DW	(?_TYPE_ITEM&$FFFF)
		DB	:?_TYPE_RELIC
		DW	INV_TYPE_RELIC
		DW	(?_TYPE_RELIC&$FFFF)
		DB	:?_TYPE_SPELL
		DW	INV_TYPE_SPELL
		DW	(?_TYPE_SPELL&$FFFF)
		DB	$FF

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$08),(?AL+$02),(?AL+$04),?SPCE,(?AL+$13),(?AL+$00),(?AL+$0B),(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_HISTORIAN_OROTHE_TEXT
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0096)
		DB	$01

	DB	CMD_MENUHISTORIAN


	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(MENU_HISTORIAN_TYPE+$0000)&$FFFF
		DB	:_CHECK_BLURRY
		DW	INV_TYPE_ITEM
		DW	(_CHECK_BLURRY&$FFFF)
		DB	:?_TYPE_RELIC
		DW	INV_TYPE_RELIC
		DW	(?_TYPE_RELIC&$FFFF)
		DB	:?_TYPE_SPELL
		DW	INV_TYPE_SPELL
		DW	(?_TYPE_SPELL&$FFFF)
		DB	$FF

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$06),(?AL+$0E),(?AL+$0E),(?AL+$03),?DASH,(?AL+$01),(?AL+$18),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THISACTORRESTORESTATE

;********************************
_CHECK_BLURRY
	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_XRAMBYTE
		DW	(MENU_HISTORIAN_TYPE_NUMBER+$0000)&$FFFF
		DB	EXPR_WORDCONST
		DW	INV_BLURRY_SCROLL
		DB	:?_OROCITY04_DISPELL_X_TXT
		DW	(?_OROCITY04_DISPELL_X_TXT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_TYPE_ITEM&$FFFF)

;********************************
?_HISTORIAN_WHICH_ONE
	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0096)&$FFFF
		DB	:_EVU
		DW	$0000
		DW	(_EVU&$FFFF)
		DB	:_OLMAN_IN_OROTHE
		DW	$0001
		DW	(_OLMAN_IN_OROTHE&$FFFF)
		DB	:_OLDMAND_IN_CALD
		DW	$0002
		DW	(_OLDMAND_IN_CALD&$FFFF)
		DB	$FF

	DB	CMD_JUMP
		DB	:?_HISTORIAN_OROTHE_TEXT
		DW	(?_HISTORIAN_OROTHE_TEXT&$FFFF)

;********************************
_EVU
	DB	CMD_JUMP
		DB	:?_HISTORIAN_EVU_RETURN
		DW	(?_HISTORIAN_EVU_RETURN&$FFFF)

;********************************
_OLMAN_IN_OROTHE
	DB	CMD_JUMP
		DB	:?_HISTORIAN_OROTHE_TEXT
		DW	(?_HISTORIAN_OROTHE_TEXT&$FFFF)

;********************************
_OLDMAND_IN_CALD
	DB	CMD_JUMP
		DB	:?_HISTORIAN_CALD_TEXT
		DW	(?_HISTORIAN_CALD_TEXT&$FFFF)

;********************************
?_HISTORIAN_DONT_KNOW
	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AL+$00),(?AL+$01),(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
?_TYPE_ITEM
	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(MENU_HISTORIAN_TYPE_NUMBER+$0000)&$FFFF
		DB	:_BLURRY_SCROLL
		DW	INV_BLURRY_SCROLL
		DW	(_BLURRY_SCROLL&$FFFF)
		DB	:_BALOO_LEAF
		DW	INV_BALOO_LEAF
		DW	(_BALOO_LEAF&$FFFF)
		DB	:_BALOO_SAP
		DW	INV_BALOO_SAP
		DW	(_BALOO_SAP&$FFFF)
		DB	:_BALOO_ROOT
		DW	INV_BALOO_ROOT
		DW	(_BALOO_ROOT&$FFFF)
		DB	:_3_HEADEDCOIN
		DW	INV_3_HEADEDCOIN
		DW	(_3_HEADEDCOIN&$FFFF)
		DB	:_BALANCESCALE
		DW	INV_BALANCESCALE
		DW	(_BALANCESCALE&$FFFF)
		DB	:_STRENGTH_GEM
		DW	INV_STRENGTH_GEM
		DW	(_STRENGTH_GEM&$FFFF)
		DB	:_GUARD_GEM
		DW	INV_GUARD_GEM
		DW	(_GUARD_GEM&$FFFF)
		DB	:_POWER_GEM
		DW	INV_POWER_GEM
		DW	(_POWER_GEM&$FFFF)
		DB	:_DEFLECT_GEM
		DW	INV_DEFLECT_GEM
		DW	(_DEFLECT_GEM&$FFFF)
		DB	:_HASTE_GEM
		DW	INV_HASTE_GEM
		DW	(_HASTE_GEM&$FFFF)
		DB	:_REMEDY_DRINK
		DW	INV_REMEDY_DRINK
		DW	(_REMEDY_DRINK&$FFFF)
		DB	:_CRESCENT_GEM
		DW	INV_CRESCENT_GEM
		DW	(_CRESCENT_GEM&$FFFF)
		DB	:_GIBBOUS_GEM
		DW	INV_GIBBOUS_GEM
		DW	(_GIBBOUS_GEM&$FFFF)
		DB	:_RUNEOFMIGHT
		DW	INV_RUNEOFMIGHT
		DW	(_RUNEOFMIGHT&$FFFF)
		DB	:_RUNEOFHOPE
		DW	INV_RUNEOFHOPE
		DW	(_RUNEOFHOPE&$FFFF)
		DB	:_RUNEOFPOWER
		DW	INV_RUNEOFPOWER
		DW	(_RUNEOFPOWER&$FFFF)
		DB	:_RUNEOFWILL
		DW	INV_RUNEOFWILL
		DW	(_RUNEOFWILL&$FFFF)
		DB	:_RUNEOFFURY
		DW	INV_RUNEOFFURY
		DW	(_RUNEOFFURY&$FFFF)
		DB	:_MASTER_RUNE
		DW	INV_MASTER_RUNE
		DW	(_MASTER_RUNE&$FFFF)
		DB	:_KARMIC_MIGHT
		DW	INV_KARMIC_MIGHT
		DW	(_KARMIC_MIGHT&$FFFF)
		DB	:_KARMIC_HOPE
		DW	INV_KARMIC_HOPE
		DW	(_KARMIC_HOPE&$FFFF)
		DB	:_KARMIC_POWER
		DW	INV_KARMIC_POWER
		DW	(_KARMIC_POWER&$FFFF)
		DB	:_KARMIC_WILL
		DW	INV_KARMIC_WILL
		DW	(_KARMIC_WILL&$FFFF)
		DB	:_KARMIC_FURY
		DW	INV_KARMIC_FURY
		DW	(_KARMIC_FURY&$FFFF)
		DB	:_CLOUD_FROND
		DW	INV_CLOUD_FROND
		DW	(_CLOUD_FROND&$FFFF)
		DB	:_SHADOW_KEY
		DW	INV_SHADOW_KEY
		DW	(_SHADOW_KEY&$FFFF)
		DB	:_SHADOW_KEY
		DW	INV_STAR_KEY
		DW	(_SHADOW_KEY&$FFFF)
		DB	:_WATER_OF_LIFE
		DW	INV_WATER_OF_LIFE
		DW	(_WATER_OF_LIFE&$FFFF)
		DB	:_PLOD_SPNEW
		DW	INV_PLOD_SPNEW
		DW	(_PLOD_SPNEW&$FFFF)
		DB	:_BUCKETOPINK
		DW	INV_BUCKETOPINK
		DW	(_BUCKETOPINK&$FFFF)
		DB	:_TICKET
		DW	INV_TICKET
		DW	(_TICKET&$FFFF)
		DB	:_ELDRITCH_AWL
		DW	INV_ELDRITCH_AWL
		DW	(_ELDRITCH_AWL&$FFFF)
		DB	:_BLAST_URN
		DW	INV_BLAST_URN
		DW	(_BLAST_URN&$FFFF)
		DB	$FF

	DB	CMD_JUMPLOCAL
		DW	(?_HISTORIAN_DONT_KNOW&$FFFF)

;********************************
_BLAST_URN
	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$0C),(?AL+$0C),(?AL+$0C),?PERD,?PERD,?PERD,?SPCE,(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AL+$04),(?AL+$17),(?AL+$0F),(?AL+$0B),(?AL+$0E),(?AL+$12),(?AL+$08),(?AL+$15),(?AL+$04),?SPCE,(?AL+$15),(?AL+$00),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$14),(?AL+$12),(?AL+$04),?HURRY
		DB	(?AL+$08),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$01),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0A),?WAIT
		DB	(?AL+$02),(?AL+$04),(?AL+$11),(?AL+$13),(?AL+$00),(?AL+$08),(?AL+$0D),?SPCE,(?AL+$16),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_ELDRITCH_AWL
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$13),(?AL+$04),(?AL+$0C),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),(?AL+$12),?SPCE,(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$12),(?AL+$00),(?AL+$05),(?AL+$04),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$02),(?AL+$00),(?AL+$13),(?AL+$08),(?AL+$0E),(?AL+$0D),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_PLOD_SPNEW
	DB	CMD_TEXTWRITE
		DB	(?AU+$0F),(?AL+$0B),(?AL+$0E),(?AL+$03),?SPCE,(?AU+$12),(?AL+$0F),(?AL+$0D),(?AL+$04),(?AL+$16),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AU+$0B),(?AL+$14),(?AL+$02),(?AL+$0A),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_BUCKETOPINK
	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$14),(?AL+$02),(?AL+$0A),(?AL+$04),(?AL+$13),?SPCE,(?AU+$0E),?APST,?SPCE,(?AU+$0F),(?AL+$08),(?AL+$0D),(?AL+$0A),?HURRY
		DB	(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AU+$0B),(?AL+$14),(?AL+$02),(?AL+$0A),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_TICKET
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$13),(?AL+$08),(?AL+$02),(?AL+$0A),(?AL+$04),(?AL+$13),?EXCL,?WAIT
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$14),(?AL+$12),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AU+$0D),(?AL+$00),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),?HURRY
		DB	(?AL+$02),(?AL+$14),(?AL+$11),(?AL+$08),(?AL+$0E),?SPCE,(?AL+$12),(?AL+$07),(?AL+$0E),(?AL+$0F),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_BLURRY_SCROLL
	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$0C),(?AL+$0C),(?AL+$0C),(?AL+$0C),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$08),(?AL+$13),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$12),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$01),(?AL+$0B),(?AL+$14),(?AL+$11),(?AL+$11),(?AL+$18),?SPCE,(?AL+$12),(?AL+$02),(?AL+$11),(?AL+$0E),(?AL+$0B),(?AL+$0B),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_BALOO_LEAF
	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$00),(?AL+$0B),(?AL+$0E),(?AL+$0E),?SPCE,(?AU+$0B),(?AL+$04),(?AL+$00),(?AL+$05),?HURRY
		DB	(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$11),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$0B),(?AL+$08),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_BALOO_SAP
	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$00),(?AL+$0B),(?AL+$0E),(?AL+$0E),?SPCE,(?AU+$12),(?AL+$00),(?AL+$0F),?HURRY
		DB	(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$11),(?AL+$04),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_BALOO_ROOT
	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$00),(?AL+$0B),(?AL+$0E),(?AL+$0E),?SPCE,(?AU+$11),(?AL+$0E),(?AL+$0E),(?AL+$13),?HURRY
		DB	(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$11),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$13),?WAIT
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_3_HEADEDCOIN
	DB	CMD_TEXTWRITE
		DB	(?0+$03),?DASH,(?AU+$07),(?AL+$04),(?AL+$00),(?AL+$03),(?AL+$04),(?AL+$03),(?AU+$02),(?AL+$0E),(?AL+$08),(?AL+$0D),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AU+$0B),(?AL+$14),(?AL+$02),(?AL+$0A),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_BALANCESCALE
	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$00),(?AL+$0B),(?AL+$00),(?AL+$0D),(?AL+$02),(?AL+$04),(?AU+$12),(?AL+$02),(?AL+$00),(?AL+$0B),(?AL+$04),?HURRY
		DB	(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AU+$0B),(?AL+$14),(?AL+$02),(?AL+$0A),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_STRENGTH_GEM
	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$13),(?AL+$11),(?AL+$04),(?AL+$0D),(?AL+$06),(?AL+$13),(?AL+$07),?SPCE,(?AU+$06),(?AL+$04),(?AL+$0C),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$00),(?AL+$13),(?AL+$13),(?AL+$00),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$03),(?AL+$14),(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_GUARD_GEM
	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$14),(?AL+$00),(?AL+$11),(?AL+$03),?SPCE,(?AU+$06),(?AL+$04),(?AL+$0C),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?SPCE,(?AL+$03),(?AL+$14),(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_POWER_GEM
	DB	CMD_TEXTWRITE
		DB	(?AU+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?SPCE,(?AU+$06),(?AL+$04),(?AL+$0C),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$0C),(?AL+$00),(?AL+$06),(?AL+$08),(?AL+$02),?SPCE,(?AU+$00),(?AL+$13),(?AL+$13),(?AL+$00),(?AL+$02),(?AL+$0A),?WAIT
		DB	(?AL+$03),(?AL+$14),(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?HURRY
		DB	(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_DEFLECT_GEM
	DB	CMD_TEXTWRITE
		DB	(?AU+$03),(?AL+$04),(?AL+$05),(?AL+$0B),(?AL+$04),(?AL+$02),(?AL+$13),?SPCE,(?AU+$06),(?AL+$04),(?AL+$0C),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$0C),(?AL+$00),(?AL+$06),(?AL+$08),(?AL+$02),?SPCE,(?AU+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?WAIT
		DB	(?AL+$03),(?AL+$14),(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?HURRY
		DB	(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_HASTE_GEM
	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$00),(?AL+$12),(?AL+$13),(?AL+$04),?SPCE,(?AU+$06),(?AL+$04),(?AL+$0C),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$12),(?AL+$0F),(?AL+$04),(?AL+$04),(?AL+$03),?SPCE,(?AL+$03),(?AL+$14),(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_REMEDY_DRINK
	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AL+$04),(?AL+$0C),(?AL+$04),(?AL+$03),(?AL+$18),?SPCE,(?AU+$03),(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$0A),?HURRY
		DB	(?AL+$02),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AL+$00),(?AL+$08),(?AL+$0B),(?AL+$0C),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_CRESCENT_GEM
	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$02),(?AL+$04),(?AL+$0D),(?AL+$13),?SPCE,(?AU+$06),(?AL+$04),(?AL+$0C),?HURRY
		DB	(?AL+$11),(?AL+$0E),(?AL+$01),(?AL+$14),(?AL+$12),(?AL+$13),(?AL+$0B),(?AL+$18),?WAIT
		DB	(?AL+$0C),(?AL+$0E),(?AL+$03),(?AL+$08),(?AL+$05),(?AL+$08),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?WAIT
		DB	(?AL+$00),(?AL+$08),(?AL+$0B),(?AL+$0C),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_GIBBOUS_GEM
	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$08),(?AL+$01),(?AL+$01),(?AL+$0E),(?AL+$14),(?AL+$12),?SPCE,(?AU+$06),(?AL+$04),(?AL+$0C),?HURRY
		DB	(?AL+$0E),(?AL+$11),(?AL+$0D),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$0B),(?AL+$18),?WAIT
		DB	(?AL+$0C),(?AL+$0E),(?AL+$03),(?AL+$08),(?AL+$05),(?AL+$08),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?WAIT
		DB	(?AL+$00),(?AL+$08),(?AL+$0B),(?AL+$0C),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_RUNEOFMIGHT
	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AL+$14),(?AL+$0D),(?AL+$04),(?AU+$0E),(?AL+$05),(?AU+$0C),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$00),(?AL+$13),(?AL+$13),(?AL+$00),(?AL+$02),(?AL+$0A),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_RUNEOFHOPE
	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AL+$14),(?AL+$0D),(?AL+$04),(?AU+$0E),(?AL+$05),(?AU+$07),(?AL+$0E),(?AL+$0F),(?AL+$04),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_RUNEOFPOWER
	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AL+$14),(?AL+$0D),(?AL+$04),(?AU+$0E),(?AL+$05),(?AU+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$0C),(?AL+$00),(?AL+$06),(?AL+$08),(?AL+$02),?SPCE,(?AU+$00),(?AL+$13),(?AL+$13),(?AL+$00),(?AL+$02),(?AL+$0A),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_RUNEOFWILL
	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AL+$14),(?AL+$0D),(?AL+$04),(?AU+$0E),(?AL+$05),(?AU+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$0C),(?AL+$00),(?AL+$06),(?AL+$08),(?AL+$02),?SPCE,(?AU+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_RUNEOFFURY
	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AL+$14),(?AL+$0D),(?AL+$04),(?AU+$0E),(?AL+$05),(?AU+$05),(?AL+$14),(?AL+$11),(?AL+$18),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$12),(?AL+$0F),(?AL+$04),(?AL+$04),(?AL+$03),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_MASTER_RUNE
	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$00),(?AL+$12),(?AL+$13),(?AL+$04),(?AL+$11),?SPCE,(?AU+$11),(?AL+$14),(?AL+$0D),(?AL+$04),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$13),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_KARMIC_MIGHT
	DB	CMD_TEXTWRITE
		DB	(?AU+$0A),(?AL+$00),(?AL+$11),(?AL+$0C),(?AL+$08),(?AL+$02),?SPCE,(?AU+$0C),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$00),(?AL+$13),(?AL+$13),(?AL+$00),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$00),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$13),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$12),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$04),(?AL+$0B),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_KARMIC_HOPE
	DB	CMD_TEXTWRITE
		DB	(?AU+$0A),(?AL+$00),(?AL+$11),(?AL+$0C),(?AL+$08),(?AL+$02),?SPCE,(?AU+$07),(?AL+$0E),(?AL+$0F),(?AL+$04),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?SPCE,(?AL+$00),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$13),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$12),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$04),(?AL+$0B),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_KARMIC_POWER
	DB	CMD_TEXTWRITE
		DB	(?AU+$0A),(?AL+$00),(?AL+$11),(?AL+$0C),(?AL+$08),(?AL+$02),?SPCE,(?AU+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$0C),(?AL+$00),(?AL+$06),(?AL+$08),(?AL+$02),?SPCE,(?AU+$00),(?AL+$13),(?AL+$13),(?AL+$00),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$0B),(?AL+$0E),(?AL+$13),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$12),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$04),(?AL+$0B),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_KARMIC_WILL
	DB	CMD_TEXTWRITE
		DB	(?AU+$0A),(?AL+$00),(?AL+$11),(?AL+$0C),(?AL+$08),(?AL+$02),?SPCE,(?AU+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$0C),(?AL+$00),(?AL+$06),(?AL+$08),(?AL+$02),?SPCE,(?AU+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$0B),(?AL+$0E),(?AL+$13),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$12),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$04),(?AL+$0B),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_KARMIC_FURY
	DB	CMD_TEXTWRITE
		DB	(?AU+$0A),(?AL+$00),(?AL+$11),(?AL+$0C),(?AL+$08),(?AL+$02),?SPCE,(?AU+$05),(?AL+$14),(?AL+$11),(?AL+$18),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$12),(?AL+$0F),(?AL+$04),(?AL+$04),(?AL+$03),?SPCE,(?AL+$00),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$13),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$12),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$04),(?AL+$0B),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_CLOUD_FROND
	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$07),?COMM,?SPCE,(?AU+$08),?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$00),?SPCE,(?AU+$02),(?AL+$0B),(?AL+$0E),(?AL+$14),(?AL+$03),?WAIT
		DB	(?AU+$05),(?AL+$11),(?AL+$0E),(?AL+$0D),(?AL+$03),?PERD,?PERD,?PERD,(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$18),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$08),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$04),(?AL+$03),?PERD,?SPCE,?WAIT
		DB	(?AU+$08),(?AL+$13),?SPCE,(?AL+$07),(?AL+$00),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$07),(?AL+$04),(?AL+$00),(?AL+$0B),?WAIT
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),?COMM,?SPCE,(?AL+$0D),(?AL+$0E),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$04),(?AL+$11),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$16),?WAIT
		DB	(?AL+$12),(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?SPCE,?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$16),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$14),(?AL+$12),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$16),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$0B),(?AL+$18),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_SHADOW_KEY
	DB	CMD_TEXTWRITE
		DB	(?AU+$00),?SPCE,(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$0D),(?AL+$06),(?AL+$04),?HURRY
		DB	(?AL+$0A),(?AL+$04),(?AL+$18),?PERD,?PERD,?PERD,(?AU+$08),?SPCE,(?AL+$03),(?AL+$0E),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),?WAIT
		DB	(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$16),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$14),(?AL+$12),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_WATER_OF_LIFE
	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AU+$0B),(?AL+$08),(?AL+$05),(?AL+$04),?HURRY
		DB	(?AL+$0F),(?AL+$04),(?AL+$11),(?AL+$0C),(?AL+$00),(?AL+$0D),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$0B),(?AL+$18),?WAIT
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?HURRY
		DB	(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
?_TYPE_RELIC
	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(MENU_HISTORIAN_TYPE_NUMBER+$0000)&$FFFF
		DB	:_ARCHAIC_LEAF
		DW	INV_ARCHAIC_LEAF
		DW	(_ARCHAIC_LEAF&$FFFF)
		DB	:_ARMOR_ORB
		DW	INV_ARMOR_ORB
		DW	(_ARMOR_ORB&$FFFF)
		DB	:_BAG_OF_BONES
		DW	INV_BAG_OF_BONES
		DW	(_BAG_OF_BONES&$FFFF)
		DB	:_BARK_THIMBLE
		DW	INV_BARK_THIMBLE
		DW	(_BARK_THIMBLE&$FFFF)
		DB	:_CHANNELEDGEM
		DW	INV_CHANNELEDGEM
		DW	(_CHANNELEDGEM&$FFFF)
		DB	:_CORF_PEARL
		DW	INV_CORF_PEARL
		DW	(_CORF_PEARL&$FFFF)
		DB	:_CRIMSON_VOID
		DW	INV_CRIMSON_VOID
		DW	(_CRIMSON_VOID&$FFFF)
		DB	:_EARTH_S_AURA
		DW	INV_EARTH_S_AURA
		DW	(_EARTH_S_AURA&$FFFF)
		DB	:_END_BRINGER
		DW	INV_END_BRINGER
		DW	(_END_BRINGER&$FFFF)
		DB	:_ENERGY_GEM
		DW	INV_ENERGY_GEM
		DW	(_ENERGY_GEM&$FFFF)
		DB	:_FLAME_AURA
		DW	INV_FLAME_AURA
		DW	(_FLAME_AURA&$FFFF)
		DB	:_FLAMEESSENCE
		DW	INV_FLAMEESSENCE
		DW	(_FLAMEESSENCE&$FFFF)
		DB	:_GEMOFNAROOM
		DW	INV_GEMOFNAROOM
		DW	(_GEMOFNAROOM&$FFFF)
		DB	:_GOLDENCLOVER
		DW	INV_GOLDENCLOVER
		DW	(_GOLDENCLOVER&$FFFF)
		DB	:_GRAILOFLIFE
		DW	INV_GRAILOFLIFE
		DW	(_GRAILOFLIFE&$FFFF)
		DB	:_HYREN_S_CLAW
		DW	INV_HYREN_S_CLAW
		DW	(_HYREN_S_CLAW&$FFFF)
		DB	:_LEAF_ESSENCE
		DW	INV_LEAF_ESSENCE
		DW	(_LEAF_ESSENCE&$FFFF)
		DB	:_LUCENT_BELT
		DW	INV_LUCENT_BELT
		DW	(_LUCENT_BELT&$FFFF)
		DB	:_OMBORSAMULET
		DW	INV_OMBORSAMULET
		DW	(_OMBORSAMULET&$FFFF)
		DB	:_PINCHOFLIFE
		DW	INV_PINCHOFLIFE
		DW	(_PINCHOFLIFE&$FFFF)
		DB	:_RABBAGE_FOOT
		DW	INV_RABBAGE_FOOT
		DW	(_RABBAGE_FOOT&$FFFF)
		DB	:_RAGE_STONE
		DW	INV_RAGE_STONE
		DW	(_RAGE_STONE&$FFFF)
		DB	:_SHADOW_VEIL
		DW	INV_SHADOW_VEIL
		DW	(_SHADOW_VEIL&$FFFF)
		DB	:_SHIELD_ORB
		DW	INV_SHIELD_ORB
		DW	(_SHIELD_ORB&$FFFF)
		DB	:_SKY_ESSENCE
		DW	INV_SKY_ESSENCE
		DW	(_SKY_ESSENCE&$FFFF)
		DB	:_SPICEOFLIFE
		DW	INV_SPICEOFLIFE
		DW	(_SPICEOFLIFE&$FFFF)
		DB	:_STONEESSENCE
		DW	INV_STONEESSENCE
		DW	(_STONEESSENCE&$FFFF)
		DB	:_STONEOFDOOM
		DW	INV_STONEOFDOOM
		DW	(_STONEOFDOOM&$FFFF)
		DB	:_STONEOFLIFE
		DW	INV_STONEOFLIFE
		DW	(_STONEOFLIFE&$FFFF)
		DB	:_SWORDOFWIND
		DW	INV_SWORDOFWIND
		DW	(_SWORDOFWIND&$FFFF)
		DB	:_TIDE_ESSENCE
		DW	INV_TIDE_ESSENCE
		DW	(_TIDE_ESSENCE&$FFFF)
		DB	:_TITAN_RING
		DW	INV_TITAN_RING
		DW	(_TITAN_RING&$FFFF)
		DB	:_WATER_ORB
		DW	INV_WATER_ORB
		DW	(_WATER_ORB&$FFFF)
		DB	:_WISHBONE
		DW	INV_WISHBONE
		DW	(_WISHBONE&$FFFF)
		DB	$FF

	DB	CMD_JUMPLOCAL
		DW	(?_HISTORIAN_DONT_KNOW&$FFFF)

;********************************
_ARCHAIC_LEAF
	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$11),(?AL+$02),(?AL+$07),(?AL+$00),(?AL+$08),(?AL+$02),?SPCE,(?AU+$0B),(?AL+$04),(?AL+$00),(?AL+$05),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$12),(?AL+$0A),(?AL+$08),(?AL+$0B),(?AL+$0B),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_ARMOR_ORB
	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$11),(?AL+$0C),(?AL+$0E),(?AL+$11),?SPCE,(?AU+$0E),(?AL+$11),(?AL+$01),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_BAG_OF_BONES
	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$00),(?AL+$06),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AU+$01),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$12),(?AL+$13),(?AL+$11),(?AL+$04),(?AL+$0D),(?AL+$06),(?AL+$13),(?AL+$07),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_BARK_THIMBLE
	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$00),(?AL+$11),(?AL+$0A),?SPCE,(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$0C),(?AL+$01),(?AL+$0B),(?AL+$04),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_CHANNELEDGEM
	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$0D),(?AL+$04),(?AL+$0B),(?AL+$04),(?AL+$03),(?AU+$06),(?AL+$04),(?AL+$0C),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$12),(?AL+$0A),(?AL+$08),(?AL+$0B),(?AL+$0B),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_CORF_PEARL
	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AL+$0E),(?AL+$11),(?AL+$05),?SPCE,(?AU+$0F),(?AL+$04),(?AL+$00),(?AL+$11),(?AL+$0B),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$11),(?AL+$04),(?AL+$12),(?AL+$08),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AU+$12),(?AL+$0A),(?AL+$08),(?AL+$0B),(?AL+$0B),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?WAIT
		DB	(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$12),?SPCE,(?AU+$00),(?AL+$13),(?AL+$13),(?AL+$00),(?AL+$02),(?AL+$0A),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_CRIMSON_VOID
	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AL+$11),(?AL+$08),(?AL+$0C),(?AL+$12),(?AL+$0E),(?AL+$0D),?SPCE,(?AU+$15),(?AL+$0E),(?AL+$08),(?AL+$03),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AL+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?WAIT
		DB	(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$12),?SPCE,(?AL+$08),(?AL+$13),(?AL+$12),?HURRY
		DB	(?AL+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_EARTH_S_AURA
	DB	CMD_TEXTWRITE
		DB	(?AU+$04),(?AL+$00),(?AL+$11),(?AL+$13),(?AL+$07),?APST,(?AL+$12),?SPCE,(?AU+$00),(?AL+$14),(?AL+$11),(?AL+$00),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AU+$04),(?AL+$00),(?AL+$11),(?AL+$13),(?AL+$07),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?HURRY
		DB	(?AL+$00),(?AL+$0B),(?AL+$12),(?AL+$0E),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$12),?SPCE,(?AL+$08),(?AL+$13),?WAIT
		DB	(?AL+$12),(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$08),(?AL+$15),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_END_BRINGER
	DB	CMD_TEXTWRITE
		DB	(?AU+$04),(?AL+$0D),(?AL+$03),?SPCE,(?AU+$01),(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$13),(?AL+$12),?SPCE,(?AL+$00),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$13),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$02),(?AL+$00),(?AL+$14),(?AL+$12),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AU+$04),(?AL+$11),(?AL+$14),(?AL+$0F),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_ENERGY_GEM
	DB	CMD_TEXTWRITE
		DB	(?AU+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?SPCE,(?AU+$06),(?AL+$04),(?AL+$0C),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_FLAME_AURA
	DB	CMD_TEXTWRITE
		DB	(?AU+$05),(?AL+$0B),(?AL+$00),(?AL+$0C),(?AL+$04),?SPCE,(?AU+$00),(?AL+$14),(?AL+$11),(?AL+$00),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$0E),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$00),(?AL+$06),(?AL+$06),(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$12),(?AL+$08),(?AL+$15),(?AL+$04),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?WAIT
		DB	(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AU+$05),(?AL+$08),(?AL+$11),(?AL+$04),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?WAIT
		DB	(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$12),?SPCE,(?AL+$08),(?AL+$13),(?AL+$12),?HURRY
		DB	(?AL+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_FLAMEESSENCE
	DB	CMD_TEXTWRITE
		DB	(?AU+$05),(?AL+$0B),(?AL+$00),(?AL+$0C),(?AL+$04),(?AU+$04),(?AL+$12),(?AL+$12),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$13),?SPCE,(?AU+$04),(?AL+$00),(?AL+$11),(?AL+$13),(?AL+$07),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$16),(?AL+$04),(?AL+$00),(?AL+$0A),?HURRY
		DB	(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$13),?SPCE,(?AU+$12),(?AL+$07),(?AL+$00),(?AL+$03),(?AL+$0E),(?AL+$16),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_GEMOFNAROOM
	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$04),(?AL+$0C),(?AU+$0E),(?AL+$05),(?AU+$0D),(?AL+$00),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_GOLDENCLOVER
	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$0E),(?AL+$0B),(?AL+$03),(?AL+$04),(?AL+$0D),(?AU+$02),(?AL+$0B),(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$0B),(?AL+$14),(?AL+$02),(?AL+$0A),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_GRAILOFLIFE
	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$0B),(?AU+$0E),(?AL+$05),(?AU+$0B),(?AL+$08),(?AL+$05),(?AL+$04),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_HYREN_S_CLAW
	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$18),(?AL+$11),(?AL+$04),(?AL+$0D),?APST,(?AL+$12),?SPCE,(?AU+$02),(?AL+$0B),(?AL+$00),(?AL+$16),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$12),(?AL+$13),(?AL+$11),(?AL+$04),(?AL+$0D),(?AL+$06),(?AL+$13),(?AL+$07),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_LEAF_ESSENCE
	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$04),(?AL+$00),(?AL+$05),?SPCE,(?AU+$04),(?AL+$12),(?AL+$12),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$13),?SPCE,(?AU+$12),(?AL+$07),(?AL+$00),(?AL+$03),(?AL+$0E),(?AL+$16),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$16),(?AL+$04),(?AL+$00),(?AL+$0A),?HURRY
		DB	(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$13),?SPCE,(?AU+$16),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_LUCENT_BELT
	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$14),(?AL+$02),(?AL+$04),(?AL+$0D),(?AL+$13),?SPCE,(?AU+$01),(?AL+$04),(?AL+$0B),(?AL+$13),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$12),(?AL+$0A),(?AL+$08),(?AL+$0B),(?AL+$0B),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_OMBORSAMULET
	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$0C),(?AL+$01),(?AL+$0E),(?AL+$11),(?AL+$12),(?AU+$00),(?AL+$0C),(?AL+$14),(?AL+$0B),(?AL+$04),(?AL+$13),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$11),(?AL+$04),(?AL+$12),(?AL+$08),(?AL+$12),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_PINCHOFLIFE
	DB	CMD_TEXTWRITE
		DB	(?AU+$0F),(?AL+$08),(?AL+$0D),(?AL+$02),(?AL+$07),(?AU+$0E),(?AL+$05),(?AU+$0B),(?AL+$08),(?AL+$05),(?AL+$04),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$0E),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$08),(?AL+$15),(?AL+$04),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?WAIT
		DB	(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AU+$0B),(?AL+$08),(?AL+$05),(?AL+$04),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?WAIT
		DB	(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$12),?SPCE,(?AL+$08),(?AL+$13),(?AL+$12),?HURRY
		DB	(?AU+$00),(?AL+$13),(?AL+$13),(?AL+$00),(?AL+$02),(?AL+$0A),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_RABBAGE_FOOT
	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AL+$00),(?AL+$01),(?AL+$01),(?AL+$00),(?AL+$06),(?AL+$04),?SPCE,(?AU+$05),(?AL+$0E),(?AL+$0E),(?AL+$13),?HURRY
		DB	(?AL+$06),(?AL+$04),(?AL+$13),(?AL+$12),?SPCE,(?AL+$11),(?AL+$08),(?AL+$03),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$0B),(?AL+$14),(?AL+$02),(?AL+$0A),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_RAGE_STONE
	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AL+$00),(?AL+$06),(?AL+$04),?SPCE,(?AU+$12),(?AL+$13),(?AL+$0E),(?AL+$0D),(?AL+$04),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$0D),(?AL+$06),(?AL+$04),(?AL+$11),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?WAIT
		DB	(?AL+$05),(?AL+$00),(?AL+$12),(?AL+$13),(?AL+$04),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_SHADOW_VEIL
	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$07),(?AL+$00),(?AL+$03),(?AL+$0E),(?AL+$16),?SPCE,(?AU+$15),(?AL+$04),(?AL+$08),(?AL+$0B),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$18),?HURRY
		DB	(?AL+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$08),(?AL+$15),(?AL+$04),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?WAIT
		DB	(?AL+$02),(?AL+$00),(?AL+$14),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AU+$02),(?AL+$0E),(?AL+$0D),(?AL+$05),(?AL+$14),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_SHIELD_ORB
	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$07),(?AL+$08),(?AL+$04),(?AL+$0B),(?AL+$03),?SPCE,(?AU+$0E),(?AL+$11),(?AL+$01),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_SKY_ESSENCE
	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$04),(?AL+$00),(?AL+$05),?SPCE,(?AU+$04),(?AL+$12),(?AL+$12),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$13),?SPCE,(?AU+$16),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$16),(?AL+$04),(?AL+$00),(?AL+$0A),?HURRY
		DB	(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$13),?SPCE,(?AU+$04),(?AL+$00),(?AL+$11),(?AL+$13),(?AL+$07),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_SPICEOFLIFE
	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$0F),(?AL+$08),(?AL+$02),(?AL+$04),(?AU+$0E),(?AL+$05),(?AU+$0B),(?AL+$08),(?AL+$05),(?AL+$04),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_STONEESSENCE
	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$13),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AU+$04),(?AL+$12),(?AL+$12),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$13),?SPCE,(?AU+$16),(?AL+$08),(?AL+$0D),(?AL+$03),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$16),(?AL+$04),(?AL+$00),(?AL+$0A),?HURRY
		DB	(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$13),?SPCE,(?AU+$05),(?AL+$08),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_STONEOFDOOM
	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$13),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AU+$0E),(?AL+$05),(?AU+$03),(?AL+$0E),(?AL+$0E),(?AL+$0C),?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$14),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AU+$0F),(?AL+$0B),(?AL+$00),(?AL+$06),(?AL+$14),(?AL+$04),?WAIT
		DB	(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_STONEOFLIFE
	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$13),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AU+$0E),(?AL+$05),(?AU+$0B),(?AL+$08),(?AL+$05),(?AL+$04),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AU+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?COMM,?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$0C),(?AL+$0C),(?AL+$14),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$00),(?AL+$08),(?AL+$0B),(?AL+$0C),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_SWORDOFWIND
	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$03),(?AU+$0E),(?AL+$05),(?AU+$16),(?AL+$08),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$12),(?AL+$13),(?AL+$11),(?AL+$04),(?AL+$0D),(?AL+$06),(?AL+$13),(?AL+$07),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_TIDE_ESSENCE
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$08),(?AL+$03),(?AL+$04),?SPCE,(?AU+$04),(?AL+$12),(?AL+$12),(?AL+$04),(?AL+$0D),(?AL+$02),(?AL+$04),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$13),?SPCE,(?AU+$12),(?AL+$07),(?AL+$00),(?AL+$03),(?AL+$0E),(?AL+$16),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$16),(?AL+$04),(?AL+$00),(?AL+$0A),?HURRY
		DB	(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$13),?SPCE,(?AU+$16),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_TITAN_RING
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$08),(?AL+$13),(?AL+$00),(?AL+$0D),?SPCE,(?AU+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$12),(?AL+$13),(?AL+$11),(?AL+$04),(?AL+$0D),(?AL+$06),(?AL+$13),(?AL+$07),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_WATER_ORB
	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),?SPCE,(?AU+$0E),(?AL+$11),(?AL+$01),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AU+$16),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),?COMM,?SPCE,(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AL+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$13),(?AL+$12),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?WAIT
		DB	(?AL+$02),(?AL+$00),(?AL+$14),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AU+$07),(?AL+$08),(?AL+$02),(?AL+$02),(?AL+$14),(?AL+$0F),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_WISHBONE
	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$08),(?AL+$12),(?AL+$07),(?AL+$01),(?AL+$0E),(?AL+$0D),(?AL+$04),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$0B),(?AL+$14),(?AL+$02),(?AL+$0A),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
?_TYPE_SPELL
	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(MENU_HISTORIAN_TYPE_NUMBER+$0000)&$FFFF
		DB	:_LEAF_CUT
		DW	INV_LEAF_CUT
		DW	(_LEAF_CUT&$FFFF)
		DB	:_GROW
		DW	INV_GROW
		DW	(_GROW&$FFFF)
		DB	:_BURROW
		DW	INV_BURROW
		DW	(_BURROW&$FFFF)
		DB	:_CAVE_IN
		DW	INV_CAVE_IN
		DW	(_CAVE_IN&$FFFF)
		DB	:_THUNDERQUAKE
		DW	INV_THUNDERQUAKE
		DW	(_THUNDERQUAKE&$FFFF)
		DB	:_FIREBALL
		DW	INV_FIREBALL
		DW	(_FIREBALL&$FFFF)
		DB	:_FLAME_GEYSER
		DW	INV_FLAME_GEYSER
		DW	(_FLAME_GEYSER&$FFFF)
		DB	:_ENTANGLE
		DW	INV_ENTANGLE
		DW	(_ENTANGLE&$FFFF)
		DB	:_TIDAL_WAVE
		DW	INV_TIDAL_WAVE
		DW	(_TIDAL_WAVE&$FFFF)
		DB	:_DISPELX
		DW	INV_DISPELX
		DW	(_DISPELX&$FFFF)
		DB	:_UPDRAFT
		DW	INV_UPDRAFT
		DW	(_UPDRAFT&$FFFF)
		DB	:_LIGHTNING
		DW	INV_LIGHTNING
		DW	(_LIGHTNING&$FFFF)
		DB	$FF

	DB	CMD_JUMPLOCAL
		DW	(?_HISTORIAN_DONT_KNOW&$FFFF)

;********************************
_LEAF_CUT
	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$04),(?AL+$00),(?AL+$05),?SPCE,(?AU+$02),(?AL+$14),(?AL+$13),?HURRY
		DB	(?AL+$03),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$12),?SPCE,(?AL+$00),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?WAIT
		DB	(?AL+$03),(?AL+$00),(?AL+$0C),(?AL+$00),(?AL+$06),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$0C),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_GROW
	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$11),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$0B),(?AL+$04),(?AL+$13),(?AL+$12),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$06),(?AL+$08),(?AL+$15),(?AL+$04),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_BURROW
	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$14),(?AL+$11),(?AL+$11),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_CAVE_IN
	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AU+$08),(?AL+$0D),?HURRY
		DB	(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_THUNDERQUAKE
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$14),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),(?AL+$10),(?AL+$14),(?AL+$00),(?AL+$0A),(?AL+$04),?HURRY
		DB	(?AL+$03),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$12),?SPCE,(?AL+$03),(?AL+$00),(?AL+$0C),(?AL+$00),(?AL+$06),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_FIREBALL
	DB	CMD_TEXTWRITE
		DB	(?AU+$05),(?AL+$08),(?AL+$11),(?AL+$04),(?AL+$01),(?AL+$00),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$03),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$12),?SPCE,(?AL+$03),(?AL+$00),(?AL+$0C),(?AL+$00),(?AL+$06),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$00),(?AL+$0D),?SPCE,(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$0C),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_FLAME_GEYSER
	DB	CMD_TEXTWRITE
		DB	(?AU+$05),(?AL+$0B),(?AL+$00),(?AL+$0C),(?AL+$04),?SPCE,(?AU+$06),(?AL+$04),(?AL+$18),(?AL+$12),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$03),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$12),?SPCE,(?AL+$03),(?AL+$00),(?AL+$0C),(?AL+$00),(?AL+$06),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$18),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_ENTANGLE
	DB	CMD_TEXTWRITE
		DB	(?AU+$04),(?AL+$0D),(?AL+$13),(?AL+$00),(?AL+$0D),(?AL+$06),(?AL+$0B),(?AL+$04),?HURRY
		DB	(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AU+$12),(?AL+$0F),(?AL+$04),(?AL+$04),(?AL+$03),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_TIDAL_WAVE
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$08),(?AL+$03),(?AL+$00),(?AL+$0B),?SPCE,(?AU+$16),(?AL+$00),(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$03),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$12),?SPCE,(?AL+$03),(?AL+$00),(?AL+$0C),(?AL+$00),(?AL+$06),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$0C),(?AL+$08),(?AL+$04),(?AL+$12),?PERD,?HURRY
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_DISPELX
	DB	CMD_TEXTWRITE
		DB	(?AU+$03),(?AL+$08),(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$0B),?SPCE,(?AU+$17),?HURRY
		DB	(?AL+$02),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?APST,?HURRY
		DB	(?AL+$00),(?AL+$08),(?AL+$0B),(?AL+$0C),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_UPDRAFT
	DB	CMD_TEXTWRITE
		DB	(?AU+$14),(?AL+$0F),(?AL+$03),(?AL+$11),(?AL+$00),(?AL+$05),(?AL+$13),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?APST,?HURRY
		DB	(?AU+$12),(?AL+$0F),(?AL+$04),(?AL+$04),(?AL+$03),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
_LIGHTNING
	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),(?AL+$0D),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$03),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$12),?SPCE,(?AL+$00),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AL+$03),(?AL+$00),(?AL+$0C),(?AL+$00),(?AL+$06),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$0C),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HISTORIAN_WHICH_ONE
		DW	(?_HISTORIAN_WHICH_ONE&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_FACE_EVU
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	MENU_HISTORIAN_TYPE
	GLOBAL	MENU_HISTORIAN_TYPE_NUMBER
	GLOBAL	?_OROCITY04_DISPELL_X_TXT

;********************************
	END
;********************************