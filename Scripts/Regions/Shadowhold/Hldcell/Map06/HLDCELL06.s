;Size:1934
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\SHADOWHOLD\HLDCELL\MAP06\HLDCELL06.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HLDCELL06_DR_1
	DB	CMD_HEROTODOOR
		DB	$1A
		DB	$00
		DB	$0F
		DB	$0F

	DB	CMD_JUMP
		DB	:?_HLDCELL05
		DW	(?_HLDCELL05&$FFFF)

;********************************
?_HLDCELL06_DR_2
	DB	CMD_HEROTODOOR
		DB	$1A
		DB	$1A
		DB	$0F
		DB	$06

	DB	CMD_JUMP
		DB	:?_HLDEXTERIOR
		DW	(?_HLDEXTERIOR&$FFFF)

;********************************
?_HLDEXTERIOR_DR_1
	DB	CMD_HEROTODOOR
		DB	$1A
		DB	$00
		DB	$06
		DB	$0D

	DB	CMD_JUMP
		DB	:?_HLDCELL06
		DW	(?_HLDCELL06&$FFFF)

;********************************
?_HLDCELL06
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HLDCELL06&$FFFF)
		DB	:MAP_HLDCELL06

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HLDCELL06&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_SETENCOUNTER
		DB	:?_HLDMAZE_RNDBAT
		DW	(?_HLDMAZE_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_HLDCELL06
		DW	(?_HLDCELL06&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$12
		DB	$12
		DW	$D1F8
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_SONGSTART
		DB	SONGID_shadowhold

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_HLDEXTERIOR
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HLDEXTERIOR&$FFFF)
		DB	:MAP_HLDEXTERIOR

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HLDEXTERIOR&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$1A
		DB	$06
		DW	$D0CE
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_SONGSTART
		DB	SONGID_shadowhold

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TRIGGER_AI&$FFFF)
		DB	$0D
		DB	$05
		DW	$D0A3
		DB	$00
		DB	:?_KEY_ANIM
		DW	(?_KEY_ANIM&$FFFF)
		DB	:_KEY_TALKER
		DW	(_KEY_TALKER&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$06
		DB	:BIT_KEY
		DW	(BIT_KEY&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$1E
		DB	:BIT_CORE05
		DW	(BIT_CORE05&$FFFF)
		DW	$8060
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$28
		DB	:BIT_CORE06
		DW	(BIT_CORE06&$FFFF)
		DW	$8240
		DB	$00

	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0006)&$FFFF
		DB	$40
		DB	:_SKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

;********************************
_SKIP
	DB	CMD_SETCAMERA
		DB	$1A
		DB	$00

	DB	CMD_SONGSTART
		DB	SONGID_destruction

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
_KEY_TALKER
	DB	CMD_SETTEXT
		DB	:_TXT_KEY
		DW	(_TXT_KEY&$FFFF)

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
_TXT_KEY
	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0006)
		DB	$40

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_ITEM
		DB	INV_SHADOW_KEY
		DB	$01


	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$00),?HURRY
		DB	?EOF

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$07),(?AL+$00),(?AL+$03),(?AL+$0E),(?AL+$16),?SPCE,(?AU+$0A),(?AL+$04),(?AL+$18),?WAIT
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
?_HLDEXTERIOR_CHOICE
	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$10
		DB	$06
		DW	$D0C4
		DB	$06
		DB	:?_CORE05_STAND_LEFT_ANIM
		DW	(?_CORE05_STAND_LEFT_ANIM&$FFFF)
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$10
		DB	$05
		DW	$D0A6
		DB	$24
		DB	:?_CORE06_STAND_LEFT_ANIM
		DW	(?_CORE06_STAND_LEFT_ANIM&$FFFF)
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:_TXT_PRETTY_HIGH
		DW	(_TXT_PRETTY_HIGH&$FFFF)

	DB	CMD_END

