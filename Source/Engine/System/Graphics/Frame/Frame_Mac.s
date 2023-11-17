;********************************
; FRAME_MAC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
FRAME_CLEAR_ALL	MACRO
	CALL	?FRAME_CLEAR_ALL
	ENDM

;********************************
;	ACTOR_XTILE,XOFF:		X location ( scroll space )
;	ACTOR_YTILE,YOFF:		Y location ( scroll space )
;********************************
FRAME_DRAW	MACRO
	CALL	?FRAME_DRAW
	ENDM

;********************************
FRAME_DRAW_CHR	MACRO	x,y,code,flags
	LD		B,x
	LD		C,y
	LD		D,code
	LD		E,flags
	CALL	?SPRITE_DRAW_CHR
	ENDM

;********************************
FRAME_DRAW_CURSOR	MACRO	frame,x,y
	LD		A,x
	LD		D,A
	LD		A,y
	LD		E,A
	LD		HL,frame
	CALL	?FRAME_DRAW_LOOP
	ENDM

;********************************
FRAME_INIT	MACRO
	LD		A,OBJRAM!&$FF
	LD		(FRAME_OAMCURSOR),A
	LD		(FRAME_TOP),A
	FRAME_CLEAR_ALL
	ENDM

;********************************
FRAME_NO_DRAW	MACRO
	CALL	?FRAME_NO_DRAW
	ENDM

;********************************
;	ACTOR_XOFF:			X location ( screen space )
;	ACTOR_YOFF:			Y location ( screen space )
;	FRAME_FRAME:		Address of frame to draw
;********************************
FRAME_OVERLAY	MACRO
	CALL	?FRAME_OVERLAY
	ENDM

;********************************
FRAME_READY	MACRO
	CALL	?FRAME_READY
	ENDM

;********************************
	END
;********************************