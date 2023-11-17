;********************************
; EXPRESSION.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
EXPR_FUNC_TABLE
	DEFW		?EXPR_FUNC_XRAMBIT
	DEFW		?EXPR_FUNC_XRAMBYTE
	DEFW		?EXPR_FUNC_XRAMWORD
	DEFW		?EXPR_FUNC_FACEHERO
	DEFW		?EXPR_FUNC_GAMECOUNT
	DEFW		?EXPR_FUNC_BYTECONST
	DEFW		?EXPR_FUNC_INTCONST
	DEFW		?EXPR_FUNC_BITAND
	DEFW		?EXPR_FUNC_AND
	DEFW		?EXPR_FUNC_OR
	DEFW		?EXPR_FUNC_NOT
	DEFW		?EXPR_FUNC_ADD
	DEFW		?EXPR_FUNC_SUB
	DEFW		?EXPR_FUNC_INC
	DEFW		?EXPR_FUNC_DEC
	DEFW		?EXPR_FUNC_EQU
	DEFW		?EXPR_FUNC_NOTEQU
	DEFW		?EXPR_FUNC_GRTR
	DEFW		?EXPR_FUNC_GRTREQU
	DEFW		?EXPR_FUNC_LESS
	DEFW		?EXPR_FUNC_LESSEQU
	DEFW		?EXPR_FUNC_RND
	DEFW		?EXPR_FUNC_WBANK

;********************************
?EXPR_FUNC_XRAMBIT
	SCRIPT_WORD		H,L
	
	LD				A,(HL)
	LD				E,A
	LD				A,(BC)
	INC				BC
	AND				E
	JR				Z,_FALSE

	LD				DE,$FFFF
	RET
	
_FALSE
	LD				DE,$0000
	RET

;********************************
?EXPR_FUNC_XRAMBYTE
	SCRIPT_BYTE		L
	SCRIPT_BYTE		H
	LD				E,(HL)
	LD				D,$00
	RET

;********************************
?EXPR_FUNC_XRAMWORD
	SCRIPT_BYTE		L
	SCRIPT_BYTE		H
	LD				A,(HLI)
	LD				E,A
	LD				D,(HL)
	RET

;********************************
?EXPR_FUNC_FACEHERO
	LD				A,(HEROACTOR_FLAGS)
	CPL
	AND				%00000011
	LD				E,A
	LD				D,0
	
	RET

;********************************
?EXPR_FUNC_GAMECOUNT

	LD		A,(XRAM_GAMECOUNT)
	LD		E,A
	LD		A,(XRAM_GAMECOUNT+1)
	LD		D,A
	RET

;********************************
?EXPR_FUNC_BYTECONST

	LD		A,(BC)
	INC		BC
	LD		E,A
	LD		D,$00
	
	RET

;********************************
?EXPR_FUNC_INTCONST

	LD		A,(BC)
	INC		BC
	LD		E,A
	
	LD		A,(BC)
	INC		BC
	LD		D,A
	
	RET

;********************************
?EXPR_FUNC_BITAND

	CALL	?EXPR_GET_BRANCH
	
	LD		A,E
	AND		L
	LD		E,A
	
	LD		A,D
	AND		H
	LD		D,A
	
	RET

;********************************
?EXPR_FUNC_AND

	CALL	?EXPR_GET_BRANCH
	
	LD		A,E						;1
	OR		D						;1
	LD		DE,$0000				;3
	RET		Z						;2/5

	LD		A,L						;1
	OR		H						;1
	RET		Z						;2/5

	LD		DE,$FFFF				;3
	RET								;4
	
									;10/14/18
;********************************
?EXPR_FUNC_OR

	CALL	?EXPR_GET_BRANCH
	
	LD		A,E
	OR		L
	JR		NZ,_TRUE

	LD		A,D
	OR		H
	JR		NZ,_TRUE

	LD		DE,$0000
	RET

_TRUE
	LD		DE,$FFFF
	RET

