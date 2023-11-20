;Size:9
;********************************
; VRM_CRACK.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_CRACK

VRM_CRACK
	DB		$01

	DEFW	$8000
	DEFW	(BIT_CRACK&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_CRACK

	DB		$00

;********************************
	END
;********************************
