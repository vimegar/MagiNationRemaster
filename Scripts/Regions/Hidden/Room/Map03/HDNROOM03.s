;Size:549
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\HIDDEN\ROOM\MAP03\HDNROOM03.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HDNROOM03_DR_1
	DB	CMD_HEROSETDOOR
		DB	$06
		DB	$11

	DB	CMD_JUMP
		DB	:?_UNDTUNNEL03
		DW	(?_UNDTUNNEL03&$FFFF)

;********************************
?_HDNROOM03_DR_2
	DB	CMD_HEROTODOOR
		DB	$04
		DB	$11
		DB	$0E
		DB	$04

	DB	CMD_JUMP
		DB	:?_CLDLAVATUBE13
		DW	(?_CLDLAVATUBE13&$FFFF)

;********************************
?_HDNROOM03_DR_3
	DB	CMD_HEROSETDOOR
		DB	$08
		DB	$3E

	DB	CMD_JUMP
		DB	:?_HDNROOM03B
		DW	(?_HDNROOM03B&$FFFF)

;********************************
?_HDNROOM03_TR_1

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$16),(?AL+$00),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$12),?SPCE,(?AL+$14),(?AL+$0D),(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$01),(?AL+$0B),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HDNROOM03B_DR_1
	DB	CMD_HEROSETDOOR
		DB	$09
		DB	$04

	DB	CMD_JUMP
		DB	:?_HDNROOM03
		DW	(?_HDNROOM03&$FFFF)

;********************************
?_HDNROOM03B_DR_2
	DB	CMD_HEROSETDOOR
		DB	$04
		DB	$09

	DB	CMD_JUMP
		DB	:?_HDNROOM03C
		DW	(?_HDNROOM03C&$FFFF)

;********************************
?_HDNROOM03C_DR_1
	DB	CMD_HEROSETDOOR
		DB	$06
		DB	$01

	DB	CMD_JUMP
		DB	:?_HDNROOM03B
		DW	(?_HDNROOM03B&$FFFF)

;********************************
?_HDNROOM03C_DR_2
	DB	CMD_HEROSETDOOR
		DB	$06
		DB	$06

	DB	CMD_JUMP
		DB	:?_OVRSURFACE01
		DW	(?_OVRSURFACE01&$FFFF)

;********************************
?_HDNROOM03B
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HDNROOM03B&$FFFF)
		DB	:MAP_HDNROOM03B

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HDNROOM03B&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D050
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_FADEOUTSONG
		DB	$50

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_HDNROOM03C
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HDNROOM03C&$FFFF)
		DB	:MAP_HDNROOM03C

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HDNROOM03C&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D050
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_FADEOUTSONG
		DB	$50

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_HDNROOM03
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HDNROOM03&$FFFF)
		DB	:MAP_HDNROOM03

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HDNROOM03&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_HDNROOM03&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_SETITEMSCRIPT
		DB	:_BOMB
		DW	(_BOMB&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D050
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$08
		DB	$03
		DW	$D035
		DB	$00
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$08
		DB	$05
		DW	$D053
		DB	$32
		DB	:?_MAN04_STAND_UP_ANIM
		DW	(?_MAN04_STAND_UP_ANIM&$FFFF)
		DB	:_HUNTER_TALKS
		DW	(_HUNTER_TALKS&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_MAN04
		DW	(BIT_MAN04&$FFFF)
		DW	$8320
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0095)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:_SKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

;********************************
_SKIP
	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_FADEOUTSONG
		DB	$50

	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0089)&$FFFF
		DB	$08
		DB	:_ACTOR00_BOMBED_HDNWALL
		DW	(_ACTOR00_BOMBED_HDNWALL&$FFFF)

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
_BOMB
	DB	CMD_IF
		DB	EXPR_AND
		DB	EXPR_EQU
		DB	EXPR_XRAMBYTE
		DW	(SCRIPT_USED_ID+$0000)&$FFFF
		DB	EXPR_WORDCONST
		DW	INV_BLAST_URN
		DB	EXPR_EQU
		DB	EXPR_XRAMBYTE
		DW	(SCRIPT_COLLISION_CODE+$0000)&$FFFF
		DB	EXPR_WORDCONST
		DW	COLLCODE_ITEM01
		DB	:_BOMB01
		DW	(_BOMB01&$FFFF)

	DB	CMD_JUMP
		DB	:?_TXT_NOTHING_HAPPENED
		DW	(?_TXT_NOTHING_HAPPENED&$FFFF)

;********************************
_BOMB01
	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0089)
		DB	$08

	DB	CMD_JUMP
		DB	:_BOMB_HDNWALL
		DW	(_BOMB_HDNWALL&$FFFF)

