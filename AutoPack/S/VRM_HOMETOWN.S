;Size:37
;********************************
; VRM_HOMETOWN.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_HOMETOWN02
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_HOMETOWN01
	GLOBAL		BIT_HERO
	GLOBAL		BIT_FOURCOLOR

VRM_HOMETOWN
	DB		$02

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DEFW	$9000
	DEFW	(BIT_HOMETOWN01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HOMETOWN01

	DB		$03

	DEFW	$9000
	DEFW	(BIT_HOMETOWN02&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HOMETOWN02

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
