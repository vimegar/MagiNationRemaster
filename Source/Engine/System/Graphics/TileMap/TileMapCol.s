;********************************
; TILEMAP_COL.S
;********************************
;	Author:	Patrick Meehan/Dylan ExoByte Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?TILEMAP_READY_COL_CODES

	LD		HL,TILEMAP_COLPHASE
	SRA		(HL)

	LD		A,(TILEMAP_FLAGS)
	BIT		$03,A
	JP		NZ,?TILEMAP_DECODE_COL

	LD		A,(TILEMAP_XDELTA)
	AND		A
	JP		Z,?TILEMAP_DECODE_COL		; No change
	LD		E,A		; Save the delta into E

	BIT		$07,E	; Handle pos or neg move
	JP		Z,?TILEMAP_COL_POSITIVE

;********************************
?TILEMAP_COL_NEGATIVE
	
	; LIMIT DELTA
	;--------------------------------
	LD		A,E
	CP		$FC
	JR		NC,_DELTA_OK
	LD		E,$FC
_DELTA_OK
	
	LD		A,(TILEMAP_FLAGS)
	BIT		$02,A			; Check min stop flag
	JR		Z,_NO_LIMIT		; Not at min; move OK

	; CLAMP SCROLL
	;--------------------------------
	LD		A,(TILEMAP_XTILEOFF)
	LD		B,A
	ADD		A,E							; Add the scroll delta

	BIT		$07,A
	JR		Z,_NO_LIMIT

	LD		A,B
	AND		A
	JP		Z,?TILEMAP_DECODE_COL		; No move!
	CPL									; Get the inverse
	INC		A							; Clamp that bad boy
	
	LD		E,A							; Put it in E	

	; IN TILEMAP BOUNDS
	;--------------------------------
_NO_LIMIT
	LD		A,E
	LD		HL,SCXW
	ADD		A,(HL)					; Scroll the screen
	LD		(HL),A

	; APPLY THE MOVE
	;--------------------------------
	LD		A,(TILEMAP_XTILEOFF)	; Get the Y Offset
	LD		D,A						; Save it in D
	ADD		A,E						; Add the scroll delta
	LD		E,A						; E = New Offset City
	
	BIT		$07,A
	JR		Z,_NOT_NEG
	ADD		A,$10
_NOT_NEG
	LD		(TILEMAP_XTILEOFF),A	; Make it official

	; CHECK 8 PIXEL BOUNDARY
	;--------------------------------
	XOR		D
	BIT		3,A

	JP		Z,?TILEMAP_DECODE_COL	; If not, we are OK

	; CHECK 16 PIXEL BOUNDARY
	;--------------------------------
	BIT		$07,E					; Check unclamped offset > 16
	LD		HL,TILEMAP_SOURCE		; HL = ptr to source
	JR		Z,_SAME_COL				; If not then... _SAME_COL!
	PUSH	HL

; NEW PATTERN COL REQUIRED
	;--------------------------------
	LD		HL,TILEMAP_XTILE		; New X tile
	DEC		(HL)
	LD		L,(HL)
	LD		A,L						; Save X tile
	AND		A						; Check the limit
	LD		C,%00000101
	JR		Z,_ON_LIMIT
	LD		C,%00000001
	
_ON_LIMIT
	LD		HL,TILEMAP_FLAGS
	LD		A,(HL)
	AND		%11111000
	ADD		A,C
	LD		(HL),A

	POP 	HL			; HL = ptr to source
	DECHL_16			; Get the next col in WRAM
	
