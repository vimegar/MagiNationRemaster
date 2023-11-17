;********************************
; FRAME.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?FRAME_CLEAR_ALL

	LD		DE,$04

	LD		A,$28
	LD		B,A
	LD		HL,OBJRAM
	LD		A,$FF
_LOOP
	LD		(HL),A
	ADD		HL,DE
	DEC		B
	JR		NZ,_LOOP

	LD		A,$28
	LD		B,A
	LD		HL,OAM
	LD		A,$FF
_LOOP2
	LD		(HL),A
	ADD		HL,DE
	DEC		B
	JR		NZ,_LOOP2
	
	RET

;********************************
;	D:	<--World space X tile
FRAME_CULL_X	MACRO
	LD		A,(TILEMAP_XTILE)
	ADD		A,-$02
	LD		C,A

	LD		A,(ACTOR_XTILE)
	LD		D,A

	SUB		C
	BIT		$07,A
	RET		NZ

	ADD		A,-$0E
	BIT		$07,A
	RET		Z

	ENDM

;********************************
;	E:	<--World space Y tile
FRAME_CULL_Y	MACRO
	LD		A,(TILEMAP_YTILE)
	ADD		A,-$02
	LD		C,A

	LD		A,(ACTOR_YTILE)
	LD		E,A

	SUB		C
	BIT		$07,A
	RET		NZ

	ADD		A,-$0D
	BIT		$07,A
	RET		Z

	ENDM

;********************************
; HL:	Frame addr
?FRAME_DRAW

	LDA_FF	ACTOR_SCREEN_Y
	LDFF_A	ACTOR_SCREEN_YPREV
	LD		A,$FF
	LDFF_A	ACTOR_SCREEN_Y

	FRAME_CULL_X
	FRAME_CULL_Y

	; D = FRAME SCREEN X
	;--------------------------------
	LD		A,(SCXW)
	LD		C,A
	LD		A,D
	ADD		A,A
	ADD		A,A
	ADD		A,A
	ADD		A,A
	LD		B,$08
	ADD		A,B
	LD		B,A
	LD		A,(ACTOR_XOFF)
	ADD		A,B
	SUB		C
	LD		D,A
	LDFF_A	ACTOR_SCREEN_X

	; E = FIND FRAME SCREEN Y
	;--------------------------------
	LD		A,(SCYW)
	LD		C,A
	LD		A,E
	ADD		A,A
	ADD		A,A
	ADD		A,A
	ADD		A,A
	LD		B,$10
	ADD		A,B
	LD		B,A
	LD		A,(ACTOR_YOFF)
	ADD		A,B
	SUB		C
	LD		E,A
	LDFF_A	ACTOR_SCREEN_Y

;********************************
; D:	Frame X coord in screen space
; E:	Frame Y coord in screen space
?FRAME_DRAW_LOOP

	; HL: FRAME, BC: OAMCURSOR
	;--------------------------------
	LD		B,(OBJRAM>>8)&$FF
	LD		A,(FRAME_OAMCURSOR)
	LD		C,A

_DRAW_LOOP
	; Y
	;--------------------------------
	LD		A,(HLI)
	CP		$80
	JR		Z,_RETURN

	ADD		A,E
	LD		(BC),A
	INC		C

	; X
	;--------------------------------
	LD		A,(HLI)
	ADD		A,D
	LD		(BC),A
	INC		C

	; CHR CODE
	;--------------------------------
	LDA_FF	ACTOR_VRAM
	ADD		A,(HL)
	INC		HL
	LD		(BC),A
	INC		C

	; FLAGS
	;--------------------------------
	LD		A,(HLI)
	LD		(BC),A
	INC		C
	JR		_DRAW_LOOP

_RETURN
	LD		A,C
	LD		(FRAME_OAMCURSOR),A
	
	RET

;********************************
; B:	X Screen loc
; C:	Y Screen loc
; D:	Chr code
; E:	Flags
?FRAME_DRAW_CHR
	LD		H,(OBJRAM>>$08)&$FF
	LD		A,(FRAME_OAMCURSOR)
	LD		L,A
	
	LD		A,C			;y
	LD		(HLI),A
	LD		A,B			;x
	LD		(HLI),A
	LD		A,D			;code
	LD		(HLI),A
	LD		A,E			;flags
	LD		(HLI),A

	LD		A,L
	LD		(FRAME_OAMCURSOR),A

	RET

;********************************
?FRAME_OVERLAY

	LDA_FF	ACTOR_SCREEN_Y
	LDFF_A	ACTOR_SCREEN_YPREV
	LD		A,$FF
	LDFF_A	ACTOR_SCREEN_Y

	LD		A,(ACTOR_XTILE)
	LD		D,A
	LDFF_A	ACTOR_SCREEN_X

	LD		A,(ACTOR_YTILE)
	LD		E,A

	JP		?FRAME_DRAW_LOOP

;********************************
?FRAME_READY

	LD		A,(FRAME_TOP)
	LD		B,A
	LD		A,(FRAME_OAMCURSOR)
	SUB		B
	JR		NC,_OAMCLEAN

	CPL
	INC		A

	SRL		A
	SRL		A
	LD		E,A
	LD		BC,$0004
	LD		H,(OBJRAM>>8)&$FF
	LD		A,(FRAME_OAMCURSOR)
	LD		L,A
	LD		A,$FF

_LOOP
	LD		(HL),A
	ADD		HL,BC
	DEC		E
	JR		NZ,_LOOP

_OAMCLEAN
	LD		A,(FRAME_OAMCURSOR)
	LD		(FRAME_TOP),A
	LD		A,OBJRAM&$FF
	LD		(FRAME_OAMCURSOR),A

	RET

;********************************
	END
;********************************