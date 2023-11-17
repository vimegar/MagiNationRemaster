;Size:14
                       
;********************************
; C:\Work\Patrick's Project\scripts\CHARACTERS\SPLASH\SPLASH_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_SPLASH_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$04
		DB	$00
		DB	$00
		DW	(?SPLASH01&$FFFF)
		DW	(?SPLASH02&$FFFF)
		DW	(?SPLASH01&$FFFF)
		DW	(?SPLASH03&$FFFF)

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?SPLASH01
	GLOBAL	?SPLASH02
	GLOBAL	?SPLASH03

;********************************
	END
;********************************