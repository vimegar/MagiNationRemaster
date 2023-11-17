;********************************
; ACTORLIST_INIT.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?ACTORLIST_INIT

	LD		B,ACTORLIST_MAX_ACTORS
	XOR		A
	LD		HL,ACTORLIST_TABLE
_LOOP1 
	LD		(HLI),A
	LD		(HLI),A
	DEC		B
	JR		NZ,_LOOP1

	LD		B,ACTORLIST_MAX_ACTORS
	LD		DE,ACTORLIST_TABLE
	LD		HL,ACTORLIST_FREE_STACK
_LOOP2
	LD		A,E
	LD		(HLI),A
	LD		A,D
	LD		(HLI),A
	INC		DE
	INC		DE
	DEC		B
	JR		NZ,_LOOP2

	MOVADDR		ACTORLIST_FREE_CURSOR,ACTORLIST_FREE_STACK

	; INIT CAST
	;--------------------------------
	LD		HL,ACTOR_RAM
	LD		DE,ACTOR_STRUCT_SIZE
	LD		C,ACTOR_CAST_TOTAL

_LOOP3
	SET		$07,(HL)
	RES		$06,(HL)
	ADD		HL,DE
	DEC		C
	JR		NZ,_LOOP3

	RET

;********************************
	END
;********************************