;********************************
; INTERRUPT_VAR_FAST.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
HFUNC				DS		$02
HLCDC				DS		$01
HSCX				DS		$01
HSCY				DS		$01

;********************************
VBLANK_CONTROL		DS		$01		; VBlank, 0, 0, 0, 0, Sound, VFunc, Gfx

;********************************
	END
;********************************