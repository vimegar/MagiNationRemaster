;Size:1949
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\NAROOM\VASH\MAP20\NRMVASH20.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_NRMVASH20_DR_1
	DB	CMD_HEROTODOOR
		DB	$05
		DB	$05
		DB	$0B
		DB	$03

	DB	CMD_JUMP
		DB	:?_NRMVASH05
		DW	(?_NRMVASH05&$FFFF)

;********************************
?_NRMVASH20_TR_1
	DB	CMD_TRIGGERALWAYS
		DW	(XRAM_TREASURE+$0001)
		DB	$08
		DB	:?_TXT_MEOW
		DW	(?_TXT_MEOW&$FFFF)
		DB	$3B
		DW	$D021

	DB	CMD_INITSKIP
		DW	(_SKIP&$FFFF)


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$13),?SPCE,(?0+$05),?HURRY
		DB	(?AU+$00),(?AL+$0D),(?AL+$08),(?AL+$0C),(?AL+$08),(?AL+$13),(?AL+$04),?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_ANIMITE
		DB	INV_TYPE_ANIMITE
		DB	$05

;********************************
_SKIP
	DB	CMD_END

;********************************
?_TXT_MEOW

	DB	CMD_TEXTICON
		DW	ICON_POLLY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$04),(?AL+$0E),(?AL+$0E),(?AL+$0E),(?AL+$16),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_NRMVASH20_TR_2

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$0E),?SPCE,(?AU+$01),(?AU+$11),(?AU+$08),(?AU+$06),(?AU+$07),(?AU+$13),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_NRMVASH20_TR_3
	DB	CMD_IF
		DB	EXPR_NOTEQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$1A
		DB	:_SKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_IF
		DB	EXPR_NOTEQU
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0001)&$FFFF
		DB	EXPR_BYTECONST,$01
		DB	:_SKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_PASS

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$12),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),(?AL+$0D),?APST,(?AL+$13),?HURRY
		DB	(?AL+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),?SPCE,(?AL+$08),(?AL+$0D),?PERD,?PERD,?PERD,?WAIT
		DB	(?AL+$07),(?AL+$14),(?AL+$07),?QUST,?SPCE,(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$03),(?AL+$11),(?AL+$00),(?AL+$16),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$08),(?AL+$12),?SPCE,(?AL+$0C),(?AL+$0E),(?AL+$15),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$0F),(?AL+$04),(?AL+$04),(?AL+$0A),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WORVELINE

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AU+$11),(?AU+$11),(?AU+$11),(?AU+$11),(?AU+$11),?EXCL,?EXCL,?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$14),(?AU+$06),(?AU+$07),?EXCL,?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE


	DB	CMD_TEXTWRITE
		DB	?DASH,(?AU+$16),(?AL+$0E),(?AL+$11),(?AL+$15),(?AL+$04),(?AL+$0B),(?AL+$08),(?AL+$0D),(?AL+$04),?HURRY
		DB	?SPCE,(?AL+$05),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),?EXCL,?DASH,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0001)
		DB	$00

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0002)
		DB	$08

	DB	CMD_END

;********************************
_SKIP

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$12),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),(?AL+$0D),?APST,(?AL+$13),?HURRY
		DB	(?AL+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?WAIT
		DB	(?AL+$0F),(?AL+$04),(?AL+$0E),(?AL+$0F),(?AL+$0B),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AL+$03),(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$12),(?AL+$04),(?AL+$11),(?AL+$12),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_NRMVASH20_TR_4

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AL+$00),(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AU+$05),(?AL+$0E),(?AL+$11),?HURRY
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AU+$03),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0C),?WAIT
		DB	(?AU+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?COMM,?SPCE,(?AU+$15),(?AL+$0E),(?AL+$0B),?PERD,?HURRY
		DB	(?0+$01),?COLN,?SPCE,(?AU+$01),(?AL+$00),(?AL+$12),(?AL+$08),(?AL+$02),(?AL+$12),?WAIT
		DB	(?AU+$12),(?AL+$13),(?AL+$04),(?AL+$0F),?SPCE,(?0+$01),?DASH,?SPCE,(?AU+$06),(?AL+$04),(?AL+$13),?HURRY
		DB	(?AL+$00),?SPCE,(?AU+$03),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0C),?WAIT
		DB	(?AU+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AU+$12),(?AL+$13),(?AL+$04),(?AL+$0F),?SPCE,(?0+$02),?DASH,?SPCE,(?AU+$02),(?AL+$00),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$12),(?AL+$13),(?AL+$04),(?AL+$0F),?SPCE,(?0+$03),?DASH,?SPCE,(?AU+$03),(?AL+$0E),(?AL+$0D),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_NRMVASH20_TR_5
	DB	CMD_IF
		DB	EXPR_LESS
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$008F)&$FFFF
		DB	EXPR_BYTECONST,$04
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0083)&$FFFF
		DB	$02
		DB	:_JUST_COPY
		DW	(_JUST_COPY&$FFFF)

	DB	CMD_INITSKIP
		DW	(_END&$FFFF)


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$12),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$05),(?AL+$14),(?AL+$0D),(?AL+$06),(?AL+$14),(?AL+$12),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$0B),(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$03),?WAIT
		DB	(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0B),(?AL+$04),(?AL+$06),(?AL+$12),?HURRY
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$0E),(?AL+$0B),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_COPYTILEBLOCK
		DW	$D06F
		DB	$01
		DB	$01
		DW	$D06E
		DB	$09
		DB	$02

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0083)
		DB	$02

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_ITEM
		DB	INV_HOLLOW_STOOL
		DB	$01


	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$00),?HURRY
		DB	(?AU+$07),(?AL+$0E),(?AL+$0B),(?AL+$0B),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$0E),(?AL+$0B),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
