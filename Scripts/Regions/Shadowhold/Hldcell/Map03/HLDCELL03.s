;Size:67
                       
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\SHADOWHOLD\HLDCELL\MAP03\HLDCELL03.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HLDCELL03_DR_1
	DB	CMD_HEROTODOOR
		DB	$13
		DB	$00
		DB	$19
		DB	$0F

	DB	CMD_JUMP
		DB	:?_HLDCELL01
		DW	(?_HLDCELL01&$FFFF)

;********************************
?_HLDCELL03_DR_2
	DB	CMD_HEROTODOOR
		DB	$07
		DB	$0F
		DB	$00
		DB	$11

	DB	CMD_JUMP
		DB	:?_HLDCELL04
		DW	(?_HLDCELL04&$FFFF)

;********************************
?_HLDCELL03
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HLDCELL03&$FFFF)
		DB	:MAP_HLDCELL03

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HLDCELL03&$FFFF)

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

	DB	CMD_SONGSTART
		DB	SONGID_shadowhold

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_HLDMAZE_RNDBAT
		DW	(?_HLDMAZE_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_HLDCELL03
		DW	(?_HLDCELL03&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_HLDCELL01
	GLOBAL	?_HLDCELL04
	GLOBAL	MAP_HLDCELL03
	GLOBAL	HS_HLDCELL03
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	?_HLDMAZE_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST

;********************************
	END
;********************************