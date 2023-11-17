;Size:2137
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\UNDERNEATH\TOWN\MAP04\UNDTOWN04.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_UNDTOWN04_DR_1
	DB	CMD_HEROTODOOR
		DB	$03
		DB	$22
		DB	$09
		DB	$12

	DB	CMD_JUMP
		DB	:?_UNDTOWN01
		DW	(?_UNDTOWN01&$FFFF)

;********************************
?_UNDTOWN04_TR_1

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),?SPCE,(?AL+$01),(?AL+$0E),(?AL+$0E),(?AL+$0A),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$02),(?AL+$00),(?AL+$0B),?HURRY
		DB	(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$12),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$13),(?AL+$00),(?AL+$0B),(?AL+$00),(?AL+$02),(?AL+$13),(?AL+$08),(?AL+$13),(?AL+$04),?SPCE,(?AU+$11),(?AL+$14),(?AL+$0D),?COLN,?WAIT
		DB	(?AU+$16),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$0B),(?AL+$18),?HURRY
		DB	(?AL+$0E),(?AL+$01),(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$02),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$15),(?AL+$08),(?AL+$02),(?AL+$13),(?AL+$0E),(?AL+$11),(?AL+$18),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$0F),(?AL+$0E),(?AL+$08),(?AL+$0D),(?AL+$13),(?AL+$18),?SPCE,(?AL+$02),(?AL+$07),(?AL+$14),(?AL+$0D),(?AL+$0A),?WAIT
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AL+$05),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$0D),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),(?AL+$12),?HURRY
		DB	(?AL+$03),(?AL+$00),(?AL+$0D),(?AL+$06),(?AL+$04),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDTOWN04_TR_2

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$07),(?AL+$07),?COMM,?SPCE,(?AL+$18),(?AL+$04),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$02),(?AL+$07),(?AL+$00),(?AL+$08),(?AL+$11),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$0C),(?AL+$0E),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$0C),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDTOWN04_TR_3

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$03),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$18),?SPCE,(?AL+$06),(?AL+$11),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$12),(?AL+$04),?SPCE,(?AL+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$05),(?AL+$00),(?AL+$11),(?AL+$0C),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDTOWN04_TR_4

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0D),(?AL+$03),(?AL+$0E),(?AL+$16),?PERD,?WAIT
		DB	(?AU+$16),(?AL+$07),(?AL+$18),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_UNDTOWN04_OLDMAN_TXT01

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$00),(?AL+$0C),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$0C),(?AL+$00),(?AL+$11),(?AL+$13),(?AL+$04),(?AL+$12),(?AL+$13),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$0D),?WAIT
		DB	(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$0E),(?AL+$16),(?AL+$0D),?PERD,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),(?AL+$12),?HURRY
		DB	(?AL+$13),(?AL+$0E),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$0C),(?AL+$04),?SPCE,(?AL+$12),(?AL+$0E),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

;********************************
_DUMB_HISTORIAN

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$12),(?AL+$0A),?SPCE,(?AL+$0C),(?AL+$04),?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

