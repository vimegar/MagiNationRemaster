;********************************
; MBIT0F.S
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
	LIB		ROM\MBIT0F\BANK78.S
	LIB		ROM\MBIT0F\BANK79.S
	LIB		ROM\MBIT0F\BANK7A.S
	LIB		ROM\MBIT0F\BANK7B.S
	LIB		ROM\MBIT0F\BANK7C.S
	LIB		ROM\MBIT0F\BANK7D.S
	LIB		ROM\MBIT0F\BANK7E.S
	LIB		ROM\MBIT0F\BANK7F.S

;********************************
	LIB		SOURCE\ENGINE\INCLUDES\EQUATE.S
	LIB		ROM\INCLUDES\SCRIPT_EQU.S

;********************************
	END
;********************************