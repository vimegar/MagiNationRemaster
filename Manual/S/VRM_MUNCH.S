;Size:9
;********************************
; VRM_MUNCH.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_MUNCH

VRM_MUNCH
	DB		$01

	DEFW	$8000
	DEFW	(BIT_MUNCH&$FFFF)
	DB		$10
	DB		$01
	DB		:BIT_MUNCH

	DB		$00

;********************************
	END
;********************************
