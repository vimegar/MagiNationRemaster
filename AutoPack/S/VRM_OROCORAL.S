;Size:44
;********************************
; VRM_OROCORAL.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_OROCORAL01
	GLOBAL		BIT_OROCORAL02
	GLOBAL		BIT_OROCORAL03
	GLOBAL		BIT_OROCORAL04
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_AQUAJONES

VRM_OROCORAL
	DB		$02

	DEFW	$8800
	DEFW	(BIT_OROCORAL01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_OROCORAL01

	DEFW	$9000
	DEFW	(BIT_OROCORAL02&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_OROCORAL02

	DB		$04

	DEFW	$9000
	DEFW	(BIT_OROCORAL03&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_OROCORAL03

	DEFW	$8E60
	DEFW	(BIT_OROCORAL04&$FFFF)
	DB		$08
	DB		$02
	DB		:BIT_OROCORAL04

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DEFW	$8000
	DEFW	(BIT_AQUAJONES&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_AQUAJONES

;********************************
	END
;********************************
