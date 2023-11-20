;Size:37
;********************************
; VRM_ARDGEYSER.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_ARDGEYSER02
	GLOBAL		BIT_ARDGEYSER03
	GLOBAL		BIT_ARDGEYSER01
	GLOBAL		BIT_HERO
	GLOBAL		BIT_ARDGEYSER04

VRM_ARDGEYSER
	DB		$02

	DEFW	$9000
	DEFW	(BIT_ARDGEYSER02&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ARDGEYSER02

	DEFW	$8800
	DEFW	(BIT_ARDGEYSER01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ARDGEYSER01

	DB		$03

	DEFW	$9000
	DEFW	(BIT_ARDGEYSER03&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ARDGEYSER03

	DEFW	$8000
	DEFW	(BIT_HERO&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HERO

	DEFW	$8E00
	DEFW	(BIT_ARDGEYSER04&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_ARDGEYSER04

;********************************
	END
;********************************
