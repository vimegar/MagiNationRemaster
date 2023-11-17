;********************************
; ACTOR.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\ENGINE\ACTOR\ACTOR_ACTIVATE.S

;********************************
	LIB		SOURCE\ENGINE\ACTOR\LIST\ACTORLIST.S
	LIB		SOURCE\ENGINE\ACTOR\LIST\ACTORLIST_INIT.S
	
;********************************
?ACTOR_CLOSE
		LDA_FF		ACTOR_CURRENT
		LD			L,A
		LDA_FF		ACTOR_CURRENT+1
		LD			H,A

		LDA_FF		ACTOR_FLAGS
		LD			(HLI),A
		LDA_FF		ACTOR_STATE
		LD			(HLI),A
		LDA_FF		ACTOR_STATE+1
		LD			(HLI),A
		LDA_FF		ACTOR_XOFF
		LD			(HLI),A
		LDA_FF		ACTOR_YOFF
		LD			(HLI),A
		LDA_FF		ACTOR_XTILE
		LD			(HLI),A
		LDA_FF		ACTOR_YTILE
		LD			(HLI),A
		LDA_FF		ACTOR_TILE
		LD			(HLI),A
		LDA_FF		ACTOR_TILE+1
		LD			(HLI),A
		LDA_FF		ACTOR_VRAM
		LD			(HLI),A

		RET

;********************************
;	BC:		Address of gob data
?ACTOR_OPEN
		LD		H,B
		LD		L,C

		LD			A,L
		LDFF_A		ACTOR_CURRENT
		LD			A,H
		LDFF_A		ACTOR_CURRENT+1

		LD			A,(HLI)
		LDFF_A		ACTOR_FLAGS
		LD			A,(HLI)
		LDFF_A		ACTOR_STATE
		LD			A,(HLI)
		LDFF_A		ACTOR_STATE+1
		LD			A,(HLI)
		LDFF_A		ACTOR_XOFF
		LD			A,(HLI)
		LDFF_A		ACTOR_YOFF
		LD			A,(HLI)
		LDFF_A		ACTOR_XTILE
		LD			A,(HLI)
		LDFF_A		ACTOR_YTILE
		LD			A,(HLI)
		LDFF_A		ACTOR_TILE
		LD			A,(HLI)
		LDFF_A		ACTOR_TILE+1
		LD			A,(HLI)
		LDFF_A		ACTOR_VRAM
		
		XOR			A
		LD			(COLL_XMOVE),A
		LD			(COLL_YMOVE),A

		RET

;********************************
	END
;********************************