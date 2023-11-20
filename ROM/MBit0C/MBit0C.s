;********************************
; MBIT0C.S
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
	LIB		ROM\MBIT0C\BANK60.S
	LIB		ROM\MBIT0C\BANK61.S
	LIB		ROM\MBIT0C\BANK62.S
	LIB		ROM\MBIT0C\BANK63.S
	LIB		ROM\MBIT0C\BANK64.S
	LIB		ROM\MBIT0C\BANK65.S
	LIB		ROM\MBIT0C\BANK66.S
	LIB		ROM\MBIT0C\BANK67.S

;********************************
	LIB		SOURCE\ENGINE\INCLUDES\EQUATE.S
	LIB		ROM\INCLUDES\SCRIPT_EQU.S

;********************************
	END
;********************************