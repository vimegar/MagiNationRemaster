;Size:876
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\WEAVE\PATHVALLEY\MAP02\WVEPATHVALLEY02.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_WVEPATHVALLEY02_DR_1
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$0F
		DB	$00
		DB	$18

	DB	CMD_JUMP
		DB	:?_WVEPATHVALLEY01
		DW	(?_WVEPATHVALLEY01&$FFFF)

;********************************
?_WVEPATHVALLEY02_DR_2
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$1D
		DB	$34
		DB	$14

	DB	CMD_JUMP
		DB	:?_WVEPATHVALLEY03
		DW	(?_WVEPATHVALLEY03&$FFFF)

;********************************
?_WVEPATHVALLEY02_DR_3
;********************************
?_WVEPATHVALLEY02_DR_4
;********************************
?_WVEPATHVALLEY02_DR_5
;********************************
?_WVEPATHVALLEY02_DR_6
;********************************
?_WVEPATHVALLEY02_DR_7
	DB	CMD_END

;********************************
?_WVEPATHVALLEY02_DR_8
	DB	CMD_JUMP
		DB	:?_WVEMAZE_SHORTCUT
		DW	(?_WVEMAZE_SHORTCUT&$FFFF)

;********************************
?_WVEPATHVALLEY02_DR_1B
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$0F
		DB	$00
		DB	$18

	DB	CMD_JUMP
		DB	:?_WVEPATHVALLEY01
		DW	(?_WVEPATHVALLEY01&$FFFF)

;********************************
?_WVEPATHVALLEY02_DR_2B
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)
		DB	$05

	DB	CMD_HEROTODOOR
		DB	$00
		DB	$1D
		DB	$34
		DB	$13

	DB	CMD_JUMP
		DB	:?_WVEPATHVALLEY03
		DW	(?_WVEPATHVALLEY03&$FFFF)

;********************************
?_WVEPATHVALLEY02_DR_3B
	DB	CMD_IF
		DB	EXPR_NOT
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$02
		DB	:?_WVEGIASTAUNTS_05
		DW	(?_WVEGIASTAUNTS_05&$FFFF)

	DB	CMD_END

;********************************
?_WVEPATHVALLEY02_DR_4B
	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:?_WVEGIASTAUNTS_01
		DW	(?_WVEGIASTAUNTS_01&$FFFF)

	DB	CMD_END

;********************************
?_WVEPATHVALLEY02_DR_5B
	DB	CMD_IF
		DB	EXPR_LESS
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$02
		DB	:?_WVEGIASTAUNTS_02
		DW	(?_WVEGIASTAUNTS_02&$FFFF)

	DB	CMD_END

;********************************
?_WVEPATHVALLEY02_DR_6B
	DB	CMD_IF
		DB	EXPR_LESS
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$03
		DB	:?_WVEGIASTAUNTS_03
		DW	(?_WVEGIASTAUNTS_03&$FFFF)

	DB	CMD_END

;********************************
?_WVEPATHVALLEY02_DR_7B
	DB	CMD_IF
		DB	EXPR_LESS
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$04
		DB	:?_WVEGIASTAUNTS_04
		DW	(?_WVEGIASTAUNTS_04&$FFFF)

	DB	CMD_END

;********************************
?_WVEPATHVALLEY02_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0003)
		DB	$02
		DB	INV_TYPE_RELIC
		DB	INV_ENERGY_GEM
		DW	$D34B

	DB	CMD_END

;********************************
?_WVEPATHVALLEY02_TR_2
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0012)
		DB	$20
		DB	INV_TYPE_RELIC
		DB	INV_ARMOR_ORB
		DW	$D1A1

	DB	CMD_END

