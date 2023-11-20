;Size:30
;********************************
; VRM_COREMAGIBATTLE06.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_TONYJONESBATTLE
	GLOBAL		BIT_SPARKLE
	GLOBAL		BIT_STATUSAILMENTS
	GLOBAL		BIT_CORE06BATTLE

VRM_COREMAGIBATTLE06
	DB		$03

	DEFW	$8400
	DEFW	(BIT_SPARKLE&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_SPARKLE

	DEFW	$8800
	DEFW	(BIT_STATUSAILMENTS&$FFFF)
	DB		$10
	DB		$07
	DB		:BIT_STATUSAILMENTS

	DEFW	$8000
	DEFW	(BIT_CORE06BATTLE&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_CORE06BATTLE

	DB		$01

	DEFW	$8000
	DEFW	(BIT_TONYJONESBATTLE&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_TONYJONESBATTLE

;********************************
	END
;********************************
