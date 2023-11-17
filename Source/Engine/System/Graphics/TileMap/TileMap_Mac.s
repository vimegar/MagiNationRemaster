;********************************
; TILEMAP_MAC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB			SOURCE\ENGINE\SYSTEM\GRAPHICS\TILEMAP\MACROS\TILEMAP_COL_MAC.S
	LIB			SOURCE\ENGINE\SYSTEM\GRAPHICS\TILEMAP\MACROS\TILEMAP_ROW_MAC.S

;********************************
TILEMAP_POSITION	MACRO
	XCALL		?TILEMAP_POSITION
	ENDM

;********************************
TILEMAP_READY	MACRO

	SWITCH_ROM_BANK	:?TILEMAP_READY_COL_CODES

	CALL		?TILEMAP_READY_COL_CODES
	CALL		?TILEMAP_READY_ROW_CODES

	XOR			A
	LD			(TILEMAP_XDELTA),A
	LD			(TILEMAP_YDELTA),A

	ENDM

;********************************
TILEMAP_DRAW	MACRO
	XCALL				?TILEMAP_DRAW_ROW_COL
	ENDM

;********************************
TILEMAP_X		MACRO		xMove
	LD			L,xMove
	LD			A,(TILEMAP_XDELTA)
	ADD			A,L
	LD			(TILEMAP_XDELTA),A
	ENDM

;********************************
TILEMAP_Y		MACRO		yMove
	LD			L,yMove
	LD			A,(TILEMAP_YDELTA)
	ADD			A,L
	LD			(TILEMAP_YDELTA),A
	ENDM

;********************************
	END
;********************************