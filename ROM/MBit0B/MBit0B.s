;********************************
; MBIT0B.S
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
	LIB		ROM\MBIT0B\BANK58.S
	LIB		ROM\MBIT0B\BANK59.S
	LIB		ROM\MBIT0B\BANK5A.S
	LIB		ROM\MBIT0B\BANK5B.S
	LIB		ROM\MBIT0B\BANK5C.S
	LIB		ROM\MBIT0B\BANK5D.S
	LIB		ROM\MBIT0B\BANK5E.S
	LIB		ROM\MBIT0B\BANK5F.S

;********************************
	LIB		SOURCE\ENGINE\INCLUDES\EQUATE.S
	LIB		ROM\INCLUDES\SCRIPT_EQU.S

;********************************
	END
;********************************