;Size:30
;********************************
; VRM_ARD.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_ARD1
	GLOBAL		BIT_ARD2
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_OVERWORLDTONY

VRM_ARD
	DB		$01

	DEFW	$8800
	DEFW	(BIT_ARD1&$FFFF)
	DB		$10
	DB		$10
	DB		:BIT_ARD1

	DB		$03

	DEFW	$9000
	DEFW	(BIT_ARD2&$FFFF)
	DB		$10
	DB		$03
	DB		:BIT_ARD2

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DEFW	$8000
	DEFW	(BIT_OVERWORLDTONY&$FFFF)
	DB		$10
	DB		$01
	DB		:BIT_OVERWORLDTONY

;********************************
	END
;********************************
