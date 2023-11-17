;Size:137
                      
;********************************
; C:\Work\Patrick's Project\scripts\CHARACTERS\BOMB\BOMB_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_BOMB_FUSE_1
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?BOMB01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_BOMB_FUSE_1&$FFFF)

;********************************
?_BOMB_FUSE_2
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?BOMB02&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_BOMB_FUSE_2&$FFFF)

;********************************
?_BOMB_FUSE_3
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?BOMB03&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_BOMB_FUSE_3&$FFFF)

;********************************
?_BOMB_FUSE_4
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?BOMB04&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_BOMB_FUSE_4&$FFFF)

;********************************
?_BOMB_FUSE_5
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?BOMB05&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_BOMB_FUSE_5&$FFFF)

;********************************
?_BOMB_EXPLODE_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$04
		DB	$07
		DB	$00
		DB	$00
		DW	(?BOMB05&$FFFF)
		DW	(?BOMB06&$FFFF)

	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$04
		DB	$00
		DB	$00
		DW	(?BOMB07&$FFFF)
		DW	(?BOMB08&$FFFF)
		DW	(?BOMB09&$FFFF)
		DW	(?BOMB10&$FFFF)

	DB	CMD_END

;********************************
?_BOMB_FLYFAST_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$04
		DB	$00
		DB	$FE
		DW	(?BOMB01&$FFFF)
		DW	(?BOMB_FLY01&$FFFF)
		DW	(?BOMB_FLY02&$FFFF)
		DW	(?BOMB_FLY03&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_BOMB_FLYFAST_UP_ANIM&$FFFF)

;********************************
?_BOMB_FLYFAST_DOWN_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$04
		DB	$00
		DB	$02
		DW	(?BOMB01&$FFFF)
		DW	(?BOMB_FLY01&$FFFF)
		DW	(?BOMB_FLY02&$FFFF)
		DW	(?BOMB_FLY03&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_BOMB_FLYFAST_DOWN_ANIM&$FFFF)

;********************************
?_BOMB_FLYSLOW_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$04
		DB	$00
		DB	$FF
		DW	(?BOMB01&$FFFF)
		DW	(?BOMB_FLY01&$FFFF)
		DW	(?BOMB_FLY02&$FFFF)
		DW	(?BOMB_FLY03&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_BOMB_FLYSLOW_UP_ANIM&$FFFF)

;********************************
?_BOMB_FLYSLOW_DOWN_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$04
		DB	$00
		DB	$01
		DW	(?BOMB01&$FFFF)
		DW	(?BOMB_FLY01&$FFFF)
		DW	(?BOMB_FLY02&$FFFF)
		DW	(?BOMB_FLY03&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_BOMB_FLYSLOW_DOWN_ANIM&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?BOMB01
	GLOBAL	?BOMB02
	GLOBAL	?BOMB03
	GLOBAL	?BOMB04
	GLOBAL	?BOMB05
	GLOBAL	?BOMB06
	GLOBAL	?BOMB07
	GLOBAL	?BOMB08
	GLOBAL	?BOMB09
	GLOBAL	?BOMB10
	GLOBAL	?BOMB_FLY01
	GLOBAL	?BOMB_FLY02
	GLOBAL	?BOMB_FLY03

;********************************
	END
;********************************