;********************************
_THE_MENU
	DB	CMD_MENUHISTORIAN


	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(MENU_HISTORIAN_TYPE+$0000)&$FFFF
		DB	:_RANDOM_DEFINITION
		DW	INV_TYPE_ITEM
		DW	(_RANDOM_DEFINITION&$FFFF)
		DB	:_RANDOM_DEFINITION
		DW	INV_TYPE_RELIC
		DW	(_RANDOM_DEFINITION&$FFFF)
		DB	:_RANDOM_DEFINITION
		DW	INV_TYPE_SPELL
		DW	(_RANDOM_DEFINITION&$FFFF)
		DB	$FF

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$13),(?AL+$0E),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$16),(?AL+$00),(?AL+$12),?SPCE,(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?WAIT
		DB	(?AL+$12),(?AL+$0C),(?AL+$00),(?AL+$11),(?AL+$13),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THISACTORRESTORESTATE

;********************************
_RANDOM_DEFINITION
	DB	CMD_JUMPRANDOM
		DB	$18
		DB	:_JUMP_HIGH
		DW	(_JUMP_HIGH&$FFFF)
		DB	:_CONFUSES_PURPLE
		DW	(_CONFUSES_PURPLE&$FFFF)
		DB	:_CLIMB_TREES
		DW	(_CLIMB_TREES&$FFFF)
		DB	:_VERY_POWERFUL
		DW	(_VERY_POWERFUL&$FFFF)
		DB	:_USELESS
		DW	(_USELESS&$FFFF)
		DB	:_DOUBLES_ENERGY
		DW	(_DOUBLES_ENERGY&$FFFF)
		DB	:_USE_ON_MUSHROOMS
		DW	(_USE_ON_MUSHROOMS&$FFFF)
		DB	:_MORE_RINGS
		DW	(_MORE_RINGS&$FFFF)
		DB	:_VERY_LUCKY
		DW	(_VERY_LUCKY&$FFFF)
		DB	:_STRENGTH
		DW	(_STRENGTH&$FFFF)
		DB	:_ENEMY_ATTACK_THEMSELVES
		DW	(_ENEMY_ATTACK_THEMSELVES&$FFFF)
		DB	:_GROW_HORN
		DW	(_GROW_HORN&$FFFF)
		DB	:_DONT_USE_THAT
		DW	(_DONT_USE_THAT&$FFFF)
		DB	:_CAUSES_BLINDNESS
		DW	(_CAUSES_BLINDNESS&$FFFF)
		DB	:_DESTROY_CAT_PICTURES
		DW	(_DESTROY_CAT_PICTURES&$FFFF)
		DB	:_MAKES_FACE_BLUE
		DW	(_MAKES_FACE_BLUE&$FFFF)
		DB	:_SETS_ON_FIRE
		DW	(_SETS_ON_FIRE&$FFFF)
		DB	:_HEAT
		DW	(_HEAT&$FFFF)
		DB	:_ITCHING
		DW	(_ITCHING&$FFFF)
		DB	:_VOMIT
		DW	(_VOMIT&$FFFF)
		DB	:_SICK_ORWIN
		DW	(_SICK_ORWIN&$FFFF)
		DB	:_JINK_ROOT
		DW	(_JINK_ROOT&$FFFF)
		DB	:_CONTINENT
		DW	(_CONTINENT&$FFFF)
		DB	:_OVERWORLD
		DW	(_OVERWORLD&$FFFF)

;********************************
_JUMP_HIGH
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$12),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AU+$03),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0C),?WAIT
		DB	(?AU+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$09),(?AL+$14),(?AL+$0C),(?AL+$0F),?SPCE,(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$18),?SPCE,(?AL+$07),(?AL+$08),(?AL+$06),(?AL+$07),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_CONFUSES_PURPLE
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$0F),(?AL+$14),(?AL+$11),(?AL+$0F),(?AL+$0B),(?AL+$04),?WAIT
		DB	(?AU+$03),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0C),?SPCE,(?AU+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$18),?SPCE,(?AL+$16),(?AL+$04),(?AL+$00),(?AL+$0A),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_CLIMB_TREES
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$06),(?AL+$08),(?AL+$15),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),?SPCE,(?AU+$0C),(?AL+$00),(?AL+$06),(?AL+$08),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$00),(?AL+$01),(?AL+$08),(?AL+$0B),(?AL+$08),(?AL+$13),(?AL+$18),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$02),(?AL+$0B),(?AL+$08),(?AL+$0C),(?AL+$01),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0C),(?AL+$0E),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$13),(?AL+$11),(?AL+$04),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_VERY_POWERFUL
	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$0E),(?AL+$16),?COMM,?SPCE,(?AU+$08),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?APST,(?AL+$13),?HURRY
		DB	(?AL+$01),(?AL+$04),(?AL+$0B),(?AL+$08),(?AL+$04),(?AL+$15),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?WAIT
		DB	(?AL+$05),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$12),(?AL+$04),?PERD,?SPCE,(?AU+$08),(?AL+$13),?APST,(?AL+$12),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$11),(?AL+$11),(?AL+$18),?COMM,?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),(?AL+$0D),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$13),(?AL+$04),(?AL+$0B),(?AL+$0B),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$01),(?AL+$04),(?AL+$02),(?AL+$00),(?AL+$14),(?AL+$12),(?AL+$04),?SPCE,(?AL+$08),(?AL+$05),?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$03),(?AL+$08),(?AL+$03),?COMM,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$0B),(?AL+$08),(?AL+$05),(?AL+$04),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$01),(?AL+$04),?HURRY
		DB	(?AL+$08),(?AL+$0D),?SPCE,(?AL+$03),(?AL+$00),(?AL+$0D),(?AL+$06),(?AL+$04),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_USELESS
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?QUST,?SPCE,(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$03),(?AL+$0E),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),(?AL+$01),(?AL+$12),(?AL+$0E),(?AL+$0B),(?AL+$14),(?AL+$13),(?AL+$04),(?AL+$0B),(?AL+$18),?WAIT
		DB	(?AL+$0D),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_DOUBLES_ENERGY
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$13),(?AL+$04),(?AL+$0C),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$12),?HURRY
		DB	(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$00),(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$08),(?AL+$05),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$08),(?AL+$13),(?AL+$12),?HURRY
		DB	(?AL+$0D),(?AL+$00),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$00),(?AL+$05),(?AL+$13),(?AL+$04),(?AL+$11),?WAIT
		DB	(?AL+$0C),(?AL+$08),(?AL+$03),(?AL+$0D),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_USE_ON_MUSHROOMS
	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$14),(?AL+$12),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$00),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?HURRY
		DB	(?AL+$00),(?AL+$0D),?SPCE,(?AL+$04),(?AL+$0B),(?AL+$08),(?AL+$17),(?AL+$08),(?AL+$11),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AL+$07),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_MORE_RINGS
	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$07),(?AL+$07),?COMM,?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$02),(?AL+$08),(?AL+$00),(?AL+$0B),?PERD,?SPCE,(?AU+$16),(?AL+$08),(?AL+$13),(?AL+$07),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AL+$04),(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$0F),?SPCE,(?AL+$0C),(?AL+$0E),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_VERY_LUCKY
	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$14),(?AL+$12),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),(?AL+$0E),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$0D),(?AL+$18),?WAIT
		DB	(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),(?AL+$12),?COMM,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?SPCE,(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$08),(?AL+$03),(?AL+$04),?WAIT
		DB	(?AL+$0E),(?AL+$14),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_STRENGTH
	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$18),?EXCL,?SPCE,(?AU+$08),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$14),(?AL+$12),(?AL+$04),(?AL+$03),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$01),(?AL+$04),(?AL+$0B),(?AL+$0E),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$0C),(?AL+$18),?SPCE,(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$0D),(?AL+$06),(?AL+$04),(?AL+$03),?WAIT
		DB	(?AL+$0C),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?EXCL,?WAIT
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$0A),(?AL+$04),(?AL+$04),(?AL+$0F),?HURRY
		DB	(?AL+$08),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_ENEMY_ATTACK_THEMSELVES
	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$14),(?AL+$12),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$04),(?AL+$17),(?AL+$05),(?AL+$0E),(?AL+$0B),(?AL+$08),(?AL+$00),(?AL+$13),(?AL+$04),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$15),(?AL+$04),(?AL+$0B),(?AL+$08),(?AL+$0D),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_GROW_HORN
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$02),(?AL+$00),(?AL+$14),(?AL+$12),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AL+$00),?SPCE,(?AU+$0C),(?AL+$00),(?AL+$06),(?AL+$08),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$06),(?AL+$11),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$00),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$11),(?AL+$0D),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_DONT_USE_THAT
	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AU+$07),(?AU+$07),?EXCL,?WAIT
		DB	(?AU+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$13),(?AL+$07),(?AL+$0E),(?AL+$12),(?AL+$04),?EXCL,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$08),(?AL+$0D),(?AL+$13),(?AL+$0E),?SPCE,(?AL+$00),(?AL+$0D),?SPCE,(?AL+$04),(?AL+$15),(?AL+$08),(?AL+$0B),?WAIT
		DB	(?AU+$03),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0C),?SPCE,(?AU+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$12),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?HURRY
		DB	(?AL+$03),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$18),?SPCE,(?AL+$08),(?AL+$13),?WAIT
		DB	(?AL+$08),(?AL+$0C),(?AL+$0C),(?AL+$04),(?AL+$03),(?AL+$08),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$0B),(?AL+$18),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_CAUSES_BLINDNESS
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$02),(?AL+$00),(?AL+$14),(?AL+$12),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AL+$01),(?AL+$0B),(?AL+$08),(?AL+$0D),(?AL+$03),(?AL+$0D),(?AL+$04),(?AL+$12),(?AL+$12),?SPCE,(?AL+$08),(?AL+$0D),?WAIT
		DB	(?AL+$12),(?AL+$0C),(?AL+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$11),(?AL+$0E),(?AL+$03),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_DESTROY_CAT_PICTURES
	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$05),?SPCE,(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$00),?SPCE,(?AL+$0F),(?AL+$08),(?AL+$02),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AL+$00),?SPCE,(?AL+$02),(?AL+$00),(?AL+$13),?COMM,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$14),(?AL+$12),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?SPCE,(?AL+$08),(?AL+$13),?HURRY
		DB	(?AL+$08),(?AL+$0D),(?AL+$13),(?AL+$0E),?SPCE,(?AL+$00),?SPCE,(?AL+$0F),(?AL+$08),(?AL+$02),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AL+$00),?SPCE,(?AL+$16),(?AL+$04),(?AL+$04),(?AL+$01),(?AL+$0E),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_MAKES_FACE_BLUE
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?SPCE,(?AL+$05),(?AL+$00),(?AL+$02),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?SPCE,(?AL+$01),(?AL+$0B),(?AL+$14),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_SETS_ON_FIRE
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$12),(?AL+$04),(?AL+$13),?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$05),(?AL+$14),(?AL+$11),(?AL+$11),(?AL+$18),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$0D),?HURRY
		DB	(?AL+$05),(?AL+$08),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_HEAT
	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$0E),(?AL+$03),?PERD,?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$0E),(?AL+$0A),?SPCE,(?AL+$08),(?AL+$13),?HURRY
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_ITCHING
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$02),(?AL+$00),(?AL+$14),(?AL+$12),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AL+$08),(?AL+$13),(?AL+$02),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_VOMIT
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$0C),(?AL+$04),(?AL+$0B),(?AL+$0B),(?AL+$12),?SPCE,(?AL+$04),(?AL+$17),(?AL+$00),(?AL+$02),(?AL+$13),(?AL+$0B),(?AL+$18),?WAIT
		DB	(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$00),?SPCE,(?AL+$01),(?AL+$00),(?AL+$01),(?AL+$18),?HURRY
		DB	(?AL+$01),(?AL+$11),(?AL+$14),(?AL+$01),?APST,(?AL+$12),?SPCE,(?AL+$05),(?AL+$08),(?AL+$11),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AL+$15),(?AL+$0E),(?AL+$0C),(?AL+$08),(?AL+$13),?PERD,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$0D),(?AL+$0E),(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$0B),(?AL+$06),(?AL+$08),(?AL+$02),?WAIT
		DB	(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$00),(?AL+$01),(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$08),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_SICK_ORWIN
	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$07),(?AL+$04),(?AL+$00),(?AL+$11),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AU+$04),(?AL+$0B),(?AL+$03),(?AL+$04),(?AL+$11),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AU+$15),(?AL+$00),(?AL+$12),(?AL+$07),?SPCE,(?AU+$0D),(?AL+$00),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),?HURRY
		DB	(?AL+$08),(?AL+$12),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$08),(?AL+$02),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$0E),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_JINK_ROOT
	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$03),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$00),?WAIT
		DB	(?AU+$09),(?AL+$08),(?AL+$0D),(?AL+$0A),?SPCE,(?AU+$11),(?AL+$0E),(?AL+$0E),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_CONTINENT
	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$04),(?AL+$17),(?AL+$13),(?AL+$04),(?AL+$11),(?AL+$0C),(?AL+$08),(?AL+$0D),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AL+$0F),(?AL+$00),(?AL+$11),(?AL+$00),(?AL+$12),(?AL+$08),(?AL+$13),(?AL+$04),(?AL+$12),?SPCE,(?AL+$0E),(?AL+$0D),?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?WAIT
		DB	(?AL+$02),(?AL+$0E),(?AL+$0D),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$04),(?AL+$0D),(?AL+$13),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
