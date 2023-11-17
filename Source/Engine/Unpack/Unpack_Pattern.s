;********************************
; UNPACK_PATTERN.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; BC:	File base address
?UNPACK_PATTERN
	LD		H,B
	LD		L,C

	PUSH_RAM_BANK
	SWITCH_RAM_BANK	WRAM_PATTERN

	LD		DE,$D000		; WRAM
	LD		BC,$1000		; Number
	;CALL	?MEM_MOV		; Screen transfers
	CALL	?RLE_DECOMPRESS

	POP_RAM_BANK

	RET

;********************************
	END
;********************************
