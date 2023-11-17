;********************************
; PALETTE_VAR.S
;********************************
;	Author:	Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
PALETTE_BUFFERS
BASE_PAL_BUFFERS		
BASE_PAL_BG_BUFFER		DS		64
BASE_PAL_OBJ_BUFFER		DS		64
ANIM_PAL_BUFFERS
ANIM_PAL_BG_BUFFER		DS		64
ANIM_PAL_OBJ_BUFFER		DS		64
;********************************

;********************************
PALETTE_RGB
PALETTE_BLUE			DS		01
PALETTE_GREEN			DS		01
PALETTE_RED				DS		01

;********************************
PALETTE_FADE_FUNC		DS		02
PALETTE_FADE_SPEED		DS		01
PALETTE_SAFE			DS		01
PALETTE_SET_COLOR		DS		02
PALETTE_TEMP			DS		02

;********************************
	END
;********************************