;********************************
_HERO_BLOW_HORN
	DB	CMD_THISACTORLOCRELATIVE
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTOP
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_BLOW_LEFT_ANIM
		DW	(?_HERO_BLOW_LEFT_ANIM&$FFFF)

	DB	CMD_SONGSTART
		DB	SONGID_levelup1

	DB	CMD_DELAY
		DB	$18

	DB	CMD_SONGSTART
		DB	SONGID_getitem

	DB	CMD_DELAY
		DB	$2C

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$05
		DB	$06
		DW	$D0B9
		DB	$00
		DB	:_TONY_AFTER_HORN
		DW	(_TONY_AFTER_HORN&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_END

;********************************
_TONY_CHICKEN
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_RUN_RIGHT_ANIM
		DW	(?_HERO_RUN_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_THISACTORSETAI
		DW	(?HERO_AI&$FFFF)

	DB	CMD_JUMP
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

;********************************
_TONY_TRAPPED
	DB	CMD_SONGSTART
		DB	SONGID_battle

	DB	CMD_SETTEXT
		DB	:_TXT_AIEEGH
		DW	(_TXT_AIEEGH&$FFFF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_HAPPYJUMP_RIGHT
		DW	(?_HERO_HAPPYJUMP_RIGHT&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SYNC
		DB	$01
		DB	$02

	DB	CMD_CAMERASEEK
		DB	$10
		DB	$05
		DB	$04

	DB	CMD_SETTEXT
		DB	:_TXT_BLOOORNGH
		DW	(_TXT_BLOOORNGH&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:_CORE05_CHASE
		DW	(_CORE05_CHASE&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:_CORE06_CHASE
		DW	(_CORE06_CHASE&$FFFF)

	DB	CMD_DELAY
		DB	$40

	DB	CMD_SYNC
		DB	$02
		DB	$04

	DB	CMD_CAMERASEEK
		DB	$06
		DB	$05
		DB	$02

	DB	CMD_SETTEXT
		DB	:_TXT_THROW_ME
		DW	(_TXT_THROW_ME&$FFFF)

	DB	CMD_WAITANYEVENTTEXT

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_RUN_LEFT_ANIM
		DW	(?_HERO_RUN_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:_TXT_DONT_FAIL_ME
		DW	(_TXT_DONT_FAIL_ME&$FFFF)

	DB	CMD_WAITANYEVENTTEXT

	DB	CMD_THATACTORINIT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$05
		DB	$06
		DW	$D0B9
		DB	$4C
		DB	:_HERO_BLOW_HORN
		DW	(_HERO_BLOW_HORN&$FFFF)
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$0D
		DB	:BIT_TONYBLOW
		DW	(BIT_TONYBLOW&$FFFF)
		DW	$84C0
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_END

;********************************
_TONY_AFTER_HORN
	DB	CMD_THISACTORLOCRELATIVE
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTOP
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_SETMASTER
		DB	:?_HLDCELL06_BLU_IS_THE_MAN
		DW	(?_HLDCELL06_BLU_IS_THE_MAN&$FFFF)

	DB	CMD_DELAY
		DB	$12

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_JUMP_LEFT_ANIM
		DW	(?_HERO_JUMP_LEFT_ANIM&$FFFF)
		DB	$17
		DB	:?_HERO_FALLING_GOOFILY_4
		DW	(?_HERO_FALLING_GOOFILY_4&$FFFF)
		DB	$18
		DB	$00

	DB	CMD_THISACTORSTOP

;********************************
_CORE05_CHASE
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_CORE05_STAND_LEFT_ANIM
		DW	(?_CORE05_STAND_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_CORE05_WALK_LEFT_ANIM
		DW	(?_CORE05_WALK_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_CORE05_STAND_LEFT_ANIM
		DW	(?_CORE05_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$02
		DB	$04

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_CORE05_WALK_LEFT_ANIM
		DW	(?_CORE05_WALK_LEFT_ANIM&$FFFF)
		DB	$48
		DB	:?_CORE05_STAND_LEFT_ANIM
		DW	(?_CORE05_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
_CORE06_CHASE
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_CORE06_STAND_LEFT_ANIM
		DW	(?_CORE06_STAND_LEFT_ANIM&$FFFF)
		DB	$30
		DB	:?_CORE06_WALK_LEFT_ANIM
		DW	(?_CORE06_WALK_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_CORE06_STAND_LEFT_ANIM
		DW	(?_CORE06_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$02
		DB	$04

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_CORE06_WALK_LEFT_ANIM
		DW	(?_CORE06_WALK_LEFT_ANIM&$FFFF)
		DB	$52
		DB	:?_CORE06_STAND_LEFT_ANIM
		DW	(?_CORE06_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
_SCROLL_THE_OCEAN
	DB	CMD_TEXTCLOSE

	DB	CMD_CAMERASEEK
		DB	$05
		DB	$16
		DB	$01

	DB	CMD_SETTEXT
		DB	:_TXT_THE_OCEAN
		DW	(_TXT_THE_OCEAN&$FFFF)

	DB	CMD_DELAY
		DB	$40

	DB	CMD_CAMERASEEK
		DB	$08
		DB	$05
		DB	$01

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_END

;********************************
_TXT_PRETTY_HIGH

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$0E),(?AL+$16),?COMM,?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$0F),(?AL+$11),(?AL+$04),(?AL+$13),(?AL+$13),(?AL+$18),?SPCE,(?AL+$07),(?AL+$08),(?AL+$06),(?AL+$07),?SPCE,(?AL+$14),(?AL+$0F),?COMM,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),?SPCE,(?AL+$08),(?AL+$05),?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$12),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$06),(?AL+$0E),?SPCE,?WAIT
		DB	(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$0E),(?AL+$11),?SPCE,(?AL+$13),(?AL+$11),(?AL+$18),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$0C),(?AL+$18),?SPCE,(?AL+$16),(?AL+$00),(?AL+$18),?WAIT
		DB	(?AL+$03),(?AL+$0E),(?AL+$16),(?AL+$0D),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?SPCE,(?AU+$06),(?AL+$0E),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?HURRY
		DB	?SPCE,(?AU+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04)
		DB	?EOF

	DB	CMD_TEXTMENU
		DB	$02
		DB	:_TXT_NO_WAY
		DW	(_TXT_NO_WAY&$FFFF)
		DB	:_LOOK_HERE
		DW	(_LOOK_HERE&$FFFF)

;********************************
_TXT_NO_WAY
	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:_TONY_CHICKEN
		DW	(_TONY_CHICKEN&$FFFF)

	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$0E),?SPCE,(?AL+$16),(?AL+$00),(?AL+$18),?SPCE,(?AU+$08),?APST,(?AL+$0C),?HURRY
		DB	(?AL+$06),(?AL+$0E),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$09),(?AL+$14),(?AL+$0C),(?AL+$0F),?WAIT
		DB	(?AL+$0E),(?AL+$05),(?AL+$05),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
_LOOK_HERE
	DB	CMD_TEXTCLOSE

	DB	CMD_SETSCROLL
		DB	:_SCROLL_THE_OCEAN
		DW	(_SCROLL_THE_OCEAN&$FFFF)

	DB	CMD_END

;********************************
_TXT_THE_OCEAN

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$00),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$16),(?AL+$00),(?AL+$18),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$16),(?AL+$0D),?PERD,?PERD,?PERD,?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$16),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$05),(?AL+$13),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$0B),(?AL+$00),(?AL+$0D),(?AL+$03),(?AL+$08),(?AL+$0D),(?AL+$06),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$12),(?AL+$16),(?AL+$08),(?AL+$0C),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_DELAY
		DB	$60


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?COMM,?SPCE,(?AU+$08),?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),(?AL+$0C),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$01),(?AL+$04),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$05),(?AL+$08),(?AL+$17),?COMM,?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$06),(?AL+$14),(?AL+$18),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?HURRY
		DB	(?AL+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$15),(?AL+$00),(?AL+$14),(?AL+$0B),(?AL+$13),?WAIT
		DB	(?AL+$12),(?AL+$00),(?AL+$08),(?AL+$03),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$01),(?AL+$0B),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$11),(?AL+$0D),?SPCE,(?AL+$08),(?AL+$05),?SPCE,(?AU+$08),?WAIT
		DB	(?AL+$0D),(?AL+$04),(?AL+$04),(?AL+$03),(?AL+$04),(?AL+$03),?SPCE,(?AL+$07),(?AL+$04),(?AL+$0B),(?AL+$0F),?PERD,?PERD,?PERD,?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$18),(?AL+$01),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?WAIT
		DB	(?AL+$16),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$01),(?AL+$04),?SPCE,(?AL+$00),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$0E),(?AL+$03),?HURRY
		DB	(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:_TONY_TRAPPED
		DW	(_TONY_TRAPPED&$FFFF)

	DB	CMD_END

;********************************
_TXT_AIEEGH

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AU+$08),(?AU+$04),(?AU+$04),(?AU+$06),(?AU+$07),?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SYNC
		DB	$01
		DB	$02

	DB	CMD_END

