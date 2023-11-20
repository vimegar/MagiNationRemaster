;Size:44
;********************************
; VRM_CREGATE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_COREGATE1
	GLOBAL		BIT_COREGATE2
	GLOBAL		BIT_COREGATE3
	GLOBAL		BIT_COREGATE4
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_HERO

VRM_CREGATE
	DB		$02

	DEFW	$8800
	DEFW	(BIT_COREGATE1&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_COREGATE1

	DEFW	$9000
	DEFW	(BIT_COREGATE2&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_COREGATE2

	DB		$04

	DEFW	$9000
	DEFW	(BIT_COREGATE3&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_COREGATE3

	DEFW	$8E00
	DEFW	(BIT_COREGATE4&$FFFF)
	DB		$0E
	DB		$02
	DB		:BIT_COREGATE4

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
