;Size:1255
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\GEYSER\MAP28\ARDGEYSER28.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDGEYSER28_DR_1
	DB	CMD_HEROTODOOR
		DB	$09
		DB	$20
		DB	$31
		DB	$00

	DB	CMD_JUMP
		DB	:?_ARDGEYSER19
		DW	(?_ARDGEYSER19&$FFFF)

;********************************
?_ARDGEYSER28_TXT_01
	DB	CMD_DELAY
		DB	$80


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?WAIT
		DB	?PERD,?PERD,?PERD,?WAIT
		DB	?PERD,?PERD,?PERD,?QUST,?QUST,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$0D),(?AL+$06),(?AL+$04),?PERD,?PERD,?PERD,?WAIT
		DB	(?AL+$12),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),(?AL+$0D),?APST,(?AL+$13),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$06),(?AL+$04),(?AL+$18),(?AL+$12),(?AL+$04),(?AL+$11),?SPCE,(?AL+$01),(?AL+$04),?WAIT
		DB	(?AL+$02),(?AL+$0B),(?AL+$0E),(?AL+$12),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$16),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_ARDGEYSER28_TXT_02

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$14),(?AL+$12),(?AL+$04),(?AL+$0B),(?AL+$04),(?AL+$12),(?AL+$12),?COMM,?HURRY
		DB	(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$0E),(?AL+$11),(?AL+$00),(?AL+$06),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$13),(?AL+$04),?HURRY
		DB	(?AL+$0D),(?AL+$00),(?AL+$08),(?AL+$15),(?AL+$04),?COMM,?SPCE,(?AU+$0A),(?AL+$18),(?AL+$11),(?AL+$0E),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$03),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?WAIT
		DB	(?AL+$12),(?AL+$04),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),(?AL+$12),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$06),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$16),(?AL+$00),(?AL+$18),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$16),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$18),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$02),(?AL+$0E),(?AL+$0C),(?AL+$0F),(?AL+$0B),(?AL+$04),(?AL+$13),(?AL+$04),(?AL+$0B),(?AL+$18),?WAIT
		DB	(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$11),?HURRY
		DB	(?AL+$06),(?AL+$11),(?AL+$00),(?AL+$12),(?AL+$0F),?QUST,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,?APST,(?AL+$06),(?AL+$04),(?AL+$18),(?AL+$12),(?AL+$04),(?AL+$11),?APST,?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),(?AL+$0D),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$01),(?AL+$04),?WAIT
		DB	(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$0F),(?AL+$0F),(?AL+$04),(?AL+$03),?COMM,?SPCE,(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$0D),?HURRY
		DB	(?AL+$08),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$03),(?AL+$0E),?WAIT
		DB	(?AL+$11),(?AL+$04),(?AL+$0C),(?AL+$0E),(?AL+$15),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$02),(?AL+$0E),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AU+$12),(?AL+$13),(?AL+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$03),?SPCE,(?AL+$08),(?AL+$13),?PERD,?HURRY
		DB	(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),?WAIT
		DB	(?AL+$00),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AL+$03),(?AL+$0E),?PERD,?SPCE,(?AU+$16),(?AL+$04),?APST,(?AL+$15),(?AL+$04),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$0D),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
?_ARDGEYSER28_TXT_03

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$12),(?AL+$0E),?QUST,?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$00),?SPCE,(?AL+$16),(?AL+$00),(?AL+$18),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$0F),?SPCE,(?AL+$08),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$00),?SPCE,(?AL+$07),(?AL+$00),?SPCE,(?AL+$07),(?AL+$00),?EXCL,?SPCE,(?AU+$07),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AL+$08),(?AL+$0D),(?AL+$13),(?AL+$04),(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),?EXCL,?WAIT
		DB	(?AU+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$0C),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$01),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$03

	DB	CMD_END

