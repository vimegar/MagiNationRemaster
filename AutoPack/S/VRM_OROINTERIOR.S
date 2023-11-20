;Size:37
;********************************
; VRM_OROINTERIOR.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_OROINTERIOR01
	GLOBAL		BIT_OROINTERIOR02
	GLOBAL		BIT_HERO
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_FOURCOLOR

VRM_OROINTERIOR
	DB		$02

	DEFW	$9000
	DEFW	(BIT_OROINTERIOR01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_OROINTERIOR01

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DB		$03

	DEFW	$9000
	DEFW	(BIT_OROINTERIOR02&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_OROINTERIOR02

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
