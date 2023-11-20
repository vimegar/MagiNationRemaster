;Size:9
;********************************
; VRM_TSUNAMI.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_TSUNAMI

VRM_TSUNAMI
	DB		$01

	DEFW	$8000
	DEFW	(BIT_TSUNAMI&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_TSUNAMI

	DB		$00

;********************************
	END
;********************************
