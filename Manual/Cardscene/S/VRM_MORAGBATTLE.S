;Size:30
;********************************
; VRM_MORAGBATTLE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_MORAGBATTLE
	GLOBAL		BIT_TONYJONESBATTLE
	GLOBAL		BIT_SPARKLE
	GLOBAL		BIT_STATUSAILMENTS

VRM_MORAGBATTLE
	DB		$03

	DEFW	$8000
	DEFW	(BIT_MORAGBATTLE&$FFFF)
	DB		$10
	DB		$03
	DB		:BIT_MORAGBATTLE

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

	DB		$01

	DEFW	$8000
	DEFW	(BIT_TONYJONESBATTLE&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_TONYJONESBATTLE

;********************************
	END
;********************************
