;Size:463
                      
;********************************
; C:\Work\Patrick's Project\scripts\CHARACTERS\OGAR\OGAR_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_OGAR_WALK_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$FF
		DW	(?OGAR_WALK01_BACK&$FFFF)
		DW	(?OGAR_WALK02_BACK&$FFFF)
		DW	(?OGAR_WALK03_BACK&$FFFF)
		DW	(?OGAR_WALK02_BACK&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_WALK_UP_ANIM&$FFFF)

;********************************
?_OGAR_WALK_DOWN_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$01
		DW	(?OGAR_WALK01_FRONT&$FFFF)
		DW	(?OGAR_WALK02_FRONT&$FFFF)
		DW	(?OGAR_WALK03_FRONT&$FFFF)
		DW	(?OGAR_WALK02_FRONT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_WALK_DOWN_ANIM&$FFFF)

;********************************
?_OGAR_WALK_LEFT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$FF
		DB	$00
		DW	(?OGAR_WALK01_LEFT&$FFFF)
		DW	(?OGAR_WALK02_LEFT&$FFFF)
		DW	(?OGAR_WALK03_LEFT&$FFFF)
		DW	(?OGAR_WALK02_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_WALK_LEFT_ANIM&$FFFF)

;********************************
?_OGAR_WALK_RIGHT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$01
		DB	$00
		DW	(?OGAR_WALK01_RIGHT&$FFFF)
		DW	(?OGAR_WALK02_RIGHT&$FFFF)
		DW	(?OGAR_WALK03_RIGHT&$FFFF)
		DW	(?OGAR_WALK02_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_WALK_RIGHT_ANIM&$FFFF)

;********************************
?_OGAR_RUN_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$FE
		DW	(?OGAR_WALK01_BACK&$FFFF)
		DW	(?OGAR_WALK02_BACK&$FFFF)
		DW	(?OGAR_WALK03_BACK&$FFFF)
		DW	(?OGAR_WALK02_BACK&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_RUN_UP_ANIM&$FFFF)

;********************************
?_OGAR_RUN_DOWN_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$02
		DW	(?OGAR_WALK01_FRONT&$FFFF)
		DW	(?OGAR_WALK02_FRONT&$FFFF)
		DW	(?OGAR_WALK03_FRONT&$FFFF)
		DW	(?OGAR_WALK02_FRONT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_RUN_DOWN_ANIM&$FFFF)

;********************************
?_OGAR_RUN_LEFT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$FE
		DB	$00
		DW	(?OGAR_WALK01_LEFT&$FFFF)
		DW	(?OGAR_WALK02_LEFT&$FFFF)
		DW	(?OGAR_WALK03_LEFT&$FFFF)
		DW	(?OGAR_WALK02_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_RUN_LEFT_ANIM&$FFFF)

;********************************
?_OGAR_RUN_RIGHT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$02
		DB	$00
		DW	(?OGAR_WALK01_RIGHT&$FFFF)
		DW	(?OGAR_WALK02_RIGHT&$FFFF)
		DW	(?OGAR_WALK03_RIGHT&$FFFF)
		DW	(?OGAR_WALK02_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_RUN_RIGHT_ANIM&$FFFF)

;********************************
?_OGAR_STAND_UP_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OGAR_WALK02_BACK&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_STAND_UP_ANIM&$FFFF)

;********************************
?_OGAR_STAND_DOWN_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OGAR_WALK02_FRONT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_STAND_DOWN_ANIM&$FFFF)

;********************************
?_OGAR_STAND_LEFT_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OGAR_WALK02_LEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_STAND_LEFT_ANIM&$FFFF)

;********************************
?_OGAR_STAND_RIGHT_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OGAR_WALK02_RIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_STAND_RIGHT_ANIM&$FFFF)

;********************************
?_OGAR_STAND_UL_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OGAR_STAND_BACKLEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_STAND_UL_ANIM&$FFFF)

;********************************
?_OGAR_STAND_UR_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OGAR_STAND_BACKRIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_STAND_UR_ANIM&$FFFF)

;********************************
?_OGAR_STAND_DL_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OGAR_STAND_LEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_STAND_DL_ANIM&$FFFF)

;********************************
?_OGAR_STAND_DR_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OGAR_STAND_RIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_STAND_DR_ANIM&$FFFF)

;********************************
?_OGAR_BATTLE_STAND_ANIM
	DB	CMD_FRAME
		DB	$60
		DB	$00
		DB	$00
		DW	(?OGAR_TAUNT04&$FFFF)
		DB	$60
		DB	$00
		DB	$00
		DW	(?OGAR_STANDLEFT&$FFFF)
		DB	$80
		DB	$00
		DB	$00
		DW	(?OGAR_TAUNT04&$FFFF)
		DB	$60
		DB	$00
		DB	$00
		DW	(?OGAR_STANDRIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_BATTLE_STAND_ANIM&$FFFF)

;********************************
?_OGAR_BATTLE_TAUNT_ANIM
	DB	CMD_FRAME
		DB	$20
		DB	$00
		DB	$00
		DW	(?OGAR_TAUNT04&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?OGAR_TAUNT01&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?OGAR_TAUNT02&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?OGAR_TAUNT03&$FFFF)
		DB	$20
		DB	$00
		DB	$00
		DW	(?OGAR_TAUNT04&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_BATTLE_STAND_ANIM&$FFFF)

