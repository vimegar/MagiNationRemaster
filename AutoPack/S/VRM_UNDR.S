;Size:37
;********************************
; VRM_UNDR.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_OVERWORLDTONY
	GLOBAL		BIT_UNDR1
	GLOBAL		BIT_UNDR2
	GLOBAL		BIT_OVERPARA

VRM_UNDR
	DB		$01

	DEFW	$8F00
	DEFW	(BIT_UNDR1&$FFFF)
	DB		$10
	DB		$09
	DB		:BIT_UNDR1

	DB		$04

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

	DEFW	$9000
	DEFW	(BIT_UNDR2&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_UNDR2

	DEFW	$8100
	DEFW	(BIT_OVERPARA&$FFFF)
	DB		$10
	DB		$03
	DB		:BIT_OVERPARA

;********************************
	END
;********************************
