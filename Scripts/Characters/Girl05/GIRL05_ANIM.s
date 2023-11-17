;Size:259
                      
;********************************
; C:\Work\Patrick's Project\scripts\CHARACTERS\GIRL05\GIRL05_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_GIRL05_WALK_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$FF
		DW	(?GIRL05_WALK01_BACK&$FFFF)
		DW	(?GIRL05_WALK02_BACK&$FFFF)
		DW	(?GIRL05_WALK03_BACK&$FFFF)
		DW	(?GIRL05_WALK02_BACK&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_GIRL05_WALK_UP_ANIM&$FFFF)

;********************************
?_GIRL05_WALK_DOWN_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$01
		DW	(?GIRL05_WALK01_FRONT&$FFFF)
		DW	(?GIRL05_WALK02_FRONT&$FFFF)
		DW	(?GIRL05_WALK03_FRONT&$FFFF)
		DW	(?GIRL05_WALK02_FRONT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_GIRL05_WALK_DOWN_ANIM&$FFFF)

;********************************
?_GIRL05_WALK_LEFT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$FF
		DB	$00
		DW	(?GIRL05_WALK01_LEFT&$FFFF)
		DW	(?GIRL05_WALK02_LEFT&$FFFF)
		DW	(?GIRL05_WALK03_LEFT&$FFFF)
		DW	(?GIRL05_WALK02_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_GIRL05_WALK_LEFT_ANIM&$FFFF)

;********************************
?_GIRL05_WALK_RIGHT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$01
		DB	$00
		DW	(?GIRL05_WALK01_RIGHT&$FFFF)
		DW	(?GIRL05_WALK02_RIGHT&$FFFF)
		DW	(?GIRL05_WALK03_RIGHT&$FFFF)
		DW	(?GIRL05_WALK02_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_GIRL05_WALK_RIGHT_ANIM&$FFFF)

;********************************
?_GIRL05_RUN_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$FE
		DW	(?GIRL05_WALK01_BACK&$FFFF)
		DW	(?GIRL05_WALK02_BACK&$FFFF)
		DW	(?GIRL05_WALK03_BACK&$FFFF)
		DW	(?GIRL05_WALK02_BACK&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_GIRL05_RUN_UP_ANIM&$FFFF)

;********************************
?_GIRL05_RUN_DOWN_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$02
		DW	(?GIRL05_WALK01_FRONT&$FFFF)
		DW	(?GIRL05_WALK02_FRONT&$FFFF)
		DW	(?GIRL05_WALK03_FRONT&$FFFF)
		DW	(?GIRL05_WALK02_FRONT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_GIRL05_RUN_DOWN_ANIM&$FFFF)

;********************************
?_GIRL05_RUN_LEFT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$FE
		DB	$00
		DW	(?GIRL05_WALK01_LEFT&$FFFF)
		DW	(?GIRL05_WALK02_LEFT&$FFFF)
		DW	(?GIRL05_WALK03_LEFT&$FFFF)
		DW	(?GIRL05_WALK02_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_GIRL05_RUN_LEFT_ANIM&$FFFF)

;********************************
?_GIRL05_RUN_RIGHT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$02
		DB	$00
		DW	(?GIRL05_WALK01_RIGHT&$FFFF)
		DW	(?GIRL05_WALK02_RIGHT&$FFFF)
		DW	(?GIRL05_WALK03_RIGHT&$FFFF)
		DW	(?GIRL05_WALK02_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_GIRL05_RUN_RIGHT_ANIM&$FFFF)

;********************************
?_GIRL05_STAND_UP_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?GIRL05_WALK02_BACK&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_GIRL05_STAND_UP_ANIM&$FFFF)

;********************************
?_GIRL05_STAND_DOWN_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?GIRL05_WALK02_FRONT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_GIRL05_STAND_DOWN_ANIM&$FFFF)

;********************************
?_GIRL05_STAND_LEFT_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?GIRL05_WALK02_LEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_GIRL05_STAND_LEFT_ANIM&$FFFF)

;********************************
?_GIRL05_STAND_RIGHT_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?GIRL05_WALK02_RIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_GIRL05_STAND_RIGHT_ANIM&$FFFF)

;********************************
?_GIRL05_STAND_UL_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?GIRL05_STAND_BACKLEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_GIRL05_STAND_UL_ANIM&$FFFF)

;********************************
?_GIRL05_STAND_UR_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?GIRL05_STAND_BACKRIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_GIRL05_STAND_UR_ANIM&$FFFF)

;********************************
?_GIRL05_STAND_DL_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?GIRL05_STAND_LEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_GIRL05_STAND_DL_ANIM&$FFFF)

;********************************
?_GIRL05_STAND_DR_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?GIRL05_STAND_RIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_GIRL05_STAND_DR_ANIM&$FFFF)

;********************************
?_FACE_GIRL05
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
		DB	:?_GIRL05_STAND_UP_ANIM
		DW	(?_GIRL05_STAND_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_DOWN
	DB	CMD_THISACTORSETANIM
		DB	:?_GIRL05_STAND_DOWN_ANIM
		DW	(?_GIRL05_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_LEFT
	DB	CMD_THISACTORSETANIM
		DB	:?_GIRL05_STAND_LEFT_ANIM
		DW	(?_GIRL05_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_RIGHT
	DB	CMD_THISACTORSETANIM
		DB	:?_GIRL05_STAND_RIGHT_ANIM
		DW	(?_GIRL05_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?GIRL05_WALK01_BACK
	GLOBAL	?GIRL05_WALK02_BACK
	GLOBAL	?GIRL05_WALK03_BACK
	GLOBAL	?GIRL05_WALK01_FRONT
	GLOBAL	?GIRL05_WALK02_FRONT
	GLOBAL	?GIRL05_WALK03_FRONT
	GLOBAL	?GIRL05_WALK01_LEFT
	GLOBAL	?GIRL05_WALK02_LEFT
	GLOBAL	?GIRL05_WALK03_LEFT
	GLOBAL	?GIRL05_WALK01_RIGHT
	GLOBAL	?GIRL05_WALK02_RIGHT
	GLOBAL	?GIRL05_WALK03_RIGHT
	GLOBAL	?GIRL05_STAND_BACKLEFT
	GLOBAL	?GIRL05_STAND_BACKRIGHT
	GLOBAL	?GIRL05_STAND_LEFT
	GLOBAL	?GIRL05_STAND_RIGHT

;********************************
	END
;********************************