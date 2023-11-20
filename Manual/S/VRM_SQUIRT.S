;Size:9
;********************************
; VRM_SQUIRT.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_SQUIRT

VRM_SQUIRT
	DB		$01

	DEFW	$8000
	DEFW	(BIT_SQUIRT&$FFFF)
	DB		$10
	DB		$03
	DB		:BIT_SQUIRT

	DB		$00

;********************************
	END
;********************************
