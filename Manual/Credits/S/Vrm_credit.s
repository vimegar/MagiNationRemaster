;Size:16
;********************************
; VRM_FONT.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_FONT
	GLOBAL		BIT_FOURCOLOR

VRM_CREDIT
	DB		$01

	DEFW	$96E0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DB		$01

	DEFW	$8800
	DEFW	(BIT_FONT&$FFFF)
	DB		$10
	DB		$10
	DB		:BIT_FONT

;********************************
	END
;********************************
