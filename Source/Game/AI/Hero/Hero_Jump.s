;********************************
; HERO_JUMP.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; C:	<-Total jump tiles
; DE:	Tile addr delta
; HL:	Tile addr
?HERO_CALCULATE_JUMP

	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_SWIM	;check to see if hero can swim
	JP			C,_NO_SWIM

	; COUNT TILE $01
	;--------------------------------
	LD		C,$00			; C = 0
	LD		A,(HL)
	LD		B,A
	CP		COLLCODE_JUMP
	RET		NZ
	
	; COUNT TILE $02
	;--------------------------------
	INC		C				; C = 1
	ADD		HL,DE
	LD		A,(HL)
	CP		COLLCODE_JUMP
	JR		NZ,_RETURN

	; COUNT TILE $03
	;--------------------------------
_TILE3
	INC		C				; C = 2
	ADD		HL,DE
	LD		A,(HL)

_RETURN
	CP		COLLCODE_SPACE
	RET		Z
	CP		COLLCODE_ENCOUNTER
	RET		Z

	LD		C,$03
	RET


_NO_SWIM
	; COUNT TILE $01
	;--------------------------------
	LD		C,$00			; C = 0
	LD		A,(HL)
	LD		B,A
	CP		COLLCODE_WATER
	JR		Z,_NS_TILE2
	CP		COLLCODE_JUMP
	RET		NZ
	
	; COUNT TILE $02
	;--------------------------------
_NS_TILE2
	INC		C				; C = 1
	ADD		HL,DE
	LD		A,(HL)
	CP		COLLCODE_WATER
	JR		Z,_NS_TILE3
	CP		COLLCODE_JUMP
	JR		NZ,_RETURN

	; COUNT TILE $03
	;--------------------------------
_NS_TILE3
	JR		_TILE3

;********************************
?HERO_CHECK_JUMP_DOWN

	CALL		?HERO_CALCULATE_JUMP

	LD			A,C
	AND			A
	RET			Z
	
	POP			AF
	
	DEC			C
	JP			Z,_JUMP1				; 1 block to jump
	
	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_LONGJUMP	;check to see if hero can long jump
	JP			C,?HERO_AI_CLOSE
	
	DEC			C	
	JP			Z,_JUMP2				; 2 blocks to jump
	
	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_FLY		;check to see if hero can long jump
	JP			C,?HERO_AI_CLOSE

	JP			?HERO_AI_FLY_DOWN_START

_JUMP1
	MOVADDR		SCRIPT_WFRAME,?_HERO_JUMP_DOWN_ANIM
	JP			?HERO_AI_PUPPET

_JUMP2	
	MOVADDR		SCRIPT_WFRAME,?_HERO_JUMP_DOWN2_ANIM
	JP			?HERO_AI_PUPPET

;********************************
?HERO_CHECK_JUMP_LEFT

	CALL		?HERO_CALCULATE_JUMP

	LD			A,C
	AND			A
	RET			Z
	
	POP			AF
	
	DEC			C
	JP			Z,_JUMP1				; 1 block to jump
	
	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_LONGJUMP	;check to see if hero can long jump
	JP			C,?HERO_AI_CLOSE
	
	DEC			C	
	JP			Z,_JUMP2				; 2 blocks to jump
	
	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_FLY		;check to see if hero can long jump
	JP			C,?HERO_AI_CLOSE

	JP			?HERO_AI_FLY_LEFT_START

_JUMP1
	MOVADDR		SCRIPT_WFRAME,?_HERO_JUMP_LEFT_ANIM
	JP			?HERO_AI_PUPPET

_JUMP2	
	MOVADDR		SCRIPT_WFRAME,?_HERO_JUMP_LEFT2_ANIM
	JP			?HERO_AI_PUPPET

;********************************
?HERO_CHECK_JUMP_RIGHT

	CALL		?HERO_CALCULATE_JUMP

	LD			A,C
	AND			A
	RET			Z
	
	POP			AF
	
	DEC			C
	JP			Z,_JUMP1				; 1 block to jump
	
	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_LONGJUMP	;check to see if hero can long jump
	JP			C,?HERO_AI_CLOSE
	
	DEC			C	
	JP			Z,_JUMP2				; 2 blocks to jump
	
	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_FLY		;check to see if hero can long jump
	JP			C,?HERO_AI_CLOSE

	JP			?HERO_AI_FLY_RIGHT_START

_JUMP1
	MOVADDR		SCRIPT_WFRAME,?_HERO_JUMP_RIGHT_ANIM
	JP			?HERO_AI_PUPPET

_JUMP2	
	MOVADDR		SCRIPT_WFRAME,?_HERO_JUMP_RIGHT2_ANIM
	JP			?HERO_AI_PUPPET

;********************************
?HERO_CHECK_JUMP_UP

	CALL		?HERO_CALCULATE_JUMP

	LD			A,C
	AND			A
	RET			Z
	
	POP			AF
	
	DEC			C
	JP			Z,_JUMP1				; 1 block to jump
	
	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_LONGJUMP	;check to see if hero can long jump
	JP			C,?HERO_AI_CLOSE
	
	DEC			C	
	JP			Z,_JUMP2				; 2 blocks to jump
	
	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_FLY		;check to see if hero can long jump
	JP			C,?HERO_AI_CLOSE

	JP			?HERO_AI_FLY_UP_START

_JUMP1
	MOVADDR		SCRIPT_WFRAME,?_HERO_JUMP_UP_ANIM
	JP			?HERO_AI_PUPPET

_JUMP2	
	MOVADDR		SCRIPT_WFRAME,?_HERO_JUMP_UP2_ANIM
	JP			?HERO_AI_PUPPET

;********************************
	END
;********************************
