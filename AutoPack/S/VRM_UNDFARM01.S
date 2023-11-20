;Size:37
;********************************
; VRM_UNDFARM01.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_UNDFARM01
	GLOBAL		BIT_UNDFARM02
	GLOBAL		BIT_HERO
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_FOURCOLOR

VRM_UNDFARM01
	DB		$02

	DEFW	$9000
	DEFW	(BIT_UNDFARM01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_UNDFARM01

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DB		$03

	DEFW	$9000
	DEFW	(BIT_UNDFARM02&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_UNDFARM02

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
