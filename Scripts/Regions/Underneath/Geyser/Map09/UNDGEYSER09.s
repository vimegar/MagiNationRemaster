;Size:1585
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\UNDERNEATH\GEYSER\MAP09\UNDGEYSER09.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_UNDGEYSER09_DR_1
	DB	CMD_HEROTODOOR
		DB	$0E
		DB	$0B
		DB	$27
		DB	$00

	DB	CMD_JUMP
		DB	:?_UNDGEYSER01
		DW	(?_UNDGEYSER01&$FFFF)

;********************************
?_UNDGEYSER09_DR_2
	DB	CMD_HEROTODOOR
		DB	$27
		DB	$00
		DB	$16
		DB	$09

	DB	CMD_JUMP
		DB	:?_UNDGEYSER07
		DW	(?_UNDGEYSER07&$FFFF)

;********************************
?_UNDGEYSER09_DR_3
	DB	CMD_HEROSETDOOR
		DB	$05
		DB	$26

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$0A
		DB	$0F

	DB	CMD_JUMP
		DB	:?_UNDGEYSER05
		DW	(?_UNDGEYSER05&$FFFF)

;********************************
?_UNDGEYSER09_DR_4
	DB	CMD_HEROSETDOOR
		DB	$06
		DB	$08

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$0A
		DB	$0F

	DB	CMD_JUMP
		DB	:?_UNDGEYSER02
		DW	(?_UNDGEYSER02&$FFFF)

;********************************
?_UNDGEYSER09_DR_5
	DB	CMD_HEROSETDOOR
		DB	$1A
		DB	$09

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$0A
		DB	$0F

	DB	CMD_JUMP
		DB	:?_UNDGEYSER08
		DW	(?_UNDGEYSER08&$FFFF)

;********************************
?_UNDGEYSER09_DR_6
	DB	CMD_HEROSETDOOR
		DB	$1A
		DB	$29

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$0A
		DB	$0F

	DB	CMD_JUMP
		DB	:?_UNDGEYSER06
		DW	(?_UNDGEYSER06&$FFFF)

;********************************
?_UNDGEYSER09_TR_1
	DB	CMD_TRIGGERONCE
		DW	(XRAM_SAVEBITS+$0000)
		DB	$01
		DB	:_SKIP
		DW	(_SKIP&$FFFF)
		DB	$FA
		DW	$D2C6

	DB	CMD_SFX
		DB	SFXID_TREASURECHEST

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_CAMERASEEK
		DB	$1A
		DB	$13
		DB	$02

	DB	CMD_DELAY
		DB	$20

	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0001)&$FFFF
		DB	:?_REMOVE_OUTER_WALL
		DW	$0000
		DW	(?_REMOVE_OUTER_WALL&$FFFF)
		DB	:?_REMOVE_SECOND_WALL
		DW	$0001
		DW	(?_REMOVE_SECOND_WALL&$FFFF)
		DB	:?_REMOVE_THIRD_WALL
		DW	$0002
		DW	(?_REMOVE_THIRD_WALL&$FFFF)
		DB	:?_REMOVE_INNER_WALL
		DW	$0003
		DW	(?_REMOVE_INNER_WALL&$FFFF)
		DB	$FF

;********************************
_SKIP
	DB	CMD_END

;********************************
?_UNDGEYSER09_TR_2
	DB	CMD_TRIGGERONCE
		DW	(XRAM_SAVEBITS+$0000)
		DB	$02
		DB	:_SKIP
		DW	(_SKIP&$FFFF)
		DB	$FA
		DW	$D4DA

	DB	CMD_SFX
		DB	SFXID_TREASURECHEST

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_CAMERASEEK
		DB	$12
		DB	$19
		DB	$02

	DB	CMD_DELAY
		DB	$20

	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0001)&$FFFF
		DB	:?_REMOVE_OUTER_WALL
		DW	$0000
		DW	(?_REMOVE_OUTER_WALL&$FFFF)
		DB	:?_REMOVE_SECOND_WALL
		DW	$0001
		DW	(?_REMOVE_SECOND_WALL&$FFFF)
		DB	:?_REMOVE_THIRD_WALL
		DW	$0002
		DW	(?_REMOVE_THIRD_WALL&$FFFF)
		DB	:?_REMOVE_INNER_WALL
		DW	$0003
		DW	(?_REMOVE_INNER_WALL&$FFFF)
		DB	$FF

