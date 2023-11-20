;Size:44
;********************************
; VRM_WVEGIASHUT.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_WVEGIASHUT
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_WVESHRUB
	GLOBAL		BIT_WVEPATH
	GLOBAL		BIT_WVEVAL
	GLOBAL		BIT_HERO

VRM_WVEGIASHUT
	DB		$01

	DEFW	$9000
	DEFW	(BIT_WVEGIASHUT&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_WVEGIASHUT

	DB		$05

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DEFW	$9000
	DEFW	(BIT_WVESHRUB&$FFFF)
	DB		$0C
	DB		$02
	DB		:BIT_WVESHRUB

	DEFW	$90C0
	DEFW	(BIT_WVEPATH&$FFFF)
	DB		$04
	DB		$02
	DB		:BIT_WVEPATH

	DEFW	$9200
	DEFW	(BIT_WVEVAL&$FFFF)
	DB		$10
	DB		$06
	DB		:BIT_WVEVAL

	DEFW	$8000
	DEFW	(BIT_HERO&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HERO

;********************************
	END
;********************************
