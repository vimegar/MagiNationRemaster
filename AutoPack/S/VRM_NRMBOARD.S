;Size:37
;********************************
; VRM_NRMBOARD.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_NRMGLADESHRUBS
	GLOBAL		BIT_NRMTREETOPS
	GLOBAL		BIT_HERO
	GLOBAL		BIT_NRMBOARD

VRM_NRMBOARD
	DB		$02

	DEFW	$9000
	DEFW	(BIT_NRMGLADESHRUBS&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_NRMGLADESHRUBS

	DEFW	$9400
	DEFW	(BIT_NRMBOARD&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_NRMBOARD

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
