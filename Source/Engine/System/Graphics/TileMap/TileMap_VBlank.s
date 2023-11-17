;********************************
; TILEMAP_VBLANK.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?TILEMAP_DRAW_ROW_COL

	; TILEMAP THE SCREEN
	LD		A,(SCXW)
	LDFF_A	SCX			; Tilemap X
	LD		A,(SCYW)
	LDFF_A	SCY			; Tilemap Y

	LD		A,(TILEMAP_COLTRIG)		; Load the column trigger
	AND		A						; Set the zero CC
	JP		Z,_NOX					; If zero, no col

	AND		$01
	LDFF_A	VBK

	XOR		A
	LD		(TILEMAP_COLTRIG),A

	LD		HL,TILEMAP_VRAM_COL
	LD		BC,TILEMAP_COL_TILES

	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY
	TILEMAP_COL_BYTE_COPY

_NOX
	LD		A,(TILEMAP_ROWTRIG)		; Load the row trigger
	AND		A						; Set the zero CC
	JP		Z,_NOY					; If zero, no row

	AND		$01
	LDFF_A	VBK

	XOR		A
	LD		(TILEMAP_ROWTRIG),A

	LD		HL,TILEMAP_VRAM_ROW
	GET16	D,E,TILEMAP_ROW_DEST
	LD		BC,TILEMAP_ROW_TILES

	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY
	TILEMAP_ROW_BYTE_COPY

_NOY

	XOR	A
	LDFF_A	VBK

	LD		A,(TILEMAP_FLAGS)
	AND		%11101110
	LD		(TILEMAP_FLAGS), A

	RET

;********************************
; D:	X Map Tile
; E:	Y Map Tile
; C:	Tile ID
; DE:	<--VRAM dest addr
; HL:	<--Pattern bank source addr
?TILEMAP_READY_DRAWTILE

	; HL = SOURCE, DE = DEST
	;--------------------------------
		; B = X
		;--------------------------------
		LD			B,D

		; COMPUTE THE DEST ADDR ((Y*$40)+(X*2)+$9800)
		;--------------------------------
			; DE = (Y*$40)&$30
			;--------------------------------
			LD			A,E			;1
			RRCA					;1
			RRCA					;1
			LD			E,A			;1
			AND			%00000011	;2
			LD			D,A			;1
			LD			A,E			;1
			AND			%11000000	;2
			LD			E,A			;1

			; DE += (B*$02)+$9800
			;--------------------------------	
			LD			A,B			;1
			ADD			A,A			;1
			AND			$1F			;2
			ADD			A,E			;1
			LD			E,A			;1
			LD			A,$98		;2
			ADC			A,D			;1
			LD			D,A			;1

		; HL = (TILE ID*$04) + $D000
		;--------------------------------
		LD			A,C				;1
		RLCA						;1
		RLCA						;1
		LD			L,A				;1
		AND			%00000011		;2
		ADD			A,$D0			;2
		LD			H,A				;1
		LD			A,L				;1
		AND			%11111100		;2
		LD			L,A				;1
	
	RET

;********************************
?TILEMAP_VBLANK_DRAWTILE

	GET16	D,E,TILEMAP_VBLANK_DST
	LD		A,(TILEMAP_VBLANK_SRC)
	LD		C,A
	
	CALL	?TILEMAP_READY_DRAWTILE

	SET16	D,E,TILEMAP_VBLANK_DST
	SET16	H,L,TILEMAP_VBLANK_SRC

	MOVADDR	VBLANK_FUNC,?TILEMAP_VBLANK_DRAWTILE2

	RET

;********************************
?TILEMAP_VBLANK_DRAWTILE2

	GET16	D,E,TILEMAP_VBLANK_DST
	GET16	H,L,TILEMAP_VBLANK_SRC
	MOVADDR	VBLANK_FUNC,?VBLANK_IDLE

?TILEMAP_DRAWTILE

	; SWITCH TO THE PATTERN BANK
	;--------------------------------
	SWITCH_RAM_BANK		WRAM_PATTERN

	; SWITCH TO VRAM BANK0
	;--------------------------------
	XOR			A
	LDFF_A		VBK
	
	; B = $00, C = $1F
	;--------------------------------
	LD			B,A
	LD			C,$1F
	
	; SAVE THE SOURCE AND DEST
	;--------------------------------
	PUSH		DE			;4
	PUSH		HL			;4
	
	; DRAW CHR CODES
	;--------------------------------
	LD			A,(HLI)		;2
	LD			(DE),A		;2
	INC			E			;1
	LD			A,(HLI)		;2
	LD			(DE),A		;2

	LD			A,C			;1
	ADD			A,E			;1
	LD			E,A			;1
	LD			A,B			;1
	ADC			A,D			;1
	LD			D,A			;1
	
	LD			A,(HLI)		;2
	LD			(DE),A		;2
	INC			E			;1
	LD			A,(HL)		;2
	LD			(DE),A		;2

	; SWITCH TO VRAM BANK1
	;--------------------------------
	LD			A,$01
	LDFF_A		VBK

	; RESTORE THE SOURCE AND DEST
	;--------------------------------
	POP			HL			;3
	POP			DE			;3

	; SOURCE += $0400
	;--------------------------------
	LD			A,$04
	ADD			A,H
	LD			H,A

	; DRAW THE ATTRIBUTES
	;--------------------------------	
	LD			A,(HLI)		;2
	LD			(DE),A		;2
	INC			E			;1
	LD			A,(HLI)		;2
	LD			(DE),A		;2

	LD			A,C			;1
	ADD			A,E			;1
	LD			E,A			;1
	LD			A,B			;1
	ADC			A,D			;1
	LD			D,A			;1
	
	LD			A,(HLI)		;2
	LD			(DE),A		;2
	INC			E			;1
	LD			A,(HL)		;2
	LD			(DE),A		;2

	; VBLANK DONE!
	;--------------------------------	
	;VBLANK_STOP_BUSY

	RET

;********************************
	END
;********************************