;********************************
; TEXT_STRING.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?TEXT_STRING

	LD			A,(TEXT_CHR_LIMIT)
	LD			D,A
	LD			A,(TEXT_CHR_ID)
	CP			D
	JR			Z,_UPDATE_BG
	
	INC			A
	LD			(TEXT_CHR_ID),A

	CALL		?TEXT_STRING_GET_CHR
	CALL		?TEXT_SET_VBLANK_CHR
	MOVADDR		VBLANK_FUNC,?VBLANK_COPY_TILE
	RET

_UPDATE_BG
	MOVADDR		VBLANK_FUNC,?TEXT_VBLANK_BG_STRING
	JP			?TEXT_IDLE

;********************************
	END
;********************************