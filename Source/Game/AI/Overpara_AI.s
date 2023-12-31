;********************************
; HERO_WALK.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; GLOBALS
;********************************
	GLOBAL		?_OVERPARA_DISMOUNT
	GLOBAL		?_OVERPARATHIN_DOWN_ANIM
	GLOBAL		?_OVERPARATHIN_LEFT_ANIM
	GLOBAL		?_OVERPARATHIN_RIGHT_ANIM
	GLOBAL		?_OVERPARATHIN_UP_ANIM

;********************************
?OVERPARA_ACTION

	LD			A,(CNTDOWN)
	BIT			BitA,A
	RET			Z

	LD			A,(HL)
	CP			COLLCODE_SPACE
	RET			NZ

	LD			A,$01
	LD			(COLL_MASK+COLLCODE_WATER),A
	XOR			A
	LD			(COLL_MASK+COLLCODE_SPACE),A
	
	SET16		H,L,HEROACTOR_TILE
	
	LD			HL,HEROACTOR_XTILE
	
	LD			A,B
	LD			(HLI),A
	LD			(HL),C

	POP			HL

	LD			A,:?_OVERPARA_DISMOUNT
	LDFF_A		SCRIPT_WBANK
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_OVERPARA_DISMOUNT
	MOVADDR_FF	ACTOR_STATE,?TRIGGER_AI

	JP			?HERO_AI_CLOSE

;********************************
;	BC:		Ptr to gob
?OVERPARA_AI_DOWN
	LD			A,%00000011
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_OVERPARATHIN_DOWN_ANIM
	MOVADDR_FF	ACTOR_STATE,_AI
	JP			?HERO_AI_CLOSE

_AI
	CALL		?HERO_AI_OPEN

	; CHECK DIRECTION
	;--------------------------------
	LD			A,(AI_CNT1)

	BIT			BitDown,A
	JP			NZ,_DOWN
	JP			?OVERPARA_AI_STAND

_DOWN
	BIT			BitLeft,A
	JR			Z,_NO_LEFT
	JP			?OVERPARA_AI_LEFT

_NO_LEFT
	BIT			BitRight,A
	JR			Z,_MOVE
	JP			?OVERPARA_AI_RIGHT

_MOVE
	LD			A,$01
	LD			(COLL_YMOVE),A

	; MOVE
	;--------------------------------
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE

	; CHECK ACTION
	;--------------------------------
	LD			A,(COLL_YMOVE)
	AND			A
	JP			NZ,?HERO_AI_CLOSE

?OVERPARA_ACTION_DOWN
	CALL		?HERO_GET_TILE_DOWN
	CALL		?OVERPARA_ACTION
	JP			?HERO_AI_CLOSE

;********************************
;	BC:		Ptr to gob
?OVERPARA_AI_LEFT
	LD			A,%00000001
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_OVERPARATHIN_LEFT_ANIM
	MOVADDR_FF	ACTOR_STATE,_AI
	JP			?HERO_AI_CLOSE

_AI
	CALL		?HERO_AI_OPEN

	; CHECK DIRECTION
	;--------------------------------
	LD			A,(AI_CNT1)

	BIT			BitLeft,A
	JR			NZ,_LEFT
	JP			?OVERPARA_AI_STAND
	
_LEFT
	LD			E,$00

	BIT			BitUp,A
	JR			Z,_NO_UP
	LD			E,-$01
	JR			_MOVE
	
_NO_UP
	BIT			BitDown,A
	JR			Z,_MOVE
	LD			E,$01

_MOVE
	LD			A,-$01
	LD			(COLL_XMOVE),A
	LD			A,E
	LD			(COLL_YMOVE),A

	; MOVE
	;--------------------------------
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE

	; CHECK ACTION
	;--------------------------------
	LD			A,(COLL_YMOVE)
	AND			A
	JP			NZ,?HERO_AI_CLOSE

?OVERPARA_ACTION_LEFT
	CALL		?HERO_GET_TILE_LEFT
	CALL		?OVERPARA_ACTION
	JP			?HERO_AI_CLOSE

;********************************
;	BC:		Ptr to gob
?OVERPARA_AI_RIGHT
	LD			A,%00000010
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_OVERPARATHIN_RIGHT_ANIM
	MOVADDR_FF	ACTOR_STATE,_AI
	JP			?HERO_AI_CLOSE