;********************************
_TXT_BLOOORNGH

	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AU+$0B),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$11),(?AU+$0D),(?AU+$06),(?AU+$07),?EXCL,?WAIT
		DB	(?AU+$06),(?AU+$11),(?AU+$00),(?AU+$0D),(?AU+$0A),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SYNC
		DB	$02
		DB	$04

	DB	CMD_END

;********************************
_TXT_THROW_ME
	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$18),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$13),(?AL+$07),(?AL+$11),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AL+$0C),(?AL+$04),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$02),(?AL+$04),(?AL+$0B),(?AL+$0B),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_END

;********************************
_TXT_DONT_FAIL_ME

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$0F),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$0A),(?AL+$12),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_END

;********************************
?_HLDCELL06_BLU_IS_THE_MAN
	DB	CMD_FADEOUTSONG
		DB	$50

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$03
		DB	$16
		DW	$D297
		DB	$0C
		DB	:?_BLUSWIM_FLOAT_RIGHT_ANIM
		DW	(?_BLUSWIM_FLOAT_RIGHT_ANIM&$FFFF)
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETSCROLL
		DB	:_SCROLL
		DW	(_SCROLL&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$0C
		DB	:BIT_SPLASH
		DW	(BIT_SPLASH&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$14
		DB	:BIT_BLUSWIM
		DW	(BIT_BLUSWIM&$FFFF)
		DW	$80C0
		DB	$00

	DB	CMD_END

;********************************
_BLU
	DB	CMD_THISACTORSETANIM
		DB	:?_BLUSWIM_FLOAT_RIGHT_ANIM
		DW	(?_BLUSWIM_FLOAT_RIGHT_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:_TXT_WONDERFUL_DIVIN
		DW	(_TXT_WONDERFUL_DIVIN&$FFFF)

	DB	CMD_WAITANYEVENTTEXT

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_BLUSWIM_RIGHT_ANIM
		DW	(?_BLUSWIM_RIGHT_ANIM&$FFFF)
		DB	$18
		DB	:?_BLUSWIM_FLOAT_RIGHT_ANIM
		DW	(?_BLUSWIM_FLOAT_RIGHT_ANIM&$FFFF)
		DB	$18
		DB	$00

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:_TONY_TREADS
		DW	(_TONY_TREADS&$FFFF)

	DB	CMD_SETTEXT
		DB	:_TXT_OROTHEAN_BELT
		DW	(_TXT_OROTHEAN_BELT&$FFFF)

	DB	CMD_WAITANYEVENTTEXT

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_BLUSWIM_LEFT_ANIM
		DW	(?_BLUSWIM_LEFT_ANIM&$FFFF)
		DB	$18
		DB	:?_BLUSWIM_FLOAT_RIGHT_ANIM
		DW	(?_BLUSWIM_FLOAT_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_DELAY
		DB	$20

	DB	CMD_SETTEXT
		DB	:_TXT_BACK_TO_OSCENT
		DW	(_TXT_BACK_TO_OSCENT&$FFFF)

	DB	CMD_WAITANYEVENTTEXT

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:_TONY_DIVES
		DW	(_TONY_DIVES&$FFFF)

	DB	CMD_THISACTORSETVRAMBASE
		DB	$00

	DB	CMD_THISACTORSETANIM
		DB	:?_SPLASH_ANIM
		DW	(?_SPLASH_ANIM&$FFFF)

	DB	CMD_END

;********************************
_TONY_FALLS
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_FALLING_GOOFILY_4
		DW	(?_HERO_FALLING_GOOFILY_4&$FFFF)
		DB	$23
		DB	:?_SPLASH_ANIM
		DW	(?_SPLASH_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SFX
		DB	SFXID_SFX_EXPLOSION_SMALL

	DB	CMD_DELAY
		DB	$38

	DB	CMD_THATACTORSETSCRIPT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:_BLU
		DW	(_BLU&$FFFF)

;********************************
_TONY_STRUGGLES1
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_TREAD_LEFT_ANIM
		DW	(?_HERO_TREAD_LEFT_ANIM&$FFFF)
		DB	$04
		DB	:?_HERO_TREAD_RIGHT_ANIM
		DW	(?_HERO_TREAD_RIGHT_ANIM&$FFFF)
		DB	$04
		DB	:?_HERO_TREAD_LEFT_ANIM
		DW	(?_HERO_TREAD_LEFT_ANIM&$FFFF)
		DB	$04
		DB	:?_HERO_TREAD_RIGHT_ANIM
		DW	(?_HERO_TREAD_RIGHT_ANIM&$FFFF)
		DB	$04
		DB	$00

;********************************
_TONY_STRUGGLES2
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_TREAD_DOWN_ANIM
		DW	(?_HERO_TREAD_DOWN_ANIM&$FFFF)
		DB	$04
		DB	:?_HERO_TREAD_LEFT_ANIM
		DW	(?_HERO_TREAD_LEFT_ANIM&$FFFF)
		DB	$04
		DB	:?_HERO_TREAD_RIGHT_ANIM
		DW	(?_HERO_TREAD_RIGHT_ANIM&$FFFF)
		DB	$04
		DB	:?_HERO_TREAD_LEFT_ANIM
		DW	(?_HERO_TREAD_LEFT_ANIM&$FFFF)
		DB	$04
		DB	:?_HERO_TREAD_RIGHT_ANIM
		DW	(?_HERO_TREAD_RIGHT_ANIM&$FFFF)
		DB	$04
		DB	$00

;********************************
_TONY_STRUGGLES3
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_TREAD_UP_ANIM
		DW	(?_HERO_TREAD_UP_ANIM&$FFFF)
		DB	$04
		DB	:?_SPLASH_ANIM
		DW	(?_SPLASH_ANIM&$FFFF)
		DB	$38
		DB	$00

	DB	CMD_JUMPRANDOM
		DB	$03
		DB	:_TONY_STRUGGLES1
		DW	(_TONY_STRUGGLES1&$FFFF)
		DB	:_TONY_STRUGGLES2
		DW	(_TONY_STRUGGLES2&$FFFF)
		DB	:_TONY_STRUGGLES3
		DW	(_TONY_STRUGGLES3&$FFFF)

;********************************
_TONY_TREADS
	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_TREAD_LEFT_ANIM
		DW	(?_HERO_TREAD_LEFT_ANIM&$FFFF)

	DB	CMD_END

;********************************
_TONY_DIVES
	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_TREAD_LEFT_ANIM
		DW	(?_HERO_TREAD_LEFT_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:_TXT_THIS_BELT_WORKS
		DW	(_TXT_THIS_BELT_WORKS&$FFFF)

	DB	CMD_WAITANYEVENTTEXT

	DB	CMD_DELAY
		DB	$10

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_SPLASH_ANIM
		DW	(?_SPLASH_ANIM&$FFFF)
		DB	$70
		DB	$00

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_JUMP
		DB	:?_OVRSURFACE04_INTRO
		DW	(?_OVRSURFACE04_INTRO&$FFFF)

	DB	CMD_END

;********************************
_SCROLL
	DB	CMD_CAMERASEEK
		DB	$07
		DB	$1A
		DB	$03

	DB	CMD_DELAY
		DB	$18

	DB	CMD_SETTEXT
		DB	:_TXT_WHO_SOUNDED
		DW	(_TXT_WHO_SOUNDED&$FFFF)

	DB	CMD_WAITANYEVENTTEXT

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$06
		DB	$0D
		DW	$D18C
		DB	$00
		DB	:_TONY_FALLS
		DW	(_TONY_FALLS&$FFFF)
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_END

;********************************
_TXT_WHO_SOUNDED

	DB	CMD_TEXTICON
		DW	ICON_BLU

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$00),(?AL+$17),?SPCE,(?AL+$0C),(?AL+$04),?HURRY
		DB	(?AL+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),(?AL+$08),(?AL+$12),(?AL+$0A),(?AL+$12),?EXCL,?WAIT
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$18),?APST,(?AL+$12),?SPCE,(?AL+$13),(?AL+$0E),(?AL+$0E),(?AL+$13),(?AL+$08),(?AL+$0D),?APST,?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$12),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$13),(?AL+$18),?SPCE,(?AL+$0E),(?AL+$0D),?WAIT
		DB	(?AL+$0C),(?AL+$04),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$11),(?AL+$0D),?EXCL,?WAIT
		DB	(?AU+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$11),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0F),(?AL+$14),(?AL+$0F),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_END

