;********************************
; BATTLE_ACTOR.S
;********************************
;	Author:	Patrick Meehan/Dylan "Basketball Floozy!" Mayo,Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; A:	Actor index (0-9)
?BTL_ACTOR_END

	CALL	?BTL_ACTOR_INDEX_SCRIPT
	INC		HL
	INC		HL
	INC		HL

	LD		A,?CMD_END&$FF
	LD		(HLI),A
	LD		A,(?CMD_END>>$08)&$FF
	LD		(HLI),A
	
	LD		BC,5
	ADD		HL,BC
	
	LD		A,?CMD_END&$FF
	LD		(HLI),A
	LD		A,(?CMD_END>>$08)&$FF
	LD		(HLI),A	
	
	RET
	
;********************************
; A:	Actor index (0-9)
; HL:	<--Actor script
?BTL_ACTOR_INDEX_SCRIPT

	LD		DE,ACTOR_STRUCT_SIZE
	LD		HL,ACTOR00

	INC		A

_LOOP
	DEC		A
	JR		Z,_BREAK
	ADD		HL,DE
	JR		_LOOP

_BREAK
	LD		DE,ACTOR_STRUCT_SCRIPT0
	ADD		HL,DE

	RET

;********************************
; BC:	Script addr
; D:	Script bank
; A:	Actor index (0-9)
?BTL_ACTOR_SET_SCRIPT

	PUSH	DE
	CALL	?BTL_ACTOR_INDEX_SCRIPT
	POP		DE

	LD		A,D			; Bank
	LD		(HLI),A
	LD		A,C			; Script addr
	LD		(HLI),A
	LD		A,B
	LD		(HLI),A

	LD		A,?SCRIPT_PLAY_NEXT&$FF
	LD		(HLI),A
	LD		A,(?SCRIPT_PLAY_NEXT>>$08)&$FF
	LD		(HLI),A

	RET

;********************************
	END
;********************************