_OVERWORLD
	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$14),(?AL+$12),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$0B),(?AL+$03),?COMM,?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),?WAIT
		DB	(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$00),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$0E),(?AL+$0B),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_THE_MENU
		DW	(_THE_MENU&$FFFF)

;********************************
?_UNDTOWN04
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDTOWN04&$FFFF)
		DB	:MAP_UNDTOWN04

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDTOWN04&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_UNDTOWN04&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D037
		DB	$00
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$02
		DB	$06
		DW	$D03E
		DB	$00
		DB	:?_OLDMAN_STAND_RIGHT_ANIM
		DW	(?_OLDMAN_STAND_RIGHT_ANIM&$FFFF)
		DB	:?_UNDTOWN04_OLDMAN
		DW	(?_UNDTOWN04_OLDMAN&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$26
		DB	:BIT_OLDMAN
		DW	(BIT_OLDMAN&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_undtown

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_UNDTOWN04_OLDMAN
	DB	CMD_SETTEXT
		DB	:?_UNDTOWN04_OLDMAN_TXT01
		DW	(?_UNDTOWN04_OLDMAN_TXT01&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_OLDMAN
		DW	(?_FACE_OLDMAN&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_UNDTOWN01
	GLOBAL	MENU_HISTORIAN_TYPE
	GLOBAL	MAP_UNDTOWN04
	GLOBAL	HS_UNDTOWN04
	GLOBAL	TR_UNDTOWN04
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STAND_LEFT_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR00
	GLOBAL	?TALKER_AI
	GLOBAL	?_OLDMAN_STAND_RIGHT_ANIM
	GLOBAL	BIT_OLDMAN
	GLOBAL	?_FACE_OLDMAN

;********************************
	END
;********************************