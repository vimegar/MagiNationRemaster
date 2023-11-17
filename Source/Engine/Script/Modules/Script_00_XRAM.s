;********************************
; SCRIPT_00_XRAM.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; HL:	Address of var
?CMD_EXPRXRAMBIT
	SCRIPT_WORD			H,L
	SCRIPT_BYTE			E
	PUSH				HL
	PUSH				DE

	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON

	CALL				?EXPR_GET_VALUE
	LD					A,E
	OR					D
	POP					DE
	POP					HL
	JR					Z,_FALSE
	
	LD					A,(HL)
	OR					E
	LD					(HL),A
	
	BATTERY_OFF
	JP					?SCRIPT_PLAY_NEXT

_FALSE
	LD					A,E
	CPL
	LD					E,(HL)
	AND					E
	LD					(HL),A
	
	BATTERY_OFF
	JP					?SCRIPT_PLAY_NEXT

;********************************
; HL:	Address of var
?CMD_EXPRXRAMBYTE
	SCRIPT_WORD			H,L
	PUSH				HL

	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	CALL				?EXPR_GET_VALUE
	POP					HL
	LD					(HL),E
	BATTERY_OFF
	JP					?SCRIPT_PLAY_NEXT

;********************************
; HL:	Address of var
?CMD_EXPRXRAMWORD
	SCRIPT_WORD			H,L
	PUSH				HL
	
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	CALL				?EXPR_GET_VALUE
	POP					HL
	LD					A,E
	LD					(HLI),A
	LD					(HL),D
	BATTERY_OFF
	JP					?SCRIPT_PLAY_NEXT

;********************************
; HL:	Address of var
?CMD_NEXTGAMECOUNT
	CALL		?NEXT_GAMECOUNT
	JP			?SCRIPT_PLAY_NEXT

;********************************
; HL:	Address of var
?CMD_SETGAMECOUNT
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	SCRIPT_WORD			D,E
	FSET16				D,E,XRAM_GAMECOUNT
	BATTERY_OFF
	SET16				B,C,SCRIPT_WFRAME

	MOVADDR		SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	XCALL		?SET_GAMECOUNT
	RET

;********************************
; HL:	Address of var
?CMD_SETWRAMBYTE
	SCRIPT_WORD			H,L
	LD					A,(BC)
	INC					BC
	SWITCH_RAM_BANK		A
	LD					A,(BC)
	LD					(HL),A
	INC					BC
	JP					?SCRIPT_PLAY_NEXT

;********************************
; HL:	Address of var
?CMD_SETWRAMWORD
	SCRIPT_WORD			H,L
	LD					A,(BC)
	INC					BC
	SWITCH_RAM_BANK		A
	LD					A,(BC)
	LD					(HLI),A
	INC					BC
	LD					A,(BC)
	LD					(HL),A
	INC					BC
	JP					?SCRIPT_PLAY_NEXT

;********************************
; HL:	Address of var
?CMD_SETXRAMBYTE
	SCRIPT_WORD			H,L
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	LD					A,(BC)
	LD					(HL),A
	INC					BC
	BATTERY_OFF
	JP					?SCRIPT_PLAY_NEXT

;********************************
; HL:	Address of var
?CMD_SETXRAMWORD
	SCRIPT_WORD			H,L
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	LD					A,(BC)
	LD					(HLI),A
	INC					BC
	LD					A,(BC)
	LD					(HL),A
	INC					BC
	BATTERY_OFF
	JP					?SCRIPT_PLAY_NEXT

;********************************
; HL:	Address of var
?CMD_XRAMBITAND
	SCRIPT_WORD			H,L
	SCRIPT_BYTE			E
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	LD					A,(HL)
	AND					E
	LD					(HL),A
	BATTERY_OFF
	JP					?SCRIPT_PLAY_NEXT

;********************************
; HL:	Address of var
?CMD_XRAMBITOR
	SCRIPT_WORD			H,L
	SCRIPT_BYTE			E
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	LD					A,(HL)
	OR					E
	LD					(HL),A
	BATTERY_OFF
	JP					?SCRIPT_PLAY_NEXT

;********************************
	END
;********************************