;********************************
_SKIP
	DB	CMD_END

;********************************
?_UNDGEYSER09_TR_3
	DB	CMD_TRIGGERONCE
		DW	(XRAM_SAVEBITS+$0000)
		DB	$04
		DB	:_SKIP
		DW	(_SKIP&$FFFF)
		DB	$FA
		DW	$D0FD

	DB	CMD_SFX
		DB	SFXID_TREASURECHEST

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_CAMERASEEK
		DB	$12
		DB	$0D
		DB	$02

	DB	CMD_DELAY
		DB	$20

	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0001)&$FFFF
		DB	:?_REMOVE_OUTER_WALL
		DW	$0000
		DW	(?_REMOVE_OUTER_WALL&$FFFF)
		DB	:?_REMOVE_SECOND_WALL
		DW	$0001
		DW	(?_REMOVE_SECOND_WALL&$FFFF)
		DB	:?_REMOVE_THIRD_WALL
		DW	$0002
		DW	(?_REMOVE_THIRD_WALL&$FFFF)
		DB	:?_REMOVE_INNER_WALL
		DW	$0003
		DW	(?_REMOVE_INNER_WALL&$FFFF)
		DB	$FF

;********************************
_SKIP
	DB	CMD_END

;********************************
?_UNDGEYSER09_TR_4
	DB	CMD_TRIGGERONCE
		DW	(XRAM_SAVEBITS+$0000)
		DB	$08
		DB	:_SKIP
		DW	(_SKIP&$FFFF)
		DB	$FA
		DW	$D34A

	DB	CMD_SFX
		DB	SFXID_TREASURECHEST

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_CAMERASEEK
		DB	$0B
		DB	$13
		DB	$02

	DB	CMD_DELAY
		DB	$20

	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0001)&$FFFF
		DB	:?_REMOVE_OUTER_WALL
		DW	$0000
		DW	(?_REMOVE_OUTER_WALL&$FFFF)
		DB	:?_REMOVE_SECOND_WALL
		DW	$0001
		DW	(?_REMOVE_SECOND_WALL&$FFFF)
		DB	:?_REMOVE_THIRD_WALL
		DW	$0002
		DW	(?_REMOVE_THIRD_WALL&$FFFF)
		DB	:?_REMOVE_INNER_WALL
		DW	$0003
		DW	(?_REMOVE_INNER_WALL&$FFFF)
		DB	$FF

;********************************
_SKIP
	DB	CMD_END

;********************************
?_REMOVE_OUTER_WALL
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0001)
		DB	$01

	DB	CMD_SETSCROLL
		DB	:?_WALL_REMOVE_SHAKE
		DW	(?_WALL_REMOVE_SHAKE&$FFFF)

	DB	CMD_SFX
		DB	SFXID_MISC01

	DB	CMD_COPYTILEBLOCK
		DW	$D41E
		DB	$01
		DB	$07
		DW	$D273
		DB	$0F
		DB	$1B

	DB	CMD_COPYTILEBLOCK
		DW	$D418
		DB	$01
		DB	$07
		DW	$D262
		DB	$0F
		DB	$0A

	DB	CMD_COPYTILEBLOCK
		DW	$D421
		DB	$04
		DB	$04
		DW	$D3F9
		DB	$19
		DB	$11

	DB	CMD_COPYTILEBLOCK
		DW	$D509
		DB	$05
		DB	$01
		DW	$D1C8
		DB	$0B
		DB	$10

	DB	CMD_DELAY
		DB	$30

	DB	CMD_CAMERASEEKACTOR
		DW	(HEROACTOR&$FFFF)
		DB	$02

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_END

