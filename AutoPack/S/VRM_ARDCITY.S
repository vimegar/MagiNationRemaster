;Size:44
;********************************
; VRM_ARDCITY.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_ARDCITY01
	GLOBAL		BIT_ARDCITY02
	GLOBAL		BIT_ARDCITY03
	GLOBAL		BIT_ARDCITY04
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_HERO

VRM_ARDCITY
	DB		$02

	DEFW	$9000
	DEFW	(BIT_ARDCITY01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ARDCITY01

	DEFW	$8C00
	DEFW	(BIT_ARDCITY02&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_ARDCITY02

	DB		$04

	DEFW	$9000
	DEFW	(BIT_ARDCITY03&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ARDCITY03

	DEFW	$8E00
	DEFW	(BIT_ARDCITY04&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_ARDCITY04

	DEFW	$8CE0
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
