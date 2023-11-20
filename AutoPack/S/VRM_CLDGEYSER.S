;Size:44
;********************************
; VRM_CLDGEYSER.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_CLDGEYSER02
	GLOBAL		BIT_CLDGEYSER01
	GLOBAL		BIT_CLDGEYSER03
	GLOBAL		BIT_CLDGEYSER04
	GLOBAL		BIT_HERO
	GLOBAL		BIT_FOURCOLOR

VRM_CLDGEYSER
	DB		$02

	DEFW	$9000
	DEFW	(BIT_CLDGEYSER02&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_CLDGEYSER02

	DEFW	$8800
	DEFW	(BIT_CLDGEYSER01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_CLDGEYSER01

	DB		$04

	DEFW	$9000
	DEFW	(BIT_CLDGEYSER03&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_CLDGEYSER03

	DEFW	$8E00
	DEFW	(BIT_CLDGEYSER04&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_CLDGEYSER04

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
