;********************************
; TEXTBOX_INIT.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?TEXTBOX_INIT
	;SCRIPT_INIT		TEXT_SCRIPT

	XOR		A
	LD		(TEXTBOX_ICON_TOGG),A
	LD		(TEXTBOX_OPEN),A

	LD		A,$07
	LD		(TEXTBOX_WX),A
	LD		(WX),A
	LD		A,$90
	LD		(TEXTBOX_WY),A
	LD		(WY),A

	;********************************
	SWITCH_ROM_BANK		TEXT_FONT_BANK

	LD		A,$01
	LD		(VBK),A

	MEM_MOV	$8800,BIT_BORDER,$0060
	MEM_SET	$9C00,$00A0,TEXT_BOX_ATTRIB

	;********************************
	XOR		A
	LD		(VBK),A				; Back to origin

	MEM_SET	$9C00,$00A0,TEXT_BOX_BLANK

	RET

;********************************
	END
;********************************