;********************************
; SCRIPT_00_FLOW.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB			SOURCE\ENGINE\SCRIPT\MODULES\EXPRESSION\EXPRESSION.S

;********************************
?CMD_DELAY
	LD			A,(BC)
	INC			BC
	LDFF_A		SCRIPT_WCOUNT
	SET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,_DELAY
	
_DELAY
	LDA_FF		SCRIPT_WCOUNT
	AND			A
	JP			Z,?SCRIPT_PLAY_NEXT

	DEC			A
	LDFF_A		SCRIPT_WCOUNT
	RET

;********************************
?CMD_DELAYRANDOM

	SCRIPT_WORD			H,L
	SWITCH_ROM_BANK		:DELAY_RND_TABLES

	RANDVAL		E
	AND			$0F
	LD			E,A
	LD			D,$00
	ADD			HL,DE
	
	LD			A,(HL)

	LDFF_A		SCRIPT_WCOUNT
	SET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,_DELAY
	
_DELAY
	LDA_FF	TICKER
	AND		%00000011
	CP		$03
	RET		NZ

	LDA_FF		SCRIPT_WCOUNT
	AND			A
	JP			Z,?SCRIPT_PLAY_NEXT
	
	DEC			A
	LDFF_A		SCRIPT_WCOUNT
	RET

;********************************
?CMD_END
	LD			A,$01
	LD			(SCRIPT_DONE),A
	MOVADDR_FF	SCRIPT_WFRAME,$0000
	MOVADDR_FF	SCRIPT_WSTATE,?CMD_END
	RET

;********************************
?CMD_IF

	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	CALL		?EXPR_GET_VALUE
	BATTERY_OFF

	LD			A,E
	OR			D
	JR			Z,_SKIP

	SET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,?CMD_JUMP
	RET
	

_SKIP
	INC			BC
	INC			BC
	INC			BC

	SET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET

;********************************
?CMD_INITSKIP
	LD			A,(SCREEN_VISIBLE)
	AND			A
	JP			Z,?CMD_JUMPLOCAL

	INC			BC
	INC			BC
	JP			?SCRIPT_PLAY_NEXT

;********************************
?CMD_JUMP
	LD		A,(BC)
	LD		E,A
	LD		(SCRIPT_WBANK),A
	INC		BC

	LD		A,(BC)
	LD		L,A
	INC		BC
	LD		A,(BC)
	LD		B,A
	LD		C,L

	SWITCH_ROM_BANK		E

	JP		?SCRIPT_PLAY_NEXT

;********************************
?CMD_JUMPLOCAL
	LD		A,(BC)
	LD		L,A
	INC		BC
	LD		A,(BC)
	LD		B,A
	LD		C,L

	JP		?SCRIPT_PLAY_NEXT

;********************************
?CMD_JUMPRANDOM

	LD		A,(BC)
	INC		BC
	LD		L,A

	RANDVAL	E
	AND		$0F

_LOOP
	CP		L
	JR		C,_OKAY
	SUB		L
	JR		_LOOP

_OKAY
	LD		L,A
	ADD		A,A
	ADD		A,L
	LD		L,A
	LD		H,$00
	
	ADD		HL,BC
	LD		C,L
	LD		B,H
	
	JP		?CMD_JUMP

;********************************
?CMD_PASS
	SET16_FF	B,C,SCRIPT_WSTATE
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET

;********************************
?CMD_RANGESWITCH

	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	CALL				?EXPR_GET_VALUE
	BATTERY_OFF

	JR					_SWITCH
	
_SKIP0
	INC				BC
	INC				BC

_SKIP1
	INC				BC
	INC				BC

	POP				HL

_SWITCH
	; GET BANK/FLAG, RETURN IF $FF
	;--------------------------------
	SCRIPT_BYTE		L
	CP				$FF
	JR				NZ,_CHECK

	JP				?SCRIPT_PLAY_NEXT

	; CHECK AGAINST EXPRESSION
	;--------------------------------
_CHECK
	PUSH			HL

	; DE >= HL
	;--------------------------------
	SCRIPT_WORD		H,L
	LD		A,E
	SUB		L
	LD		A,D
	SBC		A,H
	JR		NC,_TRUE0
	JR		_SKIP0
_TRUE0

	; DE <= HL
	;--------------------------------
	SCRIPT_WORD		H,L
	LD		A,L
	SUB		E
	LD		A,H
	SBC		A,D
	JR		NC,_TRUE1
	JR		_SKIP1
_TRUE1

	POP		HL

	; MATCH: INIT THE SCRIPT
	;--------------------------------
	LD		A,(BC)
	LD		E,A
	INC		BC
	LD		A,(BC)
	LD		B,A
	LD		C,E

	LD		A,L
	LD		(SCRIPT_WBANK),A

	SWITCH_ROM_BANK		L

	JP		?SCRIPT_PLAY_NEXT

;********************************
?CMD_RESET
	
	LD		A,(BC)
	LDFF_A	SCRIPT_WBANK
	INC		BC
	LD		A,(BC)
	LDFF_A	SCRIPT_WFRAME
	INC		BC
	LD		A,(BC)
	LDFF_A	SCRIPT_WFRAME+$01

	LD		A,$01
	LD		(SCRIPT_DONE),A

	MOVADDR		SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET

;********************************
?CMD_SWITCH

	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	CALL				?EXPR_GET_VALUE
	BATTERY_OFF

	JR					_SWITCH
	
_SKIP0
	INC				BC

_SKIP1
	INC				BC
	INC				BC

_SWITCH
	; GET BANK/FLAG, RETURN IF $FF
	;--------------------------------
	SCRIPT_BYTE		L
	CP				$FF
	JR				NZ,_CHECK

	JP				?SCRIPT_PLAY_NEXT

	; CHECK AGAINST EXPRESSION
	;--------------------------------
_CHECK
	LD				A,(BC)
	INC				BC
	CP				E
	JR				NZ,_SKIP0

	LD				A,(BC)
	INC				BC
	CP				D
	JR				NZ,_SKIP1
	
	; MATCH: INIT THE SCRIPT
	;--------------------------------
	LD		A,(BC)
	LD		E,A
	INC		BC
	LD		A,(BC)
	LD		B,A
	LD		C,E

	LD		A,L
	LD		(SCRIPT_WBANK),A

	SWITCH_ROM_BANK		L

	JP		?SCRIPT_PLAY_NEXT

;********************************
	END
;********************************