;Size:30
;********************************
; VRM_HLDEXTERIOR.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_HLDEXTERIOR1
	GLOBAL		BIT_HLDEXTERIOR2
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_HERO

VRM_HLDEXTERIOR
	DB		$01

	DEFW	$9000
	DEFW	(BIT_HLDEXTERIOR1&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HLDEXTERIOR1

	DB		$03

	DEFW	$9000
	DEFW	(BIT_HLDEXTERIOR2&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HLDEXTERIOR2

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DEFW	$8000
	DEFW	(BIT_HERO&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HERO

;********************************
	END
;********************************