;********************************
?_REMOVE_SECOND_WALL
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0001)
		DB	$02

	DB	CMD_SETSCROLL
		DB	:?_WALL_REMOVE_SHAKE
		DW	(?_WALL_REMOVE_SHAKE&$FFFF)

	DB	CMD_SFX
		DB	SFXID_MISC01

	DB	CMD_COPYTILEBLOCK
		DW	$D41D
		DB	$01
		DB	$07
		DW	$D272
		DB	$0F
		DB	$1A

	DB	CMD_COPYTILEBLOCK
		DW	$D419
		DB	$01
		DB	$07
		DW	$D263
		DB	$0F
		DB	$0B

	DB	CMD_COPYTILEBLOCK
		DW	$D3F9
		DB	$04
		DB	$04
		DW	$D3D1
		DB	$18
		DB	$11

	DB	CMD_COPYTILEBLOCK
		DW	$D12D
		DB	$05
		DB	$01
		DW	$D1F0
		DB	$0C
		DB	$10

	DB	CMD_DELAY
		DB	$30

	DB	CMD_CAMERASEEKACTOR
		DW	(HEROACTOR&$FFFF)
		DB	$02

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_END

;********************************
?_REMOVE_THIRD_WALL
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0001)
		DB	$03

	DB	CMD_SETSCROLL
		DB	:?_WALL_REMOVE_SHAKE
		DW	(?_WALL_REMOVE_SHAKE&$FFFF)

	DB	CMD_SFX
		DB	SFXID_MISC01

	DB	CMD_COPYTILEBLOCK
		DW	$D41C
		DB	$01
		DB	$07
		DW	$D271
		DB	$0F
		DB	$19

	DB	CMD_COPYTILEBLOCK
		DW	$D41A
		DB	$01
		DB	$07
		DW	$D264
		DB	$0F
		DB	$0C

	DB	CMD_COPYTILEBLOCK
		DW	$D3D1
		DB	$04
		DB	$04
		DW	$D3A9
		DB	$17
		DB	$11

	DB	CMD_COPYTILEBLOCK
		DW	$D12D
		DB	$05
		DB	$01
		DW	$D218
		DB	$0D
		DB	$10

	DB	CMD_DELAY
		DB	$30

	DB	CMD_CAMERASEEKACTOR
		DW	(HEROACTOR&$FFFF)
		DB	$02

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_END

;********************************
?_REMOVE_INNER_WALL
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0001)
		DB	$04

	DB	CMD_SETSCROLL
		DB	:?_WALL_REMOVE_SHAKE
		DW	(?_WALL_REMOVE_SHAKE&$FFFF)

	DB	CMD_SFX
		DB	SFXID_MISC01

	DB	CMD_COPYTILEBLOCK
		DW	$D41B
		DB	$01
		DB	$07
		DW	$D270
		DB	$0F
		DB	$18

	DB	CMD_COPYTILEBLOCK
		DW	$D41E
		DB	$01
		DB	$07
		DW	$D265
		DB	$0F
		DB	$0D

	DB	CMD_COPYTILEBLOCK
		DW	$D499
		DB	$04
		DB	$04
		DW	$D3A9
		DB	$17
		DB	$11

	DB	CMD_COPYTILEBLOCK
		DW	$D4E4
		DB	$05
		DB	$03
		DW	$D240
		DB	$0E
		DB	$10

	DB	CMD_DELAY
		DB	$30

	DB	CMD_CAMERASEEKACTOR
		DW	(HEROACTOR&$FFFF)
		DB	$02

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_END

