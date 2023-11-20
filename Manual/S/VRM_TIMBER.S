;Size:9
;********************************
; VRM_TIMBER.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_TIMBER

VRM_TIMBER
	DB		$01

	DEFW	$8000
	DEFW	(BIT_TIMBER&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_TIMBER

	DB		$00

;********************************
	END
;********************************
