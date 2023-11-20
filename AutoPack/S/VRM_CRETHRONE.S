;Size:30
;********************************
; VRM_CRETHRONE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_CRETHRONE1
	GLOBAL		BIT_CRETHRONE2
	GLOBAL		BIT_HERO
	GLOBAL		BIT_FOURCOLOR

VRM_CRETHRONE
	DB		$01

	DEFW	$8800
	DEFW	(BIT_CRETHRONE1&$FFFF)
	DB		$10
	DB		$10
	DB		:BIT_CRETHRONE1

	DB		$03

	DEFW	$9000
	DEFW	(BIT_CRETHRONE2&$FFFF)
	DB		$10
	DB		$06
	DB		:BIT_CRETHRONE2

	DEFW	$8000
	DEFW	(BIT_HERO&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HERO

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

;********************************
	END
;********************************
