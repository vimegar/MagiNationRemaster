;Size:44
;********************************
; VRM_HDNROOM.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_HDNROOM1
	GLOBAL		BIT_HDNROOM2
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_HDNROOM3
	GLOBAL		BIT_TRIGGERS
	GLOBAL		BIT_HERO

VRM_HDNROOM
	DB		$02

	DEFW	$9000
	DEFW	(BIT_HDNROOM1&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HDNROOM1

	DEFW	$8800
	DEFW	(BIT_HDNROOM3&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HDNROOM3

	DB		$04

	DEFW	$9000
	DEFW	(BIT_HDNROOM2&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HDNROOM2

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
