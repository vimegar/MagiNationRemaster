;Size:30
;********************************
; VRM_LOGO.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_LOGO1
	GLOBAL		BIT_LOGO2
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_MUSYX

VRM_LOGO
	DB		$02

	DEFW	$9000
	DEFW	(BIT_LOGO1&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_LOGO1

	DEFW	$8D00
	DEFW	(BIT_MUSYX&$FFFF)
	DB		$0A
	DB		$03
	DB		:BIT_MUSYX

	DB		$02

	DEFW	$9000
	DEFW	(BIT_LOGO2&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_LOGO2

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

;********************************
	END
;********************************
