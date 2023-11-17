;********************************
; HERO_WALK.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
;	BC:		Ptr to gob
?HERO_AI_WALK_DOWN
	LD			A,%00000011
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_HERO_WALK_DOWN_ANIM
	MOVADDR_FF	ACTOR_STATE,_AI
	JP			?HERO_AI_CLOSE

_AI
	CALL		?RANDOM_ENCOUNTER
	CALL		?HERO_AI_OPEN

	; CHECK DIRECTION
	;--------------------------------
	LD			A,(AI_CNT1)
	BIT			BitDown,A
	JP			NZ,_DOWN
	MOVADDR		SCRIPT_WFRAME,?_HERO_STAND_DOWN_ANIM
	JP			?HERO_AI_STAND
	
_DOWN
	BIT			BitLeft,A
	JR			Z,_NO_LEFT
	JP			?HERO_AI_WALK_LEFT
	
_NO_LEFT
	BIT			BitRight,A
	JR			Z,_NO_RIGHT
	JP			?HERO_AI_WALK_RIGHT

_NO_RIGHT
	LD			A,(AI_CNT1)
	BIT			BitB,A
	JP			NZ,?HERO_AI_RUN_DOWN

	; MOVE
	;--------------------------------
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE

	LD			A,(COLL_YMOVE)
	AND			A
	JR			Z,_OBSTACLE
	CALL		?RANDOM_ENCOUNTER

_OBSTACLE

	; CHECK ACTION
	;--------------------------------
	LD			A,(COLL_YMOVE)
	AND			A
	CALL		Z,?HERO_CHECK_ACTION_DOWN

	JP			?HERO_AI_CLOSE

;********************************
;	BC:		Ptr to gob
?HERO_AI_WALK_LEFT
	LD			A,%00000001
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_HERO_WALK_LEFT_ANIM
	MOVADDR_FF	ACTOR_STATE,_AI
	JP			?HERO_AI_CLOSE

_AI
	CALL		?RANDOM_ENCOUNTER
	CALL		?HERO_AI_OPEN

	; CHECK DIRECTION
	;--------------------------------
	LD			A,(AI_CNT1)
	BIT			BitLeft,A
	JR			NZ,_LEFT
	MOVADDR		SCRIPT_WFRAME,?_HERO_STANDL_ANIM
	JP			?HERO_AI_STAND
	
_LEFT
	LDA_FF		TICKER
	AND			$01
	JP			Z,_RETURN

	LD			A,(AI_CNT1)
	BIT			BitUp,A
	JR			Z,_NO_UP
	LD			A,-$01
	LD			(COLL_YMOVE),A
	JR			_NO_DOWN
	
_NO_UP
	BIT			BitDown,A
	JR			Z,_NO_DOWN
	LD			A,$01
	LD			(COLL_YMOVE),A
	
_NO_DOWN
	LD			A,(AI_CNT1)
	BIT			BitB,A
	JP			NZ,?HERO_AI_RUN_LEFT

_RETURN

	;check for stair tile then act appropriately
	LD	A,(HL)				; to get the collision code
	CP	COLLCODE_UPSTAIRS	;checking for stairs up
	JR	Z,_UPSTAIRS
	CP	COLLCODE_DOWNSTAIRS	;checking for stairs down
	JR	NZ,_DETECT			; if it isnt one of the stairs, bypass
	
	LD	A,(COLL_YMOVE)
	DEC	A
	LD	(COLL_YMOVE),A
	JR	_DETECT

_UPSTAIRS
	LD	A,(COLL_YMOVE)
	INC	A
	LD	(COLL_YMOVE),A

_DETECT
	; MOVE
	;--------------------------------
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE

	LD			A,(COLL_XMOVE)
	AND			A
	JR			Z,_OBSTACLE
	CALL		?RANDOM_ENCOUNTER

_OBSTACLE

	; CHECK ACTION
	;--------------------------------
	LD			A,(COLL_XMOVE)
	AND			A
	CALL		Z,?HERO_CHECK_ACTION_LEFT

	JP			?HERO_AI_CLOSE

