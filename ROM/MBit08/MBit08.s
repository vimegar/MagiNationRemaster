;********************************
; MBIT08.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	ISDMG
	ERRTAG			; Required for outputting the error file
	CAPSOFF			; Distinguish uppercase from lowercase
	PUBALL			; Specify public.

;********************************
	LIB		SOURCE\ENGINE\INCLUDES\MACRO.S	; Include the macros first
	
;********************************
	LIB		ROM\MBIT08\BANK40.S
	LIB		ROM\MBIT08\BANK41.S
	LIB		ROM\MBIT08\BANK42.S
	LIB		ROM\MBIT08\BANK43.S
	LIB		ROM\MBIT08\BANK44.S
	LIB		ROM\MBIT08\BANK45.S
	LIB		ROM\MBIT08\BANK46.S
	LIB		ROM\MBIT08\BANK47.S

;********************************
	LIB		SOURCE\ENGINE\INCLUDES\EQUATE.S
	LIB		ROM\INCLUDES\SCRIPT_EQU.S

;********************************
	END
;********************************