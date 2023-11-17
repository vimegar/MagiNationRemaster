;********************************
; HERO_RUN.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
;	BC:		Ptr to gob
?HERO_AI_RUN_DOWN
	LD			A,%00000011
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_HERO_RUN_DOWN_ANIM
	MOVADDR_FF	ACTOR_STATE,_AI
	JP			?HERO_AI_CLOSE

_AI
	CALL		?HERO_AI_OPEN

	; CHECK DIRECTION
	;--------------------------------
	LD			A,(AI_CNT1)
	BIT			BitDown,A
	JR			NZ,_DOWN
	MOVADDR		SCRIPT_WFRAME,?_HERO_STAND_DOWN_ANIM
	JP			?HERO_AI_STAND
_DOWN
	BIT			BitLeft,A
	JP			NZ,?HERO_AI_RUN_LEFT
	BIT			BitRight,A
	JP			NZ,?HERO_AI_RUN_RIGHT

	; MOVE
	;--------------------------------
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE

	; CHECK ACTION
	;--------------------------------
	LD			A,(COLL_YMOVE)
	AND			A
	JR			NZ,_NO_OBSTACLE
	
	CALL		?HERO_CHECK_ACTION_DOWN
	CALL		?HERO_CHECK_JUMP_DOWN
	CALL		?HERO_CHECK_SWIM_DOWN
	JR			_OBSTACLE

_NO_OBSTACLE
	CALL		?RANDOM_ENCOUNTER_FAST

_OBSTACLE

	; CHECK BUTTONS
	;--------------------------------
	LD			A,(AI_CNT1)
	BIT			BitB,A
	JP			Z,?HERO_AI_WALK_DOWN

	JP			?HERO_AI_CLOSE

;********************************
;	BC:		Ptr to gob
?HERO_AI_RUN_LEFT
	LD			A,%00000001
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_HERO_RUN_LEFT_ANIM
	MOVADDR_FF	ACTOR_STATE,_AI
	JP			?HERO_AI_CLOSE

_AI
	CALL		?HERO_AI_OPEN

	; CHECK DIRECTION
	;--------------------------------
	LD			A,(AI_CNT1)
	BIT			BitLeft,A
	JR			NZ,_LEFT
	MOVADDR		SCRIPT_WFRAME,?_HERO_STANDL_ANIM
	JP			?HERO_AI_STAND
_LEFT
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
	
	;check for stair tile then act appropriately
	LD			A,(HL)				; to get the collision code
	CP			COLLCODE_UPSTAIRS	;checking for stairs up
	JR			Z,_UPSTAIRS
	CP			COLLCODE_DOWNSTAIRS	;checking for stairs down
	JR			NZ,_DETECT			; if it isnt one of the stairs, bypass
	
	LD			A,(COLL_YMOVE)
	DEC			A
	DEC			A
	LD			(COLL_YMOVE),A
	JR			_DETECT

_UPSTAIRS
	LD			A,(COLL_YMOVE)
	INC			A
	INC			A
	LD			(COLL_YMOVE),A

_DETECT	
	; MOVE
	;--------------------------------
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE
	
	; CHECK ACTION
	;--------------------------------
	LD			A,(COLL_XMOVE)
	AND			A
	JR			NZ,_NO_OBSTACLE
	
	CALL		?HERO_CHECK_ACTION_LEFT
	CALL		?HERO_CHECK_JUMP_LEFT
	CALL		?HERO_CHECK_SWIM_LEFT
	JR			_OBSTACLE

_NO_OBSTACLE
	CALL		?RANDOM_ENCOUNTER_FAST

_OBSTACLE

	; CHECK BUTTONS
	;--------------------------------
	LD			A,(AI_CNT1)
	BIT			BitB,A
	JP			Z,?HERO_AI_WALK_LEFT
	
	JP			?HERO_AI_CLOSE

;********************************
;	BC:		Ptr to gob
?HERO_AI_RUN_RIGHT
	LD			A,%00000010
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_HERO_RUN_RIGHT_ANIM
	MOVADDR_FF	ACTOR_STATE,_AI
	JP			?HERO_AI_CLOSE

_AI
	CALL		?HERO_AI_OPEN

	; CHECK DIRECTION
	;--------------------------------
	LD			A,(AI_CNT1)
	BIT			BitRight,A
	JR			NZ,_RIGHT
	MOVADDR		SCRIPT_WFRAME,?_HERO_STANDR_ANIM
	JP			?HERO_AI_STAND
_RIGHT
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

	;check for stair tile then act appropriately
	LD			A,(HL)				; to get the collision code
	CP			COLLCODE_UPSTAIRS	;checking for stairs up
	JR			Z,_UPSTAIRS
	CP			COLLCODE_DOWNSTAIRS	;checking for stairs down
	JR			NZ,_DETECT			; if it isnt one of the stairs, bypass
	
	LD			A,(COLL_YMOVE)
	INC			A
	INC			A
	LD			(COLL_YMOVE),A
	JR			_DETECT

_UPSTAIRS
	LD			A,(COLL_YMOVE)
	DEC			A
	DEC			A
	LD			(COLL_YMOVE),A

_DETECT

	; MOVE
	;--------------------------------
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE

	; CHECK ACTION
	;--------------------------------
	LD			A,(COLL_XMOVE)
	AND			A
	JR			NZ,_NO_OBSTACLE
	
	CALL		?HERO_CHECK_ACTION_RIGHT
	CALL		?HERO_CHECK_JUMP_RIGHT
	CALL		?HERO_CHECK_SWIM_RIGHT
	JR			_OBSTACLE

_NO_OBSTACLE
	CALL		?RANDOM_ENCOUNTER_FAST

_OBSTACLE

	; CHECK BUTTONS
	;--------------------------------
	LD			A,(AI_CNT1)
	BIT			BitB,A
	JP			Z,?HERO_AI_WALK_RIGHT

	JP			?HERO_AI_CLOSE

;********************************
;	BC:		Ptr to gob
?HERO_AI_RUN_UP
	LD			A,%00000000
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_HERO_RUN_UP_ANIM
	MOVADDR_FF	ACTOR_STATE,_AI
	JP			?HERO_AI_CLOSE

_AI
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
	JP			NZ,?HERO_AI_RUN_LEFT
	BIT			BitRight,A
	JP			NZ,?HERO_AI_RUN_RIGHT
	
	; MOVE
	;--------------------------------
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE

	; CHECK ACTION
	;--------------------------------
	LD			A,(COLL_YMOVE)
	AND			A
	JR			NZ,_NO_OBSTACLE
	
	CALL		?HERO_CHECK_ACTION_UP
	CALL		?HERO_CHECK_JUMP_UP
	CALL		?HERO_CHECK_SWIM_UP	
	JR			_OBSTACLE

_NO_OBSTACLE
	CALL		?RANDOM_ENCOUNTER_FAST

_OBSTACLE

	; CHECK BUTTONS
	;--------------------------------
	LD			A,(AI_CNT1)
	BIT			BitB,A
	JP			Z,?HERO_AI_WALK_UP

	JP			?HERO_AI_CLOSE

;********************************
	END
;********************************
