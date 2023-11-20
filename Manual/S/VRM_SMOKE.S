;Size:9
;********************************
; VRM_SMOKE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_SMOKE

VRM_SMOKE
	DB		$01

	DEFW	$8000
	DEFW	(BIT_SMOKE&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_SMOKE

	DB		$00

;********************************
	END
;********************************
