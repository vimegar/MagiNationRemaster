;Size:37
;********************************
; VRM_UNDTOWNDEAD.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_UNDTOWNDEAD01
	GLOBAL		BIT_UNDTOWNDEAD02
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_HERO
	GLOBAL		BIT_FOURCOLOR

VRM_UNDTOWNDEAD
	DB		$02

	DEFW	$9000
	DEFW	(BIT_UNDTOWNDEAD01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_UNDTOWNDEAD01

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DB		$03

	DEFW	$9000
	DEFW	(BIT_UNDTOWNDEAD02&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_UNDTOWNDEAD02

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
