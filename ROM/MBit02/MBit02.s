;********************************
; MBIT02.S
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
	LIB		ROM\MBIT02\BANK10.S
	LIB		ROM\MBIT02\BANK11.S
	LIB		ROM\MBIT02\BANK12.S
	LIB		ROM\MBIT02\BANK13.S
	LIB		ROM\MBIT02\BANK14.S
	LIB		ROM\MBIT02\BANK15.S
	LIB		ROM\MBIT02\BANK16.S
	LIB		ROM\MBIT02\BANK17.S

;********************************
	LIB		SOURCE\ENGINE\INCLUDES\EQUATE.S
	LIB		ROM\INCLUDES\SCRIPT_EQU.S

;********************************
	END
;********************************