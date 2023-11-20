;Size:9
;********************************
; VRM_SWIRL.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_SWIRL

VRM_SWIRL
	DB		$01

	DEFW	$8000
	DEFW	(BIT_SWIRL&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_SWIRL

	DB		$00

;********************************
	END
;********************************
