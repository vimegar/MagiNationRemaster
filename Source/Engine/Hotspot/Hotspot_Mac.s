;********************************
; HOTSPOT_MAC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
HOTSPOT_INIT	MACRO
	LD			A,HOTSPOT_NULL
	LD			(HOTSPOT_CURRENT),A

	ENDM

;********************************
CHECK_HOTSPOT	MACRO
	CALL		?CHECK_HOTSPOT
	ENDM

;********************************
	END
;********************************