;Size:37
;********************************
; VRM_FERRY.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_FERRY1
	GLOBAL		BIT_FERRY2
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_FERRY3
	GLOBAL		BIT_HERO

VRM_FERRY
	DB		$01

	DEFW	$8F00
	DEFW	(BIT_FERRY2&$FFFF)
	DB		$10
	DB		$09
	DB		:BIT_FERRY2

	DB		$04

	DEFW	$9000
	DEFW	(BIT_FERRY1&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_FERRY1

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DEFW	$8E00
	DEFW	(BIT_FERRY3&$FFFF)
	DB		$0B
	DB		$02
	DB		:BIT_FERRY3

	DEFW	$8000
	DEFW	(BIT_HERO&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HERO

;********************************
	END
;********************************
