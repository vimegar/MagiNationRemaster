;********************************
; HERO_SWIM.S
;********************************
;	Author:	Patrick Meehan/Erik Hutchinson
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?HERO_SWIM_COLL_CLOSE
	XOR			A
	LD			(COLL_MASK+COLLCODE_SPACE),A
	CPL					
	LD			(COLL_MASK+COLLCODE_WATER),A

	RET

;********************************
?HERO_SWIM_COLL_OPEN
	XOR			A								
	LD			(COLL_MASK+COLLCODE_WATER),A
	CPL
	LD			(COLL_MASK+COLLCODE_SPACE),A

	RET

;********************************
;	BC:		Ptr to gob
?HERO_AI_TREAD
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	ACTOR_STATE,?HERO_SWIM_TREAD
	JP			?HERO_AI_CLOSE

?HERO_SWIM_TREAD
	CALL		?HERO_AI_OPEN
	CALL		?HERO_SWIM_COLL_OPEN
	
	LD			A,(AI_CNT1)
	BIT			BitRight,A
	JP			NZ,?HERO_AI_SWIM_RIGHT
	BIT			BitLeft,A
	JP			NZ,?HERO_AI_SWIM_LEFT
	BIT			BitUp,A
	JP			NZ,?HERO_AI_SWIM_UP
	BIT			BitDown,A
	JP			NZ,?HERO_AI_SWIM_DOWN

	; MOVE
	;--------------------------------
	CALL		?HERO_CHECK_CURRENTS
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE

	JP			?HERO_AI_CLOSE

;********************************
?HERO_CHECK_SWIM_DOWN
	LD			A,(HL)					;gets the collision code
	CP			COLLCODE_WATER			;checks collision code for water
	RET			NZ

	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_SWIM		;check to see if hero can handle a boxxle
	RET			C
	
	CALL		?HERO_SWIM_COLL_OPEN
	POP			AF

	MOVADDR		SCRIPT_WFRAME,?_HERO_SWIMSTART_DOWN_ANIM
	JP			?HERO_AI_PUPPET
	
;********************************
?HERO_CHECK_SWIM_LEFT
	LD			A,(HL)					;gets the collision code
	CP			COLLCODE_WATER			;checks collision code for water
	RET			NZ

	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_SWIM		;check to see if hero can handle a boxxle
	RET			C
	
	CALL		?HERO_SWIM_COLL_OPEN
	POP			AF

	MOVADDR		SCRIPT_WFRAME,?_HERO_SWIMSTART_LEFT_ANIM
	JP			?HERO_AI_PUPPET

;********************************
?HERO_CHECK_SWIM_RIGHT
	LD			A,(HL)					;gets the collision code
	CP			COLLCODE_WATER			;checks collision code for water
	RET			NZ

	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_SWIM		;check to see if hero can handle a boxxle
	RET			C
	
	CALL		?HERO_SWIM_COLL_OPEN
	POP			AF

	MOVADDR		SCRIPT_WFRAME,?_HERO_SWIMSTART_RIGHT_ANIM
	JP			?HERO_AI_PUPPET

;********************************
?HERO_CHECK_SWIM_UP
	LD			A,(HL)					;gets the collision code
	CP			COLLCODE_WATER			;checks collision code for water
	RET			NZ

	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_SWIM		;check to see if hero can handle a boxxle
	RET			C
	
	CALL		?HERO_SWIM_COLL_OPEN
	POP			AF
	
	MOVADDR		SCRIPT_WFRAME,?_HERO_SWIMSTART_UP_ANIM
	JP			?HERO_AI_PUPPET

;********************************
;	BC:		Ptr to gob
?HERO_AI_SWIM_DOWN
	LD			A,%00000011
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_HERO_SWIM_DOWN_ANIM
	MOVADDR_FF	ACTOR_STATE,?HERO_SWIM_DOWN
	JP			?HERO_AI_CLOSE

?HERO_SWIM_DOWN
	CALL		?HERO_AI_OPEN
	CALL		?HERO_SWIM_COLL_OPEN

	; CHECK DIRECTION
	;--------------------------------
	LD			A,(AI_CNT1)
	BIT			BitDown,A
	JP			NZ,_DOWN
	MOVADDR		SCRIPT_WFRAME,?_HERO_TREAD_DOWN_ANIM
	JP			?HERO_AI_TREAD
	
_DOWN
	BIT			BitLeft,A
	JR			Z,_NO_LEFT
	JP			?HERO_AI_SWIM_LEFT
	
_NO_LEFT
	BIT			BitRight,A
	JR			Z,_NO_RIGHT
	JP			?HERO_AI_SWIM_RIGHT

_NO_RIGHT

	; MOVE
	;--------------------------------
	CALL		?HERO_CHECK_CURRENTS
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE

	; CHECK LAND
	;--------------------------------
	LD			A,(COLL_YDELTA)
	AND			A
	JP			Z,?HERO_AI_CLOSE

	LD			A,(COLL_YMOVE)
	AND			A
	JP			NZ,?HERO_AI_CLOSE

	CALL		?HERO_GET_TILE_DOWN
	LD			A,(HL)
	CP			COLLCODE_SPACE
	JP			NZ,?HERO_AI_CLOSE

	CALL		?HERO_SWIM_COLL_CLOSE
	MOVADDR		SCRIPT_WFRAME,?_HERO_SWIMEND_DOWN_ANIM
	JP			?HERO_AI_PUPPET

