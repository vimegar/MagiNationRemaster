;Size:9
;********************************
; VRM_THUNDER.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_THUNDER

VRM_THUNDER
	DB		$01

	DEFW	$8000
	DEFW	(BIT_THUNDER&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_THUNDER

	DB		$00

;********************************
	END
;********************************
