;********************************
; UNPACK_BG.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; BC:	File base address
?UNPACK_BG_SCREEN

	LD		H,B
	LD		L,C

	LD		A,$01
	LD		(VBK),A
	LD		DE,$9800		; WRAM
	CALL	?RLE_DECOMPRESS

	XOR		A
	LD		(VBK),A
	LD		DE,$9800		; WRAM
	CALL	?RLE_DECOMPRESS

	RET

;********************************
; BC:	File base address
; HL:	BG Dest
; E:	BG Width in 8x8 tiles
; D:	BG Height in 8x8 tiles
?UNPACK_BG
	PUSH	HL
	PUSH	DE

	XOR		A
	LD		(VBK),A
	CALL	_BG_COPY_LOOP

	POP		DE
	POP		HL

	LD		A,$01
	LD		(VBK),A
	CALL	_BG_COPY_LOOP

	RET

_BG_COPY_LOOP
	PUSH	DE

_INNER_LOOP
	LD_HLI_BCI
	DEC		E
	JR		NZ,_INNER_LOOP

	POP		DE

	LD		A,$20
	SUB		E
	ADD		A,L
	LD		L,A
	LD		A,$00
	ADC		A,H
	LD		H,A

	DEC		D
	JR		NZ,_BG_COPY_LOOP
	
	RET

;********************************
; BC:	File base address
; HL:	BG Dest
; E:	BG Width in 8x8 tiles
; D:	BG Height in 8x8 tiles
?UNPACK_BG_XFLIP
	PUSH	HL
	PUSH	DE

	XOR		A
	LD		(VBK),A
	CALL	_BG_COPY_LOOP

	POP		DE
	POP		HL

	LD		A,$01
	LD		(VBK),A
	CALL	_BG_COPY_LOOP

	RET

_BG_COPY_LOOP
	PUSH	DE

	LD		A,E
	ADD		A,C
	LD		C,A
	LD		A,$00
	ADC		A,B
	LD		B,A

_INNER_LOOP
	DEC		BC
	LD		A,(BC)
	LD		(HLI),A
	DEC		E
	JR		NZ,_INNER_LOOP

	POP		DE

	LD		A,E
	ADD		A,C
	LD		C,A
	LD		A,$00
	ADC		A,B
	LD		B,A

	LD		A,$20
	SUB		E
	ADD		A,L
	LD		L,A
	LD		A,$00
	ADC		A,H
	LD		H,A

	DEC		D
	JR		NZ,_BG_COPY_LOOP
	
	RET


	GLOBAL	BG_TEST

;********************************
;     !!INTERNAL FUNCTION!!
; -------------------------------
; BC:	File base address
; HL:	BG Dest
; E:	BG Width in 8x8 tiles
; D:	BG Height in 8x8 tiles
; -------------------------------
?UNPACK_BG_RLE_INIT
	; step 1 -- uncompress to (spare0 wram buffer)
	PUSH	HL
	PUSH	DE
	PUSH	BC
	
	;NOTE: (the RLE is packed backwards to the BG .S file)
	
	;find the bg size
	LD		B,D
	LD		C,E
	CALL	?MULT						;HL:<- B * C ;DE IS TRASHED
	
	; now add that to base address for filebuffer
	LD		DE,$D000
	ADD		HL,DE
	LD		D,H
	LD		E,L							;DE:<- fileoffset for attributes
		
	; uncompress BG ATTRIBUTES to buffer 
	POP		HL  						;HL:<- BC
	CALL	?RLE_DECOMPRESS
		
	; now uncompress BG TILES to buffer 
	LD		DE,$D000		; WRAM
	CALL	?RLE_DECOMPRESS
	
	;PUSH_ROM_BANK
	;SWITCH_ROM_BANK :BG_TEST
	;MEM_MOV	$D000,BG_TEST,160
	;POP_ROM_BANK
		
	;set BC to be (spare0 wram buffer)
	LD		BC,$D000
	POP		DE
	POP		HL
	RET
		
;********************************
; BC:	File base address
; HL:	BG Dest
; E:	BG Width in 8x8 tiles
; D:	BG Height in 8x8 tiles
?UNPACK_BG_RLE
	PUSH_RAM_BANK
	SWITCH_RAM_BANK	WRAM_SPARE1
	; step 1 -- uncompress RLE to buffer
	CALL	?UNPACK_BG_RLE_INIT
	; step 2 -- unpack buffer to BG
	CALL	?UNPACK_BG
	POP_RAM_BANK
	RET
	
;********************************
; BC:	File base address
; HL:	BG Dest
; E:	BG Width in 8x8 tiles
; D:	BG Height in 8x8 tiles
?UNPACK_BG_RLE_XFLIP
	PUSH_RAM_BANK
	SWITCH_RAM_BANK	WRAM_SPARE1
	; step 1 -- uncompress RLE to buffer
	CALL	?UNPACK_BG_RLE_INIT
	; step 2 -- unpack buffer to BG
	CALL	?UNPACK_BG_XFLIP
	POP_RAM_BANK
	RET
	
;********************************
	END
;********************************
