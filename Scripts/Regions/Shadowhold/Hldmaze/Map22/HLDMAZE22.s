;Size:102
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\SHADOWHOLD\HLDMAZE\MAP22\HLDMAZE22.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HLDMAZE22_DR_1
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$22
		DB	$13
		DB	$1A

	DB	CMD_JUMP
		DB	:?_HLDMAZE21
		DW	(?_HLDMAZE21&$FFFF)

;********************************
?_HLDMAZE22_TR_1
	DB	CMD_TOGGLEONCE
		DW	(XRAM_SAVEBITS+$0004)
		DB	$04
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$FA
		DB	$FB
		DW	$D0B8

	DB	CMD_END

;********************************
?_HLDMAZE22_TR_2
	DB	CMD_TRIGGERALWAYS
		DW	(XRAM_TREASURE+$000F)
		DB	$80
		DB	:?_TXT_ITS_EMPTY
		DW	(?_TXT_ITS_EMPTY&$FFFF)
		DB	$FF
		DW	$D2DF

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
?_HLDMAZE22
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HLDMAZE22&$FFFF)
		DB	:MAP_HLDMAZE22

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HLDMAZE22&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_HLDMAZE22&$FFFF)

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

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_HLDMAZE_RNDBAT
		DW	(?_HLDMAZE_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_HLDMAZE22
		DW	(?_HLDMAZE22&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_SONGSTART
		DB	SONGID_shadowhold

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_HLDMAZE21
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	?_END
	GLOBAL	XRAM_TREASURE
	GLOBAL	?_TXT_ITS_EMPTY
	GLOBAL	?_HLDMAZE_JINGJACK_BATTLE
	GLOBAL	MAP_HLDMAZE22
	GLOBAL	HS_HLDMAZE22
	GLOBAL	TR_HLDMAZE22
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