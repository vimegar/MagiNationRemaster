;Size:348
                      
;********************************
; C:\Work\Patrick's Project\scripts\CHARACTERS\SALAFY\SALAFY_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_SALAFY_WALK_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$FF
		DW	(?SALAFY_WALK01_BACK&$FFFF)
		DW	(?SALAFY_WALK02_BACK&$FFFF)
		DW	(?SALAFY_WALK03_BACK&$FFFF)
		DW	(?SALAFY_WALK02_BACK&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_WALK_UP_ANIM&$FFFF)

;********************************
?_SALAFY_WALK_DOWN_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$01
		DW	(?SALAFY_WALK01_FRONT&$FFFF)
		DW	(?SALAFY_WALK02_FRONT&$FFFF)
		DW	(?SALAFY_WALK03_FRONT&$FFFF)
		DW	(?SALAFY_WALK02_FRONT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_WALK_DOWN_ANIM&$FFFF)

;********************************
?_SALAFY_WALK_LEFT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$FF
		DB	$00
		DW	(?SALAFY_WALK01_LEFT&$FFFF)
		DW	(?SALAFY_WALK02_LEFT&$FFFF)
		DW	(?SALAFY_WALK03_LEFT&$FFFF)
		DW	(?SALAFY_WALK02_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_WALK_LEFT_ANIM&$FFFF)

;********************************
?_SALAFY_WALK_RIGHT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$01
		DB	$00
		DW	(?SALAFY_WALK01_RIGHT&$FFFF)
		DW	(?SALAFY_WALK02_RIGHT&$FFFF)
		DW	(?SALAFY_WALK03_RIGHT&$FFFF)
		DW	(?SALAFY_WALK02_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_WALK_RIGHT_ANIM&$FFFF)

;********************************
?_SALAFY_RUN_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$FE
		DW	(?SALAFY_WALK01_BACK&$FFFF)
		DW	(?SALAFY_WALK02_BACK&$FFFF)
		DW	(?SALAFY_WALK03_BACK&$FFFF)
		DW	(?SALAFY_WALK02_BACK&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_RUN_UP_ANIM&$FFFF)

;********************************
?_SALAFY_RUN_DOWN_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$02
		DW	(?SALAFY_WALK01_FRONT&$FFFF)
		DW	(?SALAFY_WALK02_FRONT&$FFFF)
		DW	(?SALAFY_WALK03_FRONT&$FFFF)
		DW	(?SALAFY_WALK02_FRONT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_RUN_DOWN_ANIM&$FFFF)

;********************************
?_SALAFY_RUN_LEFT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$FE
		DB	$00
		DW	(?SALAFY_WALK01_LEFT&$FFFF)
		DW	(?SALAFY_WALK02_LEFT&$FFFF)
		DW	(?SALAFY_WALK03_LEFT&$FFFF)
		DW	(?SALAFY_WALK02_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_RUN_LEFT_ANIM&$FFFF)

;********************************
?_SALAFY_RUN_RIGHT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$02
		DB	$00
		DW	(?SALAFY_WALK01_RIGHT&$FFFF)
		DW	(?SALAFY_WALK02_RIGHT&$FFFF)
		DW	(?SALAFY_WALK03_RIGHT&$FFFF)
		DW	(?SALAFY_WALK02_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_RUN_RIGHT_ANIM&$FFFF)

;********************************
?_SALAFY_STAND_UP_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?SALAFY_WALK02_BACK&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_STAND_UP_ANIM&$FFFF)

;********************************
?_SALAFY_STAND_DOWN_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?SALAFY_WALK02_FRONT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_STAND_DOWN_ANIM&$FFFF)

;********************************
?_SALAFY_STAND_LEFT_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?SALAFY_WALK02_LEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_STAND_LEFT_ANIM&$FFFF)

;********************************
?_SALAFY_STAND_RIGHT_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?SALAFY_WALK02_RIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_STAND_RIGHT_ANIM&$FFFF)

;********************************
?_SALAFY_STAND_UL_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?SALAFY_STAND_BACKLEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_STAND_UL_ANIM&$FFFF)

;********************************
?_SALAFY_STAND_UR_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?SALAFY_STAND_BACKRIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_STAND_UR_ANIM&$FFFF)

;********************************
?_SALAFY_STAND_DL_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?SALAFY_STAND_LEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_STAND_DL_ANIM&$FFFF)

;********************************
?_SALAFY_STAND_DR_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?SALAFY_STAND_RIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_STAND_DR_ANIM&$FFFF)

;********************************
?_SALAFY_BATTLE_STAND_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?SALAFY_STANDFRONT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_BATTLE_STAND_ANIM&$FFFF)

