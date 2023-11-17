;********************************
; TEXT.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\ENGINE\TEXT\TEXT_VBLANK.S

;********************************
	LIB		SOURCE\ENGINE\TEXT\MODES\TEXT_CHAR.S
	LIB		SOURCE\ENGINE\TEXT\MODES\TEXT_IMMEDIATE.S
	LIB		SOURCE\ENGINE\TEXT\MODES\TEXT_STRING.S

;********************************
?TEXT_IDLE
	MOVADDR		TEXT_FUNC,?TEXT_IDLE
	LD			D,$00
	RET

;********************************
; D:	Text char code
?TEXT_SET_VBLANK_CHR

	; CHR ID *= $10
	;--------------------------------
	SWAP		E
	LD			A,E
	AND			$F0
	LD			C,A
	LD			A,E
	AND			$0F
	LD			B,A
	
	; HL = ADDR OF THE CHR BITMAP
	;--------------------------------
	LD			HL,BIT_FONT
	ADD			HL,BC

	; NEXT VBLANK - COPY THE TILE
	;--------------------------------
	SET16		H,L,VBLANK_SOURCE

	LD			A,TEXT_FONT_BANK
	LD			(VBLANK_BANK),A

	RET

;********************************
; D:	<-- Escape code
; E:	<-- Return code
; BC:	Is molested
; HL:	Is molested
?TEXT_STRING_GET_CHR

	; LOAD THE CHARACTER INTO D AND E
	;--------------------------------
	FGET16		H,L,TEXT_STRING
	LD			A,(HLI)
	LD			D,A
	LD			E,A
	SET16		H,L,TEXT_STRING
	
	; IS IT AN ESCAPE CODE?
	;--------------------------------
	LD			A,D
	ADD			A,TEXT_ESCAPE
	JR			C,_ESCAPE

	LD			D,$00
	RET

_ESCAPE
	LD			A,D

	; FORMAT?
	;--------------------------------
	CP			?FORMAT
	JR			NZ,_NO_FORMAT

	; BC = HL
	;--------------------------------
	LD			B,H
	LD			C,L

	; (TEXT_STRING) = (TEXT_PARAMS)
	;--------------------------------
	LD			HL,TEXT_PARAMS
	LD			A,(HLI)
	LD			(TEXT_STRING),A
	LD			A,(HL)
	LD			(TEXT_STRING+$01),A

	; (TEXT_PARAMS) = BC
	;--------------------------------
	LD			A,B
	LD			(HLD),A
	LD			(HL),C

	; GET THE NEXT CHAR
	;--------------------------------
	JR			?TEXT_STRING_GET_CHR

_NO_FORMAT

	; GOBBLE?
	;--------------------------------
	CP			?GOBBLE
	RET			NZ

	; GOBBLE THE NEXT FORMAT STRING
	;--------------------------------
	FGET16		H,L,TEXT_PARAMS
	LD			E,$FF

_GOBBLE
	DEC			E
	JP			Z,?SOFT_RESET

	LD			A,(HLI)
	CP			?FORMAT
	JR			NZ,_GOBBLE

	SET16		H,L,TEXT_PARAMS
	
	JP			?TEXT_STRING_GET_CHR
	
;********************************
;EVERYTHING IS MOLESTED
;HL : PTR TO VALUE
;DIGITS GET PUT IN TEXT_PARAM_BUFFER
?TEXT_VAL_TO_FORMAT8

	LD		E,(HL)
	LD		D,0
	CALL	?CONVERT_NUMBER_2_ELEMENT
	LD		HL,X100
	LD		BC,TEXT_PARAM_BUFFER
	LD		D,3
	
_LOOP	
	LD		A,(HLD)
	ADD		A,?0
	LD		(BC),A
	INC		BC
	DEC		D
	JR		NZ,_LOOP
	
	LD		A,?FORMAT
	LD		(BC),A
	
	TEXT_SET_PARAMS	TEXT_PARAM_BUFFER

	RET

;********************************
;EVERYTHING IS MOLESTED
;HL : PTR TO VALUE
;DIGITS GET PUT IN TEXT_PARAM_BUFFER
?TEXT_VAL_TO_FORMAT16

	LD		E,(HL)
	INC		HL
	LD		D,(HL)
	CALL	?CONVERT_NUMBER_2_ELEMENT
	LD		HL,X100
	LD		BC,TEXT_PARAM_BUFFER
	LD		D,3
	
_LOOP	
	LD		A,(HLD)
	ADD		A,?0
	LD		(BC),A
	INC		BC
	DEC		D
	JR		NZ,_LOOP
	
	LD		A,?FORMAT
	LD		(BC),A
	
	TEXT_SET_PARAMS	TEXT_PARAM_BUFFER

	RET

;********************************
?TEXT_WRAP
	
	LD			A,(TEXT_CHR_ID)
	LD			D,A
	LD			A,(TEXT_CHR_LIMIT)
	CP			D
	RET			NZ

	MOV8		TEXT_CHR_ID,TEXT_CHR_BASE
	MOV16		VBLANK_DEST,TEXT_VBLANK_BASE

	RET

;********************************
	END
;********************************