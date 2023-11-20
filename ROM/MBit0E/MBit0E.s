;********************************
; MBIT0E.S
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
	LIB		ROM\MBIT0E\BANK70.S
	LIB		ROM\MBIT0E\BANK71.S
	LIB		ROM\MBIT0E\BANK72.S
	LIB		ROM\MBIT0E\BANK73.S
	LIB		ROM\MBIT0E\BANK74.S
	LIB		ROM\MBIT0E\BANK75.S
	LIB		ROM\MBIT0E\BANK76.S
	LIB		ROM\MBIT0E\BANK77.S

;********************************
	LIB		SOURCE\ENGINE\INCLUDES\EQUATE.S
	LIB		ROM\INCLUDES\SCRIPT_EQU.S

;********************************
	END
;********************************