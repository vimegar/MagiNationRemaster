;Size:44
;********************************
; VRM_UNDTUNNEL.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_TUNNELTREASURECHEST
	GLOBAL		BIT_UNDTUNNEL01
	GLOBAL		BIT_UNDTUNNEL02
	GLOBAL		BIT_UNDTUNNEL03
	GLOBAL		BIT_HERO
	GLOBAL		BIT_FOURCOLOR

VRM_UNDTUNNEL
	DB		$02

	DEFW	$9000
	DEFW	(BIT_UNDTUNNEL01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_UNDTUNNEL01

	DEFW	$8B00
	DEFW	(BIT_UNDTUNNEL03&$FFFF)
	DB		$10
	DB		$05
	DB		:BIT_UNDTUNNEL03

	DB		$04

	DEFW	$8FA0
	DEFW	(BIT_TUNNELTREASURECHEST&$FFFF)
	DB		$04
	DB		$01
	DB		:BIT_TUNNELTREASURECHEST

	DEFW	$9000
	DEFW	(BIT_UNDTUNNEL02&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_UNDTUNNEL02

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
