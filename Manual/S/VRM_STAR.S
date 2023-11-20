;Size:9
;********************************
; VRM_STAR.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_STAR

VRM_STAR
	DB		$01

	DEFW	$8000
	DEFW	(BIT_STAR&$FFFF)
	DB		$10
	DB		$01
	DB		:BIT_STAR

	DB		$00

;********************************
	END
;********************************
