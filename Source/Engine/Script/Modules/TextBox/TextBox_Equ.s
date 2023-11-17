;********************************
; TEXTBOX_EQU.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
TEXTBOX_LINE_0			EQU		$9C05
TEXTBOX_LINE_1			EQU		$9C25
TEXTBOX_LINE_2			EQU		$9C45
TEXTBOX_LINE_3			EQU		$9C65
TEXTBOX_LINE_4			EQU		$9C85

;********************************
TEXTBOX_VRAM_FRAME		EQU		$8800
TEXTBOX_VRAM_TEXT		EQU		$8860
TEXTBOX_VRAM_ICON0		EQU		$8A40
TEXTBOX_VRAM_ICON1		EQU		$8BD0

;********************************
TEXTBOX_STATE_CLOSED	EQU		$00
TEXTBOX_STATE_BUSY		EQU		$01
TEXTBOX_STATE_OPEN		EQU		$02
TEXTBOX_STATE_HALT		EQU		$03

;********************************
;TEXT TILES AT THE TOP OF TEXT VRAM
TEXT_BOX_BLANK			EQU		$80
TEXT_BOX_CURSOR1		EQU		$81
TEXT_BOX_CURSOR2		EQU		$82
TEXT_BOX_BORD0			EQU		$83
TEXT_BOX_BORD1			EQU		$84
TEXT_BOX_BORD2			EQU		$85

;********************************
TEXT_BOX_ATTRIB			EQU		$8F

;********************************
	END
;********************************