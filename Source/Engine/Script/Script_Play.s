;********************************
; SCRIPT_PLAY.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?SCRIPT_PLAY
	PUSH_ROM_BANK

	LDA_FF				SCRIPT_WBANK
	BIT					$07,A
	JR					Z,_SCRIPT_BANK
	LD					A,SCRIPT_BANK_XX

_SCRIPT_BANK
	SWITCH_ROM_BANK		A

	FGET16		B,C,SCRIPT_WFRAME
	GET16		H,L,SCRIPT_WSTATE
	CALL_HL

	POP_ROM_BANK
	RET

;********************************
?SCRIPT_START
?SCRIPT_PLAY_NEXT
	LD			A,(BC)
	INC			BC

	ADD			A,A		;1
	LD			E,A		;1
	LD			D,$00	;2
	RL			D		;2
	
	FSET16		B,C,SCRIPT_WFRAME
	
	LD			HL,SCRIPT_TABLE
	ADD			HL,DE

	SWITCH_ROM_BANK		SCRIPT_BANK_XX

	LD			A,(HLI)
	LD			H,(HL)
	LD			L,A

	SWITCH_ROM_BANK		(SCRIPT_WBANK)

	SET16		H,L,SCRIPT_WSTATE
	JP			(HL)

;********************************
	END
;********************************
