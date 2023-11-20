;Size:9
;********************************
; VRM_ICE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_ICE

VRM_ICE
	DB		$01

	DEFW	$8000
	DEFW	(BIT_ICE&$FFFF)
	DB		$10
	DB		$03
	DB		:BIT_ICE

	DB		$00

;********************************
	END
;********************************