;********************************
?_WALL_REMOVE_SHAKE
	DB	CMD_SCROLLMAP
		DB	$03
		DB	$00
		DB	$FD
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$03
		DB	$00
		DB	$03
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$03
		DB	$03
		DB	$00
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$03
		DB	$FD
		DB	$00
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$03
		DB	$00
		DB	$FD
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$03
		DB	$00
		DB	$03
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$03
		DB	$03
		DB	$00
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$03
		DB	$FD
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
?_UNDGEYSER09_TXT_1

	DB	CMD_TEXTWRITE
		DB	?DASH,(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$00),?HURRY
		DB	(?AU+$02),(?AL+$0E),(?AL+$11),(?AL+$04),?SPCE,(?AU+$12),(?AL+$13),(?AL+$0E),(?AL+$0D),(?AL+$04),?EXCL,?DASH,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_UNDGEYSER09_TXT_2

	DB	CMD_TEXTICON
		DW	ICON_OGAR

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$0E),(?AL+$0A),?PERD,?PERD,?PERD,?SPCE,(?AL+$00),(?AL+$07),?COMM,?SPCE,(?AL+$16),(?AL+$07),(?AL+$0E),?HURRY
		DB	(?AL+$08),(?AL+$12),(?AL+$12),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),(?AL+$12),(?AL+$12),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$0E),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_OGAR

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$12),(?AL+$12),(?AL+$12),(?AL+$04),(?AL+$04),?PERD,?PERD,?PERD,?WAIT
		DB	(?AL+$0C),(?AL+$14),(?AL+$06),(?AL+$07),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$14),(?AL+$06),(?AL+$07),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_OGAR

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$04),(?AL+$07),?PERD,?PERD,?PERD,?SPCE,(?AU+$0E),(?AL+$06),(?AL+$00),(?AL+$11),?HURRY
		DB	(?AL+$12),(?AL+$12),(?AL+$12),(?AL+$0C),(?AL+$04),(?AL+$0B),(?AL+$0B),(?AL+$12),(?AL+$12),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$02),(?AL+$07),(?AL+$08),(?AL+$0B),(?AL+$03),?PERD,?PERD,?PERD,?SPCE,(?AL+$18),(?AL+$04),(?AL+$12),(?AL+$12),(?AL+$12),?COMM,?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),(?AL+$12),(?AL+$12),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$01),(?AL+$04),?WAIT
		DB	(?AL+$00),?SPCE,(?AL+$05),(?AL+$04),(?AL+$00),(?AL+$12),(?AL+$12),(?AL+$12),(?AL+$13),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?HURRY
		DB	(?AL+$0C),(?AL+$18),?SPCE,(?AL+$0F),(?AL+$04),(?AL+$13),(?AL+$12),(?AL+$12),(?AL+$12),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$12),(?AL+$14),(?AL+$0F),(?AL+$0F),(?AL+$0E),(?AL+$12),(?AL+$04),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$0B),(?AL+$04),(?AL+$13),?WAIT
		DB	(?AL+$0C),(?AL+$04),?SPCE,(?AL+$06),(?AL+$0E),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_OGAR

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$0E),(?AL+$06),(?AL+$07),?COMM,?SPCE,(?AU+$0E),(?AL+$06),(?AL+$00),(?AL+$11),?HURRY
		DB	(?AL+$03),(?AL+$0E),(?AL+$04),(?AL+$12),(?AL+$12),(?AL+$12),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$0B),(?AL+$04),(?AL+$13),?WAIT
		DB	(?AL+$07),(?AL+$04),(?AL+$11),?SPCE,(?AL+$01),(?AL+$00),(?AL+$01),(?AL+$08),(?AL+$04),(?AL+$12),(?AL+$12),(?AL+$12),?APST,?HURRY
		DB	(?AL+$03),(?AL+$08),(?AL+$0D),(?AL+$0D),(?AL+$04),(?AL+$11),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?WAIT
		DB	(?AL+$00),(?AL+$16),(?AL+$00),(?AL+$18),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$05),(?AL+$08),(?AL+$06),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$03),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_OGAR

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$04),?PERD,?PERD,?PERD,?SPCE,(?AL+$07),(?AL+$04),(?AL+$07),(?AL+$04),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
?_UNDGEYSER09_TXT_4

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$0C),(?AL+$18),?SPCE,(?AL+$02),(?AL+$14),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$04

	DB	CMD_END

;********************************
?_UNDGEYSER09_TXT_5
	DB	CMD_SETSCROLL
		DB	:?_UNDGEYSER_QUAKE
		DW	(?_UNDGEYSER_QUAKE&$FFFF)


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$01),(?AL+$04),(?AL+$13),(?AL+$13),(?AL+$04),(?AL+$11),?SPCE,(?AL+$07),(?AL+$14),(?AL+$11),(?AL+$11),(?AL+$18),?HURRY
		DB	(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$05

	DB	CMD_END

;********************************
?_UNDGEYSER09
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDGEYSER09&$FFFF)
		DB	:MAP_UNDGEYSER09

