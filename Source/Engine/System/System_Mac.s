;********************************
; SYSTEM_MAC.S
;********************************
;	Author:	Patrick Meehan/Dylan ExoByte Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\ENGINE\SYSTEM\BATTERY\BATTERY_MAC.S
	LIB		SOURCE\ENGINE\SYSTEM\GRAPHICS\GRAPHICS_MAC.S
	LIB		SOURCE\ENGINE\SYSTEM\MATH\MATH_MAC.S
	LIB		SOURCE\ENGINE\SYSTEM\SOUND\SOUND_MAC.S

;********************************
CALL_FOREIGN	MACRO	func
		LD		HL,func
		LD		E,:func
		CALL	?CALL_FOREIGN
		ENDM

;********************************
;	HL:		Pointer to routine
;	num:	Label postfix
CALL_HL	MACRO
		CALL	?CALL_HL
		ENDM
		
;********************************
COLLISION_INIT		MACRO

		XOR		A
		LD		HL,COLL_MASK
		LD		(HLI),A
		LD		A,1
		LD		(HLI),A
		XOR		A
		LD		(HLI),A
		LD		(HLI),A
		LD		(HLI),A
		LD		(HLI),A
		LD		(HLI),A
		LD		(HLI),A
		
		ENDM

;********************************
CONTROLLER_INIT		MACRO
		XOR		A
		LD		(CNT1),A
		LD		(CNTDOWN),A
		LD		(CNTUP),A
		ENDM

;********************************
DEC16_LOOP	MACRO	rh,rl,label

		DEC		rh&rl
		LD		A,rl
		OR		rh
		JR		NZ,label
		ENDM
		
;********************************
; DE is molested
DECHL_16	MACRO
		LD		A,(HLI)		;2
		LD		D,(HL)		;2

		LD		E,A			;1
		DEC		DE			;2
		LD		A,D			;1
		
		LD		(HLD),A		;2
		LD		(HL),E		;2

		ENDM	

;********************************
	;	HL:		Pointer to dereference
DEREF_HL	MACRO
		LD		A,(HLI)
		LD		H,(HL)
		LD		L,A
		ENDM
	
;********************************
;	HL:		Pointer to routine pointer
ECALL_HL	MACRO	
			DEREF_HL		
			CALL	?CALL_HL
			
			ENDM
		
;********************************
;USE WITH HL OK (AND SHOULD PROBABLY ALWAYS BE DONE)
FGET16	MACRO	rh,rl,source
		LD		HL,source
		LD		A,(HLI)
		LD		rh,(HL)
		LD		rl,A
		ENDM

;********************************
;DO _NOT_ USE HL
FSET16	MACRO	rh,rl,source
		LD		HL, source
		LD		A,rl
		LD		(HLI),A
		LD		(HL),rh
		ENDM

;********************************
GET8	MACRO	r,source
		LD		A,(source)
		LD		r,A
		ENDM

;********************************
GET16	MACRO	rh,rl,source
		LD		A,(source+1)
		LD		rh,A
		LD		A,(source)
		LD		rl,A
		ENDM

;********************************
GET8_FF		MACRO		r,source
			LDA_FF		source
			LD			r,A
			ENDM

;********************************
GET16_FF	MACRO		rh,rl,source
			LDA_FF		source+1
			LD			rh,A
			LDA_FF		source
			LD			rl,A
			ENDM

;********************************
ICON_EQU	MACRO	name,id,bank
name	EQU		((($4000+(id * $190))!&$FFF0)+(bank!&$0F))
		ENDM

;********************************		
; DE is molested	
INCHL_16	MACRO
		LD		A,(HLI)		;2
		LD		D,(HL)		;2

		LD		E,A			;1
		INC		DE			;2
		LD		A,D			;1
		
		LD		(HLD),A		;2
		LD		(HL),E		;2

		ENDM

;********************************
JR_NC	MACRO	num
		DB		%00110000
		DB		(num)!&$FF
		ENDM

;********************************
LDA_FF	MACRO	offset
		DB		$F0
		DB		offset!&$FF
		ENDM

;********************************
LDFF_A	MACRO	offset
		DB		$E0
		DB		offset!&$FF
		ENDM

;********************************
LD_BCI_HLI		MACRO
	LD			A,(HLI)
	LD			(BC),A
	INC			BC
	
	ENDM

;********************************
LD_HLI_BCI		MACRO
	LD			A,(BC)
	LD			(HLI),A
	INC			BC
	
	ENDM		
		
;********************************
MEM_ADD	MACRO	addr,total,value,max
		LD		HL,addr
		LD		BC,total
		LD		D,max
		LD		A,value
		LD		E,A
		CALL	?MEM_ADD
		ENDM

;********************************
MEM_AND	MACRO	addr,total,value
		LD		HL,addr
		LD		BC,total
		LD		A,value
		LD		E,A
		CALL	?MEM_AND
		ENDM

