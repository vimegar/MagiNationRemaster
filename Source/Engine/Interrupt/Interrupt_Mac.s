;********************************
; INTERRUPT_MAC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
INTERRUPT_INIT	MACRO

	XOR			A
	LD			(VBLANK_BANK),A
	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE
	MOVADDR		VBLANK_HANDLER_FUNC,?VBLANK_HANDLER_STD
	MOVADDR		HFUNC,?HFUNC_IDLE

	ENDM

;********************************
TIMER_INIT		MACRO
	LD			A,$80
	LD			(TMA),A
	
	LD			A,$04
	LD			(TAC),A

	ENDM

;********************************
TIMER_START		MACRO
	CALL		?TIMER_START
	
	ENDM

;********************************
	END
;********************************