;********************************
; SCRIPT_00_FRAME.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?CMD_FRAME
	LD		A,(BC)
	INC		BC
	AND		A
	JP		Z,?SCRIPT_PLAY_NEXT

	LDFF_A		SCRIPT_WCOUNT
	FSET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,_LOOP

_LOOP
	LD		H,B
	LD		L,C
	
	LD		A,(HLI)
	LD		(COLL_XMOVE),A

	LD		A,(HLI)
	LD		(COLL_YMOVE),A
	
	LD		A,(HLI)
	LD		E,A
	LD		A,(HLI)
	LD		D,A
	
	LD		C,L
	LD		B,H
	
	LD		L,E
	LD		H,D
								;24CLK/14LINES
	LDA_FF	SCRIPT_WCOUNT
	DEC		A
	JR		Z,_NEXT
	LDFF_A	SCRIPT_WCOUNT

	CALL	?FRAME_DRAW

	RET

_NEXT
	SET16		B,C,SCRIPT_WFRAME
	CALL		?FRAME_DRAW

	MOVADDR		SCRIPT_WSTATE,?CMD_FRAME
	RET

;********************************
?CMD_FRAMEGHOST
	LD			A,(BC)
	INC			BC
	AND			A
	JP			Z,?SCRIPT_PLAY_NEXT

	LDFF_A		SCRIPT_WCOUNT
	FSET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,_LOOP

_LOOP
	LD		H,B
	LD		L,C
	
	LD		A,(HLI)
	LD		(COLL_XMOVE),A

	LD		A,(HLI)
	LD		(COLL_YMOVE),A

	LDA_FF	SCRIPT_WCOUNT
	DEC		A
	JR		Z,_NEXT
	LDFF_A	SCRIPT_WCOUNT

	RET

_NEXT
	SET16		H,L,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET

;********************************
?CMD_FRAMEBLOCK
	
	XOR			A
	LDFF_A		SCRIPT_WCOUNT+$01	; Starting frame addr

	INC			BC
	LD			A,(BC)
	DEC			BC
	LDFF_A		SCRIPT_WCOUNT		; Repeat count

	MOVADDR		SCRIPT_WSTATE,_LOOP

_LOOP
	LD			H,B
	LD			L,C			

	INC			HL
	INC			HL

	LD			A,(HLI)				; Set deltas
	LD			(COLL_XMOVE),A
	LD			A,(HLI)
	LD			(COLL_YMOVE),A
	
	LDA_FF		SCRIPT_WCOUNT+$01	; HL: Addr of addr of frame to draw
	LD			E,A
	LD			D,$00
	ADD			HL,DE

	LDA_FF		SCRIPT_WCOUNT
	DEC			A
	JR			Z,_NEXT

	LDFF_A		SCRIPT_WCOUNT
	JR			_DRAW

_NEXT
	LD			A,(BC)
	INC			BC
	LD			E,A

	LDA_FF		SCRIPT_WCOUNT+$01
	INC			A
	INC			A
	CP			E
	JR			Z,_END
	LDFF_A		SCRIPT_WCOUNT+$01

	LD			A,(BC)
	LDFF_A		SCRIPT_WCOUNT
	JR			_DRAW

_END
	LD			B,H
	LD			C,L
	INC			BC
	INC			BC
	SET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT

_DRAW
	DEREF_HL	; Dereference addr of addr of frame to draw
	CALL		?FRAME_DRAW
	RET

;********************************
?CMD_OVERLAYFRAME
	LD		A,(BC)
	INC		BC
	AND		A
	JP		Z,?SCRIPT_PLAY_NEXT

	LDFF_A		SCRIPT_WCOUNT
	FSET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,_LOOP

_LOOP
	XOR		A
	LD		(COLL_XMOVE),A
	LD		(COLL_YMOVE),A

	LD		H,B
	LD		L,C
	
	LD		A,(HLI)
	LD		B,A
	LDA_FF	ACTOR_XTILE
	ADD		A,B
	LDFF_A	ACTOR_XTILE
	
	LD		A,(HLI)
	LD		B,A
	LDA_FF	ACTOR_YTILE
	ADD		A,B
	LDFF_A	ACTOR_YTILE
	
	LD		A,(HLI)
	LD		E,A
	LD		A,(HLI)
	LD		D,A
	
	LD		C,L
	LD		B,H
	
	LD		L,E
	LD		H,D
								;24CLK/14LINES
	LDA_FF	SCRIPT_WCOUNT
	DEC		A
	JR		Z,_NEXT
	LDFF_A	SCRIPT_WCOUNT

	CALL	?FRAME_OVERLAY

	RET

_NEXT
	SET16		B,C,SCRIPT_WFRAME
	CALL		?FRAME_OVERLAY

	MOVADDR		SCRIPT_WSTATE,?CMD_OVERLAYFRAME
	RET

;********************************
?CMD_OVERLAYINIT

	; GET THE ACTOR PTR INTO HL
	;--------------------------------
	LD		A,(BC)
	INC		BC
	LD		L,A
	LD		A,(BC)
	INC		BC
	LD		H,A

	; COPY THE ACTOR
	;--------------------------------
	INC		HL

	LD		A,?OVERLAY_AI&$FF		; Starting state
	LD		(HLI),A
	LD		A,(?OVERLAY_AI>>8)&$FF
	LD		(HLI),A

	INC		HL
	INC		HL

	LD		A,(BC)		; X Tile
	INC		BC
	LD		(HLI),A
	LD		A,(BC)		; Y Tile
	INC		BC
	LD		(HLI),A
	
	INC		HL
	INC		HL
	
	LD		A,(BC)		; Frame base
	INC		BC
	LD		(HLI),A	

	CALL	?ACTOR_INIT_SCRIPT_00
	CALL	?ACTOR_INIT_SCRIPT_01
	
	JP		?SCRIPT_PLAY_NEXT

;********************************
?CMD_OVERLAYGHOST
	JP		?SCRIPT_PLAY_NEXT

;********************************
	END
;********************************