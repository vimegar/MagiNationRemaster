;********************************
; TRIGGER.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?TRIGGER_START

	LD			A,(SYSTEM_SCRIPT_ACTIVE)
	AND			A
	RET			NZ

	LD			A,(TRIGGER_TABLE_SIZE)
	AND			A
	RET			Z

	LD			E,A

	LD			A,(TRIGGER_CODE)
	ADD			A,$C0		; Add -64

	CP			E
	RET			NC
	
	ADD			A,A			; A * 2
	ADD			A,A			; A * 4

	LD			E,A
	LD			D,$00

	FGET16		H,L,TRIGGER_TABLE
	ADD			HL,DE
	INC			HL

	CALL		?HOTSPOT_SET_SCRIPT
	MOVADDR		SYSTEM_SCRIPT_STATE,?SCRIPT_PLAY_NEXT

	RET

;********************************
	END
;********************************