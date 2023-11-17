;Size:1342
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\OROTHE\GEYSER\MAP05\OROGEYSER05.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_OROGEYSER05_DR_1
	DB	CMD_HEROTODOOR
		DB	$1F
		DB	$00
		DB	$0F
		DB	$1A

	DB	CMD_JUMP
		DB	:?_OROGEYSER01
		DW	(?_OROGEYSER01&$FFFF)

;********************************
?_OROGEYSER05_DR_2
	DB	CMD_HEROSETDOOR
		DB	$03
		DB	$1A

	DB	CMD_JUMP
		DB	:?_OROGEYSER10
		DW	(?_OROGEYSER10&$FFFF)

;********************************
?_OROGEYSER05_DR_3
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$01
		DB	:_SKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0000)
		DB	$01

	DB	CMD_JUMP
		DB	:?_OROGEYSER05_WARRADAAGAIN
		DW	(?_OROGEYSER05_WARRADAAGAIN&$FFFF)

;********************************
_SKIP
	DB	CMD_END

;********************************
?_OROGEYSER05_TXT_01

	DB	CMD_TEXTICON
		DW	ICON_WARRADA

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$08),(?AL+$08),(?AL+$08),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_OROGEYSER05_TXT_02

	DB	CMD_TEXTICON
		DW	ICON_WARRADA

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$04),(?AL+$11),?COMM,?SPCE,(?AL+$01),(?AL+$0E),(?AL+$18),?QUST,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$13),(?AL+$0E),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$16),(?AL+$04),?APST,(?AL+$03),?SPCE,(?AL+$0C),(?AL+$04),(?AL+$04),(?AL+$13),?WAIT
		DB	(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),?PERD,?WAIT
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$12),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$01),(?AL+$04),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$18),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$18),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WARRADA

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$0E),?SPCE,(?AL+$07),(?AL+$0E),?EXCL,?SPCE,(?AU+$01),(?AL+$04),(?AL+$02),(?AL+$00),(?AL+$14),(?AL+$12),(?AL+$04),?HURRY
		DB	(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AL+$0E),(?AL+$05),(?AL+$05),(?AL+$04),(?AL+$11),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?APST,(?AL+$13),?WAIT
		DB	(?AL+$11),(?AL+$04),(?AL+$05),(?AL+$14),(?AL+$12),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WARRADA

	DB	CMD_TEXTWRITE
		DB	(?AU+$15),(?AL+$04),(?AL+$11),(?AL+$18),?SPCE,(?AL+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?COMM,?HURRY
		DB	(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AL+$00),(?AL+$12),(?AL+$12),(?AL+$14),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$08),(?AL+$0D),(?AL+$13),(?AL+$04),(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$04),(?AL+$03),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
?_OROGEYSER05_TXT_03

	DB	CMD_TEXTICON
		DW	ICON_WARRADA

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$0C),(?AL+$18),?HURRY
		DB	(?AL+$0E),(?AL+$05),(?AL+$05),(?AL+$04),(?AL+$11),?COLN,?WAIT
		DB	(?AL+$16),(?AL+$04),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$05),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?PERD,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$00),(?AL+$0C),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$12),(?AL+$08),(?AL+$0C),(?AL+$0F),(?AL+$0B),(?AL+$18),?WAIT
		DB	(?AL+$06),(?AL+$08),(?AL+$15),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AU+$02),(?AL+$0E),(?AL+$11),(?AL+$04),?SPCE,(?AU+$12),(?AL+$13),(?AL+$0E),(?AL+$0D),(?AL+$04),?COMM,?WAIT
		DB	(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AU+$08),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$14),(?AL+$12),(?AL+$04),?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?HURRY
		DB	(?AL+$07),(?AL+$0E),(?AL+$0C),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE


	DB	CMD_TEXTICON
		DW	ICON_WARRADA

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$03),(?AL+$0E),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$18),?WAIT
		DB	(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$16),(?AL+$00),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$03

	DB	CMD_END

