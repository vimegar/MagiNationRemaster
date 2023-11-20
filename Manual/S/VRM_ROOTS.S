;Size:9
;********************************
; VRM_ROOTS.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_ROOTS

VRM_ROOTS
	DB		$01

	DEFW	$8000
	DEFW	(BIT_ROOTS&$FFFF)
	DB		$07
	DB		$01
	DB		:BIT_ROOTS

	DB		$00

;********************************
	END
;********************************