;********************************
?_SALAFY_BATTLE_TAUNT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$04
		DB	$08
		DB	$00
		DB	$00
		DW	(?SALAFY_GIGGLE01&$FFFF)
		DW	(?SALAFY_GIGGLE02&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_BATTLE_TAUNT_ANIM&$FFFF)

;********************************
?_SALAFY_BATTLE_SUMMON_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$20
		DB	$04
		DB	$00
		DB	$00
		DW	(?SALAFY_SUMMON01&$FFFF)
		DW	(?SALAFY_SUMMON02&$FFFF)
		DW	(?SALAFY_SUMMON03&$FFFF)
		DW	(?SALAFY_SUMMON02&$FFFF)
		DW	(?SALAFY_SUMMON01&$FFFF)
		DW	(?SALAFY_SUMMON02&$FFFF)
		DW	(?SALAFY_SUMMON03&$FFFF)
		DW	(?SALAFY_SUMMON02&$FFFF)
		DW	(?SALAFY_SUMMON01&$FFFF)
		DW	(?SALAFY_SUMMON02&$FFFF)
		DW	(?SALAFY_SUMMON03&$FFFF)
		DW	(?SALAFY_SUMMON02&$FFFF)
		DW	(?SALAFY_SUMMON01&$FFFF)
		DW	(?SALAFY_SUMMON02&$FFFF)
		DW	(?SALAFY_SUMMON03&$FFFF)
		DW	(?SALAFY_SUMMON02&$FFFF)

	DB	CMD_FRAME
		DB	$20
		DB	$00
		DB	$00
		DW	(?SALAFY_SUMMON01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_BATTLE_STAND_ANIM&$FFFF)

;********************************
?_SALAFY_BATTLE_WIN_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?SALAFY_WIN&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_BATTLE_WIN_ANIM&$FFFF)

;********************************
?_SALAFY_BATTLE_LOSE_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?SALAFY_LOSE&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_SALAFY_BATTLE_LOSE_ANIM&$FFFF)

;********************************
?_FACE_SALAFY
	DB	CMD_SWITCH
		DB	EXPR_FACEHERO
		DB	:_UP
		DW	$0000
		DW	(_UP&$FFFF)
		DB	:_DOWN
		DW	$0003
		DW	(_DOWN&$FFFF)
		DB	:_RIGHT
		DW	$0002
		DW	(_RIGHT&$FFFF)
		DB	:_LEFT
		DW	$0001
		DW	(_LEFT&$FFFF)
		DB	$FF

;********************************
_UP
	DB	CMD_THISACTORSETANIM
		DB	:?_SALAFY_STAND_UP_ANIM
		DW	(?_SALAFY_STAND_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_DOWN
	DB	CMD_THISACTORSETANIM
		DB	:?_SALAFY_STAND_DOWN_ANIM
		DW	(?_SALAFY_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_LEFT
	DB	CMD_THISACTORSETANIM
		DB	:?_SALAFY_STAND_LEFT_ANIM
		DW	(?_SALAFY_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_RIGHT
	DB	CMD_THISACTORSETANIM
		DB	:?_SALAFY_STAND_RIGHT_ANIM
		DW	(?_SALAFY_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?SALAFY_WALK01_BACK
	GLOBAL	?SALAFY_WALK02_BACK
	GLOBAL	?SALAFY_WALK03_BACK
	GLOBAL	?SALAFY_WALK01_FRONT
	GLOBAL	?SALAFY_WALK02_FRONT
	GLOBAL	?SALAFY_WALK03_FRONT
	GLOBAL	?SALAFY_WALK01_LEFT
	GLOBAL	?SALAFY_WALK02_LEFT
	GLOBAL	?SALAFY_WALK03_LEFT
	GLOBAL	?SALAFY_WALK01_RIGHT
	GLOBAL	?SALAFY_WALK02_RIGHT
	GLOBAL	?SALAFY_WALK03_RIGHT
	GLOBAL	?SALAFY_STAND_BACKLEFT
	GLOBAL	?SALAFY_STAND_BACKRIGHT
	GLOBAL	?SALAFY_STAND_LEFT
	GLOBAL	?SALAFY_STAND_RIGHT
	GLOBAL	?SALAFY_STANDFRONT
	GLOBAL	?SALAFY_GIGGLE01
	GLOBAL	?SALAFY_GIGGLE02
	GLOBAL	?SALAFY_SUMMON01
	GLOBAL	?SALAFY_SUMMON02
	GLOBAL	?SALAFY_SUMMON03
	GLOBAL	?SALAFY_WIN
	GLOBAL	?SALAFY_LOSE

;********************************
	END
;********************************