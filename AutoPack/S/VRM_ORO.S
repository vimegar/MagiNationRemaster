;Size:44
;********************************
; VRM_ORO.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_OVERWORLDTONY
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_ORO1
	GLOBAL		BIT_ORO2
	GLOBAL		BIT_OVERPARA
	GLOBAL		BIT_ORO3

VRM_ORO
	DB		$01

	DEFW	$9000
	DEFW	(BIT_ORO1&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ORO1

	DB		$05

	DEFW	$8000
	DEFW	(BIT_OVERWORLDTONY&$FFFF)
	DB		$10
	DB		$01
	DB		:BIT_OVERWORLDTONY

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DEFW	$9000
	DEFW	(BIT_ORO2&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ORO2

	DEFW	$8100
	DEFW	(BIT_OVERPARA&$FFFF)
	DB		$10
	DB		$03
	DB		:BIT_OVERPARA

	DEFW	$8F00
	DEFW	(BIT_ORO3&$FFFF)
	DB		$07
	DB		$01
	DB		:BIT_ORO3

;********************************
	END
;********************************
