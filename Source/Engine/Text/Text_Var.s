;********************************
; TEXT_VAR.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
TEXT_FUNC				DS		$02

;********************************
TEXT_STRING				DS		$02		; Text string cursor
TEXT_PARAMS				DS		$02		; Cursor into params for format
TEXT_BG_DEST			DS		$02		; BG Tile cursor
TEXT_VBLANK_BASE		DS		$02		; Base in VRAM 		(used for wrap)
TEXT_VBLANK_BANK		DS		$01		; Font bank for VBlank copy

;********************************
TEXT_CHR_ID				DS		$01		; Current BG char code
TEXT_ATTRIB				DS		$01		; BG char attributes

;********************************
TEXT_CHR_BASE			DS		$01		; Base BG char code (used for wrap)
TEXT_CHR_LIMIT			DS		$01		; Top BG Char code	(used for wrap)

;********************************
TEXT_DELAY				DS		$01		; Text write delay

;********************************
TEXT_PARAM_BUFFER		DS		$50

;********************************
	END
;********************************