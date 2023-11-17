;********************************
; TILEMAP_ROW.S
;********************************
;	Author:	Patrick Meehan/Dylan ExoByte Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?TILEMAP_READY_ROW_CODES

	LD		HL,TILEMAP_ROWPHASE
	SRA		(HL)		

	LD		A,(TILEMAP_FLAGS)
	BIT		$07,A
	JP		NZ,?TILEMAP_DECODE_ROW

	LD		A,(TILEMAP_YDELTA)
	AND		A
	JP		Z,?TILEMAP_DECODE_ROW		; No change
	LD		E,A		; Save the delta into E

	BIT		$07,E	; Handle pos or neg move
	JP		Z,?TILEMAP_ROW_POSITIVE

;********************************
?TILEMAP_ROW_NEGATIVE
	
	; LIMIT DELTA
	;--------------------------------
	LD		A,E
	CP		$FC
	JR		NC,_DELTA_OK
	LD		E,$FC
_DELTA_OK
	
	LD		A,(TILEMAP_FLAGS)
	BIT		$06,A			; Check min stop flag
	JR		Z,_NO_LIMIT		; Not at min; move OK

	; CLAMP SCROLL
	;--------------------------------
	LD		A,(TILEMAP_YTILEOFF)
	LD		B,A
	ADD		A,E							; Add the scroll delta

	BIT		$07,A
	JR		Z,_NO_LIMIT

	LD		A,B
	AND		A
	JP		Z,?TILEMAP_DECODE_ROW		; No move!
	CPL									; Get the inverse
	INC		A							; Clamp that bad boy
	
	LD		E,A							; Put it in E	
	
	; IN TILEMAP BOUNDS
	;--------------------------------
_NO_LIMIT
	LD		A,E
	LD		HL,SCYW
	ADD		A,(HL)					; Scroll the screen
	LD		(HL),A

	; APPLY THE MOVE
	;--------------------------------
	LD		A,(TILEMAP_YTILEOFF)	; Get the Y Offset
	LD		D,A						; Save it in D
	ADD		A,E						; Add the scroll delta
	LD		E,A						; E = New Offset City
	
	BIT		$07,A
	JR		Z,_NOT_NEG
	ADD		A,$10
_NOT_NEG
	LD		(TILEMAP_YTILEOFF),A	; Make it official

	; CHECK 8 PIXEL BOUNDARY
	;--------------------------------
	XOR		D
	BIT		3,A

	JP		Z,?TILEMAP_DECODE_ROW	; If not, we are OK

	; CHECK 16 PIXEL BOUNDARY
	;--------------------------------
	BIT		$07,E					; Check unclamped offset > 16
	FGET16	B,C,TILEMAP_SOURCE		; BC = source
	FGET16	D,E,TILEMAP_DEST		; DE = dest
	JR		Z,_SAME_ROW				; If not then... _SAME_ROW!
	PUSH	DE

; NEW PATTERN ROW REQUIRED
	;--------------------------------
	LD		HL,TILEMAP_YTILE		; New X tile
	DEC		(HL)
	LD		L,(HL)
	LD		A,L						; Save X tile
	AND		A						; Check the limit
	LD		D,%01010000
	JR		Z,_ON_LIMIT
	LD		D,%00010000
	
_ON_LIMIT
	LD		HL,TILEMAP_FLAGS
	LD		A,(HL)
	AND		%10001111
	ADD		A,D
	LD		(HL),A

	LD		A,(TILEMAP_WIDTH)		; Get the MAP WIDTH (tee hee!)
	CPL
	INC		A
	LD		L,A						; Save it in C
	LD		H,$FF					; HL = -MAP WIDTH
	
	ADD		HL,BC					; Get the prev row in WRAM

	LD		A,L
	LD		(TILEMAP_SOURCE),A
	LD		A,H
	LD		(TILEMAP_SOURCE+1),A
	LD		C,L
	LD		B,H
	POP		DE

