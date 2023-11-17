;Size:104
                      
;********************************
; C:\Work\Patrick's Project\scripts\CHARACTERS\ROCK\ROCK_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ROCK_STILL_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?ROCK01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ROCK_STILL_ANIM&$FFFF)

;********************************
?_ROCK_FALL_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$06
		DB	$02
		DB	$00
		DB	$04
		DW	(?ROCK01&$FFFF)
		DW	(?ROCK02&$FFFF)
		DW	(?ROCK03&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_ROCK_FALL_ANIM&$FFFF)

;********************************
?_ROCK_MOVE_UP_ANIM
	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$FE
		DW	(?ROCK02&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ROCK_MOVE_UP_ANIM&$FFFF)

;********************************
?_ROCK_MOVE_DOWN_ANIM
	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$02
		DW	(?ROCK02&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ROCK_MOVE_DOWN_ANIM&$FFFF)

;********************************
?_ROCK_MOVE_RIGHT_ANIM
	DB	CMD_FRAME
		DB	$01
		DB	$02
		DB	$00
		DW	(?ROCK03&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ROCK_MOVE_RIGHT_ANIM&$FFFF)

;********************************
?_ROCK_MOVE_LEFT_ANIM
	DB	CMD_FRAME
		DB	$01
		DB	$FE
		DB	$00
		DW	(?ROCK03&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ROCK_MOVE_LEFT_ANIM&$FFFF)

;********************************
?_ROCK_MOVE_UP2_ANIM
	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$FC
		DW	(?ROCK02&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ROCK_MOVE_UP2_ANIM&$FFFF)

;********************************
?_ROCK_MOVE_DOWN2_ANIM
	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$04
		DW	(?ROCK02&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ROCK_MOVE_DOWN2_ANIM&$FFFF)

;********************************
?_ROCK_MOVE_RIGHT2_ANIM
	DB	CMD_FRAME
		DB	$01
		DB	$04
		DB	$00
		DW	(?ROCK03&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ROCK_MOVE_RIGHT2_ANIM&$FFFF)

;********************************
?_ROCK_MOVE_LEFT2_ANIM
	DB	CMD_FRAME
		DB	$01
		DB	$FC
		DB	$00
		DW	(?ROCK03&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_ROCK_MOVE_LEFT2_ANIM&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?ROCK01
	GLOBAL	?ROCK02
	GLOBAL	?ROCK03

;********************************
	END
;********************************