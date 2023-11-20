;Size:44
;********************************
; VRM_HLDMAZE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_HLDMAZE1
	GLOBAL		BIT_HLDMAZE2
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_HLDMAZE3
	GLOBAL		BIT_HLDMAZE4
	GLOBAL		BIT_HERO

VRM_HLDMAZE
	DB		$02

	DEFW	$9000
	DEFW	(BIT_HLDMAZE1&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HLDMAZE1

	DEFW	$8800
	DEFW	(BIT_HLDMAZE3&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HLDMAZE3

	DB		$04

	DEFW	$9000
	DEFW	(BIT_HLDMAZE2&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HLDMAZE2

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DEFW	$8E00
	DEFW	(BIT_HLDMAZE4&$FFFF)
	DB		$08
	DB		$02
	DB		:BIT_HLDMAZE4

	DEFW	$8000
	DEFW	(BIT_HERO&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HERO

;********************************
	END
;********************************
