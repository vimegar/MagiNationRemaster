;Size:259
                      
;********************************
; C:\Work\Patrick's Project\scripts\CHARACTERS\TRYN\TRYN_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_TRYN_WALK_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$FF
		DW	(?TRYN_WALK01_BACK&$FFFF)
		DW	(?TRYN_WALK02_BACK&$FFFF)
		DW	(?TRYN_WALK03_BACK&$FFFF)
		DW	(?TRYN_WALK02_BACK&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_TRYN_WALK_UP_ANIM&$FFFF)

;********************************
?_TRYN_WALK_DOWN_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$01
		DW	(?TRYN_WALK01_FRONT&$FFFF)
		DW	(?TRYN_WALK02_FRONT&$FFFF)
		DW	(?TRYN_WALK03_FRONT&$FFFF)
		DW	(?TRYN_WALK02_FRONT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_TRYN_WALK_DOWN_ANIM&$FFFF)

;********************************
?_TRYN_WALK_LEFT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$FF
		DB	$00
		DW	(?TRYN_WALK01_LEFT&$FFFF)
		DW	(?TRYN_WALK02_LEFT&$FFFF)
		DW	(?TRYN_WALK03_LEFT&$FFFF)
		DW	(?TRYN_WALK02_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_TRYN_WALK_LEFT_ANIM&$FFFF)

;********************************
?_TRYN_WALK_RIGHT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$01
		DB	$00
		DW	(?TRYN_WALK01_RIGHT&$FFFF)
		DW	(?TRYN_WALK02_RIGHT&$FFFF)
		DW	(?TRYN_WALK03_RIGHT&$FFFF)
		DW	(?TRYN_WALK02_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_TRYN_WALK_RIGHT_ANIM&$FFFF)

;********************************
?_TRYN_RUN_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$FE
		DW	(?TRYN_WALK01_BACK&$FFFF)
		DW	(?TRYN_WALK02_BACK&$FFFF)
		DW	(?TRYN_WALK03_BACK&$FFFF)
		DW	(?TRYN_WALK02_BACK&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_TRYN_RUN_UP_ANIM&$FFFF)

;********************************
?_TRYN_RUN_DOWN_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$02
		DW	(?TRYN_WALK01_FRONT&$FFFF)
		DW	(?TRYN_WALK02_FRONT&$FFFF)
		DW	(?TRYN_WALK03_FRONT&$FFFF)
		DW	(?TRYN_WALK02_FRONT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_TRYN_RUN_DOWN_ANIM&$FFFF)

;********************************
?_TRYN_RUN_LEFT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$FE
		DB	$00
		DW	(?TRYN_WALK01_LEFT&$FFFF)
		DW	(?TRYN_WALK02_LEFT&$FFFF)
		DW	(?TRYN_WALK03_LEFT&$FFFF)
		DW	(?TRYN_WALK02_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_TRYN_RUN_LEFT_ANIM&$FFFF)

;********************************
?_TRYN_RUN_RIGHT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$02
		DB	$00
		DW	(?TRYN_WALK01_RIGHT&$FFFF)
		DW	(?TRYN_WALK02_RIGHT&$FFFF)
		DW	(?TRYN_WALK03_RIGHT&$FFFF)
		DW	(?TRYN_WALK02_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_TRYN_RUN_RIGHT_ANIM&$FFFF)

;********************************
?_TRYN_STAND_UP_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?TRYN_WALK02_BACK&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_TRYN_STAND_UP_ANIM&$FFFF)

;********************************
?_TRYN_STAND_DOWN_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?TRYN_WALK02_FRONT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_TRYN_STAND_DOWN_ANIM&$FFFF)

;********************************
?_TRYN_STAND_LEFT_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?TRYN_WALK02_LEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_TRYN_STAND_LEFT_ANIM&$FFFF)

;********************************
?_TRYN_STAND_RIGHT_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?TRYN_WALK02_RIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_TRYN_STAND_RIGHT_ANIM&$FFFF)

;********************************
?_TRYN_STAND_UL_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?TRYN_STAND_BACKLEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_TRYN_STAND_UL_ANIM&$FFFF)

;********************************
?_TRYN_STAND_UR_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?TRYN_STAND_BACKRIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_TRYN_STAND_UR_ANIM&$FFFF)

;********************************
?_TRYN_STAND_DL_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?TRYN_STAND_LEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_TRYN_STAND_DL_ANIM&$FFFF)

;********************************
?_TRYN_STAND_DR_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?TRYN_STAND_RIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_TRYN_STAND_DR_ANIM&$FFFF)

;********************************
?_FACE_TRYN
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
		DB	:?_TRYN_STAND_UP_ANIM
		DW	(?_TRYN_STAND_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_DOWN
	DB	CMD_THISACTORSETANIM
		DB	:?_TRYN_STAND_DOWN_ANIM
		DW	(?_TRYN_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_LEFT
	DB	CMD_THISACTORSETANIM
		DB	:?_TRYN_STAND_LEFT_ANIM
		DW	(?_TRYN_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_RIGHT
	DB	CMD_THISACTORSETANIM
		DB	:?_TRYN_STAND_RIGHT_ANIM
		DW	(?_TRYN_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?TRYN_WALK01_BACK
	GLOBAL	?TRYN_WALK02_BACK
	GLOBAL	?TRYN_WALK03_BACK
	GLOBAL	?TRYN_WALK01_FRONT
	GLOBAL	?TRYN_WALK02_FRONT
	GLOBAL	?TRYN_WALK03_FRONT
	GLOBAL	?TRYN_WALK01_LEFT
	GLOBAL	?TRYN_WALK02_LEFT
	GLOBAL	?TRYN_WALK03_LEFT
	GLOBAL	?TRYN_WALK01_RIGHT
	GLOBAL	?TRYN_WALK02_RIGHT
	GLOBAL	?TRYN_WALK03_RIGHT
	GLOBAL	?TRYN_STAND_BACKLEFT
	GLOBAL	?TRYN_STAND_BACKRIGHT
	GLOBAL	?TRYN_STAND_LEFT
	GLOBAL	?TRYN_STAND_RIGHT

;********************************
	END
;********************************