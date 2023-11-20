;Size:44
;********************************
; VRM_NRMFOREST.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_NRMFOREST01
	GLOBAL		BIT_NRMFOREST02
	GLOBAL		BIT_NRMFOREST03
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_TRIGGERS
	GLOBAL		BIT_HERO

VRM_NRMFOREST
	DB		$02

	DEFW	$9000
	DEFW	(BIT_NRMFOREST01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_NRMFOREST01

	DEFW	$8C00
	DEFW	(BIT_NRMFOREST03&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_NRMFOREST03

	DB		$04

	DEFW	$9000
	DEFW	(BIT_NRMFOREST02&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_NRMFOREST02

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DEFW	$8EB0
	DEFW	(BIT_TRIGGERS&$FFFF)
	DB		$03
	DB		$02
	DB		:BIT_TRIGGERS

	DEFW	$8000
	DEFW	(BIT_HERO&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HERO

;********************************
	END
;********************************
