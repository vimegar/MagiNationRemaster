;Size:44
;********************************
; VRM_WVEWINDMILL.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_WVEWAGN
	GLOBAL		BIT_WVEPATH
	GLOBAL		BIT_WVEVAL
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_WVEWEET
	GLOBAL		BIT_HERO

VRM_WVEWINDMILL
	DB		$01

	DEFW	$9000
	DEFW	(BIT_WVEWEET&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_WVEWEET

	DB		$05

	DEFW	$9000
	DEFW	(BIT_WVEWAGN&$FFFF)
	DB		$0C
	DB		$02
	DB		:BIT_WVEWAGN

	DEFW	$90C0
	DEFW	(BIT_WVEPATH&$FFFF)
	DB		$04
	DB		$02
	DB		:BIT_WVEPATH

	DEFW	$9200
	DEFW	(BIT_WVEVAL&$FFFF)
	DB		$10
	DB		$06
	DB		:BIT_WVEVAL

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DEFW	$8000
	DEFW	(BIT_HERO&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_HERO

;********************************
	END
;********************************
