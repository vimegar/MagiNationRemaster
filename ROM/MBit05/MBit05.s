;********************************
; MBIT05.S
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
	LIB		ROM\MBIT05\BANK28.S
	LIB		ROM\MBIT05\BANK29.S
	LIB		ROM\MBIT05\BANK2A.S
	LIB		ROM\MBIT05\BANK2B.S
	LIB		ROM\MBIT05\BANK2C.S
	LIB		ROM\MBIT05\BANK2D.S
	LIB		ROM\MBIT05\BANK2E.S
	LIB		ROM\MBIT05\BANK2F.S

;********************************
	LIB		SOURCE\ENGINE\INCLUDES\EQUATE.S
	LIB		ROM\INCLUDES\SCRIPT_EQU.S

;********************************
	END
;********************************