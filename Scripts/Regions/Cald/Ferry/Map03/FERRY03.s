;Size:1258
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\CALD\FERRY\MAP03\FERRY03.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_FERRY03_TXT_1

	DB	CMD_TEXTICON
		DW	ICON_KORG

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$01),(?AL+$0E),(?AL+$0C),(?AL+$01),?COMM,?SPCE,(?AU+$19),(?AL+$04),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$0A

	DB	CMD_TEXTICON
		DW	ICON_ZET

	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$00),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$04),(?AL+$0D),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),?SPCE,(?AL+$05),(?AL+$14),(?AL+$12),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$16),(?AL+$04),?SPCE,(?AL+$12),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?HURRY
		DB	(?AL+$01),(?AL+$04),?SPCE,(?AL+$00),(?AL+$01),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?WAIT
		DB	(?AL+$00),(?AL+$16),(?AL+$00),(?AL+$18),?SPCE,(?AL+$01),(?AL+$04),(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$04),?SPCE,(?AL+$08),(?AL+$13),?HURRY
		DB	(?AL+$06),(?AL+$0E),(?AL+$04),(?AL+$12),?SPCE,(?AL+$0E),(?AL+$05),(?AL+$05),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_KORG

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$0E),(?AL+$0E),(?AL+$03),?PERD,?SPCE,(?AU+$0F),(?AL+$14),(?AL+$13),?SPCE,(?AL+$08),(?AL+$13),?WAIT
		DB	(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?COMM,?SPCE,(?AL+$08),(?AL+$0D),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$08),(?AL+$03),(?AL+$03),(?AL+$0B),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$33

	DB	CMD_TEXTICON
		DW	ICON_ZET

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,(?AU+$0A),(?AL+$0E),(?AL+$11),(?AL+$06),?COMM,?SPCE,(?AL+$08),(?AL+$05),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$01),(?AL+$0E),(?AL+$03),(?AL+$18),?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AL+$08),(?AL+$13),?COMM,?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$18),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$03),(?AL+$08),(?AL+$12),(?AL+$0F),(?AL+$0E),(?AL+$12),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AL+$08),(?AL+$13),?PERD,?SPCE,(?AU+$08),?SPCE,(?AL+$12),(?AL+$14),(?AL+$06),(?AL+$06),(?AL+$04),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AL+$16),(?AL+$04),?SPCE,(?AL+$0F),(?AL+$14),(?AL+$13),?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?DASH,(?AL+$07),(?AL+$08),(?AL+$03),(?AL+$03),(?AL+$04),(?AL+$0D),?WAIT
		DB	(?AL+$12),(?AL+$0F),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?HURRY
		DB	(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),?DASH,?DASH,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$34

	DB	CMD_TEXTICON
		DW	ICON_KORG

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$07),(?AL+$00),(?AL+$03),(?AL+$03),(?AL+$14),(?AL+$0F),?SPCE,(?AU+$19),(?AL+$04),(?AL+$13),?EXCL,?WAIT
		DB	(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$02),(?AL+$07),(?AL+$00),(?AL+$11),(?AL+$06),(?AL+$04),?HURRY
		DB	(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_FERRY03_TXT_2

	DB	CMD_SETEVENTTEXT
		DB	$0B

	DB	CMD_TEXTICON
		DW	ICON_ZET

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_KORG

	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$04),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$06),(?AL+$0E),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
?_FERRY03_TXT_3

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$03

	DB	CMD_END

;********************************
?_FERRY03_TXT_4

	DB	CMD_TEXTICON
		DW	ICON_ZET

	DB	CMD_SETEVENTTEXT
		DB	$1E

	DB	CMD_TEXTWRITE
		DB	(?AU+$14),(?AL+$07),?COMM,?SPCE,(?AU+$0A),(?AL+$0E),(?AL+$11),(?AL+$06),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_KORG

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),?DASH,(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_ZET

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$12),(?AL+$14),(?AL+$02),(?AL+$07),?SPCE,(?AL+$00),?DASH,?HURRY
		DB	?EOF

	DB	CMD_DELAY
		DB	$20

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$1F

	DB	CMD_SETEVENTTEXT
		DB	$04

	DB	CMD_END

;********************************
?_FERRY03_TXT_5

	DB	CMD_SETEVENTTEXT
		DB	$37

	DB	CMD_TEXTICON
		DW	ICON_ZET

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$05

	DB	CMD_END

