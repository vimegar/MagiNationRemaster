;Size:9
;********************************
; VRM_BRAMBLE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_BRAMBLE

VRM_BRAMBLE
	DB		$01

	DEFW	$8000
	DEFW	(BIT_BRAMBLE&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_BRAMBLE

	DB		$00

;********************************
	END
;********************************
