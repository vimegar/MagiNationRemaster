;Size:9
;********************************
; VRM_WIND.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_WIND

VRM_WIND
	DB		$01

	DEFW	$8000
	DEFW	(BIT_WIND&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_WIND

	DB		$00

;********************************
	END
;********************************