_JUST_COPY
	DB	CMD_COPYTILEBLOCK
		DW	$D06F
		DB	$01
		DB	$01
		DW	$D06E
		DB	$09
		DB	$02

;********************************
_END
	DB	CMD_END

;********************************
?_NRMVASH20B_TR_1

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$0E),(?AL+$0E),?COMM,?SPCE,(?AL+$12),(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$12),(?AL+$07),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_NRMVASH20B_TR_2

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$05),(?AL+$14),(?AL+$0D),(?AL+$06),(?AL+$14),(?AL+$12),?SPCE,(?AL+$07),(?AL+$00),(?AL+$12),?HURRY
		DB	(?AL+$02),(?AL+$0E),(?AL+$0C),(?AL+$0F),(?AL+$0B),(?AL+$04),(?AL+$13),(?AL+$04),(?AL+$0B),(?AL+$18),?WAIT
		DB	(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$0E),(?AL+$0B),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_NRMVASH20_FUNERAL
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_NRMVASH20&$FFFF)
		DB	:MAP_NRMVASH20

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMVASH20&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMVASH20&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$0B
		DW	$D089
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_giahut

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_NRMVASH20_PARTY
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_NRMVASH20&$FFFF)
		DB	:MAP_NRMVASH20

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMVASH20&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMVASH20&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$0B
		DW	$D089
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_oroisland

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_NRMVASH20
	DB	CMD_IF
		DB	EXPR_AND
		DB	EXPR_EQU
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$008F)&$FFFF
		DB	EXPR_BYTECONST,$03
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$18
		DB	:?_NRMVASH20_FULL_OF_FUNGUS
		DW	(?_NRMVASH20_FULL_OF_FUNGUS&$FFFF)

	DB	CMD_SWITCH
		DB	EXPR_GAMECOUNT
		DB	:?_NRMVASH20_FUNERAL
		DW	$0019
		DW	(?_NRMVASH20_FUNERAL&$FFFF)
		DB	:?_NRMVASH20_PARTY
		DW	$001A
		DW	(?_NRMVASH20_PARTY&$FFFF)
		DB	$FF

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_NRMVASH20&$FFFF)
		DB	:MAP_NRMVASH20

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMVASH20&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMVASH20&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$0B
		DW	$D089
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$06
		DB	$03
		DW	$D02A
		DB	$00
		DB	:?_NRMVASH20_BOY
		DW	(?_NRMVASH20_BOY&$FFFF)
		DB	:?_NRMVASH20_BOY_TALKER
		DW	(?_NRMVASH20_BOY_TALKER&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_BOY
		DW	(BIT_BOY&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_naroom

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_NRMVASH20_FUNGUS_DIED
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_NRMVASH20&$FFFF)
		DB	:MAP_NRMVASH20

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMVASH20&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMVASH20&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$05
		DB	$08
		DW	$D065
		DB	$00
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$06
		DB	$03
		DW	$D02A
		DB	$00
		DB	:?_NRMVASH20_BOY
		DW	(?_NRMVASH20_BOY&$FFFF)
		DB	:?_NRMVASH20_BOY_TALKER
		DW	(?_NRMVASH20_BOY_TALKER&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_BOY
		DW	(BIT_BOY&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_HEROFROMDOOR

	DB	CMD_SONGSTART
		DB	SONGID_naroom

	DB	CMD_SCENEREADY

	DB	CMD_SETTEXT
		DB	:?_YAKI_KEEPS_GOOD_STUFF
		DW	(?_YAKI_KEEPS_GOOD_STUFF&$FFFF)

	DB	CMD_END

;********************************
?_NRMVASH20_BOY
	DB	CMD_THISACTORSETANIM
		DB	:?_BOY_STAND_DOWN_ANIM
		DW	(?_BOY_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_END

;********************************
?_NRMVASH20_BOY_TALKER
	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$03
		DB	:_QUAKE
		DW	(_QUAKE&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_NRMVASH20_TXT1
		DW	(?_NRMVASH20_TXT1&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_BOY
		DW	(?_FACE_BOY&$FFFF)

	DB	CMD_END

;********************************
_QUAKE
	DB	CMD_SETTEXT
		DB	:?_NRMVASH20_TXT2
		DW	(?_NRMVASH20_TXT2&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_BOY
		DW	(?_FACE_BOY&$FFFF)

;********************************
?_NRMVASH20_TXT2

	DB	CMD_TEXTICON
		DW	ICON_BOY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$04),(?AL+$0D),(?AL+$08),(?AL+$0D),(?AL+$06),?QUST,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_NRMVASH20_TXT1

	DB	CMD_TEXTICON
		DW	ICON_BOY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$02),(?AL+$0E),(?AL+$0B),(?AL+$0B),(?AL+$04),(?AL+$02),(?AL+$13),?SPCE,(?AL+$12),(?AL+$0F),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$18),?WAIT
		DB	(?AL+$0F),(?AL+$0B),(?AL+$00),(?AL+$0D),(?AL+$13),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?QUST,?WAIT
		DB	?EOF

	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$008F)&$FFFF
		DB	:_GIVING_BOY_FUNGUS
		DW	$0002
		DW	(_GIVING_BOY_FUNGUS&$FFFF)
		DB	:_THANKYOU
		DW	$0003
		DW	(_THANKYOU&$FFFF)
		DB	:_WOW_FUNGICIDE
		DW	$0004
		DW	(_WOW_FUNGICIDE&$FFFF)
		DB	$FF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
_WOW_FUNGICIDE
	DB	CMD_TEXTICON
		DW	ICON_BOY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$0E),(?AL+$16),?COMM,?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$05),(?AL+$14),(?AL+$0D),(?AL+$06),(?AL+$08),(?AL+$02),(?AL+$08),(?AL+$03),(?AL+$04),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?WAIT
		DB	(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?SPCE,(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_JUMP
		DB	:_END
		DW	(_END&$FFFF)

;********************************
_THANKYOU
	DB	CMD_TEXTICON
		DW	ICON_BOY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AU+$07),(?AU+$00),(?AU+$0D),(?AU+$0A),(?AU+$18),(?AU+$0E),(?AU+$14),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_JUMP
		DB	:_END
		DW	(_END&$FFFF)

;********************************
_GIVING_BOY_FUNGUS
	DB	CMD_TEXTICON
		DW	ICON_BOY

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$18),?QUST,?WAIT
		DB	?EOF

	DB	CMD_IF
		DB	EXPR_LESS
		DB	EXPR_XRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$0026)&$FFFF
		DB	EXPR_BYTECONST,$01
		DB	:_NOPE_SORRY
		DW	(_NOPE_SORRY&$FFFF)

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$05),(?AL+$14),(?AL+$0D),(?AL+$06),(?AL+$14),(?AL+$12),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$09),(?AL+$00),(?AL+$11),?PERD,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?HURRY
		DB	(?AL+$08),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_BOY

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$14),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?SPCE,(?AU+$06),(?AL+$08),(?AL+$15),(?AL+$04),?SPCE,(?AL+$05),(?AL+$14),(?AL+$0D),(?AL+$06),(?AL+$14),(?AL+$12),?HURRY
		DB	?SPCE,(?AU+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$06),(?AL+$08),(?AL+$15),(?AL+$04)
		DB	?EOF

	DB	CMD_TEXTMENU
		DB	$02
		DB	:_GIVE_FUNGUS
		DW	(_GIVE_FUNGUS&$FFFF)
		DB	:_DONT_GIVE_FUNGUS
		DW	(_DONT_GIVE_FUNGUS&$FFFF)

