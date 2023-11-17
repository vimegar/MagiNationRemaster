;********************************
; COLL_FREEMOVE.S
;********************************
;	Author:	Patrick Meehan/Dylan "ExoByte" Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?COLL_FREEMOVE

	SWITCH_RAM_BANK		WRAM_COLL

	CALL	?COLL_X_FREEMOVE
	CALL	?COLL_Y_FREEMOVE

	RET

;********************************
?COLL_X_FREEMOVE
	LD		A,(COLL_XMOVE)
	LD		B,A

	AND		A
	RET		Z

	LD		HL,ACTOR_XOFF
	LD		A,(HL)
;	LD		A,(ACTOR_XOFF)
	ADD		A,B

	BIT		$04,A
	JR		Z,_NO_ROLL

	AND		$0F
;	LD		(ACTOR_XOFF),A
	LD		(HL),A
	
	GET16	H,L,(ACTOR_TILE)
	LD		A,(ACTOR_XTILE)
	
	BIT		$07,B
	JP		Z,_POS

	DEC		HL
	DEC		A
	JR		_DONE

_POS
	INC		HL
	INC		A

_DONE
	LD		(ACTOR_XTILE),A
	SET16	H,L,ACTOR_TILE

	RET

_NO_ROLL
	LD		(HL),A
;	LD		(ACTOR_XOFF),A
	RET

;********************************
?COLL_Y_FREEMOVE
	LD		A,(COLL_YMOVE)
	LD		B,A

	AND		A
	RET		Z

	LD		HL,ACTOR_YOFF
	LD		A,(HL)
;	LD		A,(ACTOR_YOFF)
	ADD		A,B

	BIT		$04,A
	JR		Z,_NO_ROLL

	AND		$0F
;	LD		(ACTOR_YOFF),A
	LD		(HL),A
	
	GET16	H,L,(ACTOR_TILE)
	LD		A,(ACTOR_YTILE)
	LD		C,A
	
	BIT		$07,B
	JP		Z,_POS

	LD		A,(COLL_WIDTH)
	CPL
	LD		E,A
	LD		D,$FF
	INC		DE
	ADD		HL,DE
	DEC		C
	JR		_DONE

_POS
	LD		A,(COLL_WIDTH)
	LD		E,A
	LD		D,$00
	ADD		HL,DE
	INC		C

_DONE
	LD		A,C
	LD		(ACTOR_YTILE),A
	SET16	H,L,ACTOR_TILE

	RET

_NO_ROLL
	LD		(HL),A
;	LD		(ACTOR_YOFF),A
	RET

;********************************
	END
;********************************