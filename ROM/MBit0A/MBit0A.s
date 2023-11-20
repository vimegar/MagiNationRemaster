;********************************
; MBIT0A.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	ISDMG
	ERRTAG			; Required for outputting the error file
	CAPSOFF			; Distinguish uppercase from lowercase
	PUBALL			; Specify public.
	OFFRNG			; NO DEBUG

;********************************
	LIB		SOURCE\ENGINE\INCLUDES\MACRO.S	; Include the macros first
	
;********************************
	LIB		ROM\MBIT0A\BANK50.S
	LIB		ROM\MBIT0A\BANK51.S
	LIB		ROM\MBIT0A\BANK52.S
	LIB		ROM\MBIT0A\BANK53.S
	LIB		ROM\MBIT0A\BANK54.S
	LIB		ROM\MBIT0A\BANK55.S
	LIB		ROM\MBIT0A\BANK56.S
	LIB		ROM\MBIT0A\BANK57.S

;********************************
	LIB		SOURCE\ENGINE\INCLUDES\EQUATE.S
	LIB		ROM\INCLUDES\SCRIPT_EQU.S

;********************************
	END
;********************************