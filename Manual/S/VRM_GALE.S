;Size:9
;********************************
; VRM_GALE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_GALE

VRM_GALE
	DB		$01

	DEFW	$8000
	DEFW	(BIT_GALE&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_GALE

	DB		$00

;********************************
	END
;********************************
