;********************************
; UNPACK_COLL.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; BC:	File base address
?UNPACK_COLL

	PUSH_RAM_BANK
	SWITCH_RAM_BANK	WRAM_COLL

	LD		H,B
	LD		L,C

	XOR		A
	LD		(COLL_XMOVE),A
	LD		(COLL_YMOVE),A

	ROM_READ8	COLL_WIDTH

?UNPACK_COLL_WORK

	INC		HL
	INC		HL

	LD		DE,$D000		; WRAM
	CALL	?RLE_DECOMPRESS

	POP_RAM_BANK

	RET

;********************************
; BC:	File base address
?UNPACK_COLL_SPARE

	PUSH_RAM_BANK
	SWITCH_RAM_BANK	WRAM_SPARE1

	LD		H,B
	LD		L,C

	INC		HL

	JP		?UNPACK_COLL_WORK

;********************************
	END
;********************************