;********************************
?_ARDGEYSER28_TXT_04

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$04),(?AL+$07),?QUST,?WAIT
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$0C),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$00),(?AL+$05),(?AL+$13),(?AL+$04),(?AL+$11),?SPCE,(?AL+$0C),(?AL+$04),?QUST,?EXCL,?WAIT
		DB	(?AU+$0E),(?AL+$07),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$07),(?AL+$08),(?AL+$0B),(?AL+$00),(?AL+$11),(?AL+$08),(?AL+$0E),(?AL+$14),(?AL+$12),?EXCL,?EXCL,?WAIT
		DB	(?AU+$07),(?AU+$00),?SPCE,(?AU+$00),(?AU+$07),(?AU+$00),?SPCE,(?AU+$00),(?AU+$07),(?AU+$00),(?AU+$07),(?AU+$00),(?AU+$07),(?AU+$00),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$08),(?AL+$13),?SPCE,(?AL+$12),(?AL+$0E),?SPCE,(?AL+$05),(?AL+$14),(?AL+$0D),(?AL+$0D),(?AL+$18),?WAIT
		DB	(?AL+$00),?SPCE,(?AL+$05),(?AL+$04),(?AL+$16),?SPCE,(?AL+$0C),(?AL+$08),(?AL+$0D),(?AL+$14),(?AL+$13),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$16),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$01),(?AL+$04),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$0C),(?AL+$04),?EXCL,?SPCE,(?AU+$11),(?AL+$04),(?AL+$0C),(?AL+$04),(?AL+$0C),(?AL+$01),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AU+$08),?APST,(?AL+$15),(?AL+$04),?SPCE,(?AL+$12),(?AL+$0C),(?AL+$00),(?AL+$02),(?AL+$0A),(?AL+$04),(?AL+$03),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$00),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),?SPCE,(?AL+$00),(?AL+$01),(?AL+$0E),(?AL+$14),(?AL+$13),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$04

	DB	CMD_END

;********************************
?_ARDGEYSER28_TXT_05

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$00),?SPCE,(?AL+$07),(?AL+$00),?SPCE,(?AL+$07),(?AL+$00),?PERD,?PERD,?PERD,?WAIT
		DB	(?AL+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?COMM,?SPCE,(?AL+$08),(?AL+$05),?SPCE,(?AL+$08),(?AL+$13),?APST,(?AL+$12),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$05),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?WAIT
		DB	(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?COMM,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$06),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?PERD,?SPCE,(?AU+$08),?WAIT
		DB	(?AL+$06),(?AL+$14),(?AL+$04),(?AL+$12),(?AL+$12),?SPCE,(?AU+$00),(?AL+$06),(?AL+$11),(?AL+$00),(?AL+$0C),?HURRY
		DB	(?AL+$16),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$07),(?AL+$08),(?AL+$12),?WAIT
		DB	(?AL+$16),(?AL+$08),(?AL+$12),(?AL+$07),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$08),(?AL+$15),(?AL+$04),?SPCE,(?AL+$00),(?AL+$05),(?AL+$13),(?AL+$04),(?AL+$11),?WAIT
		DB	(?AL+$00),(?AL+$0B),(?AL+$0B),?PERD,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$05),(?AL+$04),?HURRY
		DB	(?AL+$08),(?AL+$12),?SPCE,(?AU+$0E),(?AU+$15),(?AU+$04),(?AU+$11),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$05

	DB	CMD_END

;********************************
?_ARDGEYSER28_TXT_06

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$04),(?AL+$16),?PERD,?SPCE,(?AU+$08),(?AL+$13),?HURRY
		DB	(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$0A),(?AL+$04),(?AL+$03),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$06

	DB	CMD_END

