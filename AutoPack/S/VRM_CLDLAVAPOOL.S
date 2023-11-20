;Size:44
;********************************
; VRM_CLDLAVAPOOL.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_CLDLAVAPOOL1
	GLOBAL		BIT_CLDLAVAPOOL2
	GLOBAL		BIT_HERO
	GLOBAL		BIT_SHADO
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_CLDLAVAPOOL3

VRM_CLDLAVAPOOL
	DB		$02

	DEFW	$8F00
	DEFW	(BIT_CLDLAVAPOOL1&$FFFF)
	DB		$10
	DB		$09
	DB		:BIT_CLDLAVAPOOL1

	DEFW	$8B00
	DEFW	(BIT_CLDLAVAPOOL3&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_CLDLAVAPOOL3

	DB		$04

	DEFW	$9000
	DEFW	(BIT_CLDLAVAPOOL2&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_CLDLAVAPOOL2

	DEFW	$8000
	DEFW	(BIT_HERO&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HERO

	DEFW	$8E00
	DEFW	(BIT_SHADO&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_SHADO

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

;********************************
	END
;********************************
