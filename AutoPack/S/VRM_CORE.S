;Size:37
;********************************
; VRM_CORE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_CORE1
	GLOBAL		BIT_CORE2
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_HERO
	GLOBAL		BIT_CORE3

VRM_CORE
	DB		$01

	DEFW	$9000
	DEFW	(BIT_CORE1&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_CORE1

	DB		$04

	DEFW	$9000
	DEFW	(BIT_CORE2&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_CORE2

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

	DEFW	$8E00
	DEFW	(BIT_CORE3&$FFFF)
	DB		$0E
	DB		$02
	DB		:BIT_CORE3

;********************************
	END
;********************************
