;Size:9
;********************************
; VRM_RIPPLE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_RIPPLE

VRM_RIPPLE
	DB		$01

	DEFW	$8000
	DEFW	(BIT_RIPPLE&$FFFF)
	DB		$08
	DB		$01
	DB		:BIT_RIPPLE

	DB		$00

;********************************
	END
;********************************
