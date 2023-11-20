;********************************
; MBIT04.S
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
	LIB		ROM\MBIT04\BANK20.S
	LIB		ROM\MBIT04\BANK21.S
	LIB		ROM\MBIT04\BANK22.S
	LIB		ROM\MBIT04\BANK23.S
	LIB		ROM\MBIT04\BANK24.S
	LIB		ROM\MBIT04\BANK25.S
	LIB		ROM\MBIT04\BANK26.S
	LIB		ROM\MBIT04\BANK27.S

;********************************
	LIB		SOURCE\ENGINE\INCLUDES\EQUATE.S
	LIB		ROM\INCLUDES\SCRIPT_EQU.S

;********************************
	END
;********************************