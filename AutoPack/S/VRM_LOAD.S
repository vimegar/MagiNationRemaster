;Size:30
;********************************
; VRM_LOAD.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_LOAD1
	GLOBAL		BIT_LOAD2
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_HERO

VRM_LOAD
	DB		$01

	DEFW	$9000
	DEFW	(BIT_LOAD1&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_LOAD1

	DB		$03

	DEFW	$9000
	DEFW	(BIT_LOAD2&$FFFF)
	DB		$10
	DB		$07
	DB		:BIT_LOAD2

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