;********************************
?_OROGEYSER05_TXT_04

	DB	CMD_TEXTICON
		DW	ICON_WARRADA

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?QUST,?HURRY
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$03),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?WAIT
		DB	(?AL+$12),(?AL+$00),(?AL+$18),?QUST,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$00),(?AL+$13),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?WAIT
		DB	(?AL+$00),(?AL+$01),(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$12),(?AL+$04),?HURRY
		DB	(?AL+$05),(?AL+$0E),(?AL+$0E),(?AL+$0B),(?AL+$12),?PERD,?SPCE,(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$18),?APST,(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$0D),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$03),?COMM,?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$0B),(?AL+$03),?PERD,?WAIT
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$01),(?AL+$04),?HURRY
		DB	(?AL+$00),(?AL+$13),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$11),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?WAIT
		DB	(?AL+$0D),(?AL+$0E),(?AL+$16),?COMM,?SPCE,(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?HURRY
		DB	(?AL+$05),(?AL+$11),(?AL+$08),(?AL+$04),(?AL+$0D),(?AL+$03),(?AL+$12),?PERD,?PERD,?PERD,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$05),(?AL+$00),(?AL+$0C),(?AL+$08),(?AL+$0B),(?AL+$18),?PERD,?PERD,?PERD,?SPCE,(?AU+$08),?APST,(?AL+$0C),?HURRY
		DB	(?AL+$12),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$18),?APST,(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$11),(?AL+$08),(?AL+$04),(?AL+$03),?HURRY
		DB	(?AL+$00),(?AL+$01),(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$04

	DB	CMD_END

;********************************
?_OROGEYSER05_TXT_05

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?SPCE,(?AU+$08),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WARRADA

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$04),(?AL+$12),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_DELAY
		DB	$60


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?SPCE,(?AU+$08),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_DELAY
		DB	$80

	DB	CMD_SETEVENTTEXT
		DB	$32


	DB	CMD_TEXTICON
		DW	ICON_WARRADA

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$0E),(?AL+$07),?COMM,?SPCE,(?AU+$16),(?AU+$07),(?AU+$00),(?AU+$13),(?AU+$04),(?AU+$15),(?AU+$04),(?AU+$11),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$05

	DB	CMD_END

;********************************
?_OROGEYSER05_TXT_06

	DB	CMD_TEXTICON
		DW	ICON_WARRADA

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$16),(?AL+$00),(?AL+$08),(?AL+$13),?HURRY
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$16),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0F),(?AL+$00),(?AL+$13),(?AL+$07),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$04),(?AL+$0D),(?AL+$03),(?AL+$12),?PERD,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$0B),(?AL+$0B),?WAIT
		DB	(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$0F),(?AL+$0B),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$18),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$0A),(?AL+$04),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$02),(?AL+$07),(?AL+$0E),(?AL+$08),(?AL+$02),(?AL+$04),?COMM,?HURRY
		DB	(?AL+$12),(?AL+$08),(?AL+$0D),(?AL+$02),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?WAIT
		DB	(?AL+$01),(?AL+$04),?SPCE,(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$0B),(?AL+$0E),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$16),(?AL+$00),(?AL+$18),?PERD,?WAIT
		DB	(?AU+$02),(?AL+$0E),(?AL+$0D),(?AL+$12),(?AL+$08),(?AL+$03),(?AL+$04),(?AL+$11),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$03),(?AL+$08),(?AL+$05),(?AL+$05),(?AL+$08),(?AL+$02),(?AL+$14),(?AL+$0B),(?AL+$13),?SPCE,(?AL+$0F),(?AL+$00),(?AL+$13),(?AL+$07),?WAIT
		DB	(?AL+$00),(?AL+$12),?SPCE,(?AL+$0F),(?AL+$14),(?AL+$0D),(?AL+$08),(?AL+$12),(?AL+$07),(?AL+$0C),(?AL+$04),(?AL+$0D),(?AL+$13),?HURRY
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$08),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$02),(?AL+$08),(?AL+$12),(?AL+$08),(?AL+$0E),(?AL+$0D),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$06

	DB	CMD_END

;********************************
?_OROGEYSER05_TXT_07

	DB	CMD_TEXTICON
		DW	ICON_WARRADA

	DB	CMD_TEXTWRITE
		DB	(?AU+$14),(?AL+$0D),(?AL+$13),(?AL+$08),(?AL+$0B),?SPCE,(?AL+$0B),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$07

	DB	CMD_END

