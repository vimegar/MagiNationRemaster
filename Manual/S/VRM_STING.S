;Size:9
;********************************
; VRM_STING.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_STING

VRM_STING
	DB		$01

	DEFW	$8000
	DEFW	(BIT_STING&$FFFF)
	DB		$10
	DB		$03
	DB		:BIT_STING

	DB		$00

;********************************
	END
;********************************
