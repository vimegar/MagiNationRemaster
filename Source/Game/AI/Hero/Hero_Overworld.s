;********************************
; HERO_WALK.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
;	BC:		Ptr to gob
?HERO_AI_OVER_DOWN
	LD			A,%00000011
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_HERO_OVER_DOWN_ANIM
	MOVADDR_FF	ACTOR_STATE,_AI
	JP			?HERO_AI_CLOSE

_AI
	CALL		?HERO_AI_OPEN

	; CHECK DIRECTION
	;--------------------------------
	LDA_FF		TICKER
	AND			$01
	JR			Z,_NO_MOVE
	
	LD			A,(AI_CNT1)

	BIT			BitDown,A
	JP			NZ,_DOWN
	JP			?HERO_AI_OVER_STAND
	
_DOWN
	BIT			BitLeft,A
	JR			Z,_NO_LEFT
	JP			?HERO_AI_OVER_LEFT
	
_NO_LEFT
	BIT			BitRight,A
	JR			Z,_MOVE
	JP			?HERO_AI_OVER_RIGHT

_MOVE
	LD			A,$01
	LD			(COLL_YMOVE),A

_NO_MOVE

	; MOVE
	;--------------------------------
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE
	CALL		?RANDOM_ENCOUNTER

	; CHECK ACTION
	;--------------------------------
	CALL		?HERO_CHECK_ACTION_DOWN

	JP			?HERO_AI_CLOSE

;********************************
;	BC:		Ptr to gob
?HERO_AI_OVER_LEFT
	LD			A,%00000001
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_HERO_OVER_LEFT_ANIM
	MOVADDR_FF	ACTOR_STATE,_AI
	JP			?HERO_AI_CLOSE

_AI
	CALL		?HERO_AI_OPEN


	; CHECK DIRECTION
	;--------------------------------
	LDA_FF		TICKER
	AND			$01
	JR			Z,_NO_MOVE
	
	LD			A,(AI_CNT1)

	BIT			BitLeft,A
	JR			NZ,_LEFT
	JP			?HERO_AI_OVER_STAND
	
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

_NO_MOVE

	; MOVE
	;--------------------------------
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE
	CALL		?RANDOM_ENCOUNTER

	; CHECK ACTION
	;--------------------------------
	CALL		?HERO_CHECK_ACTION_LEFT

	JP			?HERO_AI_CLOSE

;********************************
;	BC:		Ptr to gob
?HERO_AI_OVER_RIGHT
	LD			A,%00000010
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_HERO_OVER_RIGHT_ANIM
	MOVADDR_FF	ACTOR_STATE,_AI
	JP			?HERO_AI_CLOSE

_AI
	CALL		?HERO_AI_OPEN


	; CHECK DIRECTION
	;--------------------------------
	LDA_FF		TICKER
	AND			$01
	JR			Z,_NO_MOVE
	
	LD			A,(AI_CNT1)

	BIT			BitRight,A
	JR			NZ,_RIGHT
	JP			?HERO_AI_OVER_STAND
	
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

_NO_MOVE

	; MOVE
	;--------------------------------
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE
	CALL		?RANDOM_ENCOUNTER

	; CHECK ACTION
	;--------------------------------
	CALL		?HERO_CHECK_ACTION_RIGHT

	JP			?HERO_AI_CLOSE

;********************************
;	BC:		Ptr to gob
?HERO_AI_OVER_UP
	LD			A,%00000000
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_HERO_OVER_UP_ANIM
	MOVADDR_FF	ACTOR_STATE,_AI
	JP			?HERO_AI_CLOSE

_AI
	CALL		?HERO_AI_OPEN


	; CHECK DIRECTION
	;--------------------------------
	LDA_FF		TICKER
	AND			$01
	JR			Z,_NO_MOVE
	
	LD			A,(AI_CNT1)

	BIT			BitUp,A
	JR			NZ,_UP
	JP			?HERO_AI_OVER_STAND
	
_UP
	BIT			BitLeft,A
	JR			Z,_NO_LEFT
	JP			?HERO_AI_OVER_LEFT
	
_NO_LEFT
	BIT			BitRight,A
	JR			Z,_MOVE
	JP			?HERO_AI_OVER_RIGHT

_MOVE
	LD			A,-$01
	LD			(COLL_YMOVE),A

_NO_MOVE

	; MOVE
	;--------------------------------
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE
	CALL		?RANDOM_ENCOUNTER

	; CHECK ACTION
	;--------------------------------
	CALL		?HERO_CHECK_ACTION_UP

	JP			?HERO_AI_CLOSE

;********************************
;	BC:		Ptr to gob
?HERO_AI_OVER_STAND
	MOVADDR_FF	ACTOR_STATE,?OVERWORLD_AI
	JP			?HERO_AI_CLOSE

?OVERWORLD_AI
	CALL		?HERO_AI_OPEN
	
	LD			A,(AI_CNT1)
	BIT			BitRight,A
	JP			NZ,?HERO_AI_OVER_RIGHT
	BIT			BitLeft,A
	JP			NZ,?HERO_AI_OVER_LEFT
	BIT			BitUp,A
	JP			NZ,?HERO_AI_OVER_UP
	BIT			BitDown,A
	JP			NZ,?HERO_AI_OVER_DOWN

	; MOVE
	;--------------------------------
	CALL		?CAMERA_UPDATE

	; CHECK ACTION
	;--------------------------------
	CALL		?HERO_ACTION_STAND

	JP			?HERO_AI_CLOSE

;********************************
	END
;********************************
