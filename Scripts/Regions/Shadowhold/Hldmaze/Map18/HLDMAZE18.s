;Size:110
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\SHADOWHOLD\HLDMAZE\MAP18\HLDMAZE18.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HLDMAZE18_DR_1
	DB	CMD_HEROTODOOR
		DB	$18
		DB	$00
		DB	$0F
		DB	$0C

	DB	CMD_JUMP
		DB	:?_HLDMAZE17
		DW	(?_HLDMAZE17&$FFFF)

;********************************
?_HLDMAZE18_TR_1
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_SAVEBITS+$0002)
		DB	$40
		DB	INV_TYPE_ITEM
		DB	INV_SCREWDRIVER
		DW	$D285

;********************************
?_HLDMAZE18_TR_2
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_SAVEBITS+$0002)
		DB	$10
		DB	INV_TYPE_ITEM
		DB	INV_SHADOW_KEY
		DW	$D0B2

;********************************
?_HLDMAZE18
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HLDMAZE18&$FFFF)
		DB	:MAP_HLDMAZE18

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HLDMAZE18&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_HLDMAZE18&$FFFF)

;********************************
?_HLDMAZE18_RETURN
	DB	CMD_LOADVRAM
		DW	(VRM_HLDMAZE&$FFFF)
		DB	:VRM_HLDMAZE
		DW	(PAL_HLDMAZE&$FFFF)
		DB	:PAL_HLDMAZE

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D082
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_HLDMAZE_RNDBAT
		DW	(?_HLDMAZE_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_HLDMAZE18_RETURN
		DW	(?_HLDMAZE18_RETURN&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_SONGSTART
		DB	SONGID_shadowhold

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0004)&$FFFF
		DB	$02
		DB	:_END
		DW	(_END&$FFFF)

	DB	CMD_COPYTILEBLOCK
		DW	$D1E6
		DB	$02
		DB	$06
		DW	$D295
		DB	$1A
		DB	$0B

	DB	CMD_COPYTILEBLOCK
		DW	$D188
		DB	$02
		DB	$01
		DW	$D32B
		DB	$20
		DB	$0B

;********************************
_END
	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_HLDMAZE17
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	MAP_HLDMAZE18
	GLOBAL	HS_HLDMAZE18
	GLOBAL	TR_HLDMAZE18
	GLOBAL	VRM_HLDMAZE
	GLOBAL	PAL_HLDMAZE
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