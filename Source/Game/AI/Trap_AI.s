;********************************
; TRAP_AI.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000 Interactive Imagination
;	All rights reserved

;********************************
;	BC:		Ptr to gob
?TRAP_AI

	CALL	?ANIM_AI

	LD		A,(SYSTEM_SCRIPT_ACTIVE)
	AND		A
	RET		NZ

	LD		A,(TEXTBOX_OPEN)
	CP		TEXTBOX_STATE_CLOSED
	RET		NZ

	LDA_FF	AI_HEROFLAGS
	BIT		HEROFLAGS_ACTIVE,A
	RET		Z

	LDA_FF	ACTOR_XTILE
	LD		E,A
	LD		A,(HEROACTOR_XTILE)
	CP		E
	RET		NZ

	LDA_FF	ACTOR_YTILE
	LD		E,A
	LD		A,(HEROACTOR_YTILE)
	CP		E
	RET		NZ

	GET16	H,L,ACTOR_CURRENT
	INC		HL
	LD		A,?TALKER_AI_INTERRUPT&$00FF
	LD		(HLI),A
	LD		A,(?TALKER_AI_INTERRUPT>>$08)&$00FF
	LD		(HLI),A

	RET

;********************************
	END
;********************************