;********************************
?_OGAR_BATTLE_SUMMON_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$20
		DB	$04
		DB	$00
		DB	$00
		DW	(?OGAR_SUMMON01&$FFFF)
		DW	(?OGAR_SUMMON02&$FFFF)
		DW	(?OGAR_SUMMON03&$FFFF)
		DW	(?OGAR_SUMMON02&$FFFF)
		DW	(?OGAR_SUMMON01&$FFFF)
		DW	(?OGAR_SUMMON02&$FFFF)
		DW	(?OGAR_SUMMON03&$FFFF)
		DW	(?OGAR_SUMMON02&$FFFF)
		DW	(?OGAR_SUMMON01&$FFFF)
		DW	(?OGAR_SUMMON02&$FFFF)
		DW	(?OGAR_SUMMON03&$FFFF)
		DW	(?OGAR_SUMMON02&$FFFF)
		DW	(?OGAR_SUMMON01&$FFFF)
		DW	(?OGAR_SUMMON02&$FFFF)
		DW	(?OGAR_SUMMON03&$FFFF)
		DW	(?OGAR_SUMMON02&$FFFF)

	DB	CMD_FRAME
		DB	$20
		DB	$00
		DB	$00
		DW	(?OGAR_SUMMON01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_BATTLE_STAND_ANIM&$FFFF)

;********************************
?_OGAR_BATTLE_WIN_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OGAR_WIN&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OGAR_BATTLE_WIN_ANIM&$FFFF)

;********************************
?_OGAR_BATTLE_LOSE_ANIM
	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$FF
		DW	(?OGAR_LOSE&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?OGAR_LOSE&$FFFF)
		DB	$01
		DB	$00
		DB	$01
		DW	(?OGAR_LOSE&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?OGAR_LOSE&$FFFF)
		DB	$01
		DB	$00
		DB	$FF
		DW	(?OGAR_LOSE&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?OGAR_LOSE&$FFFF)
		DB	$01
		DB	$00
		DB	$01
		DW	(?OGAR_LOSE&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?OGAR_LOSE&$FFFF)
		DB	$01
		DB	$00
		DB	$FF
		DW	(?OGAR_LOSE&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?OGAR_LOSE&$FFFF)
		DB	$01
		DB	$00
		DB	$01
		DW	(?OGAR_LOSE&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?OGAR_LOSE&$FFFF)
		DB	$01
		DB	$00
		DB	$FF
		DW	(?OGAR_LOSE&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?OGAR_LOSE&$FFFF)
		DB	$01
		DB	$00
		DB	$01
		DW	(?OGAR_LOSE&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?OGAR_LOSE&$FFFF)
		DB	$00

;********************************
_LOSE
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OGAR_LOSE&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(_LOSE&$FFFF)

;********************************
?_FACE_OGAR
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
		DB	:?_OGAR_STAND_UP_ANIM
		DW	(?_OGAR_STAND_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_DOWN
	DB	CMD_THISACTORSETANIM
		DB	:?_OGAR_STAND_DOWN_ANIM
		DW	(?_OGAR_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_LEFT
	DB	CMD_THISACTORSETANIM
		DB	:?_OGAR_STAND_LEFT_ANIM
		DW	(?_OGAR_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_RIGHT
	DB	CMD_THISACTORSETANIM
		DB	:?_OGAR_STAND_RIGHT_ANIM
		DW	(?_OGAR_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?OGAR_WALK01_BACK
	GLOBAL	?OGAR_WALK02_BACK
	GLOBAL	?OGAR_WALK03_BACK
	GLOBAL	?OGAR_WALK01_FRONT
	GLOBAL	?OGAR_WALK02_FRONT
	GLOBAL	?OGAR_WALK03_FRONT
	GLOBAL	?OGAR_WALK01_LEFT
	GLOBAL	?OGAR_WALK02_LEFT
	GLOBAL	?OGAR_WALK03_LEFT
	GLOBAL	?OGAR_WALK01_RIGHT
	GLOBAL	?OGAR_WALK02_RIGHT
	GLOBAL	?OGAR_WALK03_RIGHT
	GLOBAL	?OGAR_STAND_BACKLEFT
	GLOBAL	?OGAR_STAND_BACKRIGHT
	GLOBAL	?OGAR_STAND_LEFT
	GLOBAL	?OGAR_STAND_RIGHT
	GLOBAL	?OGAR_TAUNT04
	GLOBAL	?OGAR_STANDLEFT
	GLOBAL	?OGAR_STANDRIGHT
	GLOBAL	?OGAR_TAUNT01
	GLOBAL	?OGAR_TAUNT02
	GLOBAL	?OGAR_TAUNT03
	GLOBAL	?OGAR_SUMMON01
	GLOBAL	?OGAR_SUMMON02
	GLOBAL	?OGAR_SUMMON03
	GLOBAL	?OGAR_WIN
	GLOBAL	?OGAR_LOSE

;********************************
	END
;********************************