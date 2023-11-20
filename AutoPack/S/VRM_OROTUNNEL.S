;Size:44
;********************************
; VRM_OROTUNNEL.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_OROTUNNEL01
	GLOBAL		BIT_OROTUNNEL02
	GLOBAL		BIT_OROTUNNEL03
	GLOBAL		BIT_OROTUNNEL04
	GLOBAL		BIT_HERO
	GLOBAL		BIT_FOURCOLOR

VRM_OROTUNNEL
	DB		$02

	DEFW	$8800
	DEFW	(BIT_OROTUNNEL01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_OROTUNNEL01

	DEFW	$9000
	DEFW	(BIT_OROTUNNEL02&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_OROTUNNEL02

	DB		$04

	DEFW	$9000
	DEFW	(BIT_OROTUNNEL03&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_OROTUNNEL03

	DEFW	$8EA0
	DEFW	(BIT_OROTUNNEL04&$FFFF)
	DB		$04
	DB		$02
	DB		:BIT_OROTUNNEL04

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
