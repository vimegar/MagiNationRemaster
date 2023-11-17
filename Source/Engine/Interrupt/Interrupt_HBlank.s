;********************************
; INTERRUPT_HBLANK.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?DO_HBLANK
	PUSH	AF
	PUSH	HL

	LDA_FF	HFUNC
	LD		L,A
	LDA_FF	HFUNC+$01
	LD		H,A
	JP		(HL)

;********************************
	END
;********************************