;********************************
?EXPR_FUNC_NOT

	CALL	?EXPR_GET_VALUE
	
	LD		A,D
	OR		E
	JR		Z,_TRUE

	LD		DE,$0000
	RET

_TRUE
	LD		DE,$FFFF
	RET

;********************************
?EXPR_FUNC_ADD

	CALL	?EXPR_GET_BRANCH
	
	LD		A,E
	ADD		A,L
	LD		E,A

	LD		A,D
	ADC		A,H
	LD		D,A
	
	RET

;********************************
?EXPR_FUNC_SUB

	CALL	?EXPR_GET_BRANCH

	LD		A,L
	SUB		E
	LD		E,A
	
	LD		A,H
	SBC		A,D
	LD		D,A

	RET

;********************************
?EXPR_FUNC_INC
	CALL	?EXPR_GET_VALUE
	INC		DE
	RET


;********************************
?EXPR_FUNC_DEC
	CALL	?EXPR_GET_VALUE
	DEC		DE
	RET

;********************************
?EXPR_FUNC_EQU

	CALL	?EXPR_GET_BRANCH
	
	LD		A,E
	CP		L
	JR		NZ,_FALSE

	LD		A,D
	CP		H
	JR		NZ,_FALSE

	LD		DE,$FFFF
	RET
	
_FALSE
	LD		DE,$0000
	RET

;********************************
?EXPR_FUNC_NOTEQU
	
	CALL	?EXPR_GET_BRANCH
	
	LD		A,E
	CP		L
	JR		NZ,_TRUE

	LD		A,D
	CP		H
	JR		NZ,_TRUE

	LD		DE,$0000
	RET
	
_TRUE
	LD		DE,$FFFF
	RET

;********************************
?EXPR_FUNC_GRTR

	CALL	?EXPR_GET_BRANCH
	
	LD		A,E
	SUB		L
	LD		A,D
	SBC		A,H
	JR		NC,_FALSE

	LD		DE,$FFFF
	RET

_FALSE
	LD		DE,$0000
	RET

;********************************
?EXPR_FUNC_GRTREQU

	CALL	?EXPR_GET_BRANCH
	
	LD		A,L
	SUB		E
	LD		A,H
	SBC		A,D
	JR		NC,_TRUE

	LD		DE,$0000
	RET

_TRUE
	LD		DE,$FFFF
	RET
	
;********************************
?EXPR_FUNC_LESS

	CALL	?EXPR_GET_BRANCH
	
	LD		A,L
	SUB		E
	LD		A,H
	SBC		A,D
	JR		NC,_FALSE

	LD		DE,$FFFF
	RET

_FALSE
	LD		DE,$0000
	RET

;********************************
?EXPR_FUNC_LESSEQU
	
	CALL	?EXPR_GET_BRANCH
	
	LD		A,E
	SUB		L
	LD		A,D
	SBC		A,H
	JR		NC,_TRUE

	LD		DE,$0000
	RET

_TRUE
	LD		DE,$FFFF
	RET

;********************************
?EXPR_FUNC_RND

	LD		A,(DIV)
	AND		$0F
	LD		E,A
	LD		D,$00

	RET

;********************************
?EXPR_FUNC_WBANK

	PUSH_RAM_BANK

	SWITCH_RAM_BANK		(BC)
	INC					BC

	CALL	?EXPR_GET_VALUE

	POP_RAM_BANK
	RET

;********************************
?EXPR_GET_BRANCH

	CALL	?EXPR_GET_VALUE
	PUSH	DE
	CALL	?EXPR_GET_VALUE
	POP		HL
	
	RET

;********************************
?EXPR_GET_VALUE

	LD		A,(BC)
	INC		BC
	
	ADD		A,A
	LD		E,A
	LD		D,$00
	LD		HL,EXPR_FUNC_TABLE
	ADD		HL,DE

	LD		A,(HLI)
	LD		H,(HL)
	LD		L,A
	JP		(HL)

;********************************
	END
;********************************
