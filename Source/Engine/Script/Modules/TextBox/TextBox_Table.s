;********************************
; TEXTBOX_TABLE.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
TEXTBOX_ICON_BGOFF
TEXTBOX_ICON_BGOFF0		DB		(TEXTBOX_VRAM_ICON0>>$04)&$FF
TEXTBOX_ICON_BGOFF1		DB		(TEXTBOX_VRAM_ICON1>>$04)&$FF

;********************************
TEXTBOX_ICON_CHR
TEXTBOX_ICON_CHR0		DW		TEXTBOX_VRAM_ICON0
TEXTBOX_ICON_CHR1		DW		TEXTBOX_VRAM_ICON1

;********************************
	END
;********************************