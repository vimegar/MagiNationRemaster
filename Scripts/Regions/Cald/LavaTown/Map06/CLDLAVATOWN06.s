;Size:1142
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\CALD\LAVATOWN\MAP06\CLDLAVATOWN06.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_CLDLAVATOWN06_DR_1
	DB	CMD_HEROTODOOR
		DB	$08
		DB	$1B
		DB	$00
		DB	$2C

	DB	CMD_JUMP
		DB	:?_CLDLAVATOWN01
		DW	(?_CLDLAVATOWN01&$FFFF)

;********************************
?_CLDLAVATOWN06_DR_2
	DB	CMD_HEROSETDOOR
		DB	$13
		DB	$14

	DB	CMD_JUMP
		DB	:?_OVRSURFACE03
		DW	(?_OVRSURFACE03&$FFFF)

;********************************
?_CLDLAVATOWN06_VIA_TXT_1

	DB	CMD_TEXTICON
		DW	ICON_VALKAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$11),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AL+$00),(?AL+$02),(?AL+$11),(?AL+$0E),(?AL+$12),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$12),(?AL+$04),(?AL+$00),?COMM,?WAIT
		DB	(?AU+$04),(?AL+$00),(?AL+$12),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$08),(?AL+$13),?SPCE,(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$03),(?AL+$0E),(?AL+$02),(?AL+$0A),(?AL+$12),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$02),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$03),?HURRY
		DB	(?AL+$03),(?AL+$0E),(?AL+$16),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$16),(?AL+$00),(?AL+$18),?PERD,?WAIT
		DB	(?AU+$0E),(?AL+$07),?COMM,?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$13),(?AL+$11),(?AL+$18),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$14),(?AL+$0F),(?AL+$12),(?AL+$04),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$05),(?AL+$04),(?AL+$11),(?AL+$11),(?AL+$18),(?AL+$0C),(?AL+$00),(?AL+$0D),?PERD,?WAIT
		DB	(?AU+$07),(?AL+$04),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$01),(?AL+$04),?SPCE,(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$18),?HURRY
		DB	(?AL+$13),(?AL+$04),(?AL+$0C),(?AL+$0F),(?AL+$04),(?AL+$11),(?AL+$00),(?AL+$0C),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$00),(?AL+$0B),?PERD,?WAIT
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?COMM,?SPCE,(?AL+$06),(?AL+$0E),(?AL+$0E),(?AL+$03),?SPCE,(?AL+$0B),(?AL+$14),(?AL+$02),(?AL+$0A),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_CLDLAVATOWN06_DIN_TXT_1

	DB	CMD_TEXTICON
		DW	ICON_VALKAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?COMM,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?EXCL,?SPCE,(?AU+$03),(?AL+$08),(?AL+$03),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?WAIT
		DB	(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$01),(?AL+$0E),(?AL+$0E),(?AL+$13),(?AL+$12),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$04),(?AL+$00),(?AL+$07),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_VALKAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),?EXCL,?WAIT
		DB	(?AU+$12),(?AL+$0E),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$03),(?AL+$18),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$06),(?AL+$08),(?AL+$15),(?AL+$04),?WAIT
		DB	(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0A),(?AL+$04),(?AL+$18),?HURRY
		DB	(?AL+$18),(?AL+$04),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE


	DB	CMD_TEXTWRITE
		DB	?SPCE,(?AU+$06),(?AL+$08),(?AL+$15),(?AL+$04),?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$16),?HURRY
		DB	?SPCE,(?AU+$06),(?AL+$08),(?AL+$15),(?AL+$04),?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$0B),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11)
		DB	?EOF

	DB	CMD_TEXTMENU
		DB	$02
		DB	:_DIN_NOW
		DW	(_DIN_NOW&$FFFF)
		DB	:_DIN_LATER
		DW	(_DIN_LATER&$FFFF)

