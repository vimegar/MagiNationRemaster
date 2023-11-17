;********************************
; TEXT_CHAR.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; D:	<-- Text state
?TEXT_CHAR
	TEXT_WRAP
	CALL		?TEXT_STRING_GET_CHR
	LD			A,D
	AND			A
	RET			NZ
	
	CALL		?TEXT_SET_VBLANK_CHR
	MOVADDR		VBLANK_FUNC,?TEXT_VBLANK_COPY_TILE

	;********************************
	; Speed up if 'B' is pressed
	;********************************
	;LD			A,(CNT1)
	;BIT			BitB,A
	;JR			Z,_SLOW

	;LD			D,$00	
	;RET
	;********************************

;_SLOW
;	LD			A,TEXT_SPEED
;	LD			(TEXT_DELAY),A
;	MOVADDR		TEXT_FUNC,_WAIT

_WAIT
	LD			A,(TEXT_DELAY)
	DEC			A
	LD			(TEXT_DELAY),A
	JR			NZ,_RETURN

	MOVADDR		TEXT_FUNC,?TEXT_CHAR

_RETURN
	LD			D,$00
	RET

;********************************
	END
;********************************