;********************************
_UNDGEYSER09
	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDGEYSER09&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_UNDGEYSER09&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D0CD
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TRIGGER_AI&$FFFF)
		DB	$12
		DB	$14
		DW	$D332
		DB	$00
		DB	:?_CORE_STONE_ANIM
		DW	(?_CORE_STONE_ANIM&$FFFF)
		DB	:?_UND_STONE_TALKER
		DW	(?_UND_STONE_TALKER&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$1D
		DB	$14
		DW	$D33D
		DB	$08
		DB	:?_UNDGEYSER09_OGAR
		DW	(?_UNDGEYSER09_OGAR&$FFFF)
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
		DB	:BIT_OGAR
		DW	(BIT_OGAR&$FFFF)
		DW	$8080
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_UNDGEYSER_RNDBAT
		DW	(?_UNDGEYSER_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SUPERSLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:_UNDGEYSER09_RETURN
		DW	(_UNDGEYSER09_RETURN&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_FADEOUTSONG
		DB	$50

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0001)&$FFFF
		DB	:_DONE
		DW	$0000
		DW	(_DONE&$FFFF)
		DB	:_ONE_WALL_GONE
		DW	$0001
		DW	(_ONE_WALL_GONE&$FFFF)
		DB	:_TWO_WALLS_GONE
		DW	$0002
		DW	(_TWO_WALLS_GONE&$FFFF)
		DB	:_THREE_WALLS_GONE
		DW	$0003
		DW	(_THREE_WALLS_GONE&$FFFF)
		DB	:_ALL_WALLS_GONE
		DW	$0004
		DW	(_ALL_WALLS_GONE&$FFFF)
		DB	$FF

;********************************
_ALL_WALLS_GONE
	DB	CMD_COPYTILEBLOCK
		DW	$D41B
		DB	$04
		DB	$07
		DW	$D270
		DB	$0F
		DB	$18

	DB	CMD_COPYTILEBLOCK
		DW	$D418
		DB	$03
		DB	$07
		DW	$D262
		DB	$0F
		DB	$0A

	DB	CMD_COPYTILEBLOCK
		DW	$D41E
		DB	$03
		DB	$07
		DW	$D265
		DB	$0F
		DB	$0D

	DB	CMD_COPYTILEBLOCK
		DW	$D491
		DB	$04
		DB	$06
		DW	$D3A9
		DB	$17
		DB	$11

	DB	CMD_COPYTILEBLOCK
		DW	$D490
		DB	$05
		DB	$06
		DW	$D1C8
		DB	$0B
		DB	$10

	DB	CMD_JUMP
		DB	:_DONE
		DW	(_DONE&$FFFF)

;********************************
_THREE_WALLS_GONE
	DB	CMD_COPYTILEBLOCK
		DW	$D41C
		DB	$03
		DB	$07
		DW	$D271
		DB	$0F
		DB	$19

	DB	CMD_COPYTILEBLOCK
		DW	$D418
		DB	$03
		DB	$07
		DW	$D262
		DB	$0F
		DB	$0A

	DB	CMD_COPYTILEBLOCK
		DW	$D421
		DB	$04
		DB	$06
		DW	$D3A9
		DB	$17
		DB	$11

	DB	CMD_COPYTILEBLOCK
		DW	$D4E1
		DB	$05
		DB	$03
		DW	$D1C8
		DB	$0B
		DB	$10

	DB	CMD_JUMP
		DB	:_DONE
		DW	(_DONE&$FFFF)

;********************************
_TWO_WALLS_GONE
	DB	CMD_COPYTILEBLOCK
		DW	$D41D
		DB	$02
		DB	$07
		DW	$D272
		DB	$0F
		DB	$1A

	DB	CMD_COPYTILEBLOCK
		DW	$D418
		DB	$02
		DB	$07
		DW	$D262
		DB	$0F
		DB	$0A

	DB	CMD_COPYTILEBLOCK
		DW	$D421
		DB	$04
		DB	$05
		DW	$D3D1
		DB	$18
		DB	$11

	DB	CMD_COPYTILEBLOCK
		DW	$D12D
		DB	$05
		DB	$02
		DW	$D1C8
		DB	$0B
		DB	$10

	DB	CMD_JUMP
		DB	:_DONE
		DW	(_DONE&$FFFF)

;********************************
_ONE_WALL_GONE
	DB	CMD_COPYTILEBLOCK
		DW	$D41E
		DB	$01
		DB	$07
		DW	$D273
		DB	$0F
		DB	$1B

	DB	CMD_COPYTILEBLOCK
		DW	$D418
		DB	$01
		DB	$07
		DW	$D262
		DB	$0F
		DB	$0A

	DB	CMD_COPYTILEBLOCK
		DW	$D421
		DB	$04
		DB	$04
		DW	$D3F9
		DB	$19
		DB	$11

	DB	CMD_COPYTILEBLOCK
		DW	$D509
		DB	$05
		DB	$01
		DW	$D1C8
		DB	$0B
		DB	$10

;********************************
_DONE
	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
_UNDGEYSER09_RETURN
	DB	CMD_SCENENEW

	DB	CMD_SETCOLLMASK
		DB	$0F

	DB	CMD_LOADVRAM
		DW	(VRM_GEYSER&$FFFF)
		DB	:VRM_GEYSER
		DW	(PAL_GEYSER&$FFFF)
		DB	:PAL_GEYSER

	DB	CMD_JUMPLOCAL
		DW	(_UNDGEYSER09&$FFFF)

;********************************
?_UND_STONE_TALKER
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$01

	DB	CMD_SETLOADSCRIPT
		DB	:?_UNDCAVERN06_DR_1
		DW	(?_UNDCAVERN06_DR_1&$FFFF)

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_GLYPH_COUNT+$0000)
		DB	$03

	DB	CMD_SETGAMECOUNT
		DW	$000A

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETTEXT
		DB	:?_UNDGEYSER09_TXT_1
		DW	(?_UNDGEYSER09_TXT_1&$FFFF)

	DB	CMD_END

;********************************
?_UNDGEYSER09_OGAR
	DB	CMD_THATACTORSTOP
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_SETSCROLL
		DB	:?_UNDGEYSER_MINI_QUAKE
		DW	(?_UNDGEYSER_MINI_QUAKE&$FFFF)

	DB	CMD_WAITEVENTSCROLL
		DB	$01

	DB	CMD_SETTEXT
		DB	:?_UNDGEYSER09_TXT_4
		DW	(?_UNDGEYSER09_TXT_4&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$04

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_OGAR_WALK_LEFT_ANIM
		DW	(?_OGAR_WALK_LEFT_ANIM&$FFFF)
		DB	$50
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$20
		DB	$01
		DB	$00
		DB	$00

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_UNDGEYSER09_TONY
		DW	(?_UNDGEYSER09_TONY&$FFFF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_OGAR_WALK_LEFT_ANIM
		DW	(?_OGAR_WALK_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_OGAR_STAND_LEFT_ANIM
		DW	(?_OGAR_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_UNDGEYSER09_TXT_2
		DW	(?_UNDGEYSER09_TXT_2&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_OGAR_RUN_LEFT_ANIM
		DW	(?_OGAR_RUN_LEFT_ANIM&$FFFF)
		DB	$0C
		DB	:?_OGAR_STAND_LEFT_ANIM
		DW	(?_OGAR_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
?_UNDGEYSER09_TONY
	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_RUN_RIGHT_ANIM
		DW	(?_HERO_RUN_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETBTLRETURN
		DB	:?_UNDGEYSER09_RETURN
		DW	(?_UNDGEYSER09_RETURN&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_JUMP
		DB	:?_UNDGEYSER_OGARBAT
		DW	(?_UNDGEYSER_OGARBAT&$FFFF)

	DB	CMD_END

;********************************
?_UNDGEYSER09_RETURN
	DB	CMD_SETGAMECOUNT
		DW	$000A

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_UNDGEYSER09&$FFFF)
		DB	:MAP_UNDGEYSER09

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_LOADHOTSPOTS
		DW	(HS_UNDGEYSER09&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$12
		DB	$14
		DW	$D332
		DB	$00
		DB	:?_UNDGEYSER09_TONYRET
		DW	(?_UNDGEYSER09_TONYRET&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_COPYTILEBLOCK
		DW	$D027
		DB	$01
		DB	$01
		DW	$D2C6
		DB	$11
		DB	$1E

	DB	CMD_COPYTILEBLOCK
		DW	$D027
		DB	$01
		DB	$01
		DW	$D0FD
		DB	$06
		DB	$0D

	DB	CMD_COPYTILEBLOCK
		DW	$D027
		DB	$01
		DB	$01
		DW	$D34A
		DB	$15
		DB	$02

	DB	CMD_COPYTILEBLOCK
		DW	$D027
		DB	$01
		DB	$01
		DW	$D4DA
		DB	$1F
		DB	$02

	DB	CMD_COPYTILEBLOCK
		DW	$D41B
		DB	$04
		DB	$07
		DW	$D270
		DB	$0F
		DB	$18

	DB	CMD_COPYTILEBLOCK
		DW	$D41B
		DB	$04
		DB	$07
		DW	$D262
		DB	$0F
		DB	$0A

	DB	CMD_COPYTILEBLOCK
		DW	$D491
		DB	$04
		DB	$06
		DW	$D3A9
		DB	$17
		DB	$11

	DB	CMD_COPYTILEBLOCK
		DW	$D490
		DB	$05
		DB	$06
		DW	$D1C8
		DB	$0B
		DB	$10

	DB	CMD_SCENEREADY

	DB	CMD_SETSCROLL
		DB	:?_UNDGEYSER_QUAKE
		DW	(?_UNDGEYSER_QUAKE&$FFFF)

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_PALCLEARANIM
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_END

;********************************
?_UNDGEYSER09_TONYRET
	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_UNDGEYSER09_TXT_5
		DW	(?_UNDGEYSER09_TXT_5&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$05

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_RUN_LEFT_ANIM
		DW	(?_HERO_RUN_LEFT_ANIM&$FFFF)
		DB	$30
		DB	$00

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_RUN_LEFT_ANIM
		DW	(?_HERO_RUN_LEFT_ANIM&$FFFF)
		DB	$30
		DB	$00

	DB	CMD_HEROSETDOOR
		DB	$06
		DB	$0D

	DB	CMD_JUMP
		DB	:?_UNDCAVERN06_DR_1
		DW	(?_UNDCAVERN06_DR_1&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_UNDGEYSER01
	GLOBAL	?_UNDGEYSER07
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?ANIM_AI
	GLOBAL	?_UNDGEYSER05
	GLOBAL	?_UNDGEYSER02
	GLOBAL	?_UNDGEYSER08
	GLOBAL	?_UNDGEYSER06
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	?_HERO_STAND_LEFT_ANIM
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	?_HERO_STAND_RIGHT_ANIM
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?HERO_AI
	GLOBAL	?_UNDGEYSER_QUAKE
	GLOBAL	MAP_UNDGEYSER09
	GLOBAL	PAL_HERO
	GLOBAL	HS_UNDGEYSER09
	GLOBAL	TR_UNDGEYSER09
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR00
	GLOBAL	?TRIGGER_AI
	GLOBAL	?_CORE_STONE_ANIM
	GLOBAL	ACTOR01
	GLOBAL	BIT_CORESTONE
	GLOBAL	BIT_OGAR
	GLOBAL	?_UNDGEYSER_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SUPERSLOW
	GLOBAL	?_BATTLE_LOST
	GLOBAL	VRM_GEYSER
	GLOBAL	PAL_GEYSER
	GLOBAL	?_UNDCAVERN06_DR_1
	GLOBAL	XRAM_GLYPH_COUNT
	GLOBAL	?_UNDGEYSER_MINI_QUAKE
	GLOBAL	?_OGAR_WALK_LEFT_ANIM
	GLOBAL	?_OGAR_STAND_LEFT_ANIM
	GLOBAL	?_OGAR_RUN_LEFT_ANIM
	GLOBAL	?_HERO_RUN_RIGHT_ANIM
	GLOBAL	?_UNDGEYSER_OGARBAT
	GLOBAL	?_HERO_RUN_LEFT_ANIM

;********************************
	END
;********************************