;********************************
?_OROGEYSER05
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_OROGEYSER05&$FFFF)
		DB	:MAP_OROGEYSER05

	DB	CMD_LOADHOTSPOTS
		DW	(HS_OROGEYSER05&$FFFF)

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
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$02
		DB	$07
		DW	$D160
		DB	$00
		DB	:?_OROGEYSER05_WARRADA
		DW	(?_OROGEYSER05_WARRADA&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_OROGEYSER_RNDBAT
		DW	(?_OROGEYSER_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_OROGEYSER05
		DW	(?_OROGEYSER05&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_WARRADA
		DW	(BIT_WARRADA&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_END

;********************************
?_OROGEYSER05_WARRADAAGAIN
	DB	CMD_FADEOUTSONG
		DB	$10

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_OROGEYSER05_HERO
		DW	(?_OROGEYSER05_HERO&$FFFF)

	DB	CMD_PALCLEARANIM
		DB	$F0
		DW	$1480

	DB	CMD_DELAY
		DB	$30

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_PALFADE
		DB	$60
		DB	$F0

	DB	CMD_SONGSTART
		DB	SONGID_ororuins

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_PALCLEARBASE
		DB	$F0
		DW	$1480

	DB	CMD_PALFADE
		DB	$60
		DB	$F0

	DB	CMD_DELAY
		DB	$20

	DB	CMD_FADEOUTSONG
		DB	$10

	DB	CMD_SCROLLMAP
		DB	$30
		DB	$01
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_OROGEYSER05_TXT_07
		DW	(?_OROGEYSER05_TXT_07&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$07

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)

	DB	CMD_END

;********************************
?_OROGEYSER05_HERO
	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_HERO_WALK_LEFT_ANIM
		DW	(?_HERO_WALK_LEFT_ANIM&$FFFF)
		DB	$30
		DB	$FF
		DB	$00
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$10
		DB	$FF
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$24
		DB	$00
		DB	$00
		DB	:?_HERO_BACK_RIGHT_ANIM
		DW	(?_HERO_BACK_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	$00
		DB	$00
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$20
		DB	$00
		DB	$00
		DB	:?_HERO_BACK_RIGHT_ANIM
		DW	(?_HERO_BACK_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	$01
		DB	$00
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$20
		DB	$00
		DB	$00
		DB	:?_HERO_BACK_RIGHT_ANIM
		DW	(?_HERO_BACK_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	$01
		DB	$00
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$01
		DB	$02

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_DL_ANIM
		DW	(?_HERO_STAND_DL_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$04

	DB	CMD_DELAY
		DB	$40

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$40

	DB	CMD_SETTEXT
		DB	:?_OROGEYSER05_TXT_05
		DW	(?_OROGEYSER05_TXT_05&$FFFF)

	DB	CMD_SYNC
		DB	$02
		DB	$02

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_END

;********************************
?_OROGEYSER05_WARRADA
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WARRADA_STAND_RIGHT_ANIM
		DW	(?_WARRADA_STAND_RIGHT_ANIM&$FFFF)
		DB	$48
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_OROGEYSER05_TXT_01
		DW	(?_OROGEYSER05_TXT_01&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WARRADA_WALK_RIGHT_ANIM
		DW	(?_WARRADA_WALK_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_WARRADA_STAND_RIGHT_ANIM
		DW	(?_WARRADA_STAND_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_WARRADA_WALK_RIGHT_ANIM
		DW	(?_WARRADA_WALK_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_WARRADA_STAND_RIGHT_ANIM
		DW	(?_WARRADA_STAND_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_WARRADA_WALK_RIGHT_ANIM
		DW	(?_WARRADA_WALK_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_WARRADA_STAND_RIGHT_ANIM
		DW	(?_WARRADA_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_OROGEYSER05_TXT_02
		DW	(?_OROGEYSER05_TXT_02&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_SETTEXT
		DB	:?_OROGEYSER05_TXT_03
		DW	(?_OROGEYSER05_TXT_03&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$03

	DB	CMD_SYNC
		DB	$01
		DB	$02

	DB	CMD_SETTEXT
		DB	:?_OROGEYSER05_TXT_04
		DW	(?_OROGEYSER05_TXT_04&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$32

	DB	CMD_THISACTORSETANIM
		DB	:?_WARRADA_STAND_LEFT_ANIM
		DW	(?_WARRADA_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$05

	DB	CMD_SYNC
		DB	$02
		DB	$02

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_WARRADA_WALK_LEFT_ANIM
		DW	(?_WARRADA_WALK_LEFT_ANIM&$FFFF)
		DB	$10
		DB	$FF
		DB	$00
		DB	:?_WARRADA_STAND_LEFT_ANIM
		DW	(?_WARRADA_STAND_LEFT_ANIM&$FFFF)
		DB	$10
		DB	$00
		DB	$00
		DB	:?_WARRADA_STAND_UL_ANIM
		DW	(?_WARRADA_STAND_UL_ANIM&$FFFF)
		DB	$00
		DB	$00
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_OROGEYSER05_TXT_06
		DW	(?_OROGEYSER05_TXT_06&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$06

	DB	CMD_SETEVENTMASTER
		DB	$01

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_WARRADA_WALK_LEFT_ANIM
		DW	(?_WARRADA_WALK_LEFT_ANIM&$FFFF)
		DB	$30
		DB	$FF
		DB	$00
		DB	:?_WARRADA_STAND_RIGHT_ANIM
		DW	(?_WARRADA_STAND_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	$00
		DB	$00
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_OROGEYSER01
	GLOBAL	?_OROGEYSER10
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	MAP_OROGEYSER05
	GLOBAL	HS_OROGEYSER05
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STAND_LEFT_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR00
	GLOBAL	?ANIM_AI
	GLOBAL	?_OROGEYSER_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST
	GLOBAL	BIT_WARRADA
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_HERO_WALK_LEFT_ANIM
	GLOBAL	?_HERO_BACK_RIGHT_ANIM
	GLOBAL	?_HERO_STAND_DL_ANIM
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_WARRADA_STAND_RIGHT_ANIM
	GLOBAL	?_WARRADA_WALK_RIGHT_ANIM
	GLOBAL	?_WARRADA_STAND_LEFT_ANIM
	GLOBAL	?_WARRADA_WALK_LEFT_ANIM
	GLOBAL	?_WARRADA_STAND_UL_ANIM

;********************************
	END
;********************************