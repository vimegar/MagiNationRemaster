;********************************
; MBIT01.S
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
	LIB		ROM\MBIT01\BANK08.S
	LIB		ROM\MBIT01\BANK09.S
	LIB		ROM\MBIT01\BANK0A.S
	LIB		ROM\MBIT01\BANK0B.S
	LIB		ROM\MBIT01\BANK0C.S
	LIB		ROM\MBIT01\BANK0D.S
	LIB		ROM\MBIT01\BANK0E.S
	LIB		ROM\MBIT01\BANK0F.S

;********************************
	LIB		SOURCE\ENGINE\INCLUDES\EQUATE.S
	LIB		ROM\INCLUDES\SCRIPT_EQU.S

;********************************
	END
;********************************