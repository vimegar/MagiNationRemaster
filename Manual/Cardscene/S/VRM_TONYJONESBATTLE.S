;Size:9
;********************************
; VRM_TONYJONESBATTLE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_TONYJONESBATTLE

VRM_TONYJONESBATTLE
	DB		$00

	DB		$01

	DEFW	$8000
	DEFW	(BIT_TONYJONESBATTLE&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_TONYJONESBATTLE

;********************************
	END
;********************************
