;Size:466
                      
;********************************
; C:\Work\Patrick's Project\scripts\CHARACTERS\ORLON\ORLON_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ORLON_WALK_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$FF
		DW	(?ORLON_WALK01_BACK&$FFFF)
		DW	(?ORLON_WALK02_BACK&$FFFF)
		DW	(?ORLON_WALK03_BACK&$FFFF)
		DW	(?ORLON_WALK02_BACK&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_WALK_UP_ANIM&$FFFF)

;********************************
?_ORLON_WALK_DOWN_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$01
		DW	(?ORLON_WALK01_FRONT&$FFFF)
		DW	(?ORLON_WALK02_FRONT&$FFFF)
		DW	(?ORLON_WALK03_FRONT&$FFFF)
		DW	(?ORLON_WALK02_FRONT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_WALK_DOWN_ANIM&$FFFF)

;********************************
?_ORLON_WALK_LEFT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$FF
		DB	$00
		DW	(?ORLON_WALK01_LEFT&$FFFF)
		DW	(?ORLON_WALK02_LEFT&$FFFF)
		DW	(?ORLON_WALK03_LEFT&$FFFF)
		DW	(?ORLON_WALK02_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_WALK_LEFT_ANIM&$FFFF)

;********************************
?_ORLON_WALK_RIGHT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$01
		DB	$00
		DW	(?ORLON_WALK01_RIGHT&$FFFF)
		DW	(?ORLON_WALK02_RIGHT&$FFFF)
		DW	(?ORLON_WALK03_RIGHT&$FFFF)
		DW	(?ORLON_WALK02_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_WALK_RIGHT_ANIM&$FFFF)

;********************************
?_ORLON_RUN_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$FE
		DW	(?ORLON_WALK01_BACK&$FFFF)
		DW	(?ORLON_WALK02_BACK&$FFFF)
		DW	(?ORLON_WALK03_BACK&$FFFF)
		DW	(?ORLON_WALK02_BACK&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_RUN_UP_ANIM&$FFFF)

;********************************
?_ORLON_RUN_DOWN_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$02
		DW	(?ORLON_WALK01_FRONT&$FFFF)
		DW	(?ORLON_WALK02_FRONT&$FFFF)
		DW	(?ORLON_WALK03_FRONT&$FFFF)
		DW	(?ORLON_WALK02_FRONT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_RUN_DOWN_ANIM&$FFFF)

;********************************
?_ORLON_RUN_LEFT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$FE
		DB	$00
		DW	(?ORLON_WALK01_LEFT&$FFFF)
		DW	(?ORLON_WALK02_LEFT&$FFFF)
		DW	(?ORLON_WALK03_LEFT&$FFFF)
		DW	(?ORLON_WALK02_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_RUN_LEFT_ANIM&$FFFF)

;********************************
?_ORLON_RUN_RIGHT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$02
		DB	$00
		DW	(?ORLON_WALK01_RIGHT&$FFFF)
		DW	(?ORLON_WALK02_RIGHT&$FFFF)
		DW	(?ORLON_WALK03_RIGHT&$FFFF)
		DW	(?ORLON_WALK02_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_RUN_RIGHT_ANIM&$FFFF)

;********************************
?_ORLON_STAND_UP_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?ORLON_WALK02_BACK&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_STAND_UP_ANIM&$FFFF)

;********************************
?_ORLON_STAND_DOWN_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?ORLON_WALK02_FRONT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_STAND_DOWN_ANIM&$FFFF)

;********************************
?_ORLON_STAND_LEFT_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?ORLON_WALK02_LEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_STAND_LEFT_ANIM&$FFFF)

;********************************
?_ORLON_STAND_RIGHT_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?ORLON_WALK02_RIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_STAND_RIGHT_ANIM&$FFFF)

;********************************
?_ORLON_STAND_UL_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?ORLON_STAND_BACKLEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_STAND_UL_ANIM&$FFFF)

;********************************
?_ORLON_STAND_UR_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?ORLON_STAND_BACKRIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_STAND_UR_ANIM&$FFFF)

;********************************
?_ORLON_STAND_DL_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?ORLON_STAND_LEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_STAND_DL_ANIM&$FFFF)

;********************************
?_ORLON_STAND_DR_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?ORLON_STAND_RIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_STAND_DR_ANIM&$FFFF)

