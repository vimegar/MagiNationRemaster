;Size:9
;********************************
; VRM_SONIC.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_SONIC

VRM_SONIC
	DB		$01

	DEFW	$8000
	DEFW	(BIT_SONIC&$FFFF)
	DB		$04
	DB		$01
	DB		:BIT_SONIC

	DB		$00

;********************************
	END
;********************************
