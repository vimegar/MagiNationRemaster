;Size:9
;********************************
; VRM_MAUL.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_MAUL

VRM_MAUL
	DB		$01

	DEFW	$8000
	DEFW	(BIT_MAUL&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_MAUL

	DB		$00

;********************************
	END
;********************************
