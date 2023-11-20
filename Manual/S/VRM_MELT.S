;Size:9
;********************************
; VRM_MELT.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_MELT

VRM_MELT
	DB		$01

	DEFW	$8000
	DEFW	(BIT_MELT&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_MELT

	DB		$00

;********************************
	END
;********************************
