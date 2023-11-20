;Size:37
;********************************
; VRM_NRMVASH.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_NRMTREETOPS
	GLOBAL		BIT_SHOPSIGNS
	GLOBAL		BIT_HERO
	GLOBAL		BIT_NRMVASH

VRM_NRMVASH
	DB		$02

	DEFW	$8F00
	DEFW	(BIT_SHOPSIGNS&$FFFF)
	DB		$10
	DB		$01
	DB		:BIT_SHOPSIGNS

	DEFW	$9000
	DEFW	(BIT_NRMVASH&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_NRMVASH

	DB		$03

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DEFW	$9000
	DEFW	(BIT_NRMTREETOPS&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_NRMTREETOPS

	DEFW	$8000
	DEFW	(BIT_HERO&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HERO

;********************************
	END
;********************************