;********************************
_TXT_WONDERFUL_DIVIN

	DB	CMD_TEXTICON
		DW	ICON_BLU

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$11),(?AL+$11),(?AL+$11),?EXCL,?WAIT
		DB	(?AU+$16),(?AL+$0E),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),(?AL+$05),(?AL+$14),(?AL+$0B),?HURRY
		DB	(?AL+$03),(?AL+$08),(?AL+$15),(?AL+$08),(?AL+$0D),?APST,?COMM,?SPCE,(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$18),?EXCL,?WAIT
		DB	(?AU+$00),?SPCE,(?AL+$0F),(?AL+$04),(?AL+$11),(?AL+$05),(?AL+$04),(?AL+$02),(?AL+$13),?SPCE,(?AL+$13),(?AL+$04),(?AL+$0D),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AU+$02),(?AU+$0A),?EXCL,?WAIT
		DB	(?AU+$07),(?AL+$14),(?AL+$05),(?AL+$05),?PERD,?PERD,?PERD,?WAIT
		DB	(?AL+$01),(?AL+$0B),(?AL+$04),(?AL+$00),(?AL+$07),?EXCL,?WAIT
		DB	(?AU+$08),?SPCE,?DASH,?WAIT
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),?APST,(?AL+$13),?SPCE,?DASH,?WAIT
		DB	(?AL+$12),(?AL+$16),(?AL+$08),(?AL+$0C),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_BLU

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$04),(?AL+$11),?SPCE,(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$13),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$16),(?AL+$04),(?AL+$08),(?AL+$11),(?AL+$03),(?AL+$0E),?COMM,?SPCE,(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_DELAY
		DB	$80


	DB	CMD_TEXTICON
		DW	ICON_BLU

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$07),?COMM,?SPCE,(?AU+$08),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?PERD,?PERD,?PERD,?HURRY
		DB	(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_END

;********************************
_TXT_OROTHEAN_BELT

	DB	CMD_SONGSTART
		DB	SONGID_end

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AU+$0E),(?AL+$11),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$00),(?AL+$0D),?SPCE,(?AU+$01),(?AL+$04),(?AL+$0B),(?AL+$13),?EXCL
		DB	?EOF

	DB	CMD_DELAY
		DB	$B4

	DB	CMD_DELAY
		DB	$B4

	DB	CMD_DELAY
		DB	$B4

	DB	CMD_TEXTCLOSE


	DB	CMD_TEXTICON
		DW	ICON_BLU

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$11),?SPCE,(?AL+$18),(?AL+$00),?SPCE,(?AL+$06),(?AL+$0E),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$04),(?AL+$16),?EXCL,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0C),(?AL+$0E),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AL+$03),(?AL+$11),(?AL+$0E),(?AL+$16),(?AL+$0D),(?AL+$04),(?AL+$03),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_END

