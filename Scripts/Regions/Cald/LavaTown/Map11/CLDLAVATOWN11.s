;Size:1382
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\CALD\LAVATOWN\MAP11\CLDLAVATOWN11.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_CLDLAVATOWN11_DR_1
	DB	CMD_HEROTODOOR
		DB	$04
		DB	$06
		DB	$11
		DB	$0E

	DB	CMD_JUMP
		DB	:?_CLDLAVATOWN02
		DW	(?_CLDLAVATOWN02&$FFFF)

;********************************
?_CLDLAVATOWN11_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$0008)
		DB	$02
		DB	INV_TYPE_ITEM
		DB	INV_BALOO_ROOT
		DW	$D04F

;********************************
?_CLDLAVATOWN11_TR_2

	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AU+$01),(?AU+$10),?SPCE,(?AU+$02),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$01),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?APST,(?AL+$03),?SPCE,(?AL+$05),(?AL+$08),(?AL+$06),(?AL+$14),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$18),(?AL+$04),(?AL+$00),(?AL+$07),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN11_TR_3

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$02),(?AL+$13),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?EXCL,?WAIT
		DB	(?AU+$07),(?AL+$0C),(?AL+$0C),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$0D),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN11_TR_4

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$18),?SPCE,(?AL+$03),(?AL+$0E),?SPCE,(?AU+$08),?SPCE,(?AL+$05),(?AL+$04),(?AL+$04),(?AL+$0B),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$14),(?AL+$11),(?AL+$06),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$0C),(?AL+$04),(?AL+$12),(?AL+$12),?SPCE,(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?HURRY
		DB	(?AL+$0F),(?AL+$04),(?AL+$0E),(?AL+$0F),(?AL+$0B),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AL+$12),(?AL+$13),(?AL+$14),(?AL+$05),(?AL+$05),?QUST,?WAIT
		DB	(?AU+$0E),(?AL+$07),?SPCE,(?AL+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?COMM,?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?APST,(?AL+$13),?HURRY
		DB	(?AL+$01),(?AL+$04),?SPCE,(?AL+$07),(?AL+$04),(?AL+$0B),(?AL+$0F),(?AL+$04),(?AL+$03),?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$06),(?AL+$14),(?AL+$04),(?AL+$12),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN11_TR_5

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$12),(?AL+$04),?HURRY
		DB	(?AL+$03),(?AL+$11),(?AL+$00),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$12),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$0C),(?AL+$04),(?AL+$0B),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),?SPCE,(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$0B),(?AL+$04),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?WAIT
		DB	(?AL+$00),(?AL+$0B),(?AL+$0E),(?AL+$0D),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN11_TR_6

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AL+$11),(?AL+$00),(?AL+$16),(?AL+$0B),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$14),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$12),?WAIT
		DB	(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$04),(?AL+$12),(?AL+$0D),?APST,(?AL+$13),?HURRY
		DB	(?AL+$12),(?AL+$04),(?AL+$04),(?AL+$0C),?SPCE,(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$04),(?AL+$00),(?AL+$0B),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$11),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$16),?PERD,?WAIT
		DB	(?AU+$16),(?AL+$07),(?AL+$04),(?AL+$16),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN11_TR_7

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$01),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$13),?WAIT
		DB	(?AL+$02),(?AL+$07),(?AL+$00),(?AL+$08),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN11_TR_8

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0F),(?AL+$08),(?AL+$06),(?AL+$12),?COMM,?SPCE,(?AL+$06),(?AL+$0E),(?AL+$00),(?AL+$13),(?AL+$12),?COMM,?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$02),(?AL+$07),(?AL+$08),(?AL+$02),(?AL+$0A),(?AL+$04),(?AL+$0D),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$0E),(?AL+$0D),?SPCE,(?AL+$05),(?AL+$08),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_CLDLAVATOWN11_SAVER_TXT

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

