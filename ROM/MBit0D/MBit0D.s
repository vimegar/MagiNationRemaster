;********************************
; MBIT0D.S
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
	LIB		ROM\MBIT0D\BANK68.S
	LIB		ROM\MBIT0D\BANK69.S
	LIB		ROM\MBIT0D\BANK6A.S
	LIB		ROM\MBIT0D\BANK6B.S
	LIB		ROM\MBIT0D\BANK6C.S
	LIB		ROM\MBIT0D\BANK6D.S
	LIB		ROM\MBIT0D\BANK6E.S
	LIB		ROM\MBIT0D\BANK6F.S

;********************************
	LIB		SOURCE\ENGINE\INCLUDES\EQUATE.S
	LIB		ROM\INCLUDES\SCRIPT_EQU.S

;********************************
	END
;********************************