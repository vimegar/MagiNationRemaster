;********************************
; ACTORLIST.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
;	BC:		Actor to add
?ACTORLIST_ADD_ACTOR

	; CHECK THE ACTOR'S FLAGS
	;--------------------------------
	LD		A,(BC)
	BIT		$07,A
	RET		Z

	; GET THE NEXT AVAILABLE FREE ADDRESS
	;--------------------------------
	GET16	H,L,ACTORLIST_FREE_CURSOR

	; CHECK FOR ACTORLIST STACK OVERFLOW
	;--------------------------------
	LD		A,ACTORLIST_FREE_TOP&$FF
	CP		L
	RET		Z

	; RESET THE ACTOR'S FLAGS
	;--------------------------------
	LD		A,ACTOR_FLAGS_STARTVAL
	LD		(BC),A

	; DEREFERENCE HL INTO DE
	;--------------------------------
	LD		A,(HLI)
	LD		E,A
	LD		A,(HLI)
	LD		D,A

	; SET THE ACTOR ADDR (BC) INTO (DE)
	;--------------------------------
	LD		A,C
	LD		(DE),A
	INC		DE
	LD		A,B
	LD		(DE),A

	; STORE THE NEW CURSOR ADDR
	;--------------------------------
	SET16	H,L,ACTORLIST_FREE_CURSOR
	
	RET

;********************************
;	HL:		Slot to release
?ACTORLIST_RELEASE_ACTOR

	; PUSH THE FREE SLOT ONTO THE STACK
	;--------------------------------
	GET16	B,C,ACTORLIST_FREE_CURSOR
	DEC		BC
	LD		A,H
	LD		(BC),A

	DEC		BC
	LD		A,L
	LD		(BC),A
	SET16	B,C,ACTORLIST_FREE_CURSOR

	; DEACTIVATE THE SLOT
	;--------------------------------
	XOR		A
	INC		HL
	LD		(HLD),A
	LD		(HL),A

	RET

;********************************
?ACTORLIST_RUN

	; MAKE SURE FIRST ACTOR IS NOT SORTED
	;--------------------------------
	LD		A,$FF
	LDFF_A	ACTOR_SCREEN_Y
	LDFF_A	ACTOR_SCREEN_YPREV

	; SET ROM BANK & START LIST
	;--------------------------------
	LD					DE,ACTORLIST_TABLE
	LD					HL,ACTORLIST_TABLE

_LOOP
	; MAKE SURE THE SLOT IS ACTIVE
	;--------------------------------
	INC		HL
	LD		A,(HLD)
	AND		A
	JR		Z,_SKIP

	; PUSH THE ACTOR TABLE SLOT ADDR
	;--------------------------------
	PUSH	DE
	PUSH	HL

		; DEREFERENCE HL TO POINT AT THE ACTOR
		;--------------------------------
		LD		A,(HLI)
		LD		H,(HL)
		LD		L,A

		; BC PASSES THE ACTOR ADDR TO AI
		;--------------------------------
		LD		B,H
		LD		C,L

		; CHECK THE ACTOR FLAGS
		;--------------------------------
		LD		A,(HLI)
		BIT		ACTOR_FLAGS_STOP,A
		JR		NZ,_KILL_ACTOR

		; DEREFERENCE HL AND CALL AI
		;--------------------------------
		LD		A,(HLI)
		LD		H,(HL)
		LD		L,A
		CALL_HL

	; POP THE ACTOR TABLE SLOT ADDR
	;--------------------------------
	POP		HL
	POP		DE

	; SORT?
	;--------------------------------
	LDA_FF	ACTOR_SCREEN_Y
	LD		B,A
	LDA_FF	ACTOR_SCREEN_YPREV
	SUB		B
	JR		NC,_NEXT_ACTOR		; PREV >= CURRENT
	
	; SWAP!
	;--------------------------------
	LD		A,(DE)		; BC = (DE)
	INC		DE
	LD		C,A
	LD		A,(DE)
	DEC		DE
	LD		B,A
			
	LD		A,(HLI)		; (DE) = (HL)
	LD		(DE),A
	INC		DE
	LD		A,(HLD)
	LD		(DE),A

	LD		A,C			; (HL) = BC
	LD		(HLI),A
	LD		A,B
	LD		(HLD),A

	JR		_NEXT_ACTOR

_KILL_ACTOR
	RES		ACTOR_FLAGS_ACTIVE,A
	DEC		HL
	LD		(HL),A

	POP		HL
	POP		DE
	ACTORLIST_RELEASE_ACTOR
	JR		_SKIP

_NEXT_ACTOR

	; GET THE NEXT ACTOR
	;--------------------------------
	LD		D,H
	LD		E,L

_SKIP
	INC		HL
	INC		HL

	; STOP IF NO MORE ACTORS
	;--------------------------------
	LD		A,ACTORLIST_TABLE_TOP&$FF
	CP		L
	JR		NZ,_LOOP

	; RESTORE ACTOR STATE
	;--------------------------------
	CALL	?ACTOR_CHECK_RESTORE

	RET


;********************************
	END
;********************************
