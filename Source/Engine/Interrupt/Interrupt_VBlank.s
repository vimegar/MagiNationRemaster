;********************************
; INTERRUPT_VBLANK.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?DO_VBLANK

	SAVE_REGISTERS
	PUSH_RAM_BANK		
	PUSH_ROM_BANK
	
	GET16		H,L,VBLANK_HANDLER_FUNC
	CALL_HL

	XCALL		?CHECK_CONTROLLER

	XOR			A
	LDFF_A		VBLANK_CONTROL
	EI

	POP_ROM_BANK
	POP_RAM_BANK

	RESTORE_REGISTERS
	RETI

;********************************
?VBLANK_HANDLER_STD
	
	GRAPHICS_VBLANK
	SOUND_VBLANK

	RET


;********************************
	END
;********************************