_AI
	CALL		?HERO_AI_OPEN

	; CHECK DIRECTION
	;--------------------------------
	LD			A,(AI_CNT1)

	BIT			BitRight,A
	JR			NZ,_RIGHT
	JP			?OVERPARA_AI_STAND
	
_RIGHT
	LD			E,$00

	BIT			BitUp,A
	JR			Z,_NO_UP
	LD			E,-$01
	JR			_MOVE
	
_NO_UP
	BIT			BitDown,A
	JR			Z,_MOVE
	LD			E,$01

_MOVE
	LD			A,$01
	LD			(COLL_XMOVE),A
	LD			A,E
	LD			(COLL_YMOVE),A

	; MOVE
	;--------------------------------
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE

	; CHECK ACTION
	;--------------------------------
	LD			A,(COLL_YMOVE)
	AND			A
	JP			NZ,?HERO_AI_CLOSE

?OVERPARA_ACTION_RIGHT
	CALL		?HERO_GET_TILE_RIGHT
	CALL		?OVERPARA_ACTION
	JP			?HERO_AI_CLOSE

;********************************
;	BC:		Ptr to gob
?OVERPARA_AI_UP
	LD			A,%00000000
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_OVERPARATHIN_UP_ANIM
	MOVADDR_FF	ACTOR_STATE,_AI
	JP			?HERO_AI_CLOSE

_AI
	CALL		?HERO_AI_OPEN

	; CHECK DIRECTION
	;--------------------------------
	LD			A,(AI_CNT1)

	BIT			BitUp,A
	JR			NZ,_UP
	JP			?OVERPARA_AI_STAND
	
_UP
	BIT			BitLeft,A
	JR			Z,_NO_LEFT
	JP			?OVERPARA_AI_LEFT
	
_NO_LEFT
	BIT			BitRight,A
	JR			Z,_MOVE
	JP			?OVERPARA_AI_RIGHT

_MOVE
	LD			A,-$01
	LD			(COLL_YMOVE),A

	; MOVE
	;--------------------------------
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE

	; CHECK ACTION
	;--------------------------------
	LD			A,(COLL_YMOVE)
	AND			A
	JP			NZ,?HERO_AI_CLOSE

?OVERPARA_ACTION_UP
	CALL		?HERO_GET_TILE_UP
	CALL		?OVERPARA_ACTION
	JP			?HERO_AI_CLOSE

;********************************
?OVERPARA_AI
	XOR			A
	LD			(COLL_MASK+COLLCODE_WATER),A
	LD			A,$01
	LD			(COLL_MASK+COLLCODE_SPACE),A
	JR			?OVERPARA_AI_START

;********************************
;	BC:		Ptr to gob
?OVERPARA_AI_STAND
	MOVADDR_FF	ACTOR_STATE,?OVERPARA_AI_START
	JP			?HERO_AI_CLOSE

?OVERPARA_AI_START
	CALL		?HERO_AI_OPEN
	
	LD			A,(AI_CNT1)
	BIT			BitRight,A
	JP			NZ,?OVERPARA_AI_RIGHT
	BIT			BitLeft,A
	JP			NZ,?OVERPARA_AI_LEFT
	BIT			BitUp,A
	JP			NZ,?OVERPARA_AI_UP
	BIT			BitDown,A
	JP			NZ,?OVERPARA_AI_DOWN

	; MOVE
	;--------------------------------
	CALL		?CAMERA_UPDATE

	; CHECK_ACTION
	;--------------------------------
	LDA_FF		ACTOR_FLAGS
	AND			$03

	CP			ACTOR_FACING_UP
	JR			Z,_UP
	CP			ACTOR_FACING_DOWN
	JR			Z,_DOWN
	CP			ACTOR_FACING_LEFT
	JR			Z,_LEFT
	CP			ACTOR_FACING_RIGHT
	JR			Z,_RIGHT

_UP
	JP			?OVERPARA_ACTION_UP
_DOWN
	JP			?OVERPARA_ACTION_DOWN
_LEFT
	JP			?OVERPARA_ACTION_LEFT
_RIGHT
	JP			?OVERPARA_ACTION_RIGHT

;********************************
	END
;********************************
