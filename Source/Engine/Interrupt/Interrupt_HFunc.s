;********************************
; INTERRUPT_HFUNC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?HFUNC_BG2
	LDA_FF	HLCDC
	LDFF_A	LCDC

	LDA_FF	HSCX
	LDFF_A	SCX

	LDA_FF	HSCY
	LDFF_A	SCY

	POP		HL
	POP		AF
	RETI

;********************************
?HFUNC_IDLE
	POP		HL
	POP		AF
	RETI

;********************************
?HFUNC_WINDOW
	LD		A,%11100001
	LDFF_A	LCDC

	POP		HL
	POP		AF
	RETI

;********************************
?HFUNC_WINDOW_SPRITE
	LD		A,%11100011
	LDFF_A	LCDC

	POP		HL
	POP		AF
	RETI

;********************************
	END
;********************************