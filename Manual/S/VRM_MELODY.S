;Size:9
;********************************
; VRM_MELODY.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_MELODY

VRM_MELODY
	DB		$01

	DEFW	$8000
	DEFW	(BIT_MELODY&$FFFF)
	DB		$0E
	DB		$01
	DB		:BIT_MELODY

	DB		$00

;********************************
	END
;********************************
