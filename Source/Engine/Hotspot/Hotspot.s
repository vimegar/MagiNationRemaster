;********************************
; HOTSPOT.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?CHECK_HOTSPOT

	; RETURN IF SYSTEM SCRIPT IS ACTIVE
	;--------------------------------
	LD			A,(SYSTEM_SCRIPT_ACTIVE)
	AND			A
	RET			NZ

	SWITCH_RAM_BANK		WRAM_COLL

	; CHECK MOVE
	;--------------------------------
	LD			A,(COLL_XMOVE)
	LD			C,A
	LD			A,(COLL_XDELTA)
	ADD			A,C
	LD			C,A
	LD			A,(COLL_YMOVE)
	LD			B,A
	LD			A,(COLL_YDELTA)
	ADD			A,B
	LD			B,A

	OR			C
	RET			Z

	; GET TABLE SIZE
	;--------------------------------
	LD			A,(HOTSPOT_TABLE_SIZE)
	LD			E,A

	; GET THE COLL CODE
	;--------------------------------
	FGET16		H,L,ACTOR_TILE
	LD			D,(HL)

	; VERIFY HOTSPOT CODE
	;--------------------------------
	LD			A,D
	AND			$C0
	CP			$C0
	JR			NZ,_NOT_HOTSPOT

	; IS CODE IN RANGE?
	;--------------------------------
	LD			A,D
	AND			$3F
	LD			D,A
	CP			E
	RET			NC
	
	; FIRST TIME?
	;--------------------------------
	LD			A,(HOTSPOT_CURRENT)
	CP			D
	RET			Z
	
	; HL =  HOTSPOT ADDRESS
	;--------------------------------
	GET16		H,L,HOTSPOT_TABLE
	LD			A,D
	ADD			A,A
	ADD			A,A
	ADD			A,L
	LD			L,A
	LD			A,$00
	ADC			A,H
	LD			H,A
	
	; CHECK MOVE MASK
	;--------------------------------
	CALL		?HOTSPOT_GET_TYPE

	CP			HOTSPOT_TRIGGER_NORTH
	JR			Z,_HOTSPOT_NORTH
	CP			HOTSPOT_TRIGGER_SOUTH
	JR			Z,_HOTSPOT_SOUTH
	CP			HOTSPOT_TRIGGER_EAST
	JR			Z,_HOTSPOT_EAST
	CP			HOTSPOT_TRIGGER_WEST
	JR			Z,_HOTSPOT_WEST
	JR			_COLL_SCRIPT
	
_HOTSPOT_NORTH
	LD			A,B
	JR			_HOTSPOT_NEG

_HOTSPOT_SOUTH
	LD			A,B
	JR			_HOTSPOT_POS

_HOTSPOT_EAST
	LD			A,C
	JR			_HOTSPOT_POS

_HOTSPOT_WEST
	LD			A,C
	JR			_HOTSPOT_NEG

_HOTSPOT_POS
	AND			A
	RET			Z
	BIT			$07,A
	JR			Z,_COLL_SCRIPT
	RET

_HOTSPOT_NEG
	AND			A
	RET			Z
	BIT			$07,A
	JR			NZ,_COLL_SCRIPT
	RET

_COLL_SCRIPT

	; PREVENT HOTSPOT RE-HOTSPOTTING
	;--------------------------------
	LD			A,D
	LD			(HOTSPOT_CURRENT),A

	; SET THE HOTSPOT SCRIPT
	;--------------------------------
	CALL		?HOTSPOT_SET_SCRIPT
	
	MOVADDR		SYSTEM_SCRIPT_STATE,?SCRIPT_PLAY_NEXT

	RET

_NOT_HOTSPOT
	LD			A,HOTSPOT_NULL
	LD			(HOTSPOT_CURRENT),A
	RET

;********************************
	END
;********************************