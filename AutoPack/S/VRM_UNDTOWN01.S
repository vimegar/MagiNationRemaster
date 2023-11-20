;Size:44
;********************************
; VRM_UNDTOWN01.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_UNDTOWNTREASURE
	GLOBAL		BIT_UNDTOWN01
	GLOBAL		BIT_UNDTOWN02
	GLOBAL		BIT_SIGNS
	GLOBAL		BIT_HERO
	GLOBAL		BIT_FOURCOLOR

VRM_UNDTOWN01
	DB		$01

	DEFW	$9000
	DEFW	(BIT_UNDTOWN01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_UNDTOWN01

	DB		$05

	DEFW	$8FA0
	DEFW	(BIT_UNDTOWNTREASURE&$FFFF)
	DB		$04
	DB		$01
	DB		:BIT_UNDTOWNTREASURE

	DEFW	$9000
	DEFW	(BIT_UNDTOWN02&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_UNDTOWN02

	DEFW	$8F00
	DEFW	(BIT_SIGNS&$FFFF)
	DB		$0A
	DB		$01
	DB		:BIT_SIGNS

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
