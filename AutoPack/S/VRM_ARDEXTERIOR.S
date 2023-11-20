;Size:37
;********************************
; VRM_ARDEXTERIOR.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_ARDCITY
	GLOBAL		BIT_ARDEXT1
	GLOBAL		BIT_ARDEXT2
	GLOBAL		BIT_ARDFLOPROP
	GLOBAL		BIT_HERO

VRM_ARDEXTERIOR
	DB		$02

	DEFW	$8C00
	DEFW	(BIT_ARDCITY&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_ARDCITY

	DEFW	$9000
	DEFW	(BIT_ARDEXT1&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ARDEXT1

	DB		$03

	DEFW	$9000
	DEFW	(BIT_ARDEXT2&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ARDEXT2

	DEFW	$8E00
	DEFW	(BIT_ARDFLOPROP&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_ARDFLOPROP

	DEFW	$8000
	DEFW	(BIT_HERO&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HERO

;********************************
	END
;********************************
