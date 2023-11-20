;********************************
; MBIT09.S
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
	LIB		ROM\MBIT09\BANK48.S
	LIB		ROM\MBIT09\BANK49.S
	LIB		ROM\MBIT09\BANK4A.S
	LIB		ROM\MBIT09\BANK4B.S
	LIB		ROM\MBIT09\BANK4C.S
	LIB		ROM\MBIT09\BANK4D.S
	LIB		ROM\MBIT09\BANK4E.S
	LIB		ROM\MBIT09\BANK4F.S
	
;********************************
	LIB		SOURCE\ENGINE\INCLUDES\EQUATE.S
	LIB		ROM\INCLUDES\SCRIPT_EQU.S

;********************************
	END
;********************************