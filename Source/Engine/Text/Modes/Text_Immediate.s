;********************************
; TEXT_IMMEDIATE.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?TEXT_IMMEDIATE

	JP			?TEXT_IDLE

	if 0

	CALL		?TEXT_STRING_GET_CHR
	LD			A,D
	AND			A
	JR			NZ,_UPDATE
	
	; COPY THE TILE
	;--------------------------------
	CALL		?TEXT_SET_VBLANK_CHR
	CALL		?VBLANK_COPY_TILE
	
	JR			?TEXT_IMMEDIATE

_UPDATE
	MOV16		TEXT_STRING,TEXT_STRING_BASE

_UPDATE_LOOP
	CALL		?TEXT_STRING_GET_CHR
	LD			A,D
	AND			A
	RET			NZ

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
	
	JR			_UPDATE_LOOP

	endif

;********************************
	END
;********************************