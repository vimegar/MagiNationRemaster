;********************************
; INTERRUPT_VAR.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
VBLANK_HANDLER_FUNC		DS		$02

;********************************
VBLANK_FUNC				DS		$02

VBLANK_BANK				DS		$01
VBLANK_SOURCE			DS		$02
VBLANK_DEST				DS		$02
VBLANK_VBK				DS		$01

;********************************
	END
;********************************