;********************************
?_ORLON_MAKE_RING_ANIM
	DB	CMD_FRAME
		DB	$08
		DB	$00
		DB	$00
		DW	(?ORLON_RING02&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?ORLON_RING04&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?ORLON_RING05&$FFFF)
		DB	$20
		DB	$00
		DB	$00
		DW	(?ORLON_RING06&$FFFF)
		DB	$10
		DB	$00
		DB	$00
		DW	(?ORLON_RING07&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?ORLON_RING08&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?ORLON_RING09&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?ORLON_RING10&$FFFF)
		DB	$00

	DB	CMD_SETSCROLL
		DB	:?_ORLON_RS_SCROLL
		DW	(?_ORLON_RS_SCROLL&$FFFF)

	DB	CMD_FRAME
		DB	$10
		DB	$00
		DB	$00
		DW	(?ORLON_RING11&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?ORLON_RING09&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?ORLON_RING10&$FFFF)
		DB	$00

	DB	CMD_SETSCROLL
		DB	:?_ORLON_RS_SCROLL
		DW	(?_ORLON_RS_SCROLL&$FFFF)

	DB	CMD_FRAME
		DB	$10
		DB	$00
		DB	$00
		DW	(?ORLON_RING11&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?ORLON_RING09&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?ORLON_RING10&$FFFF)
		DB	$00

	DB	CMD_SETSCROLL
		DB	:?_ORLON_RS_SCROLL
		DW	(?_ORLON_RS_SCROLL&$FFFF)

	DB	CMD_FRAME
		DB	$10
		DB	$00
		DB	$00
		DW	(?ORLON_RING11&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?ORLON_RING09&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?ORLON_RING08&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?ORLON_RING07&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?ORLON_RING06&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?ORLON_RING05&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?ORLON_RING04&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?ORLON_RING02&$FFFF)
		DB	$00

;********************************
?_ORLON_DONE_RING_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?ORLON_RING03&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_DONE_RING_ANIM&$FFFF)

;********************************
?_ORLON_STAND_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?ORLON_RING01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ORLON_STAND_ANIM&$FFFF)

;********************************
?_ORLON_RS_SCROLL
	DB	CMD_SCROLLMAP
		DB	$01
		DB	$00
		DB	$02
		DB	$01
		DB	$00
		DB	$FD
		DB	$01
		DB	$00
		DB	$03
		DB	$01
		DB	$00
		DB	$FD
		DB	$01
		DB	$00
		DB	$03
		DB	$01
		DB	$00
		DB	$FE
		DB	$01
		DB	$00
		DB	$02
		DB	$01
		DB	$00
		DB	$FE
		DB	$01
		DB	$00
		DB	$02
		DB	$01
		DB	$00
		DB	$FE
		DB	$01
		DB	$00
		DB	$01
		DB	$01
		DB	$00
		DB	$FF
		DB	$01
		DB	$00
		DB	$01
		DB	$01
		DB	$00
		DB	$FF
		DB	$01
		DB	$00
		DB	$01
		DB	$01
		DB	$00
		DB	$FF
		DB	$01
		DB	$00
		DB	$01
		DB	$01
		DB	$00
		DB	$FF
		DB	$00

	DB	CMD_END

;********************************
?_FACE_ORLON
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
		DB	:?_ORLON_STAND_UP_ANIM
		DW	(?_ORLON_STAND_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_DOWN
	DB	CMD_THISACTORSETANIM
		DB	:?_ORLON_STAND_DOWN_ANIM
		DW	(?_ORLON_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_LEFT
	DB	CMD_THISACTORSETANIM
		DB	:?_ORLON_STAND_LEFT_ANIM
		DW	(?_ORLON_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
_RIGHT
	DB	CMD_THISACTORSETANIM
		DB	:?_ORLON_STAND_RIGHT_ANIM
		DW	(?_ORLON_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORRESTORESTATE

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?ORLON_WALK01_BACK
	GLOBAL	?ORLON_WALK02_BACK
	GLOBAL	?ORLON_WALK03_BACK
	GLOBAL	?ORLON_WALK01_FRONT
	GLOBAL	?ORLON_WALK02_FRONT
	GLOBAL	?ORLON_WALK03_FRONT
	GLOBAL	?ORLON_WALK01_LEFT
	GLOBAL	?ORLON_WALK02_LEFT
	GLOBAL	?ORLON_WALK03_LEFT
	GLOBAL	?ORLON_WALK01_RIGHT
	GLOBAL	?ORLON_WALK02_RIGHT
	GLOBAL	?ORLON_WALK03_RIGHT
	GLOBAL	?ORLON_STAND_BACKLEFT
	GLOBAL	?ORLON_STAND_BACKRIGHT
	GLOBAL	?ORLON_STAND_LEFT
	GLOBAL	?ORLON_STAND_RIGHT
	GLOBAL	?ORLON_RING02
	GLOBAL	?ORLON_RING04
	GLOBAL	?ORLON_RING05
	GLOBAL	?ORLON_RING06
	GLOBAL	?ORLON_RING07
	GLOBAL	?ORLON_RING08
	GLOBAL	?ORLON_RING09
	GLOBAL	?ORLON_RING10
	GLOBAL	?ORLON_RING11
	GLOBAL	?ORLON_RING03
	GLOBAL	?ORLON_RING01

;********************************
	END
;********************************