;********************************
; AI_MAC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000 Interactive Imagination
;	All rights reserved

;********************************
AI_UPDATE_CONTROLLER	MACRO

	LD		A,(TEXTBOX_OPEN)
	AND		A
	JR		Z,_COPY

	XOR		A
	LD		HL,AI_CNT1
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A

	JR		_CLEAR

_COPY
	LD		HL,AI_CNT1
	
	LD		A,(CNT1)
	LD		(HLI),A
	LD		A,(CNTDOWN)
	LD		(HLI),A
	LD		A,(CNTUP)
	LD		(HLI),A

_CLEAR
	ENDM

;********************************
AI_UPDATE_HEROFLAGS	MACRO

	LD		HL,AI_HEROFLAGS_NEXT
	LD		A,(HLI)
	LD		(HLD),A
	XOR		A
	LD		(HL),A

	ENDM

;********************************
	END
;********************************