;********************************
?_CLDLAVATOWN11_JUMPER
	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$11),(?AL+$04),(?AL+$02),(?AL+$0E),(?AL+$11),(?AL+$03),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$09),(?AL+$0E),(?AL+$14),(?AL+$11),(?AL+$0D),(?AL+$04),(?AL+$18),?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$11),(?AL+$04),(?AL+$02),(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),?WAIT
		DB	(?AL+$0B),(?AL+$0E),(?AL+$12),(?AL+$13),?SPCE,(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?SPCE,(?AU+$18),(?AL+$04),(?AL+$12),?HURRY
		DB	?SPCE,(?AU+$0D),(?AL+$0E)
		DB	?EOF

	DB	CMD_TEXTMENU
		DB	$02
		DB	:_CALD_SAVE_YES
		DW	(_CALD_SAVE_YES&$FFFF)
		DB	:_CALD_SAVE_NO
		DW	(_CALD_SAVE_NO&$FFFF)

;********************************
_CALD_SAVE_YES
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$0F),(?AL+$0B),(?AL+$04),(?AL+$00),(?AL+$12),(?AL+$00),(?AL+$0D),(?AL+$13),?HURRY
		DB	(?AL+$03),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0C),(?AL+$12),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETLOADSCRIPT
		DB	:?_LOAD_CLDLAVATOWN11
		DW	(?_LOAD_CLDLAVATOWN11&$FFFF)

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_SAVEGAME
		DB	$01

	DB	CMD_DELAY
		DB	$40

	DB	CMD_JUMP
		DB	:?_CLDLAVATOWN11_TONY_WAKING
		DW	(?_CLDLAVATOWN11_TONY_WAKING&$FFFF)

;********************************
_CALD_SAVE_NO
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$00),?SPCE,(?AL+$06),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$03),(?AL+$00),(?AL+$18),?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_CLDLVTN11_SPECIAL_TXT

	DB	CMD_TEXTICON
		DW	ICON_OLDMAN

	DB	CMD_TEXTWRITE
		DB	(?AU+$05),(?AL+$14),(?AL+$0D),(?AL+$0D),(?AL+$18),?COMM,?SPCE,(?AU+$08),?SPCE,(?AL+$03),(?AL+$08),(?AL+$03),(?AL+$0D),?APST,(?AL+$13),?WAIT
		DB	(?AL+$12),(?AL+$04),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$0C),(?AL+$04),?WAIT
		DB	(?AL+$08),(?AL+$0D),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_JUMP
		DB	:?_CLDLAVATOWN11_JUMPER
		DW	(?_CLDLAVATOWN11_JUMPER&$FFFF)

;********************************
?_LOAD_CLDLAVATOWN11
	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$10
		DW	$D0C5
		DB	$00
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_HEROTODOOR
		DB	$05
		DB	$05
		DB	$10
		DB	$10