;********************************
_TXT_BACK_TO_OSCENT

	DB	CMD_TEXTICON
		DW	ICON_BLU

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$0D),(?AL+$18),(?AL+$16),(?AL+$00),(?AL+$18),(?AL+$12),?COMM,?SPCE,(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$18),(?AL+$04),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$13),(?AL+$04),?WAIT
		DB	(?AU+$0E),(?AL+$12),(?AL+$02),(?AL+$04),(?AL+$0D),(?AL+$13),?SPCE,(?AU+$0C),(?AL+$00),(?AL+$11),(?AL+$11),(?AL+$11),(?AL+$11),(?AL+$11),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$12),(?AL+$02),(?AL+$04),(?AL+$0D),(?AL+$13),?SPCE,(?AU+$0C),(?AL+$00),(?AL+$11),(?AL+$11),(?AL+$11),(?AL+$11),(?AL+$11),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_BLU

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$11),(?AL+$11),?COMM,?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$02),(?AL+$08),(?AL+$13),(?AL+$18),?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$08),(?AL+$0B),?SPCE,(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?PERD,?SPCE,(?AU+$0E),(?AL+$07),?WAIT
		DB	(?AL+$18),(?AL+$04),(?AL+$00),(?AL+$07),?COMM,?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$11),?APST,(?AL+$12),?WAIT
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),?APST,?SPCE,(?AL+$04),(?AL+$0B),(?AL+$12),(?AL+$04),?HURRY
		DB	(?AL+$18),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),(?AL+$13),?SPCE,(?AL+$13),(?AL+$04),?SPCE,(?AL+$01),(?AL+$04),?WAIT
		DB	(?AL+$12),(?AL+$04),(?AL+$04),(?AL+$08),(?AL+$0D),?APST,?PERD,?SPCE,(?AU+$09),(?AL+$14),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AL+$05),(?AL+$0E),(?AL+$0B),(?AL+$0B),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$0C),(?AL+$04),?COMM,?WAIT
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$18),?EXCL,?SPCE,(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$01),(?AL+$04),(?AL+$0B),(?AL+$13),?HURRY
		DB	(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$0B),(?AL+$04),(?AL+$13),?SPCE,(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$0D),?WAIT
		DB	(?AL+$18),(?AL+$04),(?AL+$11),?SPCE,(?AL+$0B),(?AL+$00),(?AL+$0D),(?AL+$03),(?AL+$0B),(?AL+$14),(?AL+$01),(?AL+$01),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$06),(?AL+$08),(?AL+$0B),(?AL+$0B),(?AL+$12),?SPCE,(?AL+$01),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$14),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),(?AL+$16),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_END