;********************************
?_ARDGEYSER28
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDGEYSER28&$FFFF)
		DB	:MAP_ARDGEYSER28

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDGEYSER28&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D069
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$09
		DB	$0C
		DW	$D0F9
		DB	$00
		DB	:?_CORE_STONE_ANIM
		DW	(?_CORE_STONE_ANIM&$FFFF)
		DB	:?_AND_YOUREDONE
		DW	(?_AND_YOUREDONE&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$09
		DB	$0E
		DW	$D121
		DB	$08
		DB	:?_ARDGEYSER28_MORAG
		DW	(?_ARDGEYSER28_MORAG&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$08
		DB	:BIT_CORESTONE
		DW	(BIT_CORESTONE&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$29
		DB	:BIT_MORAG
		DW	(BIT_MORAG&$FFFF)
		DW	$8080
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_ARDGEYSER_RNDBAT
		DW	(?_ARDGEYSER_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_ARDGEYSER28
		DW	(?_ARDGEYSER28&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_morag

	DB	CMD_SCENEREADY

	DB	CMD_WAITEVENTMASTER
		DB	$02

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_ARDGEYSER28_HERO
		DW	(?_ARDGEYSER28_HERO&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_SETBTLRETURN
		DB	:?_ARDGEYSER28_AFTER
		DW	(?_ARDGEYSER28_AFTER&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDGEYSER_MORAGBAT
		DW	(?_ARDGEYSER_MORAGBAT&$FFFF)

	DB	CMD_END

;********************************
?_ARDGEYSER28_AFTER
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDGEYSER28&$FFFF)
		DB	:MAP_ARDGEYSER28

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDGEYSER28&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D069
		DB	$00
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_arderial

	DB	CMD_SCENEREADY

	DB	CMD_SETGAMECOUNT
		DW	$0018

	DB	CMD_SETSCROLL
		DB	:?_RUMMMBLE
		DW	(?_RUMMMBLE&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_ARDGEYSER28_TXT_06
		DW	(?_ARDGEYSER28_TXT_06&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$06

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$60
		DB	$0F

	DB	CMD_JUMP
		DB	:?_ARDGEYSER01_DR_1
		DW	(?_ARDGEYSER01_DR_1&$FFFF)

;********************************
?_AND_YOUREDONE
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_GLYPH_COUNT+$0000)
		DB	$06

	DB	CMD_THISACTORSETANIM
		DB	:?_CORE_STONE_ANIM
		DW	(?_CORE_STONE_ANIM&$FFFF)

	DB	CMD_SETEVENTMASTER
		DB	$02

	DB	CMD_THISACTORRESTORESTATE

;********************************
?_ARDGEYSER28_HERO
	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_ARDGEYSER28_TXT_01
		DW	(?_ARDGEYSER28_TXT_01&$FFFF)

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$40
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$20
		DB	$00
		DB	$00
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)
		DB	$20
		DB	$00
		DB	$01
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$40
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_SETTEXT
		DB	:?_ARDGEYSER28_TXT_03
		DW	(?_ARDGEYSER28_TXT_03&$FFFF)

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_UP_ANIM
		DW	(?_HERO_WALK_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
?_ARDGEYSER28_MORAG
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MORAG_FLICKER
		DW	(?_MORAG_FLICKER&$FFFF)
		DB	$20
		DB	:?_MORAG_HOVER_DOWN_ANIM
		DW	(?_MORAG_HOVER_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_ARDGEYSER28_TXT_02
		DW	(?_ARDGEYSER28_TXT_02&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$03

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_SETTEXT
		DB	:?_ARDGEYSER28_TXT_04
		DW	(?_ARDGEYSER28_TXT_04&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$04

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MORAG_HOVER_DL_ANIM
		DW	(?_MORAG_HOVER_DL_ANIM&$FFFF)
		DB	$20
		DB	:?_MORAG_HOVER_DOWN_ANIM
		DW	(?_MORAG_HOVER_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_ARDGEYSER28_TXT_05
		DW	(?_ARDGEYSER28_TXT_05&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$05

	DB	CMD_SETEVENTMASTER
		DB	$01

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_ARDGEYSER19
	GLOBAL	MAP_ARDGEYSER28
	GLOBAL	HS_ARDGEYSER28
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR00
	GLOBAL	?TALKER_AI
	GLOBAL	?_CORE_STONE_ANIM
	GLOBAL	ACTOR01
	GLOBAL	?ANIM_AI
	GLOBAL	BIT_CORESTONE
	GLOBAL	BIT_MORAG
	GLOBAL	?_ARDGEYSER_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST
	GLOBAL	?_ARDGEYSER_MORAGBAT
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_END
	GLOBAL	?_RUMMMBLE
	GLOBAL	?_ARDGEYSER01_DR_1
	GLOBAL	XRAM_GLYPH_COUNT
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	?_HERO_STAND_LEFT_ANIM
	GLOBAL	?_HERO_STAND_RIGHT_ANIM
	GLOBAL	?_HERO_WALK_DOWN_ANIM
	GLOBAL	?_HERO_WALK_UP_ANIM
	GLOBAL	?_MORAG_FLICKER
	GLOBAL	?_MORAG_HOVER_DOWN_ANIM
	GLOBAL	?_MORAG_HOVER_DL_ANIM

;********************************
	END
;********************************