;********************************
_GIVE_FUNGUS
	DB	CMD_INVENTORYTAKE
		DB	INV_TYPE_ITEM
		DB	INV_FUNGUS
		DB	$01

	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$13
		DB	:_DONT_ADVANCE_QUEST_BIT
		DW	(_DONT_ADVANCE_QUEST_BIT&$FFFF)

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008F)
		DB	$03

;********************************
_DONT_ADVANCE_QUEST_BIT
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$06),(?AL+$0E),?PERD,?WAIT
		DB	?EOF

	DB	CMD_JUMP
		DB	:_THANKYOU
		DW	(_THANKYOU&$FFFF)

;********************************
_DONT_GIVE_FUNGUS
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$0E),(?AL+$11),(?AL+$11),(?AL+$18),?COMM,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$08),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_BOY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_JUMP
		DB	:_END
		DW	(_END&$FFFF)

;********************************
_NOPE_SORRY
	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$0E),(?AL+$0F),(?AL+$04),?COMM,?SPCE,(?AL+$12),(?AL+$0E),(?AL+$11),(?AL+$11),(?AL+$18),?PERD,?WAIT
		DB	?EOF

;********************************
_END
	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_YAKI_KEEPS_GOOD_STUFF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?HURRY
		DB	(?AL+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$05),(?AL+$14),(?AL+$0B),?WAIT
		DB	(?AL+$05),(?AL+$14),(?AL+$0D),(?AL+$06),(?AL+$08),(?AL+$02),(?AL+$08),(?AL+$03),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_END

