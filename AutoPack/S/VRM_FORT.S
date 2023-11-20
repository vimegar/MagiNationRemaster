;Size:30
;********************************
; VRM_FORT.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_FORT1
	GLOBAL		BIT_FORT2
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_HERO

VRM_FORT
	DB		$01

	DEFW	$9000
	DEFW	(BIT_FORT1&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_FORT1

	DB		$03

	DEFW	$9000
	DEFW	(BIT_FORT2&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_FORT2

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
