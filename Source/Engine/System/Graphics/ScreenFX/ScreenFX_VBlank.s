;********************************
; SCREENFX_VBLANK.S
;********************************
;	Author:	Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved
;********************************

;********************************

?VBLANK_SCREENFX_COPY_BLOCK16X16	
	;--------------------------------
	; COPY 4 BG TILES CHR DATA
	;--------------------------------
	XOR		A
	LD		(VBK),A
	
	;1
	LD		HL,SCREENFX_TILEDEST
	PUSH	HL
	DEREF_HL
	LD		A,(SCREENFX_TILESOURCE_CHR)
	LD		(HL),A
	;2
	POP		HL
	INC		HL
	INC		HL
	PUSH	HL
	DEREF_HL
	LD		A,(SCREENFX_TILESOURCE_CHR)
	LD		(HL),A
	;3
	POP		HL
	INC		HL
	INC		HL
	PUSH	HL
	DEREF_HL
	LD		A,(SCREENFX_TILESOURCE_CHR)
	LD		(HL),A
	;4
	POP		HL
	INC		HL
	INC		HL
	DEREF_HL
	LD		A,(SCREENFX_TILESOURCE_CHR)
	LD		(HL),A
		
	;--------------------------------
	; COPY 4 BG TILES ATTRIBUTE DATA
	;--------------------------------
	
	LD		A,1
	LD		(VBK),A
	
	;1
	LD		HL,SCREENFX_TILEDEST
	PUSH	HL
	DEREF_HL
	LD		A,(SCREENFX_TILESOURCE_ATTR)
	LD		(HL),A
	;2
	POP		HL
	INC		HL
	INC		HL
	PUSH	HL
	DEREF_HL
	LD		A,(SCREENFX_TILESOURCE_ATTR)
	LD		(HL),A
	;3
	POP		HL
	INC		HL
	INC		HL
	PUSH	HL
	DEREF_HL
	LD		A,(SCREENFX_TILESOURCE_ATTR)
	LD		(HL),A
	;4
	POP		HL
	INC		HL
	INC		HL
	DEREF_HL
	LD		A,(SCREENFX_TILESOURCE_ATTR)
	LD		(HL),A

	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE
	RET


;********************************
	END
;********************************