;********************************
;	BC:		Ptr to gob
?HERO_AI_SWIM_LEFT
	LD			A,%00000001
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_HERO_SWIM_LEFT_ANIM
	MOVADDR_FF	ACTOR_STATE,?HERO_SWIM_LEFT
	JP			?HERO_AI_CLOSE

?HERO_SWIM_LEFT
	CALL		?HERO_AI_OPEN
	CALL		?HERO_SWIM_COLL_OPEN

	; CHECK DIRECTION
	;--------------------------------
	LD			A,(AI_CNT1)
	BIT			BitLeft,A
	JR			NZ,_LEFT
	MOVADDR		SCRIPT_WFRAME,?_HERO_TREAD_LEFT_ANIM
	JP			?HERO_AI_TREAD
	
_LEFT
	LDA_FF		TICKER
	AND			$01
	JP			Z,_NO_DOWN

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

	; MOVE
	;--------------------------------
	CALL		?HERO_CHECK_CURRENTS
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE

	; CHECK LAND
	;--------------------------------
	LD			A,(COLL_XDELTA)
	AND			A
	JP			Z,?HERO_AI_CLOSE

	LD			A,(COLL_XMOVE)
	AND			A
	JP			NZ,?HERO_AI_CLOSE

	CALL		?HERO_GET_TILE_LEFT
	LD			A,(HL)
	CP			COLLCODE_SPACE
	JP			NZ,?HERO_AI_CLOSE

	CALL		?HERO_SWIM_COLL_CLOSE
	MOVADDR		SCRIPT_WFRAME,?_HERO_SWIMEND_LEFT_ANIM
	JP			?HERO_AI_PUPPET

;********************************
;	BC:		Ptr to gob
?HERO_AI_SWIM_RIGHT
	LD			A,%00000010
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_HERO_SWIM_RIGHT_ANIM
	MOVADDR_FF	ACTOR_STATE,?HERO_SWIM_RIGHT
	JP			?HERO_AI_CLOSE

?HERO_SWIM_RIGHT
	CALL		?HERO_AI_OPEN
	CALL		?HERO_SWIM_COLL_OPEN

	; CHECK DIRECTION
	;--------------------------------
	LD			A,(AI_CNT1)
	BIT			BitRight,A
	JR			NZ,_RIGHT
	MOVADDR		SCRIPT_WFRAME,?_HERO_TREAD_RIGHT_ANIM
	JP			?HERO_AI_TREAD
	
_RIGHT
	LDA_FF		TICKER
	AND			$01
	JP			Z,_NO_DOWN

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

	; MOVE
	;--------------------------------
	CALL		?HERO_CHECK_CURRENTS
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE

	; CHECK LAND
	;--------------------------------
	LD			A,(COLL_XDELTA)
	AND			A
	JP			Z,?HERO_AI_CLOSE

	LD			A,(COLL_XMOVE)
	AND			A
	JP			NZ,?HERO_AI_CLOSE

	CALL		?HERO_GET_TILE_RIGHT
	LD			A,(HL)
	CP			COLLCODE_SPACE
	JP			NZ,?HERO_AI_CLOSE

	CALL		?HERO_SWIM_COLL_CLOSE
	MOVADDR		SCRIPT_WFRAME,?_HERO_SWIMEND_RIGHT_ANIM
	JP			?HERO_AI_PUPPET

;********************************
;	BC:		Ptr to gob
?HERO_AI_SWIM_UP
	LD			A,%00000000
	LDFF_A		ACTOR_FLAGS
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	MOVADDR_FF	SCRIPT_WFRAME,?_HERO_SWIM_UP_ANIM
	MOVADDR_FF	ACTOR_STATE,?HERO_SWIM_UP
	JP			?HERO_AI_CLOSE

?HERO_SWIM_UP
	CALL		?HERO_AI_OPEN
	CALL		?HERO_SWIM_COLL_OPEN

	; CHECK DIRECTION
	;--------------------------------
	LD			A,(AI_CNT1)
	BIT			BitUp,A
	JR			NZ,_UP
	MOVADDR		SCRIPT_WFRAME,?_HERO_TREAD_UP_ANIM
	JP			?HERO_AI_TREAD

_UP
	BIT			BitLeft,A
	JR			Z,_NO_LEFT
	JP			?HERO_AI_SWIM_LEFT

_NO_LEFT
	BIT			BitRight,A
	JR			Z,_NO_RIGHT
	JP			?HERO_AI_SWIM_RIGHT

_NO_RIGHT

	; MOVE
	;--------------------------------
	CALL		?HERO_CHECK_CURRENTS
	COLL_DETECT
	CHECK_HOTSPOT
	CALL		?CAMERA_UPDATE

	; CHECK LAND
	;--------------------------------
	LD			A,(COLL_YDELTA)
	AND			A
	JP			Z,?HERO_AI_CLOSE

	LD			A,(COLL_YMOVE)
	AND			A
	JP			NZ,?HERO_AI_CLOSE

	CALL		?HERO_GET_TILE_UP
	LD			A,(HL)
	CP			COLLCODE_SPACE
	JP			NZ,?HERO_AI_CLOSE

	CALL		?HERO_SWIM_COLL_CLOSE
	MOVADDR		SCRIPT_WFRAME,?_HERO_SWIMEND_UP_ANIM
	JP			?HERO_AI_PUPPET

;********************************
	END
;********************************