;********************************
;	BC:		Ptr to gob
?HERO_AI_WALK_RIGHT
	LD			A,%00000010
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_HERO_WALK_RIGHT_ANIM
	MOVADDR_FF	ACTOR_STATE,_AI
	JP			?HERO_AI_CLOSE

_AI
	CALL		?RANDOM_ENCOUNTER
	CALL		?HERO_AI_OPEN

	; CHECK DIRECTION
	;--------------------------------
	LD			A,(AI_CNT1)
	BIT			BitRight,A
	JR			NZ,_RIGHT
	MOVADDR		SCRIPT_WFRAME,?_HERO_STANDR_ANIM
	JP			?HERO_AI_STAND
	
_RIGHT
	LDA_FF		TICKER
	AND			$01
	JP			Z,_RETURN

	LD			A,(AI_CNT1)
	BIT			BitUp,A
	JR			Z,_NO_UP
	LD			A,-$01
	LD			(COLL_YMOVE),A
	JR			_NO_DOWN
	
_NO_UP
	BIT			BitDown,A
	JR			Z,_NO_DOWN
	LD			A,$01
	LD			(COLL_YMOVE),A
	
_NO_DOWN
	LD			A,(AI_CNT1)
	BIT			BitB,A
	JP			NZ,?HERO_AI_RUN_RIGHT

_RETURN

	;check for stair tile then act appropriately
	LD	A,(HL)				; to get the collision code
	CP	COLLCODE_UPSTAIRS	;checking for stairs up
	JR	Z,_UPSTAIRS
	CP	COLLCODE_DOWNSTAIRS	;checking for stairs down
	JR	NZ,_DETECT			; if it isnt one of the stairs, bypass
	
	LD	A,(COLL_YMOVE)
	INC	A
	LD	(COLL_YMOVE),A
	JR	_DETECT

_UPSTAIRS
	LD	A,(COLL_YMOVE)
	DEC	A
	LD	(COLL_YMOVE),A

_DETECT


	; MOVE
	;--------------------------------
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE

	LD			A,(COLL_XMOVE)
	AND			A
	JR			Z,_OBSTACLE
	CALL		?RANDOM_ENCOUNTER

_OBSTACLE

	; CHECK ACTION
	;--------------------------------
	LD			A,(COLL_XMOVE)
	AND			A
	CALL		Z,?HERO_CHECK_ACTION_RIGHT

	JP			?HERO_AI_CLOSE

;********************************
;	BC:		Ptr to gob
?HERO_AI_WALK_UP
	LD			A,%00000000
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_HERO_WALK_UP_ANIM
	MOVADDR_FF	ACTOR_STATE,_AI
	JP			?HERO_AI_CLOSE

_AI
	CALL		?RANDOM_ENCOUNTER
	CALL		?HERO_AI_OPEN

	; CHECK DIRECTION
	;--------------------------------
	LD			A,(AI_CNT1)
	BIT			BitUp,A
	JR			NZ,_UP
	MOVADDR		SCRIPT_WFRAME,?_HERO_STAND_UP_ANIM
	JP			?HERO_AI_STAND
	
_UP
	BIT			BitLeft,A
	JR			Z,_NO_LEFT
	JP			?HERO_AI_WALK_LEFT
	
_NO_LEFT
	BIT			BitRight,A
	JR			Z,_NO_RIGHT
	JP			?HERO_AI_WALK_RIGHT

_NO_RIGHT
	LD			A,(AI_CNT1)
	BIT			BitB,A
	JP			NZ,?HERO_AI_RUN_UP

	; MOVE
	;--------------------------------
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE

	LD			A,(COLL_YMOVE)
	AND			A
	JR			Z,_OBSTACLE
	CALL		?RANDOM_ENCOUNTER

_OBSTACLE

	; CHECK ACTION
	;--------------------------------
	LD			A,(COLL_YMOVE)
	AND			A
	CALL		Z,?HERO_CHECK_ACTION_UP

	JP			?HERO_AI_CLOSE

;********************************
	END
;********************************
