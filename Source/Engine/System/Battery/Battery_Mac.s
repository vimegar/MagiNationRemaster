;********************************
; BATTERY_MAC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
BATTERY_OFF		MACRO
	XOR		A
	LD		(RAMG),A
	ENDM

;********************************
BATTERY_ON		MACRO
	LD		A,$0A
	LD		(RAMG),A
	ENDM

;********************************
BATTERY_SET_BANK	MACRO	bank
	LD		A,(BATTERY_BANK)
	ADD		A,bank
	LD		(RAMB),A
	ENDM

;********************************
CHECK_VERIFICATION	MACRO
	XCALL				?CHECK_VERIFICATION
	ENDM

;********************************
	END
;********************************