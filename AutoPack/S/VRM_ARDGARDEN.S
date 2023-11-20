;Size:30
;********************************
; VRM_ARDGARDEN.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_ARDGARDEN01
	GLOBAL		BIT_ARDGARDEN02
	GLOBAL		BIT_HERO
	GLOBAL		BIT_FOURCOLOR

VRM_ARDGARDEN
	DB		$01

	DEFW	$9000
	DEFW	(BIT_ARDGARDEN01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ARDGARDEN01

	DB		$03

	DEFW	$9000
	DEFW	(BIT_ARDGARDEN02&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ARDGARDEN02

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