;********************************
_DIN_NOW
	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$0A),(?AL+$00),(?AL+$18),?COMM,?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$06),(?AL+$0E),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_XRAMBITAND
		DW	(XRAM_SAVEBITS+$0080)
		DB	$F7

	DB	CMD_INVENTORYTAKE
		DB	INV_TYPE_ITEM
		DB	INV_ASHGARS_KEY
		DB	$01


	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AU+$00),(?AL+$12),(?AL+$07),(?AL+$06),(?AL+$00),(?AL+$11),?APST,(?AL+$12),?SPCE,(?AU+$0A),(?AL+$04),(?AL+$18),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_VALKAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$0A),(?AL+$12),?PERD,?SPCE,(?AU+$08),(?AL+$05),?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$0F),(?AL+$14),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?WAIT
		DB	(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$02),(?AL+$0A),(?AL+$0B),(?AL+$18),?COMM,?HURRY
		DB	(?AU+$00),(?AL+$12),(?AL+$07),(?AL+$06),(?AL+$00),(?AL+$11),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?WAIT
		DB	(?AL+$0D),(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),(?AL+$08),(?AL+$02),(?AL+$04),?HURRY
		DB	(?AL+$08),(?AL+$13),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$0D),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$12),(?AL+$04),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0B),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),?COMM,?HURRY
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
_DIN_LATER
	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$06),(?AL+$08),(?AL+$15),(?AL+$04),?SPCE,(?AL+$08),(?AL+$13),?HURRY
		DB	(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$0B),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_VALKAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$0A),(?AL+$00),(?AL+$18),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?HURRY
		DB	(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),(?AL+$0E),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$01),(?AL+$04),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$0E),(?AL+$16),(?AL+$0D),?HURRY
		DB	(?AL+$12),(?AL+$0E),?SPCE,(?AL+$16),(?AL+$07),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$03),(?AL+$18),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$06),(?AL+$08),(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$08),(?AL+$13),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?COMM,?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$0C),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_CLDLAVATOWN06_RE_ENTER
	DB	CMD_SCENENEW

	DB	CMD_LOADVRAM
		DW	(VRM_CLDLAVATOWN&$FFFF)
		DB	:VRM_CLDLAVATOWN
		DW	(PAL_CLDLAVATOWN&$FFFF)
		DB	:PAL_CLDLAVATOWN

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_CLDLAVATOWN06
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$01

	DB	CMD_IF
		DB	EXPR_AND
		DB	EXPR_NOT
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0087)&$FFFF
		DB	$40
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$0F
		DB	:?_CLDLAVATOWN06_DOITNOW
		DW	(?_CLDLAVATOWN06_DOITNOW&$FFFF)

