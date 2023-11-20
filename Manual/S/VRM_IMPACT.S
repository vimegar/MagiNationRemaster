;Size:9
;********************************
; VRM_IMPACT.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_IMPACT

VRM_IMPACT
	DB		$01

	DEFW	$8000
	DEFW	(BIT_IMPACT&$FFFF)
	DB		$0E
	DB		$01
	DB		:BIT_IMPACT

	DB		$00

;********************************
	END
;********************************
