;********************************
; ENCOUNTER.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\ENGINE\ENCOUNTER\ENCOUNTER_TABLE.S

;********************************
?ENCOUNTER

	LD		A,(SYSTEM_SCRIPT_ACTIVE)
	AND		A
	RET		NZ

	LD		A,(TEXTBOX_OPEN)
	CP		TEXTBOX_STATE_CLOSED
	RET		NZ

	LD		A,$FF
	LD		(RANDOM_COUNTER),A

	; SET THE ENCOUNTER SCRIPT
	;--------------------------------
	LD			A,(ENCOUNTER_SCRIPT_BANK)
	LD			(SYSTEM_SCRIPT_BANK),A
	LD			A,(ENCOUNTER_SCRIPT)
	LD			(SYSTEM_SCRIPT_FRAME),A
	LD			A,(ENCOUNTER_SCRIPT+$01)
	LD			(SYSTEM_SCRIPT_FRAME+$01),A

	MOVADDR		SYSTEM_SCRIPT_STATE,?SCRIPT_PLAY_NEXT

	RET

;********************************
?RANDOM_COUNTDOWN

	GET16_FF			H,L,ACTOR_TILE
	SWITCH_RAM_BANK		WRAM_COLL
	LD					A,(HL)
	CP					COLLCODE_ENCOUNTER
	RET					NZ

	LD		A,(SYSTEM_SCRIPT_ACTIVE)
	AND		A
	RET		NZ

	LD		A,(RANDOM_COUNTER)
	AND		A
	JP		Z,?ENCOUNTER
	CP		$FF
	JR		Z,_INIT_NEXT

	DEC		A
	LD		(RANDOM_COUNTER),A
	RET

_INIT_NEXT
	FGET16	H,L,ENCOUNTER_WAIT_TABLE

	RANDVAL	E
	AND		$0F
	LD		E,A
	LD		D,$00
	
	ADD		HL,DE
	
	LD		A,(HL)
	LD		(RANDOM_COUNTER),A

	RET

;********************************
?RANDOM_ENCOUNTER

	LD		A,(ENCOUNTER_FLAGS)
	AND		A
	RET		Z

	LDA_FF	TICKER
	AND		%0000011
	CP		$03
	RET		NZ
	
	JP		?RANDOM_COUNTDOWN

;********************************
?RANDOM_ENCOUNTER_FAST

	LD		A,(ENCOUNTER_FLAGS)
	AND		A
	RET		Z

	LDA_FF	TICKER
	AND		%00000001
	RET		NZ
	
	JP		?RANDOM_COUNTDOWN

;********************************
	END
;********************************