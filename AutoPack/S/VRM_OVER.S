;Size:44
;********************************
; VRM_OVER.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_OVER1
	GLOBAL		BIT_OVER2
	GLOBAL		BIT_OVER3
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_OVERWORLDTONY
	GLOBAL		BIT_OVERPARA

VRM_OVER
	DB		$02

	DEFW	$8800
	DEFW	(BIT_OVER1&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_OVER1

	DEFW	$9000
	DEFW	(BIT_OVER2&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_OVER2

	DB		$04

	DEFW	$9000
	DEFW	(BIT_OVER3&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_OVER3

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

	DEFW	$8100
	DEFW	(BIT_OVERPARA&$FFFF)
	DB		$10
	DB		$03
	DB		:BIT_OVERPARA

;********************************
	END
;********************************