;********************************
?_WVEGIASTAUNTS_TXT01

	DB	CMD_TEXTICON
		DW	ICON_GIA

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$12),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?WAIT
		DB	(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$06),(?AL+$0E),?HURRY
		DB	(?AU+$13),(?AU+$07),(?AU+$08),(?AU+$12),?SPCE,(?AL+$16),(?AL+$00),(?AL+$18),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_WVEGIASTAUNTS_TXT02

	DB	CMD_TEXTICON
		DW	ICON_GIA

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?HURRY
		DB	(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$0D),(?AL+$04),(?AL+$17),(?AL+$13),?SPCE,(?AU+$02),(?AU+$07),(?AU+$00),(?AU+$0B),(?AU+$0B),(?AU+$04),(?AU+$0D),(?AU+$06),(?AU+$04),?HURRY
		DB	(?AL+$12),(?AL+$0E),?SPCE,(?AL+$04),(?AL+$00),(?AL+$12),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_WVEGIASTAUNTS_TXT03

	DB	CMD_TEXTICON
		DW	ICON_GIA

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),?SPCE,(?AL+$01),(?AL+$0E),(?AL+$18),?SPCE,(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?HURRY
		DB	(?AU+$0F),(?AU+$00),(?AU+$0D),(?AU+$13),(?AU+$12),?SPCE,(?AL+$00),(?AL+$12),?WAIT
		DB	(?AU+$12),(?AU+$00),(?AU+$06),(?AU+$06),(?AU+$18),?SPCE,(?AL+$00),(?AL+$12),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),(?AL+$12),?SPCE,(?AL+$12),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?WAIT
		DB	(?AL+$02),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$06),(?AL+$04),?SPCE,(?AL+$07),(?AL+$08),(?AL+$12),?HURRY
		DB	(?AU+$03),(?AU+$08),(?AU+$00),(?AU+$0F),(?AU+$04),(?AU+$11),?SPCE,(?AL+$0C),(?AL+$0E),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$0E),(?AL+$05),(?AL+$13),(?AL+$04),(?AL+$0D),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_WVEGIASTAUNTS_TXT04

	DB	CMD_TEXTICON
		DW	ICON_GIA

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$06),(?AL+$14),(?AL+$04),(?AL+$12),(?AL+$12),?HURRY
		DB	(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$00),?SPCE,(?AU+$0C),(?AU+$0E),(?AU+$0D),(?AU+$0A),(?AU+$04),(?AU+$18),?WAIT
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?HURRY
		DB	(?AU+$0B),(?AU+$14),(?AU+$02),(?AU+$0A),(?AU+$18),?SPCE,(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$18),?WAIT
		DB	(?AL+$0E),(?AL+$0D),(?AL+$02),(?AL+$04),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$16),(?AL+$07),(?AL+$08),(?AL+$0B),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_WVEGIASTAUNTS_TXT05

	DB	CMD_TEXTICON
		DW	ICON_GIA

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0C),(?AL+$0E),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AL+$00),(?AL+$12),?SPCE,(?AU+$12),(?AU+$0C),(?AU+$00),(?AU+$11),(?AU+$13),?SPCE,(?AL+$00),(?AL+$12),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$12),(?AL+$04),?SPCE,(?AU+$12),(?AU+$07),(?AU+$11),(?AU+$14),(?AU+$01),(?AU+$12),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_WVEPATHVALLEY02
	DB	CMD_IF
		DB	EXPR_AND
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$04
		DB	EXPR_NOTEQU
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$05
		DB	:?_WVEPATHVALLEY02_GFG
		DW	(?_WVEPATHVALLEY02_GFG&$FFFF)

