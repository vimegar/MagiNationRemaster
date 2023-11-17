;********************************
; UNPACK_TILEMAP.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; BC:	File base address
?UNPACK_TILEMAP

	PUSH_RAM_BANK
	SWITCH_RAM_BANK	WRAM_TILEMAP

	LD			H,B
	LD			L,C

	XOR			A
	LD			(TILEMAP_XTILE),A
	LD			(TILEMAP_YTILE),A
	LD			(TILEMAP_XTILEOFF),A
	LD			(TILEMAP_YTILEOFF),A
	LD			(TILEMAP_ROWTRIG),A
	LD			(TILEMAP_COLTRIG),A
	LD			(TILEMAP_ROWPHASE),A
	LD			(TILEMAP_COLPHASE),A
	LD			(TILEMAP_XDELTA),A
	LD			(TILEMAP_YDELTA),A

	LD			A,%01000100
	LD			(TILEMAP_FLAGS),A

	ROM_READ8	TILEMAP_WIDTH
	ROM_READ16	TILEMAP_YMAPPAD
	ROM_READ8	TILEMAP_HSTOP
	ROM_READ8	TILEMAP_VSTOP

	ADD			A,$0A
	LD			(TILEMAP_HEIGHT),A

	INC			HL
	INC			HL

	LD			DE,$D000		; WRAM
	CALL		?RLE_DECOMPRESS

	POP_RAM_BANK

	LD			HL,TILEMAP_YPAD_TABLE
	XOR			A
	LD			(HLI),A
	LD			(HLI),A

	LD			A,(TILEMAP_WIDTH)
	LD			B,A

	LD			C,$08
	LD			DE,$0000

_LOOP
	LD			A,B					;1
	ADD			A,E					;1
	LD			E,A					;1
	LD			(HLI),A				;2
	LD			A,$00				;2
	ADC			A,D					;1
	LD			D,A					;1
	LD			(HLI),A				;2
	
	DEC			C					;1
	JR			NZ,_LOOP			;3

	RET

;********************************
; BC:	File base address
?UNPACK_TILEMAP_SPARE

	PUSH_RAM_BANK
	SWITCH_RAM_BANK	WRAM_SPARE0

	LD		H,B
	LD		L,C

	LD		DE,$05
	ADD		HL,DE

	JP		?UNPACK_COLL_WORK

;********************************
	END
;********************************
