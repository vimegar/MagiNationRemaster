;********************************
; BLOCKER_AI.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000 Interactive Imagination
;	All rights reserved

;********************************
;	BC:		Ptr to gob
?BLOCKER_AI
	ACTOR_OPEN
	
	SCRIPT_OPEN
	SCRIPT_PLAY
	SCRIPT_CLOSE
	
	SCRIPT_OPEN
	SCRIPT_PLAY
	SCRIPT_CLOSE

	CALL			?BLOCKER_AI_CLEAN_TILE
	COLL_FREEMOVE
	CALL			?BLOCKER_AI_PLACE_TILE
	
	ACTOR_CLOSE

	RET

;********************************
?BLOCKER_AI_CLEAN_TILE

	SWITCH_RAM_BANK		WRAM_COLL

	; CHECK TO SEE IF THIS ACTOR WROTE A TILE
	;--------------------------------
	LDA_FF		ACTOR_FLAGS
	LD			E,A
	BIT			ACTOR_FLAGS_COLL,E
	JR			Z,_NO_ERASE

	; CLEAR THE TILE IF ACTOR PLACED IT
	;--------------------------------
	GET16		H,L,ACTOR_TILE
	LD			A,COLLCODE_SPACE
	LD			(HL),A

_NO_ERASE
	; RESET THE ACTOR TILE FLAG
	;--------------------------------
	LD			A,E
	RES			ACTOR_FLAGS_COLL,A
	LDFF_A		ACTOR_FLAGS

	RET

;********************************
?BLOCKER_AI_PLACE_TILE

	; CHECK TO SEE IF HERO_AI IS ACTIVE
	;--------------------------------
	LDA_FF		AI_HEROFLAGS
	BIT			HEROFLAGS_ACTIVE,A
	RET			Z

	; CHECK TO SEE IF COLL TYPE IS SPACE
	;--------------------------------
	GET16		H,L,ACTOR_TILE
	LD			A,(HL)
	CP			COLLCODE_SPACE
	RET			NZ
	
	; WRITE A WALL TO THE COLL MAP
	;--------------------------------
	LD			A,COLLCODE_WALL
	LD			(HL),A

	; SET THE ACTOR TILE FLAG
	;--------------------------------
	LDA_FF		ACTOR_FLAGS
	SET			ACTOR_FLAGS_COLL,A
	LDFF_A		ACTOR_FLAGS

	RET

;********************************
	END
;********************************