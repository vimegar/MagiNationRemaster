;********************************
; TEXTBOX_MAC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
TEXTBOX_INIT		MACRO
		CALL_FOREIGN	?TEXTBOX_INIT
		ENDM

;********************************
TEXTBOX_HALT		MACRO

		LD			A,$01
		LD			(MENU_DISABLE_MAIN),A

		;LD			A,(TEXTBOX_OPEN)
		;LD			(TEXTBOX_HALT),A
		;LD			A,TEXTBOX_STATE_BUSY
		;LD			(TEXTBOX_OPEN),A

		ENDM

;********************************
TEXTBOX_RESUME		MACRO

		XOR			A
		LD			(MENU_DISABLE_MAIN),A

		;LD			A,(TEXTBOX_HALT)
		;CP			TEXTBOX_STATE_HALT
		;JR			Z,_SKIP

		;LD			(TEXTBOX_OPEN),A
		;LD			A,TEXTBOX_STATE_HALT
		;LD			(TEXTBOX_HALT),A

		ENDM

;********************************
	END
;********************************