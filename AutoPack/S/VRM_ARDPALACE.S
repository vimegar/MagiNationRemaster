;Size:30
;********************************
; VRM_ARDPALACE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_ARDPALACE02
	GLOBAL		BIT_ARDPALACE01
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_HERO

VRM_ARDPALACE
	DB		$01

	DEFW	$9000
	DEFW	(BIT_ARDPALACE01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ARDPALACE01

	DB		$03

	DEFW	$9000
	DEFW	(BIT_ARDPALACE02&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ARDPALACE02

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