_SAME_ROW
	FSET16	B,C,TILEMAP_ROW_SRC

	; NEW TILE ROW REQUIRED
	;--------------------------------
	LD		HL,(-$0020)&$FFFF		; Get the prev row in VRAM
	ADD		HL,DE
	
	LD		A,L
	LD		(TILEMAP_DEST),A
	LD		(TILEMAP_ROW_DEST),A
	
	LD		A,H
	AND		$03
	ADD		A,$98
	LD		(TILEMAP_DEST+1),A
	LD		(TILEMAP_ROW_DEST+1),A 
	
	; READY TO DECODE THE ROW...
	;--------------------------------
	LD		A,$02
	LD		(TILEMAP_ROWPHASE),A
	
	JP		?TILEMAP_DECODE_ROW		; Decode the row

;********************************
; E:	Y Delta
?TILEMAP_ROW_POSITIVE

	; LIMIT DELTA
	;--------------------------------
	LD		A,E
	CP		$04
	JR		C,_DELTA_OK
	LD		E,$04
_DELTA_OK

	LD		A,(TILEMAP_FLAGS)
	BIT		$05,A			; Check max stop flag
	JR		Z,_NO_LIMIT		; Not at max; move OK

	; CLAMP SCROLL
	;--------------------------------
	LD		A,(TILEMAP_YTILEOFF)
	LD		B,A
	ADD		A,E							; Add the scroll delta

	BIT		$04,A
	JR		Z,_NO_LIMIT

	LD		A,B
	CPL									; Get the inverse
	AND		$0F							; Clamp it
	AND		A							; If no move...
	JP		Z,?TILEMAP_DECODE_ROW		; No move!
	LD		E,A							; Put it in E

	; IN TILEMAP BOUNDS
	;--------------------------------
_NO_LIMIT
	LD		A,E
	LD		HL,SCYW
	ADD		A,(HL)					; Scroll the screen
	LD		(HL),A


	; APPLY THE MOVE
	;--------------------------------
	LD		A,(TILEMAP_YTILEOFF)	; Get the Y Offset
	LD		D,A						; Save it in D
	ADD		A,E						; Add the scroll delta
	LD		E,A						; E = New Offset City
	AND		$0F						; Clamp it to 0-15 in A
	LD		(TILEMAP_YTILEOFF),A	; Make it official

	; CHECK 8 PIXEL BOUNDARY
	;--------------------------------
	XOR		D
	BIT		3,A

	JP		Z,?TILEMAP_DECODE_ROW	; If not, we are OK

	; CHECK 16 PIXEL BOUNDARY
	;--------------------------------
	BIT		$04,E					; Check unclamped offset > 16
	FGET16	B,C,TILEMAP_SOURCE		; BC = source
	FGET16	D,E,TILEMAP_DEST		; DE = dest
	JR		Z,_SAME_ROW				; If not then... _SAME_ROW!
	PUSH	DE

	; NEW PATTERN ROW REQUIRED
	;--------------------------------
	LD		HL,TILEMAP_YTILE		; New X tile
	INC		(HL)
	LD		L,(HL)					; Save X tile
	LD		A,(TILEMAP_VSTOP)		; Check the limit
	CP		L
	LD		D,%00110000
	JR		Z,_ON_LIMIT
	LD		D,%00010000
_ON_LIMIT
	LD		HL,TILEMAP_FLAGS
	LD		A,(HL)
	AND		%10001111
	ADD		A,D
	LD		(HL),A

	LD		A,(TILEMAP_WIDTH)		; Get the MAP WIDTH (tee hee!)
	LD		L,A						; Save it in C
	LD		H,$00					; HL = MAP WIDTH

	ADD		HL,BC					; Get the next row in WRAM
	SET16	H,L,TILEMAP_SOURCE
	LD		C,L
	LD		B,H
	POP		DE

_SAME_ROW

	; NEW TILE ROW REQUIRED
	;--------------------------------
	LD		HL,$0020				; Get the next row in VRAM
	ADD		HL,DE
	LD		A,H
	AND		$03
	ADD		A,$98
	LD		H,A
	SET16	H,L,TILEMAP_DEST
	LD		E,L
	LD		D,H

	; Y MOVE POS - GET THE BOTTOM ROW ADDR
	;--------------------------------
	GET16	H,L,TILEMAP_YMAPPAD
	ADD		HL,BC
	SET16	H,L,TILEMAP_ROW_SRC

	LD		HL,$0240
	ADD		HL,DE
	LD		A,H
	AND		$03
	ADD		A,$98
	LD		H,A
	SET16	H,L,TILEMAP_ROW_DEST
	
	; READY TO DECODE THE ROW...
	;--------------------------------
	LD		A,$02
	LD		(TILEMAP_ROWPHASE),A
	
	JP		?TILEMAP_DECODE_ROW		; Decode the row

