;********************************
; SCREENFX.S
;********************************
;	Author:	Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\ENGINE\SYSTEM\GRAPHICS\SCREENFX\SCREENFX_VBLANK.S


;********************************
; input:
;	 HL  = dest bg addr
;	  C  = delta 
; output:
;	 HL  = dest bg addr +1"tile" (wrapped)
?INC_WRAP_X
	LD		A,L
	ADD		A,C
	AND		$1F
	LD		E,A
	LD		A,L
	AND		$E0
	ADD		A,E
	LD		L,A	
	RET
	
;********************************
; input:
;	 HL  = dest bg addr 
;	  C  = delta
; output:
;	 HL  = dest bg addr +1"row" (wrapped)
?INC_WRAP_Y
	LD		E,C
	XOR		A
	LD		D,A
	SLA16	D,E,5
	
	ADD		HL,DE
	LD		A,H
	AND		$03
	ADD		A,$98
	LD		H,A	
	RET

;********************************
; input:
;	 HL  = top left corner base addr 
; output:
;	 SCREENFX_TILEDEST[1..4] ASSIGNED
?SET_BLOCK_16X16
	PUSH	HL
	LD		C,1						;SET DELTA
	SET16	H,L, SCREENFX_TILEDEST1
	CALL	?INC_WRAP_X
	SET16	H,L, SCREENFX_TILEDEST2
	;
	POP		HL
	CALL	?INC_WRAP_Y
	SET16	H,L, SCREENFX_TILEDEST3
	CALL	?INC_WRAP_X
	SET16	H,L, SCREENFX_TILEDEST4
;----------------------------------
	;RET	;<-- OPTIMIZED
;----------------------------------
?SETCOPY_BLOCK_16X16	
	; SET THE VBLANK COPY FUNC
	LD			A,:?VBLANK_SCREENFX_COPY_BLOCK16X16
	LD			(VBLANK_BANK),A
	MOVADDR		VBLANK_FUNC,?VBLANK_SCREENFX_COPY_BLOCK16X16
	
	; FREEZE THE GAME + WAIT FOR VBLANK
	CALL		?SOUND_DETERMINE_SFUNC
	CALL		?SYSTEM_DO_VFUNC
	RET

;********************************		
?INC_BLOCK16X16_X	
	;advance to the next set of destination tile
	FGET16		H,L, SCREENFX_TILEDEST2
	LD			C,1
	CALL		?INC_WRAP_X
	CALL		?SET_BLOCK_16X16
	RET

;********************************		
?DEC_BLOCK16X16_X	
	;advance to the next set of destination tile
	FGET16		H,L, SCREENFX_TILEDEST1
	LD			C,$FE
	CALL		?INC_WRAP_X
	CALL		?SET_BLOCK_16X16
	RET

;********************************		
?INC_BLOCK16X16_Y	
	;advance to the next set of destination tile
	FGET16		H,L, SCREENFX_TILEDEST3
	LD			C,1
	CALL		?INC_WRAP_Y
	CALL		?SET_BLOCK_16X16
	RET

;********************************		
?DEC_BLOCK16X16_Y	
	;advance to the next set of destination tile
	FGET16		H,L, SCREENFX_TILEDEST1
	LD			C,$FE
	CALL		?INC_WRAP_Y
	CALL		?SET_BLOCK_16X16
	RET
;********************************
?DO_SCREENFX_SWIRL
	
	; set up vars
	LD			A,SCREENFX_SOURCETILE_CHR
	LD			(SCREENFX_TILESOURCE_CHR),A	
	LD			A,SCREENFX_SOURCETILE_ATTR
	LD			(SCREENFX_TILESOURCE_ATTR),A

	FGET16		H,L, TILEMAP_DEST
	CALL		?SET_BLOCK_16X16

	; INC X 10
	;--------------------------------
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X

	; INC Y 9
	;--------------------------------
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y

	; DEC X 10
	;--------------------------------
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X

	; DEC Y 8
	;--------------------------------
	CALL		?DEC_BLOCK16X16_Y
	CALL		?DEC_BLOCK16X16_Y
	CALL		?DEC_BLOCK16X16_Y
	CALL		?DEC_BLOCK16X16_Y
	CALL		?DEC_BLOCK16X16_Y
	CALL		?DEC_BLOCK16X16_Y
	CALL		?DEC_BLOCK16X16_Y
	CALL		?DEC_BLOCK16X16_Y

	; INC X 9
	;--------------------------------
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X

	; INC Y 7
	;--------------------------------
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y

	; DEC X 8
	;--------------------------------
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	
	; DEC Y 6
	;--------------------------------
	CALL		?DEC_BLOCK16X16_Y
	CALL		?DEC_BLOCK16X16_Y
	CALL		?DEC_BLOCK16X16_Y
	CALL		?DEC_BLOCK16X16_Y
	CALL		?DEC_BLOCK16X16_Y
	CALL		?DEC_BLOCK16X16_Y

	; INC X 7
	;--------------------------------
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	
	; INC Y 5
	;--------------------------------
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y

	; DEC X 6
	;--------------------------------
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	
	; DEC Y 4
	;--------------------------------
	CALL		?DEC_BLOCK16X16_Y
	CALL		?DEC_BLOCK16X16_Y
	CALL		?DEC_BLOCK16X16_Y
	CALL		?DEC_BLOCK16X16_Y

	; INC X 5
	;--------------------------------
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X

	; INC Y 3
	;--------------------------------
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y
	CALL		?INC_BLOCK16X16_Y

	; DEC X 4
	;--------------------------------
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X

	; DEC Y 2
	;--------------------------------
	CALL		?DEC_BLOCK16X16_Y
	CALL		?DEC_BLOCK16X16_Y

	; INC X 3
	;--------------------------------
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X
	CALL		?INC_BLOCK16X16_X

	; INC Y 1
	;--------------------------------
	CALL		?INC_BLOCK16X16_Y

	; DEC X 2
	;--------------------------------
	CALL		?DEC_BLOCK16X16_X
	CALL		?DEC_BLOCK16X16_X

_DONE
	JP			?CMD_SCENENEW

;*********************************
?DO_SCREENFX

	CALL		?SYSTEM_DO_VFUNC

	;call the func
	FGET16		H,L,SCREENFX_FUNC
	JP			(HL)

;********************************
	END
;********************************