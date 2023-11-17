;Size:182
                      
;********************************
; C:\Work\Patrick's Project\scripts\CHARACTERS\MAGAM\MAGAM_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_MAGAM_MAKE_RING_ANIM
	DB	CMD_FRAME
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING03&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING04&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING05&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING06&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?MAGAM_RING07&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?MAGAM_RING08&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?MAGAM_RING09&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?MAGAM_RING08&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING09&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING08&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING09&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING08&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?MAGAM_RING07&$FFFF)
		DB	$10
		DB	$00
		DB	$00
		DW	(?MAGAM_RING08&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?MAGAM_RING09&$FFFF)
		DB	$10
		DB	$00
		DB	$00
		DW	(?MAGAM_RING08&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?MAGAM_RING07&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING08&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?MAGAM_RING09&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING08&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING07&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?MAGAM_RING08&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING09&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?MAGAM_RING08&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING07&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING08&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING07&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING08&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING06&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING05&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING04&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MAGAM_RING02&$FFFF)
		DB	$00

;********************************
?_MAGAM_DONE_RING_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?MAGAM_RING10&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_MAGAM_DONE_RING_ANIM&$FFFF)

;********************************
?_MAGAM_STAND_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?MAGAM_RING01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_MAGAM_STAND_ANIM&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?MAGAM_RING03
	GLOBAL	?MAGAM_RING04
	GLOBAL	?MAGAM_RING05
	GLOBAL	?MAGAM_RING06
	GLOBAL	?MAGAM_RING07
	GLOBAL	?MAGAM_RING08
	GLOBAL	?MAGAM_RING09
	GLOBAL	?MAGAM_RING02
	GLOBAL	?MAGAM_RING10
	GLOBAL	?MAGAM_RING01

;********************************
	END
;********************************