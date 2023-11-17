;********************************
; SYSTEM_EXTRA.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?CHECK_CONTROLLER
	LD		A,(CNT1)
	LD		D,A				;D = Previous controller state

	LD		A,$20
	LD		(P1),A
	LD		A,(P1)
	LD		A,(P1)
	CPL
	AND		$0F
	SWAP	A
	LD		B,A
	LD		A,$10
	LD		(P1),A
	LD		A,(P1)
	LD		A,(P1)
	LD		A,(P1)
	LD		A,(P1)
	LD		A,(P1)
	LD		A,(P1)
	CPL
	AND		$0F
	OR		B
	LD		(CNT1),A		;A = Current controller state
	
	LD		C,A				;C = Current controller state
	
	AND		$0F				;Check all buttons
	CP		$0F
	JR		NZ,_SKIP_RESET
	JP		?SOFT_RESET
_SKIP_RESET	
	
	LD		A,C				;A = Current controller state
	XOR		D				;A = Toggled bits
	LD		E,A				;E = Toggled bits
	AND		C				;Mask out non-pressed buttons
	LD		(CNTDOWN),A		;A = Fresh pressed buttons
	
	LD		A,C				;A = Current controller state
	CPL						;Complement presses
	AND		E				;Mask out pressed buttons
	LD		(CNTUP),A

	LD		A,$30
	LD		(P1),A

	RET

;********************************
?SET_DOUBLE_SPEED 
	LD		A,(KEY1)
	BIT		7,A
	RET		NZ

	LD		A,%00000001
	LD		(KEY1),A
	LD		A,(IE)
	PUSH	AF
	XOR		A
	LD		(IE),A
	LD		A,%00110000
	LD		(P1),A
	STOP
_WAIT 
	LD		A,(KEY1)
	BIT		7,A
	JR		Z,_WAIT
	XOR		A
	LD		(P1),A
	LD		(IF),A
	POP		AF
	LD		(IE),A
	RET

;********************************
?SET_SINGLE_SPEED

	LD		A,(KEY1)
	BIT		7,A
	RET		Z

	LD		A,%00000001
	LD		(KEY1),A
	LD		A,(IE)
	PUSH	AF
	XOR		A
	LD		(IE),A
	LD		A,%00110000
	LD		(P1),A
	STOP
_WAIT
	LD		A,(KEY1)
	BIT		7,A
	JR		NZ,_WAIT
	XOR		A
	LD		(P1),A
	LD		(IF),A
	POP		AF
	LD		(IE),A
	RET

;********************************
?DMASET
	LD		C,$80
	LD		B,$0A
	LD		HL,_DMADATA
_LOOP
	LD		A,(HLI)
	LD		(C),A
	INC		C
	DEC		B
	JR		NZ,_LOOP
	RET

_DMADATA
	DB		$3E,$C0		; LD	A,LABEL2
	DB		$E0,$46		; LD	(DMA),A
	DB		$3E,$28		; LD	A,40	; 160 cycles
	DB		$3D			; L1	DEC	A	; Wait
	DB		$20,$FD		; JR	NZ,L1
	DB		$C9			; RET

;********************************
	END
;********************************