;Size:279
                      
;********************************
; C:\Work\Patrick's Project\scripts\CHARACTERS\OLDMAN04\OLDMAN04_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_OLDMAN04_WALK_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$FF
		DW	(?OLDMAN04_WALK01_BACK&$FFFF)
		DW	(?OLDMAN04_WALK02_BACK&$FFFF)
		DW	(?OLDMAN04_WALK03_BACK&$FFFF)
		DW	(?OLDMAN04_WALK02_BACK&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_WALK_UP_ANIM&$FFFF)

;********************************
?_OLDMAN04_WALK_DOWN_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$01
		DW	(?OLDMAN04_WALK01_FRONT&$FFFF)
		DW	(?OLDMAN04_WALK02_FRONT&$FFFF)
		DW	(?OLDMAN04_WALK03_FRONT&$FFFF)
		DW	(?OLDMAN04_WALK02_FRONT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_WALK_DOWN_ANIM&$FFFF)

;********************************
?_OLDMAN04_WALK_LEFT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$FF
		DB	$00
		DW	(?OLDMAN04_WALK01_LEFT&$FFFF)
		DW	(?OLDMAN04_WALK02_LEFT&$FFFF)
		DW	(?OLDMAN04_WALK03_LEFT&$FFFF)
		DW	(?OLDMAN04_WALK02_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_WALK_LEFT_ANIM&$FFFF)

;********************************
?_OLDMAN04_WALK_RIGHT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$01
		DB	$00
		DW	(?OLDMAN04_WALK01_RIGHT&$FFFF)
		DW	(?OLDMAN04_WALK02_RIGHT&$FFFF)
		DW	(?OLDMAN04_WALK03_RIGHT&$FFFF)
		DW	(?OLDMAN04_WALK02_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_WALK_RIGHT_ANIM&$FFFF)

;********************************
?_OLDMAN04_RUN_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$FE
		DW	(?OLDMAN04_WALK01_BACK&$FFFF)
		DW	(?OLDMAN04_WALK02_BACK&$FFFF)
		DW	(?OLDMAN04_WALK03_BACK&$FFFF)
		DW	(?OLDMAN04_WALK02_BACK&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_RUN_UP_ANIM&$FFFF)

;********************************
?_OLDMAN04_RUN_DOWN_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$02
		DW	(?OLDMAN04_WALK01_FRONT&$FFFF)
		DW	(?OLDMAN04_WALK02_FRONT&$FFFF)
		DW	(?OLDMAN04_WALK03_FRONT&$FFFF)
		DW	(?OLDMAN04_WALK02_FRONT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_RUN_DOWN_ANIM&$FFFF)

;********************************
?_OLDMAN04_RUN_LEFT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$FE
		DB	$00
		DW	(?OLDMAN04_WALK01_LEFT&$FFFF)
		DW	(?OLDMAN04_WALK02_LEFT&$FFFF)
		DW	(?OLDMAN04_WALK03_LEFT&$FFFF)
		DW	(?OLDMAN04_WALK02_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_RUN_LEFT_ANIM&$FFFF)

;********************************
?_OLDMAN04_RUN_RIGHT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$02
		DB	$00
		DW	(?OLDMAN04_WALK01_RIGHT&$FFFF)
		DW	(?OLDMAN04_WALK02_RIGHT&$FFFF)
		DW	(?OLDMAN04_WALK03_RIGHT&$FFFF)
		DW	(?OLDMAN04_WALK02_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_RUN_RIGHT_ANIM&$FFFF)

;********************************
?_OLDMAN04_STAND_UP_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OLDMAN04_WALK02_BACK&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_STAND_UP_ANIM&$FFFF)

;********************************
?_OLDMAN04_STAND_DOWN_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OLDMAN04_WALK02_FRONT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_STAND_DOWN_ANIM&$FFFF)

;********************************
?_OLDMAN04_STAND_LEFT_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OLDMAN04_WALK02_LEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_STAND_LEFT_ANIM&$FFFF)

;********************************
?_OLDMAN04_STAND_RIGHT_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OLDMAN04_WALK02_RIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_STAND_RIGHT_ANIM&$FFFF)

;********************************
?_OLDMAN04_STAND_UL_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OLDMAN04_STAND_BACKLEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_STAND_UL_ANIM&$FFFF)

;********************************
?_OLDMAN04_STAND_UR_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OLDMAN04_STAND_BACKRIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_STAND_UR_ANIM&$FFFF)

;********************************
?_OLDMAN04_STAND_DL_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OLDMAN04_STAND_LEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_STAND_DL_ANIM&$FFFF)

;********************************
?_OLDMAN04_STAND_DR_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?OLDMAN04_STAND_RIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_STAND_DR_ANIM&$FFFF)

;********************************
?_OLDMAN04_MOVE_LEFT_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$FF
		DB	$00
		DW	(?OLDMAN04_WALK02_LEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_STAND_LEFT_ANIM&$FFFF)

;********************************
?_OLDMAN04_MOVE_RIGHT_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$01
		DB	$00
		DW	(?OLDMAN04_WALK02_RIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_OLDMAN04_STAND_RIGHT_ANIM&$FFFF)

;********************************
?_FACE_OLDMAN04
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
		DB	:?_OLDMAN04_STAND_UP_ANIM
		DW	(?_OLDMAN04_STAND_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_DOWN
	DB	CMD_THISACTORSETANIM
		DB	:?_OLDMAN04_STAND_DOWN_ANIM
		DW	(?_OLDMAN04_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_LEFT
	DB	CMD_THISACTORSETANIM
		DB	:?_OLDMAN04_STAND_LEFT_ANIM
		DW	(?_OLDMAN04_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_RIGHT
	DB	CMD_THISACTORSETANIM
		DB	:?_OLDMAN04_STAND_RIGHT_ANIM
		DW	(?_OLDMAN04_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?OLDMAN04_WALK01_BACK
	GLOBAL	?OLDMAN04_WALK02_BACK
	GLOBAL	?OLDMAN04_WALK03_BACK
	GLOBAL	?OLDMAN04_WALK01_FRONT
	GLOBAL	?OLDMAN04_WALK02_FRONT
	GLOBAL	?OLDMAN04_WALK03_FRONT
	GLOBAL	?OLDMAN04_WALK01_LEFT
	GLOBAL	?OLDMAN04_WALK02_LEFT
	GLOBAL	?OLDMAN04_WALK03_LEFT
	GLOBAL	?OLDMAN04_WALK01_RIGHT
	GLOBAL	?OLDMAN04_WALK02_RIGHT
	GLOBAL	?OLDMAN04_WALK03_RIGHT
	GLOBAL	?OLDMAN04_STAND_BACKLEFT
	GLOBAL	?OLDMAN04_STAND_BACKRIGHT
	GLOBAL	?OLDMAN04_STAND_LEFT
	GLOBAL	?OLDMAN04_STAND_RIGHT

;********************************
	END
;********************************