;Size:24
                       
;********************************
; C:\Work\Patrick's Project\scripts\CHARACTERS\BOLT\BOLT_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_BOLT_LEFT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$04
		DB	$01
		DB	$00
		DB	$00
		DW	(?BOLT_LEFT01&$FFFF)
		DW	(?BOLT_LEFT02&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_BOLT_LEFT_ANIM&$FFFF)

;********************************
?_BOLT_RIGHT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$04
		DB	$01
		DB	$00
		DB	$00
		DW	(?BOLT_RIGHT01&$FFFF)
		DW	(?BOLT_RIGHT02&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_BOLT_RIGHT_ANIM&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?BOLT_LEFT01
	GLOBAL	?BOLT_LEFT02
	GLOBAL	?BOLT_RIGHT01
	GLOBAL	?BOLT_RIGHT02

;********************************
	END
;********************************