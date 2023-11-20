;Size:202
                      
;********************************
; C:\Users\vimegar\Documents\Dev\MagiNationSource\SCRIPTS\SYSTEM\ITEM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ITEM_BALOO_LEAF

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$11),(?AL+$04),(?AL+$02),(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$04),(?AL+$03),?HURRY
		DB	(?0+$01),(?0+$00),?SPCE,(?AU+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_INVENTORYTAKE
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_LEAF
		DB	$01

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_HERO_ENERGY
		DB	INV_TYPE_HERO_ENERGY
		DB	$0A

	DB	CMD_END

;********************************
?_ITEM_BALOO_SAP

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$11),(?AL+$04),(?AL+$02),(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$04),(?AL+$03),?HURRY
		DB	(?0+$03),(?0+$00),?SPCE,(?AU+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_INVENTORYTAKE
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_SAP
		DB	$01

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_HERO_ENERGY
		DB	INV_TYPE_HERO_ENERGY
		DB	$1E

	DB	CMD_END

;********************************
?_ITEM_BALOO_ROOT

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$11),(?AL+$04),(?AL+$02),(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$04),(?AL+$03),?HURRY
		DB	(?0+$06),(?0+$05),?SPCE,(?AU+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_INVENTORYTAKE
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_ROOT
		DB	$01

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_HERO_ENERGY
		DB	INV_TYPE_HERO_ENERGY
		DB	$41

	DB	CMD_END

;********************************
?_ITEM_WATER_OF_LIFE

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?APST,(?AL+$12),?SPCE,(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$17),(?AL+$08),(?AL+$0C),(?AL+$14),(?AL+$0C),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?WAIT
		DB	(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$12),(?AL+$04),(?AL+$03),?SPCE,(?AL+$01),(?AL+$18),?SPCE,(?0+$05),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_INVENTORYTAKE
		DB	INV_TYPE_ITEM
		DB	INV_WATER_OF_LIFE
		DB	$01

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_HERO_ENERGYMAX
		DB	INV_TYPE_HERO_ENERGYMAX
		DB	$05

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_HERO_ENERGY
		DB	INV_TYPE_HERO_ENERGY
		DB	$05

	DB	CMD_END

;********************************
?_MENU_EXIT
;********************************
?_ITEM_ELDRITCH_AWL
	DB	CMD_IF
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)&$FFFF
		DB	:_EXIT_DISABLE
		DW	(_EXIT_DISABLE&$FFFF)

	DB	CMD_JUMPLOADSCRIPT

;********************************
_EXIT_DISABLE

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$04),(?AL+$17),(?AL+$08),(?AL+$13),?HURRY
		DB	(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	XRAM_SAVEVARS

;********************************
	END
;********************************