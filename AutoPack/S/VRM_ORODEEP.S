;Size:37
;********************************
; VRM_ORODEEP.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_ORODEEP01
	GLOBAL		BIT_ORODEEP03
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_ORODEEP02
	GLOBAL		BIT_AQUAJONES

VRM_ORODEEP
	DB		$02

	DEFW	$9000
	DEFW	(BIT_ORODEEP01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ORODEEP01

	DEFW	$8800
	DEFW	(BIT_ORODEEP03&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ORODEEP03

	DB		$03

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DEFW	$9000
	DEFW	(BIT_ORODEEP02&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ORODEEP02

	DEFW	$8000
	DEFW	(BIT_AQUAJONES&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_AQUAJONES

;********************************
	END
;********************************