;********************************
MEM_MOV	MACRO	dest,source,total
		LD		HL,source
		LD		DE,dest
		LD		BC,total
		CALL	?MEM_MOV
		ENDM

;********************************
MEM_OR	MACRO	addr,total,value
		LD		HL,addr
		LD		BC,total
		LD		A,value
		LD		E,A
		CALL	?MEM_OR
		ENDM
	
;********************************
MEM_SET	MACRO	addr,total,value
		LD		HL,addr
		LD		BC,total
		LD		A,value
		LD		E,A
		CALL	?MEM_SET
		ENDM

;********************************
MEM_XOR	MACRO	addr,total,value
		LD		HL,addr
		LD		BC,total
		LD		A,value
		LD		E,A
		CALL	?MEM_XOR
		ENDM

;********************************
MOV8	MACRO	dest,source
	LD		A,(source)
	LD		(dest),A
	ENDM

;********************************
MOV16	MACRO	dest,source
	MOV8		dest,source
	MOV8		dest+$01,source+$01
	ENDM

;********************************
; stores L,H Little Endian (just like DW)
MOV16_REG MACRO	rh,rl,dest
	LD			A,rl
	LD			(dest),A
	LD			A,rh
	LD			(dest+1),A
	ENDM
	
;********************************
;	dest:		RAM variable
;	source:		A 16 bit value
MOVADDR	MACRO	dest, source
	LD		A,source!&$FF
	LD		(dest),A
	LD		A,(source>>8)!&$FF
	LD		(dest+1),A
	ENDM

;********************************
;	dest:		RAM variable
;	source:		A 16 bit value
MOVADDR_FF	MACRO	dest, source
	LD			A,source!&$FF
	LDFF_A		dest
	LD			A,(source>>8)!&$FF
	LDFF_A		dest+1
	ENDM

;********************************
POP_RAM_BANK	MACRO
	POP			AF				;3		;1
	LD			(RAM_BANK),A	;4		;3
	LD			(SVBK),A		;4		;3
	ENDM

;********************************
POP_ROM_BANK	MACRO
	POP			AF				;3		;1
	LD			(ROM_BANK),A	;4		;3
	LD			(ROMB0),A		;4		;3
	ENDM

;********************************
;	Molests DE,HL
PUSH_RAM_BANK	MACRO
	LD			A,(RAM_BANK)	;4		;3
	PUSH		AF				;4		;1
	ENDM

;********************************
;	Molests DE,HL
PUSH_ROM_BANK	MACRO
	LD			A,(ROM_BANK)	;4		;3
	PUSH		AF				;4		;1
	ENDM

;********************************
RESTORE_REGISTERS	MACRO
		POP		HL
		POP		DE
		POP		BC
		POP		AF

		ENDM

;********************************
SAVE_REGISTERS	MACRO
		PUSH	AF
		PUSH	BC
		PUSH	DE
		PUSH	HL
		
		
		ENDM

;********************************
SCREEN_HIDE		MACRO
	CALL	?SCREEN_HIDE
	ENDM

;********************************
SCREEN_SHOW		MACRO
	CALL	?SCREEN_SHOW
	ENDM

;********************************
SET8	MACRO	r,source
		LD		A,r
		LD		(source),A
		ENDM

;********************************
SET16	MACRO	rh,rl,source
		LD		A,rh
		LD		(source+1),A
		LD		A,rl
		LD		(source),A
		ENDM

;********************************
SET8_FF		MACRO	r,source
			LD		A,r
			LDFF_A	source
			ENDM

;********************************
SET16_FF	MACRO	rh,rl,source
			LD		A,rh
			LDFF_A	source+1
			LD		A,rl
			LDFF_A	source
			ENDM

;********************************
SWITCH_RAM_BANK		MACRO	bank
		LD			A,bank			;2
		LD			(RAM_BANK),A	;4
		LDFF_A		SVBK			;3
		ENDM
		
;********************************
SWITCH_ROM_BANK		MACRO	bank
		LD			A,bank
		LD			(ROM_BANK),A
		LD			(ROMB0),A
		ENDM

;********************************
STACK_INIT		MACRO
		LD		SP,STACK_TOP
		ENDM

;********************************
SYSTEM_INIT		MACRO
		CALL	?SYSTEM_INIT
		ENDM

;********************************
;WAITS TIL A OR B IS HIT
WAIT_AB MACRO	loop

loop

	CALL	?SYSTEM_UPDATE_GAME
	LD		A,(CNTDOWN)	
	AND		3
	JR		Z,loop
	CALL	?SYSTEM_UPDATE_GAME

	ENDM

	
;********************************
;WAITS TIL A OR B IS HIT
WAIT_AB_NOSCRIPT MACRO	loop

loop

	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT
	LD		A,(CNTDOWN)	
	AND		3
	JR		Z,loop
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT

	ENDM

;********************************
XCALL		MACRO	func
	SWITCH_ROM_BANK		:func
	CALL				func
	ENDM

;********************************
	END
;********************************