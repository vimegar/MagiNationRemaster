;Size:9
;********************************
; VRM_INFERNO.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_INFERNO

VRM_INFERNO
	DB		$01

	DEFW	$8000
	DEFW	(BIT_INFERNO&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_INFERNO

	DB		$00

;********************************
	END
;********************************
