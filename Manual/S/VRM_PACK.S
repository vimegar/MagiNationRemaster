;Size:9
;********************************
; VRM_PACK.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_PACK

VRM_PACK
	DB		$01

	DEFW	$8000
	DEFW	(BIT_PACK&$FFFF)
	DB		$0C
	DB		$01
	DB		:BIT_PACK

	DB		$00

;********************************
	END
;********************************
