;Size:468
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\OROTHE\GEYSER\MAP11\OROGEYSER11.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_OROGEYSER11_DR_1
	DB	CMD_SETLOADSCRIPT
		DB	:?_OROGEYSER11_DR_1
		DW	(?_OROGEYSER11_DR_1&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?OVERPARA_AI&$FFFF)
		DB	$10
		DB	$07
		DW	$D0F7
		DB	$10
		DB	:?_OVERPARATHIN_UP_ANIM
		DW	(?_OVERPARATHIN_UP_ANIM&$FFFF)
		DB	:?_OVERPARA_MOUNT
		DW	(?_OVERPARA_MOUNT&$FFFF)

	DB	CMD_HEROSETDOOR
		DB	$10
		DB	$07

	DB	CMD_JUMP
		DB	:?_OVRSURFACE04_PARATHIN
		DW	(?_OVRSURFACE04_PARATHIN&$FFFF)

;********************************
?_OROGEYSER11_DR_2
	DB	CMD_HEROSETDOOR
		DB	$3F
		DB	$3D

	DB	CMD_JUMP
		DB	:?_OROGEYSER10
		DW	(?_OROGEYSER10&$FFFF)

;********************************
?_OROGEYSER11_TR_1

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	EXPR_BYTECONST,$01
		DB	:_OUCH
		DW	(_OUCH&$FFFF)

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)
		DB	$02

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$14),(?AL+$02),(?AL+$07),?EXCL,?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$0C),(?AL+$00),(?AL+$18),(?AL+$01),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AU+$07),(?AL+$08),(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$11),(?AL+$08),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$08),(?AL+$0D),?WAIT
		DB	(?AU+$0E),(?AL+$12),(?AL+$02),(?AL+$04),(?AL+$0D),(?AL+$13),?SPCE,(?AU+$0C),(?AL+$00),(?AL+$11),?WAIT
		DB	(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),(?AL+$12),?SPCE,(?AL+$00),(?AL+$01),(?AL+$0E),(?AL+$14),(?AL+$13),?WAIT
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$02),(?AL+$04),(?AL+$05),(?AL+$08),(?AL+$04),(?AL+$0B),(?AL+$03),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
_OUCH
	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AU+$14),(?AU+$02),(?AU+$07),?EXCL,?HURRY
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?WAIT
		DB	(?AL+$12),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),(?AL+$12),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_OROGEYSER11_TXT_1

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?COMM,?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$0B),(?AL+$03),?HURRY
		DB	(?AL+$06),(?AL+$14),(?AL+$18),?SPCE,(?AL+$12),(?AL+$00),(?AL+$08),(?AL+$03),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AU+$03),(?AL+$08),(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$0B),?SPCE,(?AU+$17),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?WAIT
		DB	(?AL+$01),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0A),?SPCE,(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$0B),(?AL+$0B),(?AL+$12),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),?SPCE,(?AL+$08),(?AL+$05),?WAIT
		DB	(?AL+$07),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AL+$11),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AU+$04),(?AU+$07),(?AU+$0E),(?AU+$0B),(?AU+$03),?EXCL,?HURRY
		DB	(?AU+$03),(?AU+$08),(?AU+$12),(?AU+$0F),(?AU+$04),(?AU+$0B),?SPCE,(?AU+$17),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_OROGEYSER11
	DB	CMD_SCENENEW

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_LOADMAP
		DW	(MAP_OROGEYSER11&$FFFF)
		DB	:MAP_OROGEYSER11

	DB	CMD_LOADTRIGGERS
		DW	(TR_OROGEYSER11&$FFFF)

	DB	CMD_LOADHOTSPOTS
		DW	(HS_OROGEYSER11&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$08
		DB	$2A
		DW	$D2A8
		DB	$00
		DB	:?_FORCE_FIELD_ANIM
		DW	(?_FORCE_FIELD_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$20
		DB	:BIT_FORCEFIELD
		DW	(BIT_FORCEFIELD&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_IF
		DB	EXPR_AND
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$13
		DB	EXPR_NOT
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0084)&$FFFF
		DB	$04
		DB	:?_OROGEYSER11_DISPELL
		DW	(?_OROGEYSER11_DISPELL&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D055
		DB	$00
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_IF
		DB	EXPR_NOT
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0084)&$FFFF
		DB	$04
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_DRAWTILE
		DB	$2A
		DB	$08
		DW	$D2A8
		DB	COLLCODE_WATER
		DB	$00

	DB	CMD_DRAWTILE
		DB	$2A
		DB	$09
		DW	$D2A9
		DB	COLLCODE_WATER
		DB	$00

	DB	CMD_END

;********************************
?_OROGEYSER11_DISPELL
	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$08
		DB	$2F
		DW	$D2F8
		DB	$00
		DB	:?_OROGEYSER11_TONY
		DW	(?_OROGEYSER11_TONY&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0084)
		DB	$04

	DB	CMD_END

;********************************
?_OROGEYSER11_TONY
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_UP_ANIM
		DW	(?_HERO_WALK_UP_ANIM&$FFFF)
		DB	$28
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_OROGEYSER11_TXT_1
		DW	(?_OROGEYSER11_TXT_1&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_DRAWTILE
		DB	$2A
		DB	$08
		DW	$D2A8
		DB	COLLCODE_WATER
		DB	$00

	DB	CMD_DRAWTILE
		DB	$2A
		DB	$09
		DW	$D2A9
		DB	COLLCODE_WATER
		DB	$00

	DB	CMD_SETSCROLL
		DB	:_FREE
		DW	(_FREE&$FFFF)

	DB	CMD_END

;********************************
_FREE
	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	ACTOR02
	GLOBAL	ACTOR_RAM
	GLOBAL	?OVERPARA_AI
	GLOBAL	?_OVERPARATHIN_UP_ANIM
	GLOBAL	?_OVERPARA_MOUNT
	GLOBAL	?_OVRSURFACE04_PARATHIN
	GLOBAL	?_OROGEYSER10
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	MAP_OROGEYSER11
	GLOBAL	TR_OROGEYSER11
	GLOBAL	HS_OROGEYSER11
	GLOBAL	PAL_HERO
	GLOBAL	ACTOR00
	GLOBAL	?ANIM_AI
	GLOBAL	?_FORCE_FIELD_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	BIT_FORCEFIELD
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	HEROACTOR
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STAND_LEFT_ANIM
	GLOBAL	?_END
	GLOBAL	?_HERO_WALK_UP_ANIM
	GLOBAL	?_HERO_STAND_UP_ANIM

;********************************
	END
;********************************