;********************************
; TEXT_VBLANK.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?TEXT_VBLANK_BG_CHAR
	GET16		H,L,TEXT_BG_DEST

	LD			A,$01
	LD			(VBK),A	
	LD			A,(TEXT_ATTRIB)
	LD			(HL),A

	XOR			A
	LD			(VBK),A
	LD			A,(TEXT_CHR_ID)
	LD			(HLI),A
	INC			A
	LD			(TEXT_CHR_ID),A

	SET16		H,L,TEXT_BG_DEST
	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE
	
	RET

;********************************
?TEXT_VBLANK_BG_STRING
	LD			A,(TEXT_CHR_BASE)
	LD			E,A
	LD			A,(TEXT_CHR_LIMIT)
	LD			D,A
	LD			A,(TEXT_ATTRIB)
	LD			B,A

	FGET16		H,L,TEXT_BG_DEST
	
	LD			C,E
_LOOP
	; WRITE THE ATTRIBUTES
	;--------------------------------
	LD			A,$01
	LD			(VBK),A
	LD			A,B
	LD			(HL),A

	; WRITE THE CHR CODE
	;--------------------------------
	XOR			A
	LD			(VBK),A
	LD			A,C
	LD			(HLI),A

	INC			C
	LD			A,C
	CP			D
	JR			NZ,_LOOP	

	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE

	RET

;********************************
?TEXT_VBLANK_COPY_TILE
	
	CALL	?VBLANK_COPY_TILE

	GET16		H,L,TEXT_BG_DEST

	LD			A,$01
	LD			(VBK),A	
	LD			A,(TEXT_ATTRIB)
	LD			(HL),A

	XOR			A
	LD			(VBK),A
	LD			A,(TEXT_CHR_ID)
	LD			(HLI),A
	INC			A
	LD			(TEXT_CHR_ID),A

	SET16		H,L,TEXT_BG_DEST

	RET

;********************************
	END
;********************************