;********************************
?_WVEPATHVALLEY02_GENERIC
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_WVEPATHVALLEY02&$FFFF)
		DB	:MAP_WVEPATHVALLEY02

	DB	CMD_LOADHOTSPOTS
		DW	(HS_WVEPATHVALLEY02&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_WVEPATHVALLEY02&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D09B
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1E-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D118
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_WVEPATHVALLEY_RNDBAT
		DW	(?_WVEPATHVALLEY_RNDBAT&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1D-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D118
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_WVEPATHVALLEY_RNDBAT
		DW	(?_WVEPATHVALLEY_RNDBAT&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR1E-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR1D-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$34
		DB	:BIT_SPARKLE
		DW	(BIT_SPARKLE&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$04
		DB	:BIT_WATERSHIMMER
		DW	(BIT_WATERSHIMMER&$FFFF)
		DW	$8340
		DB	$00

	DB	CMD_SETBTLRETURN
		DB	:?_WVEPATHVALLEY02
		DW	(?_WVEPATHVALLEY02&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_orotunnels

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_WVEPATHVALLEY02_GFG
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_WVEPATHVALLEY02&$FFFF)
		DB	:MAP_WVEPATHVALLEY02

	DB	CMD_LOADTRIGGERS
		DW	(TR_WVEPATHVALLEY02&$FFFF)

	DB	CMD_LOADHOTSPOTS
		DW	(HS_WVEPATHVALLEY02B&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D09B
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_GIA
		DW	(BIT_GIA&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_orotunnels

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_WVEMAZE_SHORTCUT
	DB	CMD_THATACTORSTOP
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$07
		DB	$13
		DW	$D241
		DB	$00
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_CAMERASEEK
		DB	$07
		DB	$13
		DB	$02

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_END

;********************************
?_WVEGIASTAUNTS_01
	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$08
		DB	$0A
		DW	$D134
		DB	$00
		DB	:?_GIA_STAND_DOWN_ANIM
		DW	(?_GIA_STAND_DOWN_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_CAMERASEEKACTOR
		DW	(ACTOR00&$FFFF)
		DB	$03

	DB	CMD_SETTEXT
		DB	:?_WVEGIASTAUNTS_TXT01
		DW	(?_WVEGIASTAUNTS_TXT01&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_CAMERASEEKACTOR
		DW	(HEROACTOR&$FFFF)
		DB	$03

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)
		DB	$01

	DB	CMD_END

;********************************
?_WVEGIASTAUNTS_02
	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$09
		DB	$13
		DW	$D243
		DB	$00
		DB	:?_GIA_STAND_RIGHT_ANIM
		DW	(?_GIA_STAND_RIGHT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_CAMERASEEKACTOR
		DW	(ACTOR00&$FFFF)
		DB	$03

	DB	CMD_SETTEXT
		DB	:?_WVEGIASTAUNTS_TXT02
		DW	(?_WVEGIASTAUNTS_TXT02&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_CAMERASEEKACTOR
		DW	(HEROACTOR&$FFFF)
		DB	$03

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)
		DB	$02

	DB	CMD_END

;********************************
?_WVEGIASTAUNTS_03
	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$03
		DB	$35
		DW	$D639
		DB	$00
		DB	:?_GIA_STAND_RIGHT_ANIM
		DW	(?_GIA_STAND_RIGHT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_CAMERASEEKACTOR
		DW	(ACTOR00&$FFFF)
		DB	$03

	DB	CMD_SETTEXT
		DB	:?_WVEGIASTAUNTS_TXT03
		DW	(?_WVEGIASTAUNTS_TXT03&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_CAMERASEEKACTOR
		DW	(HEROACTOR&$FFFF)
		DB	$03

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)
		DB	$03

	DB	CMD_END

;********************************
?_WVEGIASTAUNTS_04
	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0B
		DB	$36
		DW	$D65F
		DB	$00
		DB	:?_GIA_STAND_LEFT_ANIM
		DW	(?_GIA_STAND_LEFT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_CAMERASEEKACTOR
		DW	(ACTOR00&$FFFF)
		DB	$03

	DB	CMD_SETTEXT
		DB	:?_WVEGIASTAUNTS_TXT04
		DW	(?_WVEGIASTAUNTS_TXT04&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_CAMERASEEKACTOR
		DW	(HEROACTOR&$FFFF)
		DB	$03

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)
		DB	$04

	DB	CMD_END

;********************************
?_WVEGIASTAUNTS_05
	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$08
		DB	$0A
		DW	$D134
		DB	$00
		DB	:?_GIA_STAND_RIGHT_ANIM
		DW	(?_GIA_STAND_RIGHT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_CAMERASEEKACTOR
		DW	(ACTOR00&$FFFF)
		DB	$03

	DB	CMD_SETTEXT
		DB	:?_WVEGIASTAUNTS_TXT05
		DW	(?_WVEGIASTAUNTS_TXT05&$FFFF)

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0000)
		DB	$02

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_CAMERASEEKACTOR
		DW	(HEROACTOR&$FFFF)
		DB	$03

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_WVEPATHVALLEY01
	GLOBAL	?_WVEPATHVALLEY03
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_WVEPATHVALLEY02
	GLOBAL	HS_WVEPATHVALLEY02
	GLOBAL	TR_WVEPATHVALLEY02
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR1E
	GLOBAL	?RAINDROP_AI
	GLOBAL	?_RAINER
	GLOBAL	?_WVEPATHVALLEY_RNDBAT
	GLOBAL	ACTOR1D
	GLOBAL	BIT_SPARKLE
	GLOBAL	BIT_WATERSHIMMER
	GLOBAL	?_BATTLE_LOST
	GLOBAL	HS_WVEPATHVALLEY02B
	GLOBAL	BIT_GIA
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	ACTOR00
	GLOBAL	?ANIM_AI
	GLOBAL	?_GIA_STAND_DOWN_ANIM
	GLOBAL	?_GIA_STAND_RIGHT_ANIM
	GLOBAL	?_HERO_STAND_LEFT_ANIM
	GLOBAL	?_GIA_STAND_LEFT_ANIM
	GLOBAL	?_HERO_STAND_RIGHT_ANIM

;********************************
	END
;********************************