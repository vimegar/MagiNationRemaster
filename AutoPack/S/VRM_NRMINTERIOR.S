;Size:37
;********************************
; VRM_NRMINTERIOR.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_NRMINTITEMS
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_NRMINTERIOR1
	GLOBAL		BIT_NRMINTERIOR2
	GLOBAL		BIT_HERO

VRM_NRMINTERIOR
	DB		$01

	DEFW	$9000
	DEFW	(BIT_NRMINTERIOR1&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_NRMINTERIOR1

	DB		$04

	DEFW	$8EC0
	DEFW	(BIT_NRMINTITEMS&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_NRMINTITEMS

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DEFW	$9000
	DEFW	(BIT_NRMINTERIOR2&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_NRMINTERIOR2

	DEFW	$8000
	DEFW	(BIT_HERO&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HERO

;********************************
	END
;********************************
