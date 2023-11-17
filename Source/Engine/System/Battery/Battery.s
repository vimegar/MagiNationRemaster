;********************************
; BATTERY.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB			SOURCE\ENGINE\SYSTEM\BATTERY\VERIFICATION_STRING.S

;********************************
?BATTERY_READY_GAME

	; ACCESS THE BANK OF THE GAME FILE
	;--------------------------------
	XOR		A
	LD		(RAMB),A

	; TURN ON XRAM ACCESS
	;--------------------------------
	BATTERY_ON

	; GET THE SAVE FILE BANK
	;--------------------------------
	LD		A,(XRAM_SAVE_FILE)
	LD		B,A					; B = Save file bank (0 or 2)

	; VERIFY FILE BANK VALIDITY
	;--------------------------------
	AND		A
	JR		Z,_OK
	CP		$02
	JP		NZ,?XRAM_FORMAT
_OK

	; WRITE THE SAVE FILE BANK TO WORK BANK
	;--------------------------------
	LD		A,$02
	LD		(RAMB),A
	LD		A,B
	LD		(XRAM_SAVE_FILE),A
	
	; D: SAVE BANK, E: WORK BANK
	;--------------------------------
	LD		D,A
	LD		A,B					; Toggle the save file bank
	XOR		$02
	LD		E,A
	LD		(BATTERY_BANK),A	; Battery bank = work bank

	; COPY SAVE XRAM INTO WORK XRAM
	;--------------------------------
	SWITCH_RAM_BANK		WRAM_INFLATE

	CALL	_FILE_BANK
	CALL	_FILE_BANK

	BATTERY_OFF

	RET

	; COPY ONE BANK OF XRAM ($2000 BYTES)
	;--------------------------------
_FILE_BANK
	LD		BC,$A000
	CALL	_COPY_DATA
	LD		BC,$B000
	CALL	_COPY_DATA
	INC		E
	INC		D
	RET

	; COPY XRAM THROUGH WRAM ($1000 BYTES)
	;--------------------------------
_COPY_DATA

	; XRAM --> WRAM
	;--------------------------------
	LD		HL,$D000
	LD		A,D
	LD		(RAMB),A
	
_LOOP1
	LD		A,(BC)
	LD		(HLI),A
	INC		BC
	LD		A,(BC)
	LD		(HLI),A
	INC		BC
	LD		A,(BC)
	LD		(HLI),A
	INC		BC
	LD		A,(BC)
	LD		(HLI),A
	INC		BC

	LD		A,H
	CP		$E0
	JR		NZ,_LOOP1

	; XRAM <-- WRAM
	;--------------------------------
	LD		A,E
	LD		(RAMB),A
	DEC		BC
	DEC		HL

_LOOP2
	LD		A,(HLD)
	LD		(BC),A
	DEC		BC
	LD		A,(HLD)
	LD		(BC),A
	DEC		BC
	LD		A,(HLD)
	LD		(BC),A
	DEC		BC
	LD		A,(HLD)
	LD		(BC),A
	DEC		BC

	LD		A,H
	CP		$CF
	JR		NZ,_LOOP2

	RET

;********************************
?LOAD_GAME

	; ACCESS THE BANK OF THE GAME FILE
	;--------------------------------
	XOR			A
	LD			(RAMB),A
	BATTERY_ON

	LD			D,$10
	LD			BC,XRAM_VERIFY0
	LD			HL,VERIFICATION_STRING
_LOOP0
	LD			A,(HLI)
	LD			E,A
	LD			A,(BC)
	
	CP			E
	JP			NZ,?XRAM_FORMAT
	
	INC			BC
	DEC			D
	JR			NZ,_LOOP0
	
	LD			D,$10
	LD			BC,XRAM_VERIFY1
	DEC			HL
_LOOP1
	LD			A,(HLD)
	LD			E,A
	LD			A,(BC)
	
	CP			E
	JP			NZ,?XRAM_FORMAT
	
	INC			BC
	DEC			D
	JR			NZ,_LOOP1

	JP			?BATTERY_READY_GAME

;********************************
?NEXT_GAMECOUNT

	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	FGET16				D,E,XRAM_GAMECOUNT
	INC					DE
	FSET16				D,E,XRAM_GAMECOUNT

	JP					?SET_GAMECOUNT

;********************************
?SAVE_GAME

	BATTERY_ON

	; SWITCH THE SAVE FILE
	;--------------------------------
	XOR		A
	LD		(RAMB),A

	LD		A,(BATTERY_BANK)
	LD		(XRAM_SAVE_FILE),A

	; UPDATE THE WORK FILE
	;--------------------------------
	JP		?BATTERY_READY_GAME

;********************************
?SET_GAMECOUNT

	; ACCESS THE BANK OF THE GAME FILE
	;--------------------------------
	BATTERY_SET_BANK	RAMB_GAMESTATE

	; TURN ON XRAM ACCESS
	;--------------------------------
	BATTERY_ON

	XOR		A

	LD		D,TOTAL_GSBYTES
	LD		HL,XRAM_SAVEBITS
_LOOP0
	LD		(HLI),A
	DEC		D
	JR		NZ,_LOOP0

	LD		D,TOTAL_GSBYTES
	LD		HL,XRAM_SAVEVARS
_LOOP1
	LD		(HLI),A
	DEC		D
	JR		NZ,_LOOP1

	BATTERY_OFF

	RET

;********************************
?XRAM_FORMAT

	BATTERY_ON

	; CLEAR XRAM
	;--------------------------------
	LD			C,$04
		
_LOOP
	PUSH		BC
	LD			A,C
	DEC			A
	LD			(RAMB),A
	MEM_SET		$A000,$2000,$00
	POP			BC
	DEC			C
	JR			NZ,_LOOP

	; WRITE VERIFICATION
	;--------------------------------
	XOR			A
	LD			(RAMB),A
	CALL		_WRITE_VERIFICATION

	LD			A,$02
	LD			(RAMB),A
	CALL		_WRITE_VERIFICATION

	; SET THE WORK BANK
	;--------------------------------
	LD			A,$02
	LD			(BATTERY_BANK),A

	BATTERY_OFF
	
	RET

_WRITE_VERIFICATION

	LD			A,:?_MAIN
	LD			(XRAM_LOAD_BANK),A
	MOVADDR		XRAM_LOAD_SCRIPT,?_MAIN

	LD			D,$10
	LD			BC,XRAM_VERIFY0
	LD			HL,VERIFICATION_STRING
_LOOP0
	LD			A,(HLI)
	LD			(BC),A
	INC			BC
	DEC			D
	JR			NZ,_LOOP0
	
	LD			D,$10
	LD			BC,XRAM_VERIFY1
	DEC			HL
_LOOP1
	LD			A,(HLD)
	LD			(BC),A
	INC			BC
	DEC			D
	JR			NZ,_LOOP1

	RET

;********************************
	END
;********************************