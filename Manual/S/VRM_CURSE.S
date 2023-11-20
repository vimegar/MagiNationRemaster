;Size:9
;********************************
; VRM_CURSE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_CURSE

VRM_CURSE
	DB		$01

	DEFW	$8000
	DEFW	(BIT_CURSE&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_CURSE

	DB		$00

;********************************
	END
;********************************
