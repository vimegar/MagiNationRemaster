;Size:9
;********************************
; VRM_FIREBALL.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_FIREBALL

VRM_FIREBALL
	DB		$01

	DEFW	$8000
	DEFW	(BIT_FIREBALL&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_FIREBALL

	DB		$00

;********************************
	END
;********************************