_SAME_COL
	LD		A,(HLI)
	LD		B,(HL)
	LD		C,A
	FSET16	B,C,TILEMAP_COL_SRC


	; NEW TILE COL REQUIRED
	;--------------------------------
	GET8	E,TILEMAP_DEST			; DE = dest
	DEC		A						
	AND		$1F
	LD		D,A
	LD		A,E
	AND		$E0
	ADD		A,D
	LD		(TILEMAP_COL_DEST),A		;4
	LD		HL,TILEMAP_DEST				;3
	LD		(HLI),A						;2
	LD		A,(HL)						;2
	LD		(TILEMAP_COL_DEST+1),A		;4
	
	; READY TO DECODE THE COL...
	;--------------------------------
	LD		A,$02
	LD		(TILEMAP_COLPHASE),A
	
	JP		?TILEMAP_DECODE_COL		; Decode the row

;********************************
; E:	Y Delta
?TILEMAP_COL_POSITIVE

	; LIMIT DELTA
	;--------------------------------
	LD		A,E
	CP		$04
	JR		C,_DELTA_OK
	LD		E,$04
_DELTA_OK

	LD		A,(TILEMAP_FLAGS)
	BIT		$01,A			; Check max stop flag
	JR		Z,_NO_LIMIT		; Not at max; move OK

	; CLAMP SCROLL
	;--------------------------------
	LD		A,(TILEMAP_XTILEOFF)
	LD		B,A
	ADD		A,E							; Add the scroll delta

	BIT		$04,A
	JR		Z,_NO_LIMIT

	LD		A,B
	CPL									; Get the inverse
	AND		$0F							; Clamp it
	AND		A							; If no move...
	JP		Z,?TILEMAP_DECODE_COL		; No move!
	LD		E,A							; Put it in E

	; IN TILEMAP BOUNDS
	;--------------------------------
_NO_LIMIT
	LD		A,E
	LD		HL,SCXW
	ADD		A,(HL)					; Scroll the screen
	LD		(HL),A

	; APPLY THE MOVE
	;--------------------------------
	LD		A,(TILEMAP_XTILEOFF)	; Get the Y Offset
	LD		D,A						; Save it in D
	ADD		A,E						; Add the scroll delta
	LD		E,A						; E = New Offset City
	AND		$0F						; Clamp it to 0-15 in A
	LD		(TILEMAP_XTILEOFF),A	; Make it official

	; CHECK 8 PIXEL BOUNDARY
	;--------------------------------
	XOR		D
	BIT		3,A

	JP		Z,?TILEMAP_DECODE_COL	; If not, we are OK

	; CHECK 16 PIXEL BOUNDARY
	;--------------------------------
	BIT		$04,E					; Check unclamped offset > 16
	FGET16	B,C,TILEMAP_SOURCE		; BC = source
	JR		Z,_SAME_COL				; If not then... _SAME_COL!

	; NEW PATTERN COL REQUIRED
	;--------------------------------
	LD		HL,TILEMAP_XTILE		; New X tile
	INC 	(HL)
	LD		L,(HL)					; Save X tile
	LD		A,(TILEMAP_HSTOP)		; Check the limit
	CP		L		
	LD		D,%00000011
	JR		Z,_ON_LIMIT
	LD		D,%00000001
_ON_LIMIT
	LD		HL,TILEMAP_FLAGS
	LD		A,(HL)
	AND		%11111000
	ADD		A,D
	LD		(HL),A


	INC		BC						; Get the next col in WRAM
	FSET16	B,C,TILEMAP_SOURCE

_SAME_COL
	; X MOVE POS - GET THE RIGHT COL ADDR
	;--------------------------------
	LD		HL,$0A
	ADD		HL,BC
	SET16	H,L,TILEMAP_COL_SRC
	; NEW TILE COL REQUIRED
	;--------------------------------
	GET8	E,TILEMAP_DEST			; DE = dest
	INC		A
	AND		$1F
	LD		D,A
	LD		A,E
	AND		$E0
	ADD		A,D
	LD		(TILEMAP_DEST),A
	
	LD		E,A
	ADD		A,$14
	AND		$1F
	LD		D,A
	LD		A,E
	AND		$E0
	ADD		A,D
	LD		(TILEMAP_COL_DEST),A
	LD		A,(TILEMAP_DEST+1)
	LD		(TILEMAP_COL_DEST+1),A
	
	; READY TO DECODE THE COL...
	;--------------------------------
	LD		A,$02
	LD		(TILEMAP_COLPHASE),A
	
	JP		?TILEMAP_DECODE_COL		; Decode the row

