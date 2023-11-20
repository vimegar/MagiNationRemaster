;Size:9
;********************************
; VRM_GRAVITY.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_GRAVITY

VRM_GRAVITY
	DB		$01

	DEFW	$8000
	DEFW	(BIT_GRAVITY&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_GRAVITY

	DB		$00

;********************************
	END
;********************************
