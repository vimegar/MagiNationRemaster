;********************************
; MBIT03.S
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
	LIB		ROM\MBIT03\BANK18.S
	LIB		ROM\MBIT03\BANK19.S
	LIB		ROM\MBIT03\BANK1A.S
	LIB		ROM\MBIT03\BANK1B.S
	LIB		ROM\MBIT03\BANK1C.S
	LIB		ROM\MBIT03\BANK1D.S
	LIB		ROM\MBIT03\BANK1E.S
	LIB		ROM\MBIT03\BANK1F.S

;********************************
	LIB		SOURCE\ENGINE\INCLUDES\EQUATE.S
	LIB		ROM\INCLUDES\SCRIPT_EQU.S

;********************************
	END
;********************************