;********************************
?TILEMAP_READY_COL_ATTRIB
	
	LD		(TILEMAP_COLTRIG),A
	
	LD		D,$00
	LD		A,(TILEMAP_COLXTOGG)
	LD		E,A

	SWITCH_RAM_BANK		WRAM_PATTERN

	LD		BC,TILEMAP_COL_TILES

	TILEMAP_COL_START		_LABEL1,$D4
	TILEMAP_COL_DECODE		$01,$D4
	TILEMAP_COL_DECODE		$02,$D4
	TILEMAP_COL_DECODE		$03,$D4
	TILEMAP_COL_DECODE		$04,$D4
	TILEMAP_COL_DECODE		$05,$D4
	TILEMAP_COL_DECODE		$06,$D4
	TILEMAP_COL_DECODE		$07,$D4
	TILEMAP_COL_DECODE		$08,$D4
	TILEMAP_COL_DECODE		$09,$D4

	RET

;********************************
?TILEMAP_DECODE_COL

	LD		A,(TILEMAP_COLPHASE)
	AND		A
	RET		Z

	CP		$02
	JP		NZ,?TILEMAP_READY_COL_ATTRIB

	LD		(TILEMAP_COLTRIG),A

	LD		B,$00
	GET8	C,TILEMAP_WIDTH
	GET16	H,L,TILEMAP_COL_SRC

	SWITCH_RAM_BANK		WRAM_TILEMAP

	TILEMAP_COL_INIT	TILEMAP_COL+$00
	TILEMAP_COL_INIT	TILEMAP_COL+$01
	TILEMAP_COL_INIT	TILEMAP_COL+$02
	TILEMAP_COL_INIT	TILEMAP_COL+$03
	TILEMAP_COL_INIT	TILEMAP_COL+$04
	TILEMAP_COL_INIT	TILEMAP_COL+$05
	TILEMAP_COL_INIT	TILEMAP_COL+$06
	TILEMAP_COL_INIT	TILEMAP_COL+$07
	TILEMAP_COL_INIT	TILEMAP_COL+$08
	TILEMAP_COL_INIT	TILEMAP_COL+$09

	LD		DE,$0000

	LD		A,(TILEMAP_XTILEOFF)
	BIT		$03,A
	JR		Z,_NO_XTOGG
	LD		E,$01
_NO_XTOGG
	LD		A,E
	LD		(TILEMAP_COLXTOGG),A
	LD		A,(TILEMAP_YTILEOFF)
	LD		(TILEMAP_COLYTOGG),A

	SWITCH_RAM_BANK		WRAM_PATTERN

	LD		BC,TILEMAP_COL_TILES

	TILEMAP_COL_START		_LABEL0,$D0
	TILEMAP_COL_DECODE		$01,$D0
	TILEMAP_COL_DECODE		$02,$D0
	TILEMAP_COL_DECODE		$03,$D0
	TILEMAP_COL_DECODE		$04,$D0
	TILEMAP_COL_DECODE		$05,$D0
	TILEMAP_COL_DECODE		$06,$D0
	TILEMAP_COL_DECODE		$07,$D0
	TILEMAP_COL_DECODE		$08,$D0
	TILEMAP_COL_DECODE		$09,$D0
	
	LD		BC,$0020
	LD		DE,$0398
	GET16	H,L,TILEMAP_COL_DEST

	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$00
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$02
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$04
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$06
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$08
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$0A
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$0C
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$0E
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$10
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$12
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$14
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$16
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$18
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$1A
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$1C
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$1E
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$20
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$22
	TILEMAP_COL_SET		TILEMAP_VRAM_COL+$24

	RET

;********************************
	END
;********************************