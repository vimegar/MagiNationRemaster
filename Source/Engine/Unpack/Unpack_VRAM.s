;********************************
; UNPACK_VRAM.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; BC:	File base address
?UNPACK_VRAM

	XOR			A
	LD			(VBK),A

	LD			A,(BC)		; Total bitmaps
	INC			BC
	AND			A
	JR			Z,_SKIP
	LD			D,A
	
_VBK0
	PUSH		DE
	CALL		?UNPACK_VRAM_BITMAP
	POP			DE
	DEC			D
	JR			NZ,_VBK0

_SKIP
	LD			A,$01
	LD			(VBK),A

	LD			A,(BC)
	INC			BC
	AND			A
	RET			Z
	LD			D,A
	
_VBK1
	PUSH		DE
	CALL		?UNPACK_VRAM_BITMAP
	POP			DE
	DEC			D
	JR			NZ,_VBK1

	RET

;********************************
; BC:	File base address
?UNPACK_VRAM_BITMAP

	PUSH_ROM_BANK

	; GET THE ADDR, SET THE BANK
	;--------------------------------
	PUSH			BC
	SCRIPT_WORD		H,L			; Dest
	PUSH			HL
	SCRIPT_WORD		H,L			; Source
	SCRIPT_BYTE		E			; Width in tiles
	SCRIPT_BYTE		D			; Height in tiles

	LD				A,(BC)		; Bank
	SWITCH_ROM_BANK	A
	POP				BC			; BC = Dest
	
	; COPY THE ROWS OF TILES
	;--------------------------------
_ROW_LOOP
	PUSH		DE
	PUSH		HL
	PUSH		BC
	
	; 8 * 2
	;--------------------------------
_TILE_LOOP_OUTER
	LD			D,$02
	
	; COPY A TILE
	;--------------------------------
_TILE_LOOP_INNER
	LD			A,(HLI)
	LD			(BC),A
	INC			C
	LD			A,(HLI)
	LD			(BC),A
	INC			C
	LD			A,(HLI)
	LD			(BC),A
	INC			C
	LD			A,(HLI)
	LD			(BC),A
	INC			C
	LD			A,(HLI)
	LD			(BC),A
	INC			C
	LD			A,(HLI)
	LD			(BC),A
	INC			C
	LD			A,(HLI)
	LD			(BC),A
	INC			C
	LD			A,(HLI)
	LD			(BC),A
	INC			C
	
	DEC			D
	JR			NZ,_TILE_LOOP_INNER
	
	DEC			E
	JR			NZ,_TILE_LOOP_OUTER

_TILE_LOOP_END

	POP			BC
	POP			HL
	POP			DE
	
	; NEXT ROW IN VRAM AND BITMAP
	;--------------------------------

	INC			H
	BIT			$04,E
	JR			NZ,_OK
	
	DEC			H
	LD			A,E
	SWAP		A
	ADD			A,L
	LD			L,A
	LD			A,H
	ADC			A,$00
	LD			H,A

_OK
	INC			B
	
	DEC			D
	JR			NZ,_ROW_LOOP
	
	; NEXT BITMAP DESCRIPTOR
	;--------------------------------
	POP			HL
	LD			BC,$0007
	ADD			HL,BC
	LD			C,L
	LD			B,H
	
	; RESTORE THE BANK
	;--------------------------------
	POP_ROM_BANK
	
	RET

;********************************
	END
;********************************