;********************************
?TILEMAP_READY_ROW_ATTRIB

	LD		(TILEMAP_ROWTRIG),A

	LD		DE,$0000

	LD		A,(TILEMAP_ROWYTOGG)
	LD		E,A

	SWITCH_RAM_BANK		WRAM_PATTERN

	LD		BC,TILEMAP_ROW_TILES

	TILEMAP_ROW_START		_LABEL1,$D4
	TILEMAP_ROW_DECODE		$01,$D4
	TILEMAP_ROW_DECODE		$02,$D4
	TILEMAP_ROW_DECODE		$03,$D4
	TILEMAP_ROW_DECODE		$04,$D4
	TILEMAP_ROW_DECODE		$05,$D4
	TILEMAP_ROW_DECODE		$06,$D4
	TILEMAP_ROW_DECODE		$07,$D4
	TILEMAP_ROW_DECODE		$08,$D4
	TILEMAP_ROW_DECODE		$09,$D4
	TILEMAP_ROW_DECODE		$0A,$D4

	RET

;********************************
?TILEMAP_DECODE_ROW

	LD		A,(TILEMAP_ROWPHASE)
	AND		A
	RET		Z
	
	CP		$02
	JP		NZ,?TILEMAP_READY_ROW_ATTRIB

	LD		(TILEMAP_ROWTRIG),A

	GET16	H,L,TILEMAP_ROW_SRC

	SWITCH_RAM_BANK		WRAM_TILEMAP

	TILEMAP_ROW_INIT	TILEMAP_ROW+$00
	TILEMAP_ROW_INIT	TILEMAP_ROW+$01
	TILEMAP_ROW_INIT	TILEMAP_ROW+$02
	TILEMAP_ROW_INIT	TILEMAP_ROW+$03
	TILEMAP_ROW_INIT	TILEMAP_ROW+$04
	TILEMAP_ROW_INIT	TILEMAP_ROW+$05
	TILEMAP_ROW_INIT	TILEMAP_ROW+$06
	TILEMAP_ROW_INIT	TILEMAP_ROW+$07
	TILEMAP_ROW_INIT	TILEMAP_ROW+$08
	TILEMAP_ROW_INIT	TILEMAP_ROW+$09
	TILEMAP_ROW_INIT	TILEMAP_ROW+$0A

	LD		DE,$0000

	LD		A,(TILEMAP_YTILEOFF)
	BIT		$03,A
	JR		Z,_NO_YTOGG
	LD		E,$02
_NO_YTOGG
	LD		A,E
	LD		(TILEMAP_ROWYTOGG),A
	LD		A,(TILEMAP_XTILEOFF)
	LD		(TILEMAP_ROWXTOGG),A

	SWITCH_RAM_BANK		WRAM_PATTERN

	LD			BC,TILEMAP_ROW_TILES

	TILEMAP_ROW_START		_LABEL0,$D0
	TILEMAP_ROW_DECODE		$01,$D0
	TILEMAP_ROW_DECODE		$02,$D0
	TILEMAP_ROW_DECODE		$03,$D0
	TILEMAP_ROW_DECODE		$04,$D0
	TILEMAP_ROW_DECODE		$05,$D0
	TILEMAP_ROW_DECODE		$06,$D0
	TILEMAP_ROW_DECODE		$07,$D0
	TILEMAP_ROW_DECODE		$08,$D0
	TILEMAP_ROW_DECODE		$09,$D0
	TILEMAP_ROW_DECODE		$0A,$D0

	LD		HL,TILEMAP_VRAM_ROW
	
	LD		D,$1F
	LD		A,(TILEMAP_ROW_DEST)
	LD		C,A
	AND		$E0
	LD		E,A
	LD		A,C

	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET
	TILEMAP_ROW_SET

	RET

;********************************
	END
;********************************