;********************************
_BOMB_HDNWALL
	DB	CMD_INVENTORYTAKE
		DB	INV_TYPE_ITEM
		DB	INV_BLAST_URN
		DB	$01

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:_TONY_BOMB_DROP
		DW	(_TONY_BOMB_DROP&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$00
		DB	$00
		DW	$D000
		DB	$00
		DB	:_BOMB_ACT
		DW	(_BOMB_ACT&$FFFF)
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$20
		DB	:BIT_URN
		DW	(BIT_URN&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_END

;********************************
_TONY_BOMB_DROP
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_RUN_DOWN_ANIM
		DW	(?_HERO_RUN_DOWN_ANIM&$FFFF)
		DB	$18
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_SETSCROLL
		DB	:_BLAM
		DW	(_BLAM&$FFFF)

	DB	CMD_THISACTORSETAI
		DW	(?HERO_AI&$FFFF)

	DB	CMD_JUMP
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

;********************************
_BOMB_ACT
	DB	CMD_THISACTORLOCRELATIVE
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SFX
		DB	SFXID_SFX_EXPLOSION_SMALL

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_URN_EXPLODE_ANIM
		DW	(?_URN_EXPLODE_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_END

;********************************
_BLAM
	DB	CMD_SCROLLMAP
		DB	$01
		DB	$03
		DB	$00
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$01
		DB	$FD
		DB	$00
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$01
		DB	$03
		DB	$FD
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$01
		DB	$FD
		DB	$03
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$01
		DB	$00
		DB	$FD
		DB	$00

	DB	CMD_SCROLLMAP
		DB	$01
		DB	$00
		DB	$03
		DB	$00

	DB	CMD_THATACTORSETSCRIPT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:_ACTOR_BOMB_HDNWALL
		DW	(_ACTOR_BOMB_HDNWALL&$FFFF)

	DB	CMD_END

;********************************
_ACTOR_BOMB_HDNWALL
	DB	CMD_THISACTORDRAWTILE
		DB	$00
		DB	$00
		DW	$0000
		DB	COLLCODE_HS03&$FF
		DB	$46

	DB	CMD_THISACTORDRAWTILE
		DB	$00
		DB	$01
		DW	$0001
		DB	COLLCODE_HS03&$FF
		DB	$47

	DB	CMD_THISACTORDRAWTILE
		DB	$FF
		DB	$00
		DW	$FFF1
		DB	COLLCODE_WALL&$FF
		DB	$36

	DB	CMD_THISACTORDRAWTILE
		DB	$FF
		DB	$01
		DW	$FFF2
		DB	COLLCODE_WALL&$FF
		DB	$37

	DB	CMD_END

;********************************
_ACTOR00_BOMBED_HDNWALL
	DB	CMD_THATACTORDRAWTILE
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	$00
		DB	$00
		DW	$0000
		DB	COLLCODE_HS03
		DB	$46

	DB	CMD_THATACTORDRAWTILE
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	$00
		DB	$01
		DW	$0001
		DB	COLLCODE_HS03
		DB	$47

	DB	CMD_THATACTORDRAWTILE
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	$FF
		DB	$00
		DW	$FFF1
		DB	COLLCODE_WALL
		DB	$36

	DB	CMD_THATACTORDRAWTILE
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	$FF
		DB	$01
		DW	$FFF2
		DB	COLLCODE_WALL
		DB	$37

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
_HUNTER_TALKS
	DB	CMD_SETTEXT
		DB	:_HYREN_TXT
		DW	(_HYREN_TXT&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_MAN04
		DW	(?_FACE_MAN04&$FFFF)

;********************************
_HYREN_TXT

	DB	CMD_TEXTICON
		DW	ICON_YOUNGMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$03),(?AL+$08),(?AL+$03),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AU+$06),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),?WAIT
		DB	(?AU+$07),(?AL+$18),(?AL+$11),(?AL+$04),(?AL+$0D),(?AL+$12),?HURRY
		DB	(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$0B),(?AL+$18),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),?WAIT
		DB	(?AL+$08),(?AL+$0D),?SPCE,(?AL+$07),(?AL+$08),(?AL+$03),(?AL+$03),(?AL+$04),(?AL+$0D),?HURRY
		DB	(?AL+$00),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$12),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0095)
		DB	$01

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_UNDTUNNEL03
	GLOBAL	?_CLDLAVATUBE13
	GLOBAL	?_OVRSURFACE01
	GLOBAL	MAP_HDNROOM03B
	GLOBAL	HS_HDNROOM03B
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	MAP_HDNROOM03C
	GLOBAL	HS_HDNROOM03C
	GLOBAL	MAP_HDNROOM03
	GLOBAL	HS_HDNROOM03
	GLOBAL	TR_HDNROOM03
	GLOBAL	ACTOR00
	GLOBAL	?ANIM_AI
	GLOBAL	?_END
	GLOBAL	ACTOR02
	GLOBAL	?TALKER_AI
	GLOBAL	?_MAN04_STAND_UP_ANIM
	GLOBAL	BIT_MAN04
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	SCRIPT_USED_ID
	GLOBAL	SCRIPT_COLLISION_CODE
	GLOBAL	?_TXT_NOTHING_HAPPENED
	GLOBAL	ACTOR01
	GLOBAL	BIT_URN
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	?_HERO_RUN_DOWN_ANIM
	GLOBAL	?_URN_EXPLODE_ANIM
	GLOBAL	?_FACE_MAN04

;********************************
	END
;********************************