;********************************
?_FERRY03_KZBOMB
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_FERRY03&$FFFF)
		DB	:MAP_FERRY03

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0F
		DB	$04
		DW	$D06F
		DB	$00
		DB	:?_FERRY03_TONY
		DW	(?_FERRY03_TONY&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0E
		DB	$0A
		DW	$D0FE
		DB	$00
		DB	:?_FERRY03_KORG
		DW	(?_FERRY03_KORG&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$10
		DB	$0A
		DW	$D100
		DB	$36
		DB	:?_FERRY03_ZET
		DW	(?_FERRY03_ZET&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0E
		DB	$01
		DW	$D026
		DB	$00
		DB	:?_FERRY03_KORG_FALL
		DW	(?_FERRY03_KORG_FALL&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$10
		DB	$01
		DW	$D028
		DB	$36
		DB	:?_FERRY03_ZET_FALL
		DW	(?_FERRY03_ZET_FALL&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR10-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0E
		DB	$0C
		DW	$D12E
		DB	$00
		DB	:?_KORG_TREAD_RIGHT_ANIM
		DW	(?_KORG_TREAD_RIGHT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR11-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$10
		DB	$0C
		DW	$D130
		DB	$66
		DB	:?_FERRY03_ZET_SWIM
		DW	(?_FERRY03_ZET_SWIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0F
		DB	$0A
		DW	$D0FF
		DB	$6C
		DB	:?_FERRY03_BOMB
		DW	(?_FERRY03_BOMB&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0F
		DB	$06
		DW	$D09F
		DB	$84
		DB	:?_FERRY03_SPARK
		DW	(?_FERRY03_SPARK&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0F
		DB	$0A
		DW	$D0FF
		DB	$84
		DB	:?_FERRY03_SPARK2
		DW	(?_FERRY03_SPARK2&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0F
		DB	$08
		DW	$D0CF
		DB	$87
		DB	:?_FERRY03_BOAT
		DW	(?_FERRY03_BOAT&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0E
		DB	$0C
		DW	$D12E
		DB	$9C
		DB	:?_FERRY03_KSPLASH
		DW	(?_FERRY03_KSPLASH&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR09-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$10
		DB	$0C
		DW	$D130
		DB	$9C
		DB	:?_FERRY03_ZSPLASH
		DW	(?_FERRY03_ZSPLASH&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$2A
		DB	:BIT_KORG
		DW	(BIT_KORG&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$06
		DB	:BIT_KORGSWIM
		DW	(BIT_KORGSWIM&$FFFF)
		DW	$8300
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_ZET
		DW	(BIT_ZET&$FFFF)
		DW	$8360
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$06
		DB	:BIT_ZETSWIM
		DW	(BIT_ZETSWIM&$FFFF)
		DW	$8660
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$18
		DB	:BIT_BOMB
		DW	(BIT_BOMB&$FFFF)
		DW	$86C0
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$03
		DB	:BIT_SPARK
		DW	(BIT_SPARK&$FFFF)
		DW	$8840
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$15
		DB	:BIT_BOAT
		DW	(BIT_BOAT&$FFFF)
		DW	$8870
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$0C
		DB	:BIT_SPLASH
		DW	(BIT_SPLASH&$FFFF)
		DW	$89C0
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETCAMERA
		DB	$0F
		DB	$04

	DB	CMD_SONGSTART
		DB	SONGID_korgzet

	DB	CMD_PALCLEARANIM
		DB	$0F
		DW	$7FFF

	DB	CMD_SCENEREADY

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_END

;********************************
?_FERRY03_BOAT
	DB	CMD_THISACTORSETANIM
		DB	:?_BOAT_ANIM
		DW	(?_BOAT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$04

	DB	CMD_DELAY
		DB	$14

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_BOAT_DEATH_ANIM
		DW	(?_BOAT_DEATH_ANIM&$FFFF)
		DB	$50
		DB	:?_BOAT_DEAD_ANIM
		DW	(?_BOAT_DEAD_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
?_FERRY03_TONY
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_RIGHT_ANIM
		DW	(?_HERO_WALK_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$18
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)
		DB	$18
		DB	:?_HERO_STAND_UL_ANIM
		DW	(?_HERO_STAND_UL_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_WALK_LEFT_ANIM
		DW	(?_HERO_WALK_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_STAND_UL_ANIM
		DW	(?_HERO_STAND_UL_ANIM&$FFFF)
		DB	$18
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$18
		DB	:?_HERO_STAND_UR_ANIM
		DW	(?_HERO_STAND_UR_ANIM&$FFFF)
		DB	$18
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_FERRY03_TXT_3
		DW	(?_FERRY03_TXT_3&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$03

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_KICK_DOWN_ANIM
		DW	(?_HERO_KICK_DOWN_ANIM&$FFFF)
		DB	$14
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETEVENTMASTER
		DB	$13

	DB	CMD_WAITEVENTMASTER
		DB	$0D

	DB	CMD_DELAY
		DB	$40

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_UP_ANIM
		DW	(?_HERO_WALK_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTMASTER
		DB	$40

	DB	CMD_WAITEVENTTEXT
		DB	$05

	DB	CMD_DELAY
		DB	$30

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$A0
		DB	$0F

	DB	CMD_JUMP
		DB	:?_FERRY03_KZBOMB_TRANPOST
		DW	(?_FERRY03_KZBOMB_TRANPOST&$FFFF)

	DB	CMD_END

;********************************
?_FERRY03_KORG
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_KORG_RUN_RIGHT_ANIM
		DW	(?_KORG_RUN_RIGHT_ANIM&$FFFF)
		DB	$04
		DB	:?_KORG_STAND_UP_ANIM
		DW	(?_KORG_STAND_UP_ANIM&$FFFF)
		DB	$C4
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$30
		DB	$00
		DB	$02
		DB	$00

	DB	CMD_DELAY
		DB	$08

	DB	CMD_THISACTORSETANIM
		DB	:?_KORG_STAND_RIGHT_ANIM
		DW	(?_KORG_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_FERRY03_TXT_1
		DW	(?_FERRY03_TXT_1&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$33

	DB	CMD_THISACTORSETANIM
		DB	:?_KORG_STAND_UP_ANIM
		DW	(?_KORG_STAND_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$34

	DB	CMD_THISACTORSETANIM
		DB	:?_KORG_STAND_RIGHT_ANIM
		DW	(?_KORG_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_KORG_STAND_UP_ANIM
		DW	(?_KORG_STAND_UP_ANIM&$FFFF)
		DB	$18
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETTEXT
		DB	:?_FERRY03_TXT_2
		DW	(?_FERRY03_TXT_2&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_SETEVENTMASTER
		DB	$03

	DB	CMD_WAITEVENTMASTER
		DB	$04

	DB	CMD_THISACTORSETANIM
		DB	:?_KORG_STAND_RIGHT_ANIM
		DW	(?_KORG_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_SETEVENTMASTER
		DB	$63

	DB	CMD_DELAY
		DB	$18

	DB	CMD_WAITEVENTMASTER
		DB	$0F

	DB	CMD_THISACTORSETANIM
		DB	:?_KORG_STAND_RIGHT_ANIM
		DW	(?_KORG_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_SETEVENTMASTER
		DB	$10

	DB	CMD_WAITEVENTMASTER
		DB	$06

	DB	CMD_SETEVENTMASTER
		DB	$07

	DB	CMD_DELAY
		DB	$10

	DB	CMD_SETEVENTMASTER
		DB	$4D

	DB	CMD_THISACTORSETANIM
		DB	:?_KORG_FLYAWAY_ANIM
		DW	(?_KORG_FLYAWAY_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$18

	DB	CMD_THATACTORSTART
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_FERRY03_ZET
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ZET_RUN_LEFT_ANIM
		DW	(?_ZET_RUN_LEFT_ANIM&$FFFF)
		DB	$03
		DB	:?_ZET_STAND_UP_ANIM
		DW	(?_ZET_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$0A

	DB	CMD_THISACTORSETANIM
		DB	:?_ZET_STAND_LEFT_ANIM
		DW	(?_ZET_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$0B

	DB	CMD_THISACTORSETANIM
		DB	:?_ZET_STAND_UP_ANIM
		DW	(?_ZET_STAND_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$63

	DB	CMD_THISACTORSETANIM
		DB	:?_ZET_STAND_RIGHT_ANIM
		DW	(?_ZET_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_SETEVENTMASTER
		DB	$01

	DB	CMD_WAITEVENTMASTER
		DB	$0C

	DB	CMD_DELAY
		DB	$2C

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ZET_STAND_LEFT_ANIM
		DW	(?_ZET_STAND_LEFT_ANIM&$FFFF)
		DB	$38
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_FERRY03_TXT_4
		DW	(?_FERRY03_TXT_4&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$04

	DB	CMD_DELAY
		DB	$10

	DB	CMD_SETEVENTMASTER
		DB	$06

	DB	CMD_DELAY
		DB	$10

	DB	CMD_THISACTORSETANIM
		DB	:?_ZET_FLYAWAY_ANIM
		DW	(?_ZET_FLYAWAY_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$18

	DB	CMD_SETEVENTMASTER
		DB	$40

	DB	CMD_THATACTORSTART
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_FERRY03_KORG_FALL
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_KORG_FALL_ANIM
		DW	(?_KORG_FALL_ANIM&$FFFF)
		DB	$2C
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_FERRY03_ZET_FALL
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ZET_FALL_ANIM
		DW	(?_ZET_FALL_ANIM&$FFFF)
		DB	$2C
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR09-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_FERRY03_KSPLASH
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_SPLASH_ANIM
		DW	(?_SPLASH_ANIM&$FFFF)
		DB	$28
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR10-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_FERRY03_ZSPLASH
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_SPLASH_ANIM
		DW	(?_SPLASH_ANIM&$FFFF)
		DB	$28
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR11-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_FERRY03_ZET_SWIM
	DB	CMD_THISACTORSETANIM
		DB	:?_ZET_TREAD_LEFT_ANIM
		DW	(?_ZET_TREAD_LEFT_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$30

	DB	CMD_SETTEXT
		DB	:?_FERRY03_TXT_5
		DW	(?_FERRY03_TXT_5&$FFFF)

;********************************
_ZET_PISSED
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_ZET_TREAD_RIGHT_ANIM
		DW	(?_ZET_TREAD_RIGHT_ANIM&$FFFF)
		DB	$06
		DB	:?_ZET_TREAD_LEFT_ANIM
		DW	(?_ZET_TREAD_LEFT_ANIM&$FFFF)
		DB	$06
		DB	$00

	DB	CMD_JUMP
		DB	:_ZET_PISSED
		DW	(_ZET_PISSED&$FFFF)

	DB	CMD_END

;********************************
?_FERRY03_BOMB
	DB	CMD_THISACTORSETANIM
		DB	:?_BOMB_FLYFAST_UP_ANIM
		DW	(?_BOMB_FLYFAST_UP_ANIM&$FFFF)

	DB	CMD_SCROLLMAP
		DB	$10
		DB	$00
		DB	$FE
		DB	$00

	DB	CMD_DELAY
		DB	$08

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_BOMB_FLYSLOW_UP_ANIM
		DW	(?_BOMB_FLYSLOW_UP_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSETANIM
		DB	:?_BOMB_FUSE_1
		DW	(?_BOMB_FUSE_1&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$03

	DB	CMD_THISACTORSETANIM
		DB	:?_BOMB_FUSE_2
		DW	(?_BOMB_FUSE_2&$FFFF)

	DB	CMD_DELAY
		DB	$18

	DB	CMD_SETEVENTMASTER
		DB	$0A

	DB	CMD_SETEVENTMASTER
		DB	$04

	DB	CMD_SETEVENTMASTER
		DB	$0B

	DB	CMD_THISACTORSETANIM
		DB	:?_BOMB_FUSE_3
		DW	(?_BOMB_FUSE_3&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$13

	DB	CMD_SETEVENTMASTER
		DB	$0C

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_BOMB_FLYFAST_DOWN_ANIM
		DW	(?_BOMB_FLYFAST_DOWN_ANIM&$FFFF)
		DB	$10
		DB	$00
		DB	$02
		DB	$00

	DB	CMD_DELAY
		DB	$08

	DB	CMD_SETEVENTMASTER
		DB	$0D

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_BOMB_FLYSLOW_DOWN_ANIM
		DW	(?_BOMB_FLYSLOW_DOWN_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_THISACTORSETANIM
		DB	:?_BOMB_FUSE_4
		DW	(?_BOMB_FUSE_4&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_WAITEVENTTEXT
		DB	$1E

	DB	CMD_THISACTORSETANIM
		DB	:?_BOMB_FUSE_5
		DW	(?_BOMB_FUSE_5&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$1F

	DB	CMD_THISACTORSETANIM
		DB	:?_BOMB_EXPLODE_ANIM
		DW	(?_BOMB_EXPLODE_ANIM&$FFFF)

	DB	CMD_SETEVENTMASTER
		DB	$28

	DB	CMD_DELAY
		DB	$10

	DB	CMD_SETSCROLL
		DB	:?_FERRY03_SCROLL_1
		DW	(?_FERRY03_SCROLL_1&$FFFF)

	DB	CMD_DELAY
		DB	$10

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_FERRY03_SPARK
	DB	CMD_THISACTORSETANIM
		DB	:?_SPARK_FUSE_1
		DW	(?_SPARK_FUSE_1&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$0A

	DB	CMD_THISACTORSETANIM
		DB	:?_SPARK_FUSE_2
		DW	(?_SPARK_FUSE_2&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$0B

	DB	CMD_THISACTORSETANIM
		DB	:?_SPARK_FUSE_3
		DW	(?_SPARK_FUSE_3&$FFFF)

	DB	CMD_WAITEVENTMASTER
		DB	$0C

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_FERRY03_SPARK2
	DB	CMD_THISACTORSETANIM
		DB	:?_SPARK_FUSE_4
		DW	(?_SPARK_FUSE_4&$FFFF)

	DB	CMD_SETEVENTMASTER
		DB	$0F

	DB	CMD_WAITEVENTMASTER
		DB	$28

	DB	CMD_DELAY
		DB	$10

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_FERRY03_SCROLL_1
	DB	CMD_SCROLLMAP
		DB	$04
		DB	$04
		DB	$00
		DB	$04
		DB	$FC
		DB	$04
		DB	$04
		DB	$00
		DB	$FC
		DB	$04
		DB	$04
		DB	$04
		DB	$04
		DB	$FC
		DB	$00
		DB	$04
		DB	$00
		DB	$04
		DB	$04
		DB	$04
		DB	$FC
		DB	$04
		DB	$FC
		DB	$FC
		DB	$00

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	MAP_FERRY03
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?ANIM_AI
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR00
	GLOBAL	ACTOR01
	GLOBAL	ACTOR06
	GLOBAL	ACTOR07
	GLOBAL	ACTOR10
	GLOBAL	?_KORG_TREAD_RIGHT_ANIM
	GLOBAL	ACTOR11
	GLOBAL	ACTOR02
	GLOBAL	ACTOR03
	GLOBAL	ACTOR04
	GLOBAL	ACTOR05
	GLOBAL	ACTOR08
	GLOBAL	ACTOR09
	GLOBAL	BIT_KORG
	GLOBAL	BIT_KORGSWIM
	GLOBAL	BIT_ZET
	GLOBAL	BIT_ZETSWIM
	GLOBAL	BIT_BOMB
	GLOBAL	BIT_SPARK
	GLOBAL	BIT_BOAT
	GLOBAL	BIT_SPLASH
	GLOBAL	?_BOAT_ANIM
	GLOBAL	?_BOAT_DEATH_ANIM
	GLOBAL	?_BOAT_DEAD_ANIM
	GLOBAL	?_HERO_WALK_RIGHT_ANIM
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	?_HERO_STAND_RIGHT_ANIM
	GLOBAL	?_HERO_STAND_UL_ANIM
	GLOBAL	?_HERO_WALK_LEFT_ANIM
	GLOBAL	?_HERO_STAND_UR_ANIM
	GLOBAL	?_HERO_WALK_DOWN_ANIM
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_HERO_KICK_DOWN_ANIM
	GLOBAL	?_HERO_WALK_UP_ANIM
	GLOBAL	?_FERRY03_KZBOMB_TRANPOST
	GLOBAL	?_KORG_RUN_RIGHT_ANIM
	GLOBAL	?_KORG_STAND_UP_ANIM
	GLOBAL	?_KORG_STAND_RIGHT_ANIM
	GLOBAL	?_KORG_FLYAWAY_ANIM
	GLOBAL	?_ZET_RUN_LEFT_ANIM
	GLOBAL	?_ZET_STAND_UP_ANIM
	GLOBAL	?_ZET_STAND_LEFT_ANIM
	GLOBAL	?_ZET_STAND_RIGHT_ANIM
	GLOBAL	?_ZET_FLYAWAY_ANIM
	GLOBAL	?_KORG_FALL_ANIM
	GLOBAL	?_ZET_FALL_ANIM
	GLOBAL	?_SPLASH_ANIM
	GLOBAL	?_ZET_TREAD_LEFT_ANIM
	GLOBAL	?_ZET_TREAD_RIGHT_ANIM
	GLOBAL	?_BOMB_FLYFAST_UP_ANIM
	GLOBAL	?_BOMB_FLYSLOW_UP_ANIM
	GLOBAL	?_BOMB_FUSE_1
	GLOBAL	?_BOMB_FUSE_2
	GLOBAL	?_BOMB_FUSE_3
	GLOBAL	?_BOMB_FLYFAST_DOWN_ANIM
	GLOBAL	?_BOMB_FLYSLOW_DOWN_ANIM
	GLOBAL	?_BOMB_FUSE_4
	GLOBAL	?_BOMB_FUSE_5
	GLOBAL	?_BOMB_EXPLODE_ANIM
	GLOBAL	?_SPARK_FUSE_1
	GLOBAL	?_SPARK_FUSE_2
	GLOBAL	?_SPARK_FUSE_3
	GLOBAL	?_SPARK_FUSE_4

;********************************
	END
;********************************