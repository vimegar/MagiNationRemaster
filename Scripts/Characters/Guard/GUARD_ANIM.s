;Size:111
                      
;********************************
; C:\Work\Patrick's Project\scripts\CHARACTERS\GUARD\GUARD_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_GUARD_STAND_UP_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?GUARD_STAND_BACK&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_GUARD_STAND_UP_ANIM&$FFFF)

;********************************
?_GUARD_STAND_DOWN_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?GUARD_STAND01_FRONT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_GUARD_STAND_DOWN_ANIM&$FFFF)

;********************************
?_GUARD_STAND_UL_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?GUARD_STAND_BACKLEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_GUARD_STAND_UL_ANIM&$FFFF)

;********************************
?_GUARD_STAND_UR_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?GUARD_STAND_BACKRIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_GUARD_STAND_UR_ANIM&$FFFF)

;********************************
?_GUARD_STAND_DL_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?GUARD_STAND_LEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_GUARD_STAND_DL_ANIM&$FFFF)

;********************************
?_GUARD_STAND_DR_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?GUARD_STAND_RIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_GUARD_STAND_DR_ANIM&$FFFF)

;********************************
?_FACE_GUARD
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
		DB	:?_GUARD_STAND_UP_ANIM
		DW	(?_GUARD_STAND_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_DOWN
	DB	CMD_THISACTORSETANIM
		DB	:?_GUARD_STAND_DOWN_ANIM
		DW	(?_GUARD_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_LEFT
	DB	CMD_THISACTORSETANIM
		DB	:?_GUARD_STAND_DL_ANIM
		DW	(?_GUARD_STAND_DL_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_RIGHT
	DB	CMD_THISACTORSETANIM
		DB	:?_GUARD_STAND_DR_ANIM
		DW	(?_GUARD_STAND_DR_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?GUARD_STAND_BACK
	GLOBAL	?GUARD_STAND01_FRONT
	GLOBAL	?GUARD_STAND_BACKLEFT
	GLOBAL	?GUARD_STAND_BACKRIGHT
	GLOBAL	?GUARD_STAND_LEFT
	GLOBAL	?GUARD_STAND_RIGHT

;********************************
	END
;********************************