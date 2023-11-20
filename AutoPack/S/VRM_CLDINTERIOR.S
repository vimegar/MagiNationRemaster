;Size:37
;********************************
; VRM_CLDINTERIOR.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_CLDINTER1
	GLOBAL		BIT_CLDINTER2
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_HERO
	GLOBAL		BIT_TRIGGERS

VRM_CLDINTERIOR
	DB		$01

	DEFW	$9000
	DEFW	(BIT_CLDINTER1&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_CLDINTER1

	DB		$04

	DEFW	$9000
	DEFW	(BIT_CLDINTER2&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_CLDINTER2

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

	DEFW	$8EB0
	DEFW	(BIT_TRIGGERS&$FFFF)
	DB		$03
	DB		$02
	DB		:BIT_TRIGGERS

;********************************
	END
;********************************