;********************************
?_NRMVASH20_FULL_OF_FUNGUS
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_NRMVASH20B&$FFFF)
		DB	:MAP_NRMVASH20B

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMVASH20&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMVASH20B&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_SETITEMSCRIPT
		DB	:_ITEM_SCRIPT
		DW	(_ITEM_SCRIPT&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$0B
		DW	$D089
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$06
		DB	$04
		DW	$D036
		DB	$00
		DB	:_FUNGUS_BOY
		DW	(_FUNGUS_BOY&$FFFF)
		DB	:_FUNGUS_BOY_TALKER
		DW	(_FUNGUS_BOY_TALKER&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$05
		DB	$06
		DW	$D04D
		DB	$30
		DB	:_SMOKE
		DW	(_SMOKE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$03
		DB	$07
		DW	$D057
		DB	$30
		DB	:_SMOKE
		DW	(_SMOKE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$07
		DB	$09
		DW	$D073
		DB	$30
		DB	:_SMOKE
		DW	(_SMOKE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$08
		DB	$04
		DW	$D038
		DB	$30
		DB	:_SMOKE
		DW	(_SMOKE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$06
		DB	$0A
		DW	$D07E
		DB	$30
		DB	:_SMOKE
		DW	(_SMOKE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$04
		DB	$06
		DW	$D04C
		DB	$30
		DB	:_SMOKE
		DW	(_SMOKE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$02
		DB	$0A
		DW	$D07A
		DB	$30
		DB	:_SMOKE
		DW	(_SMOKE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D041
		DB	$30
		DB	:_SMOKE
		DW	(_SMOKE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR09-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$01
		DB	$08
		DW	$D061
		DB	$30
		DB	:_SMOKE
		DW	(_SMOKE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR0A-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$07
		DB	$09
		DW	$D073
		DB	$30
		DB	:_SMOKE
		DW	(_SMOKE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR0B-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$04
		DB	$06
		DW	$D04C
		DB	$30
		DB	:_SMOKE
		DW	(_SMOKE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR0C-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$04
		DB	$0B
		DW	$D088
		DB	$30
		DB	:_SMOKE
		DW	(_SMOKE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_BOY
		DW	(BIT_BOY&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$18
		DB	:BIT_AGOVESMOKE
		DW	(BIT_AGOVESMOKE&$FFFF)
		DW	$8300
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_naroom

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
_FUNGUS_BOY
	DB	CMD_THISACTORSETANIM
		DB	:?_BOY_STAND_DOWN_ANIM
		DW	(?_BOY_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_END

;********************************
_FUNGUS_BOY_TALKER
	DB	CMD_SETTEXT
		DB	:_WHAT_HAPPENED
		DW	(_WHAT_HAPPENED&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_BOY
		DW	(?_FACE_BOY&$FFFF)

;********************************
_ITEM_SCRIPT
	DB	CMD_IF
		DB	EXPR_AND
		DB	EXPR_EQU
		DB	EXPR_XRAMBYTE
		DW	(SCRIPT_USED_ID+$0000)&$FFFF
		DB	EXPR_WORDCONST
		DW	INV_FUNGICIDE
		DB	EXPR_EQU
		DB	EXPR_XRAMBYTE
		DW	(SCRIPT_COLLISION_CODE+$0000)&$FFFF
		DB	EXPR_WORDCONST
		DW	COLLCODE_ITEM01
		DB	:_USING_THE_FUNGUCIDE
		DW	(_USING_THE_FUNGUCIDE&$FFFF)

	DB	CMD_END

;********************************
_SMOKE
	DB	CMD_THISACTORSETANIM
		DB	:?_BIG_SMOKE_ANIM
		DW	(?_BIG_SMOKE_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$40

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
_USING_THE_FUNGUCIDE
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008F)
		DB	$04

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:_HOPE_THIS_WORKS
		DW	(_HOPE_THIS_WORKS&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_PALCLEARBASE
		DB	$06
		DW	$0000

	DB	CMD_PALFADE
		DB	$20
		DB	$06

	DB	CMD_DELAY
		DB	$32

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_DELAY
		DB	$0A

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_DELAY
		DB	$0A

	DB	CMD_THATACTORSTART
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_DELAY
		DB	$14

	DB	CMD_THATACTORSTART
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$14

	DB	CMD_THATACTORSTART
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_DELAY
		DB	$14

	DB	CMD_THATACTORSTART
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_DELAY
		DB	$14

	DB	CMD_THATACTORSTART
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$14

	DB	CMD_THATACTORSTART
		DB	(((ACTOR08-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_DELAY
		DB	$14

	DB	CMD_THATACTORSTART
		DB	(((ACTOR09-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_DELAY
		DB	$14

	DB	CMD_THATACTORSTART
		DB	(((ACTOR0A-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_DELAY
		DB	$14

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR0B-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_DELAY
		DB	$14

	DB	CMD_THATACTORSTART
		DB	(((ACTOR0C-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$32

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$0000

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_HEROTODOOR
		DB	$00
		DB	$00
		DB	$00
		DB	$00

	DB	CMD_JUMP
		DB	:?_NRMVASH20_FUNGUS_DIED
		DW	(?_NRMVASH20_FUNGUS_DIED&$FFFF)

;********************************
_WHAT_HAPPENED

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$07),(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$03),?HURRY
		DB	(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_BOY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$05),(?AL+$14),(?AL+$0D),(?AL+$06),(?AL+$14),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$06),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$04),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$11),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AL+$06),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$03),?PERD,?SPCE,(?AU+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?WAIT
		DB	(?AL+$07),(?AL+$04),(?AL+$0B),(?AL+$0F),?SPCE,(?AL+$0C),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$07),?COMM,?SPCE,(?AL+$12),(?AL+$14),(?AL+$11),(?AL+$04),?PERD,?SPCE,(?AU+$00),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$0D),(?AL+$04),(?AL+$04),(?AL+$03),(?AL+$12),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$0B),(?AL+$08),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?HURRY
		DB	(?AL+$05),(?AL+$14),(?AL+$0D),(?AL+$06),(?AL+$08),(?AL+$02),(?AL+$08),(?AL+$03),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
_HOPE_THIS_WORKS

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$12),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$0F),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$12),(?AL+$13),(?AL+$14),(?AL+$05),(?AL+$05),?WAIT
		DB	(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$0A),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_NRMVASH05
	GLOBAL	XRAM_TREASURE
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?_HERO_STAND_RIGHT_ANIM
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	?_END
	GLOBAL	MAP_NRMVASH20
	GLOBAL	HS_NRMVASH20
	GLOBAL	TR_NRMVASH20
	GLOBAL	PAL_HERO
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR00
	GLOBAL	?TALKER_AI
	GLOBAL	BIT_BOY
	GLOBAL	?ANIM_AI
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_BOY_STAND_DOWN_ANIM
	GLOBAL	?_FACE_BOY
	GLOBAL	XRAM_INVENTORY_ITEMS
	GLOBAL	MAP_NRMVASH20B
	GLOBAL	TR_NRMVASH20B
	GLOBAL	ACTOR01
	GLOBAL	ACTOR02
	GLOBAL	ACTOR03
	GLOBAL	ACTOR04
	GLOBAL	ACTOR05
	GLOBAL	ACTOR06
	GLOBAL	ACTOR07
	GLOBAL	ACTOR08
	GLOBAL	ACTOR09
	GLOBAL	ACTOR0A
	GLOBAL	ACTOR0B
	GLOBAL	ACTOR0C
	GLOBAL	BIT_AGOVESMOKE
	GLOBAL	SCRIPT_USED_ID
	GLOBAL	SCRIPT_COLLISION_CODE
	GLOBAL	?_BIG_SMOKE_ANIM
	GLOBAL	?_HERO_STAND_LEFT_ANIM

;********************************
	END
;********************************