;********************************
?_GENERIC_CLDLAVATOWN06
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATOWN06&$FFFF)
		DB	:MAP_CLDLAVATOWN06

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATOWN06&$FFFF)

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
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$01
		DB	$01
		DW	$D015
		DB	$A4
		DB	:?_CLD_LAVABUBBLE
		DW	(?_CLD_LAVABUBBLE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$01
		DB	$01
		DW	$D015
		DB	$A4
		DB	:?_CLD_LAVABUBBLE
		DW	(?_CLD_LAVABUBBLE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$01
		DB	$01
		DW	$D015
		DB	$A4
		DB	:?_CLD_LAVABUBBLE
		DW	(?_CLD_LAVABUBBLE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$06
		DB	:BIT_LAVABUBBLE
		DW	(BIT_LAVABUBBLE&$FFFF)
		DW	$8A40
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SONGSTART
		DB	SONGID_caldtown

	DB	CMD_THATACTORSTART
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_CLDLAVATOWN06_VIA_FINAL
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$01

	DB	CMD_SETGAMECOUNT
		DW	$000E

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATOWN06&$FFFF)
		DB	:MAP_CLDLAVATOWN06

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATOWN06&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0A
		DB	$03
		DW	$D046
		DB	$00
		DB	:?_CLDLAVATOWN06_HERO_VIA
		DW	(?_CLDLAVATOWN06_HERO_VIA&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$09
		DB	$03
		DW	$D045
		DB	$00
		DB	:?_CLDLAVATOWN06_VALKAN_VIA
		DW	(?_CLDLAVATOWN06_VALKAN_VIA&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$01
		DB	$01
		DW	$D015
		DB	$A4
		DB	:?_CLD_LAVABUBBLE
		DW	(?_CLD_LAVABUBBLE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$01
		DB	$01
		DW	$D015
		DB	$A4
		DB	:?_CLD_LAVABUBBLE
		DW	(?_CLD_LAVABUBBLE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$01
		DB	$01
		DW	$D015
		DB	$A4
		DB	:?_CLD_LAVABUBBLE
		DW	(?_CLD_LAVABUBBLE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$2B
		DB	:BIT_VALKAN
		DW	(BIT_VALKAN&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$06
		DB	:BIT_LAVABUBBLE
		DW	(BIT_LAVABUBBLE&$FFFF)
		DW	$8A40
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_caldtown

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_CLDLAVATOWN06_HERO_VIA
	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_DELAY
		DB	$08

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_STAND_UL_ANIM
		DW	(?_HERO_STAND_UL_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
?_CLDLAVATOWN06_VALKAN_VIA
	DB	CMD_THISACTORSETANIM
		DB	:?_VALKAN_STAND_RIGHT_ANIM
		DW	(?_VALKAN_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$10

	DB	CMD_SETTEXT
		DB	:?_CLDLAVATOWN06_VIA_TXT_1
		DW	(?_CLDLAVATOWN06_VIA_TXT_1&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_VALKAN_WALK_UP_ANIM
		DW	(?_VALKAN_WALK_UP_ANIM&$FFFF)
		DB	$60
		DB	$00

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_CLDLAVATOWN06_DOITNOW
	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0087)
		DB	$40

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATOWN06&$FFFF)
		DB	:MAP_CLDLAVATOWN06

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATOWN06&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0A
		DB	$14
		DW	$D19A
		DB	$00
		DB	:?_CLDLAVATOWN06_HERO_DIN
		DW	(?_CLDLAVATOWN06_HERO_DIN&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D0BE
		DB	$00
		DB	:?_CLDLAVATOWN06_VALKAN_DIN
		DW	(?_CLDLAVATOWN06_VALKAN_DIN&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$01
		DB	$01
		DW	$D015
		DB	$A4
		DB	:?_CLD_LAVABUBBLE
		DW	(?_CLD_LAVABUBBLE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$01
		DB	$01
		DW	$D015
		DB	$A4
		DB	:?_CLD_LAVABUBBLE
		DW	(?_CLD_LAVABUBBLE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$01
		DB	$01
		DW	$D015
		DB	$A4
		DB	:?_CLD_LAVABUBBLE
		DW	(?_CLD_LAVABUBBLE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$2B
		DB	:BIT_VALKAN
		DW	(BIT_VALKAN&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$06
		DB	:BIT_LAVABUBBLE
		DW	(BIT_LAVABUBBLE&$FFFF)
		DW	$8A40
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_caldtown

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_CLDLAVATOWN06_HERO_DIN
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_UP_ANIM
		DW	(?_HERO_WALK_UP_ANIM&$FFFF)
		DB	$40
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
?_CLDLAVATOWN06_VALKAN_DIN
	DB	CMD_DELAY
		DB	$10

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_VALKAN_RUN_DOWN_ANIM
		DW	(?_VALKAN_RUN_DOWN_ANIM&$FFFF)
		DB	$30
		DB	:?_VALKAN_STAND_DOWN_ANIM
		DW	(?_VALKAN_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_CLDLAVATOWN06_DIN_TXT_1
		DW	(?_CLDLAVATOWN06_DIN_TXT_1&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_VALKAN_RUN_UP_ANIM
		DW	(?_VALKAN_RUN_UP_ANIM&$FFFF)
		DB	$30
		DB	$00

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_CLDLAVATOWN01
	GLOBAL	?_OVRSURFACE03
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	VRM_CLDLAVATOWN
	GLOBAL	PAL_CLDLAVATOWN
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	MAP_CLDLAVATOWN06
	GLOBAL	HS_CLDLAVATOWN06
	GLOBAL	PAL_HERO
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR06
	GLOBAL	?RAINDROP_AI
	GLOBAL	?_CLD_LAVABUBBLE
	GLOBAL	ACTOR07
	GLOBAL	ACTOR08
	GLOBAL	BIT_LAVABUBBLE
	GLOBAL	?ANIM_AI
	GLOBAL	ACTOR00
	GLOBAL	BIT_VALKAN
	GLOBAL	?_HERO_STAND_LEFT_ANIM
	GLOBAL	?_HERO_STAND_UL_ANIM
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	?_VALKAN_STAND_RIGHT_ANIM
	GLOBAL	?_VALKAN_WALK_UP_ANIM
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_HERO_WALK_UP_ANIM
	GLOBAL	?_VALKAN_RUN_DOWN_ANIM
	GLOBAL	?_VALKAN_STAND_DOWN_ANIM
	GLOBAL	?_VALKAN_RUN_UP_ANIM

;********************************
	END
;********************************