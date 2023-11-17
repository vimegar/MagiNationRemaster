;********************************
; DECOMPRESS.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; DE:	Dest buffer
; HL:	Source buffer
?RLE_DECOMPRESS
	LD		A,(HL)
	BIT		$06,A
	JR		NZ,_BIT_1
_BIT_0
	BIT		$07,A
	JR		NZ,_BIT_10
_BIT_00
	JP		?RLE_DECODE_NORM			; RLECODE_NORM
_BIT_10
	JP		?RLE_DECODE_RLE				; RLECODE_RLE
_BIT_1
	BIT		$07,A
	JR		NZ,_BIT_11
_BIT_01
	JP		?RLE_DECODE_NORMGRANDE		; RLECODE_NORMGRANDE
_BIT_11
	JP		?RLE_DECODE_RLEGRANDE		; RLECODE_RLEGRANDE

;********************************
?RLE_DECODE_NORM
	LD		A,(HLI)
	AND		RLE_CODE_NOTMASK
	AND		A
	RET		Z

	LD		C,A

_LOOP
	LD		A,(HLI)
	LD		(DE),A
	INC		DE
	DEC		C
	JR		NZ,_LOOP

	JP		?RLE_DECOMPRESS

;********************************
?RLE_DECODE_NORMGRANDE
	LD		A,(HLI)
	AND		RLE_CODE_NOTMASK
	LD		B,A
	LD		A,(HLI)
	LD		C,A

_LOOP
	LD		A,(HLI)
	LD		(DE),A
	INC		DE

	DEC16_LOOP	B,C,_LOOP

	JP		?RLE_DECOMPRESS

;********************************
?RLE_DECODE_RLE
	LD		A,(HLI)
	AND		RLE_CODE_NOTMASK
	AND		A
	RET		Z

	LD		C,A
	LD		A,(HLI)

_LOOP
	LD		(DE),A
	INC		DE

	DEC		C
	JR		NZ,_LOOP

	JP		?RLE_DECOMPRESS

;********************************
?RLE_DECODE_RLEGRANDE
	LD		A,(HLI)
	AND		RLE_CODE_NOTMASK
	LD		B,A
	LD		A,(HLI)
	LD		C,A

_LOOP
	LD		A,(HL)
	LD		(DE),A
	INC		DE

	DEC16_LOOP	B,C,_LOOP
	INC		HL

	JP		?RLE_DECOMPRESS

;********************************
	END
;********************************