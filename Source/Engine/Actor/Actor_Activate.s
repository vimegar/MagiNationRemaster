;********************************
; ACTOR_ACTIVATE.S
;********************************
;	Author: Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; HL:	<- Addr of saved actor
?ACTOR_CHECK_RESTORE

	LD			A,(ACTOR_RESTORE_FLAG)
	CP			SCRIPT_RESTORE_BACK
	RET			NZ

?ACTOR_RESTORE_STATE
	XOR			A
	LD			(ACTOR_RESTORE_FLAG),A

	GET16		H,L,ACTOR_SWAP
	LD			BC,SAVEACTOR
	LD			E,ACTOR_STRUCT_SIZE

_LOOP1
	LD			A,(BC)
	INC			BC
	LD			(HLI),A
	DEC			E
	JR			NZ,_LOOP1
	
	RET

;********************************
?ACTOR_SAVE_STATE

	LD			A,SCRIPT_RESTORE_FULL
	LD			(ACTOR_RESTORE_FLAG),A

	LDA_FF		ACTOR_CURRENT
	LD			L,A
	LD			(ACTOR_SWAP),A
	LDA_FF		ACTOR_CURRENT+$01
	LD			H,A
	LD			(ACTOR_SWAP+$01),A
	PUSH		HL
	
	LD			BC,SAVEACTOR
	LD			E,ACTOR_STRUCT_SIZE

_LOOP2
	LD			A,(HLI)
	LD			(BC),A
	INC			BC
	DEC			E
	JR			NZ,_LOOP2

	POP			HL
	RET

;********************************
	END
;********************************
