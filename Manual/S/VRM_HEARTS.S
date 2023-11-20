;Size:9
;********************************
; VRM_HEARTS.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_HEARTS

VRM_HEARTS
	DB		$01

	DEFW	$8000
	DEFW	(BIT_HEARTS&$FFFF)
	DB		$05
	DB		$01
	DB		:BIT_HEARTS

	DB		$00

;********************************
	END
;********************************
