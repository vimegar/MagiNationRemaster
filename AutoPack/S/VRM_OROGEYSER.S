;Size:44
;********************************
; VRM_OROGEYSER.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_OROGEYSER02
	GLOBAL		BIT_OROGEYSER03
	GLOBAL		BIT_OROGEYSER01
	GLOBAL		BIT_OROGEYSER04
	GLOBAL		BIT_HERO
	GLOBAL		BIT_FOURCOLOR

VRM_OROGEYSER
	DB		$02

	DEFW	$9000
	DEFW	(BIT_OROGEYSER02&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_OROGEYSER02

	DEFW	$8800
	DEFW	(BIT_OROGEYSER01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_OROGEYSER01

	DB		$04

	DEFW	$9000
	DEFW	(BIT_OROGEYSER03&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_OROGEYSER03

	DEFW	$8E00
	DEFW	(BIT_OROGEYSER04&$FFFF)
	DB		$0E
	DB		$02
	DB		:BIT_OROGEYSER04

	DEFW	$8000
	DEFW	(BIT_HERO&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HERO

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

;********************************
	END
;********************************
