;Size:242
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\SHADOWHOLD\HLDMAZE\MAP13\HLDMAZE13.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HLDMAZE13_DR_1
	DB	CMD_HEROTODOOR
		DB	$12
		DB	$0A
		DB	$00
		DB	$18

	DB	CMD_JUMP
		DB	:?_HLDMAZE12
		DW	(?_HLDMAZE12&$FFFF)

;********************************
?_HLDMAZE13_TR_1
	DB	CMD_TRIGGERALWAYS
		DW	(XRAM_TREASURE+$000F)
		DB	$04
		DB	:?_TXT_ITS_EMPTY
		DW	(?_TXT_ITS_EMPTY&$FFFF)
		DB	$FF
		DW	$D2BA

	DB	CMD_INITSKIP
		DW	(_END&$FFFF)


	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$00),(?AU+$11),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_HLDMAZE_JINGJACK_BATTLE
		DW	(?_HLDMAZE_JINGJACK_BATTLE&$FFFF)

;********************************
_END
	DB	CMD_END

;********************************
?_HLDMAZE13
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HLDMAZE13&$FFFF)
		DB	:MAP_HLDMAZE13

	DB	CMD_LOADTRIGGERS
		DW	(TR_HLDMAZE13&$FFFF)

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HLDMAZE13&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D087
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_SONGSTART
		DB	SONGID_shadowhold

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_HLDMAZE_RNDBAT
		DW	(?_HLDMAZE_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_HLDMAZE13
		DW	(?_HLDMAZE13&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_HLDMAZE13_DEATHFALL
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HLDMAZE13&$FFFF)
		DB	:MAP_HLDMAZE13

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HLDMAZE13&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_HLDMAZE13&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0F
		DB	$0B
		DW	$D12D
		DB	$00
		DB	:?_HLDMAZE13_TONY_FALLS
		DW	(?_HLDMAZE13_TONY_FALLS&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_SONGSTART
		DB	SONGID_shadowhold

	DB	CMD_SETCAMERA
		DB	$0F
		DB	$12

	DB	CMD_SETENCOUNTER
		DB	:?_HLDMAZE_RNDBAT
		DW	(?_HLDMAZE_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_HLDMAZE13
		DW	(?_HLDMAZE13&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_SCENEREADY


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$07),(?AU+$07),(?AU+$07),(?AU+$07),?EXCL,?EXCL,?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_END

;********************************
?_HLDMAZE13_TONY_FALLS
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_FALLING_GOOFILY_4
		DW	(?_HERO_FALLING_GOOFILY_4&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_SLOSHED_RIGHT
		DW	(?_HERO_SLOSHED_RIGHT&$FFFF)
		DB	$30
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_SLOSHED_LEFT
		DW	(?_HERO_SLOSHED_LEFT&$FFFF)
		DB	$30
		DB	:?_HERO_SLOSHED_RIGHT
		DW	(?_HERO_SLOSHED_RIGHT&$FFFF)
		DB	$20
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$10
		DB	$00


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$0E),(?AL+$0E),(?AL+$0E),?COMM,?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?HURRY
		DB	(?AL+$06),(?AL+$0E),(?AL+$0D),(?AL+$0D),(?AL+$00),?SPCE,(?AL+$0B),(?AL+$04),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$0C),(?AL+$00),(?AL+$11),(?AL+$0A),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETSCROLL
		DB	:?_HLDMAZE13_TONY_SCREAMS
		DW	(?_HLDMAZE13_TONY_SCREAMS&$FFFF)

	DB	CMD_END

;********************************
?_HLDMAZE13_TONY_SCREAMS
	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_HLDMAZE12
	GLOBAL	XRAM_TREASURE
	GLOBAL	?_TXT_ITS_EMPTY
	GLOBAL	?_HLDMAZE_JINGJACK_BATTLE
	GLOBAL	MAP_HLDMAZE13
	GLOBAL	TR_HLDMAZE13
	GLOBAL	HS_HLDMAZE13
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	?_HLDMAZE_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST
	GLOBAL	?ANIM_AI
	GLOBAL	?_HERO_FALLING_GOOFILY_4
	GLOBAL	?_HERO_SLOSHED_RIGHT
	GLOBAL	?_HERO_SLOSHED_LEFT
	GLOBAL	?_HERO_STAND_LEFT_ANIM

;********************************
	END
;********************************