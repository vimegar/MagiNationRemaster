;********************************
; VRM_BATTLEFX.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_FIREBALL
	GLOBAL		BIT_CLAW

VRM_BATTLEFX
	DB		$02

	DEFW	$8000
	DEFW	(BIT_FIREBALL&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_FIREBALL

	DEFW	$8160
	DEFW	(BIT_CLAW&$FFFF)
	DB		$05
	DB		$01
	DB		:BIT_CLAW

	DB		$00

;********************************
	END
;********************************