;********************************
_TXT_THIS_BELT_WORKS

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?COMM,?SPCE,(?AU+$08),?SPCE,(?AL+$06),(?AL+$14),(?AL+$04),(?AL+$12),(?AL+$12),?HURRY
		DB	(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$16),?WAIT
		DB	(?AL+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$01),(?AL+$04),(?AL+$0B),(?AL+$13),?HURRY
		DB	(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$0A),(?AL+$12),?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_HLDCELL05
	GLOBAL	MAP_HLDCELL06
	GLOBAL	HS_HLDCELL06
	GLOBAL	PAL_HERO
	GLOBAL	?_HLDMAZE_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	MAP_HLDEXTERIOR
	GLOBAL	HS_HLDEXTERIOR
	GLOBAL	ACTOR00
	GLOBAL	?TRIGGER_AI
	GLOBAL	?_KEY_ANIM
	GLOBAL	BIT_KEY
	GLOBAL	BIT_CORE05
	GLOBAL	BIT_CORE06
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	ACTOR01
	GLOBAL	?ANIM_AI
	GLOBAL	?_CORE05_STAND_LEFT_ANIM
	GLOBAL	?_END
	GLOBAL	ACTOR02
	GLOBAL	?_CORE06_STAND_LEFT_ANIM
	GLOBAL	?_HERO_STAND_LEFT_ANIM
	GLOBAL	?_HERO_BLOW_LEFT_ANIM
	GLOBAL	?_HERO_RUN_RIGHT_ANIM
	GLOBAL	?_HERO_STAND_RIGHT_ANIM
	GLOBAL	?_HERO_HAPPYJUMP_RIGHT
	GLOBAL	?_HERO_RUN_LEFT_ANIM
	GLOBAL	ACTOR03
	GLOBAL	BIT_TONYBLOW
	GLOBAL	?_HERO_JUMP_LEFT_ANIM
	GLOBAL	?_HERO_FALLING_GOOFILY_4
	GLOBAL	?_CORE05_WALK_LEFT_ANIM
	GLOBAL	?_CORE06_WALK_LEFT_ANIM
	GLOBAL	?_BLUSWIM_FLOAT_RIGHT_ANIM
	GLOBAL	BIT_SPLASH
	GLOBAL	BIT_BLUSWIM
	GLOBAL	?_BLUSWIM_RIGHT_ANIM
	GLOBAL	?_BLUSWIM_LEFT_ANIM
	GLOBAL	?_SPLASH_ANIM
	GLOBAL	?_HERO_TREAD_LEFT_ANIM
	GLOBAL	?_HERO_TREAD_RIGHT_ANIM
	GLOBAL	?_HERO_TREAD_DOWN_ANIM
	GLOBAL	?_HERO_TREAD_UP_ANIM
	GLOBAL	?_OVRSURFACE04_INTRO

;********************************
	END
;********************************