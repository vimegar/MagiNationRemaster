;********************************
; DO_TIMER.S
;********************************
;	Author:	Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?DO_TIMER

	SAVE_REGISTERS
	PUSH_ROM_BANK
	PUSH_RAM_BANK

	SWITCH_ROM_BANK	MUSYX_ROM_BANK
	SWITCH_RAM_BANK	WRAM_MUSYX

	GET16		H,L,SOUND_VB_FUNC
	CALL_HL

	XCALL	snd_Handle
	
	POP_RAM_BANK
	POP_ROM_BANK
	RESTORE_REGISTERS

	RETI

;********************************
?TIMER_START
	LD		A,$80
	LD		(TMA),A

	LD		A,$04
	LD		(TAC),A

	XOR		A
	LD		(IF),A
	LD		A,%00000100	; Enable timer
	LD		(IE),A

	RET

;********************************
	END
;********************************