;********************************
?_CLDLAVATOWN11
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$01

	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$0F
		DB	:?_CLDLAVATOWN11_WITH_YAKI
		DW	(?_CLDLAVATOWN11_WITH_YAKI&$FFFF)

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATOWN11&$FFFF)
		DB	:MAP_CLDLAVATOWN11

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATOWN11&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_CLDLAVATOWN11&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D041
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$04
		DB	$0D
		DW	$D0A0
		DB	$00
		DB	:?_OLDMAN02_STAND_DOWN_ANIM
		DW	(?_OLDMAN02_STAND_DOWN_ANIM&$FFFF)
		DB	:?_CLDLVTN11_SAVER
		DW	(?_CLDLVTN11_SAVER&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$20
		DB	:BIT_OLDMAN02
		DW	(BIT_OLDMAN02&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_caldtown

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_CLDLAVATOWN11_TONY_WAKING
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$01

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATOWN11&$FFFF)
		DB	:MAP_CLDLAVATOWN11

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATOWN11&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_CLDLAVATOWN11&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_PALCLEARANIM
		DB	$0F
		DW	$7FFF

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$03
		DB	$04
		DW	$D033
		DB	$00
		DB	:_TONY_WAKING
		DW	(_TONY_WAKING&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$04
		DB	$0D
		DW	$D0A0
		DB	$00
		DB	:?_OLDMAN02_STAND_DOWN_ANIM
		DW	(?_OLDMAN02_STAND_DOWN_ANIM&$FFFF)
		DB	:?_CLDLVTN11_SAVER
		DW	(?_CLDLVTN11_SAVER&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$06
		DB	$03
		DW	$D02A
		DB	$20
		DB	:?_YAKI_STAND_DL_ANIM
		DW	(?_YAKI_STAND_DL_ANIM&$FFFF)
		DB	:?_CLDLAVATOWN11_YAKI_SPEAKS
		DW	(?_CLDLAVATOWN11_YAKI_SPEAKS&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$20
		DB	:BIT_OLDMAN02
		DW	(BIT_OLDMAN02&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_YAKI
		DW	(BIT_YAKI&$FFFF)
		DW	$8200
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_caldtown

	DB	CMD_SCENEREADY

	DB	CMD_IF
		DB	EXPR_NOTEQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$0F
		DB	:_NO_YAKI
		DW	(_NO_YAKI&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSETLOC
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	$F8
		DB	$FD
		DB	$04
		DB	$05
		DW	$D040

;********************************
_NO_YAKI
	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_END

;********************************
_TONY_WAKING
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_INBED_LEFT_ANIM
		DW	(?_HERO_INBED_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_HERO_INBED_RIGHT_ANIM
		DW	(?_HERO_INBED_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_OUTTABED_RIGHT
		DW	(?_HERO_OUTTABED_RIGHT&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_END

;********************************
?_CLDLVTN11_SAVER
	DB	CMD_THISACTORSETANIM
		DB	:?_OLDMAN02_STAND_DOWN_ANIM
		DW	(?_OLDMAN02_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_CLDLAVATOWN11_SAVER_TXT
		DW	(?_CLDLAVATOWN11_SAVER_TXT&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_OLDMAN02
		DW	(?_FACE_OLDMAN02&$FFFF)

;********************************
?_CLDLAVATOWN11_FALL_DOWN
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATOWN11&$FFFF)
		DB	:MAP_CLDLAVATOWN11

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATOWN11&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_CLDLAVATOWN11&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$05
		DB	$00
		DW	$D005
		DB	$00
		DB	:?_CLDLAVATOWN11_TONY_FALLING
		DW	(?_CLDLAVATOWN11_TONY_FALLING&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$04
		DB	$0D
		DW	$D0A0
		DB	$00
		DB	:?_OLDMAN02_STAND_DOWN_ANIM
		DW	(?_OLDMAN02_STAND_DOWN_ANIM&$FFFF)
		DB	:?_CLDLVTN11_SPECIAL
		DW	(?_CLDLVTN11_SPECIAL&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_OLDMAN02
		DW	(BIT_OLDMAN02&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_caldtown

	DB	CMD_SCENEREADY

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_END

;********************************
?_CLDLAVATOWN11_TONY_FALLING
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_FALLING_GOOFILY_3
		DW	(?_HERO_FALLING_GOOFILY_3&$FFFF)
		DB	$18
		DB	$00

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_HERO_FALLING_GOOFILY_3
		DW	(?_HERO_FALLING_GOOFILY_3&$FFFF)
		DB	$18
		DB	$00
		DB	$03
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_SLOSHED_LEFT
		DW	(?_HERO_SLOSHED_LEFT&$FFFF)
		DB	$48
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00


	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$14),(?AL+$02),(?AL+$07),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_END

;********************************
?_CLDLVTN11_SPECIAL
	DB	CMD_SETTEXT
		DB	:?_CLDLVTN11_SPECIAL_TXT
		DW	(?_CLDLVTN11_SPECIAL_TXT&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_OLDMAN02
		DW	(?_FACE_OLDMAN02&$FFFF)

;********************************
?_CLDLAVATOWN11_WITH_YAKI
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_CLDLAVATOWN11&$FFFF)
		DB	:MAP_CLDLAVATOWN11

	DB	CMD_LOADHOTSPOTS
		DW	(HS_CLDLAVATOWN11&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_CLDLAVATOWN11&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D041
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$04
		DB	$0D
		DW	$D0A0
		DB	$00
		DB	:?_OLDMAN02_STAND_DOWN_ANIM
		DW	(?_OLDMAN02_STAND_DOWN_ANIM&$FFFF)
		DB	:?_CLDLVTN11_SAVER
		DW	(?_CLDLVTN11_SAVER&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$06
		DB	$03
		DW	$D02A
		DB	$20
		DB	:?_YAKI_STAND_DL_ANIM
		DW	(?_YAKI_STAND_DL_ANIM&$FFFF)
		DB	:?_CLDLAVATOWN11_YAKI_SPEAKS
		DW	(?_CLDLAVATOWN11_YAKI_SPEAKS&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$20
		DB	:BIT_OLDMAN02
		DW	(BIT_OLDMAN02&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_YAKI
		DW	(BIT_YAKI&$FFFF)
		DW	$8200
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_caldtown

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_CLDLAVATOWN11_YAKI_SPEAKS
	DB	CMD_SETTEXT
		DB	:_IN_FROM_NAROOM
		DW	(_IN_FROM_NAROOM&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_YAKI
		DW	(?_FACE_YAKI&$FFFF)

;********************************
_IN_FROM_NAROOM

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$00),(?AL+$0A),(?AL+$08),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$07),(?AU+$07),?SPCE,(?AU+$18),(?AU+$04),(?AU+$00),(?AU+$07),(?AU+$07),?EXCL,?HURRY
		DB	(?AU+$07),(?AL+$04),(?AL+$18),?SPCE,(?AU+$01),(?AL+$11),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?COMM,?WAIT
		DB	(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),(?AL+$02),(?AL+$07),(?AL+$00),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$08),(?AL+$0D),?APST,?HURRY
		DB	(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0B),(?AL+$03),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$00),(?AL+$12),(?AL+$0A),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$12),(?AL+$00),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$0C),(?AL+$08),(?AL+$12),(?AL+$12),(?AL+$08),(?AL+$0E),(?AL+$0D),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$11),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?PERD,?SPCE,(?AU+$03),(?AU+$08),(?AU+$06),?SPCE,(?AU+$08),(?AU+$13),?HURRY
		DB	(?AU+$16),(?AU+$0E),(?AU+$0E),?EXCL,?WAIT
		DB	(?AU+$12),(?AL+$00),(?AL+$0B),(?AL+$00),(?AL+$05),(?AL+$18),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$01),(?AL+$04),?HURRY
		DB	(?AL+$11),(?AL+$14),(?AL+$0D),(?AL+$0D),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$06),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),(?AL+$12),?SPCE,(?AL+$13),(?AL+$08),(?AL+$0B),?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?COMM,?SPCE,(?AL+$12),(?AL+$0E),?SPCE,(?AL+$06),(?AL+$0E),?WAIT
		DB	(?AL+$04),(?AL+$00),(?AL+$12),(?AL+$18),?SPCE,(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),?SPCE,(?AL+$13),(?AL+$08),(?AL+$0B),?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$11),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$14),(?AL+$07),(?AL+$07),?COMM,?SPCE,(?AL+$12),(?AL+$14),(?AL+$11),(?AL+$04),?COMM,?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$00),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_CLDLAVATOWN02
	GLOBAL	XRAM_TREASURE
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	MAP_CLDLAVATOWN11
	GLOBAL	HS_CLDLAVATOWN11
	GLOBAL	TR_CLDLAVATOWN11
	GLOBAL	PAL_HERO
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	ACTOR00
	GLOBAL	?TALKER_AI
	GLOBAL	?_OLDMAN02_STAND_DOWN_ANIM
	GLOBAL	BIT_OLDMAN02
	GLOBAL	?ANIM_AI
	GLOBAL	ACTOR01
	GLOBAL	?_YAKI_STAND_DL_ANIM
	GLOBAL	BIT_YAKI
	GLOBAL	?_HERO_STAND_RIGHT_ANIM
	GLOBAL	?_HERO_INBED_LEFT_ANIM
	GLOBAL	?_HERO_INBED_RIGHT_ANIM
	GLOBAL	?_HERO_OUTTABED_RIGHT
	GLOBAL	?_FACE_OLDMAN02
	GLOBAL	?_HERO_FALLING_GOOFILY_3
	GLOBAL	?_HERO_SLOSHED_LEFT
	GLOBAL	?_FACE_YAKI

;********************************
	END
;********************************