;Size:162
                      
;********************************
; C:\Work\Patrick's Project\scripts\CHARACTERS\LASADA\LASADA_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_LASADA_MAKE_RING_ANIM
	DB	CMD_FRAME
		DB	$04
		DB	$00
		DB	$00
		DW	(?LASADA_RING01&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?LASADA_RING02&$FFFF)
		DB	$20
		DB	$00
		DB	$00
		DW	(?LASADA_RING03&$FFFF)
		DB	$20
		DB	$00
		DB	$00
		DW	(?LASADA_RING04&$FFFF)
		DB	$10
		DB	$00
		DB	$00
		DW	(?LASADA_RING05&$FFFF)
		DB	$10
		DB	$00
		DB	$00
		DW	(?LASADA_RING06&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?LASADA_RING05&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?LASADA_RING06&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?LASADA_RING05&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?LASADA_RING06&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?LASADA_RING05&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?LASADA_RING06&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?LASADA_RING05&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?LASADA_RING06&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?LASADA_RING05&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?LASADA_RING06&$FFFF)
		DB	$02
		DB	$00
		DB	$00
		DW	(?LASADA_RING05&$FFFF)
		DB	$02
		DB	$00
		DB	$00
		DW	(?LASADA_RING06&$FFFF)
		DB	$02
		DB	$00
		DB	$00
		DW	(?LASADA_RING05&$FFFF)
		DB	$02
		DB	$00
		DB	$00
		DW	(?LASADA_RING06&$FFFF)
		DB	$02
		DB	$00
		DB	$00
		DW	(?LASADA_RING05&$FFFF)
		DB	$02
		DB	$00
		DB	$00
		DW	(?LASADA_RING06&$FFFF)
		DB	$02
		DB	$00
		DB	$00
		DW	(?LASADA_RING05&$FFFF)
		DB	$02
		DB	$00
		DB	$00
		DW	(?LASADA_RING06&$FFFF)
		DB	$02
		DB	$00
		DB	$00
		DW	(?LASADA_RING05&$FFFF)
		DB	$02
		DB	$00
		DB	$00
		DW	(?LASADA_RING06&$FFFF)
		DB	$18
		DB	$00
		DB	$00
		DW	(?LASADA_RING04&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?LASADA_RING03&$FFFF)
		DB	$00

;********************************
?_LASADA_DONE_RING_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?LASADA_RING07&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_LASADA_DONE_RING_ANIM&$FFFF)

;********************************
?_LASADA_STAND_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?LASADA_RING01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_LASADA_STAND_ANIM&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?LASADA_RING01
	GLOBAL	?LASADA_RING02
	GLOBAL	?LASADA_RING03
	GLOBAL	?LASADA_RING04
	GLOBAL	?LASADA_RING05
	GLOBAL	?LASADA_RING06
	GLOBAL	?LASADA_RING07

;********************************
	END
;********************************