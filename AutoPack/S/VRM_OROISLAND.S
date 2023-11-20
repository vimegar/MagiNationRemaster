;Size:37
;********************************
; VRM_OROISLAND.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_OROISLAND01
	GLOBAL		BIT_OROISLAND02
	GLOBAL		BIT_OROISLAND03
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_HERO

VRM_OROISLAND
	DB		$02

	DEFW	$9000
	DEFW	(BIT_OROISLAND01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_OROISLAND01

	DEFW	$8E00
	DEFW	(BIT_OROISLAND03&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_OROISLAND03

	DB		$03

	DEFW	$9000
	DEFW	(BIT_OROISLAND02&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_OROISLAND02

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
