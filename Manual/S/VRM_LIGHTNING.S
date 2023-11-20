;Size:9
;********************************
; VRM_LIGHTNING.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_LIGHTNING

VRM_LIGHTNING
	DB		$01

	DEFW	$8000
	DEFW	(BIT_LIGHTNING&$FFFF)
	DB		$10
	DB		$03
	DB		:BIT_LIGHTNING

	DB		$00

;********************************
	END
;********************************
