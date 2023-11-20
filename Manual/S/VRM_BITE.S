;Size:9
;********************************
; VRM_BITE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_BITE

VRM_BITE
	DB		$01

	DEFW	$8000
	DEFW	(BIT_BITE&$FFFF)
	DB		$09
	DB		$01
	DB		:BIT_BITE

	DB		$00

;********************************
	END
;********************************
