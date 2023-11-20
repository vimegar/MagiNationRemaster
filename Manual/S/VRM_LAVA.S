;Size:9
;********************************
; VRM_LAVA.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_LAVA

VRM_LAVA
	DB		$01

	DEFW	$8000
	DEFW	(BIT_LAVA&$FFFF)
	DB		$10
	DB		$03
	DB		:BIT_LAVA

	DB		$00

;********************************
	END
;********************************
