;Size:104
                      
;********************************
; C:\Work\Patrick's Project\scripts\CHARACTERS\JELLYBEANS\JELLYBEANS_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_JELLYBEANS_ANIM
	DB	CMD_FRAME
		DB	$60
		DB	$00
		DB	$00
		DW	(?JELLYBEANS01&$FFFF)
		DB	$00

	DB	CMD_FRAMEBLOCK
		DB	$0E
		DB	$02
		DB	$00
		DB	$00
		DW	(?JELLYBEANS02&$FFFF)
		DW	(?JELLYBEANS03&$FFFF)
		DW	(?JELLYBEANS04&$FFFF)
		DW	(?JELLYBEANS05&$FFFF)
		DW	(?JELLYBEANS04&$FFFF)
		DW	(?JELLYBEANS03&$FFFF)
		DW	(?JELLYBEANS02&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_JELLYBEANS_ANIM&$FFFF)

;********************************
?_JELLYBEANS_FLY_UP_ANIM
	DB	CMD_FRAME
		DB	$60
		DB	$00
		DB	$FD
		DW	(?JELLYBEANS01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_JELLYBEANS_FLY_UP_ANIM&$FFFF)

;********************************
?_JELLYBEANS_THROW_ANIM
	DB	CMD_FRAME
		DB	$0A
		DB	$FC
		DB	$00
		DW	(?JELLYBEANS01&$FFFF)
		DB	$02
		DB	$FD
		DB	$00
		DW	(?JELLYBEANS01&$FFFF)
		DB	$02
		DB	$FD
		DB	$01
		DW	(?JELLYBEANS01&$FFFF)
		DB	$02
		DB	$FE
		DB	$01
		DW	(?JELLYBEANS01&$FFFF)
		DB	$02
		DB	$FF
		DB	$01
		DW	(?JELLYBEANS01&$FFFF)
		DB	$02
		DB	$FF
		DB	$02
		DW	(?JELLYBEANS01&$FFFF)
		DB	$02
		DB	$00
		DB	$03
		DW	(?JELLYBEANS01&$FFFF)
		DB	$02
		DB	$FF
		DB	$FE
		DW	(?JELLYBEANS01&$FFFF)
		DB	$02
		DB	$FF
		DB	$FF
		DW	(?JELLYBEANS01&$FFFF)
		DB	$02
		DB	$FF
		DB	$01
		DW	(?JELLYBEANS01&$FFFF)
		DB	$02
		DB	$FF
		DB	$02
		DW	(?JELLYBEANS01&$FFFF)
		DB	$02
		DB	$FF
		DB	$03
		DW	(?JELLYBEANS01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_JELLYBEANS_ANIM&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?JELLYBEANS01
	GLOBAL	?JELLYBEANS02
	GLOBAL	?JELLYBEANS03
	GLOBAL	?JELLYBEANS04
	GLOBAL	?JELLYBEANS05

;********************************
	END
;********************************