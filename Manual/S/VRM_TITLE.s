;Size:23
;********************************
; VRM_TITLE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_TITLE1
	GLOBAL		BIT_PRESTA
	GLOBAL		BIT_FOURCOLOR

VRM_TITLE
	DB		$01

	DEFW	$8000
	DEFW	(BIT_PRESTA&$FFFF)
	DB		$07
	DB		$01
	DB		:BIT_PRESTA

	DB		$02

	DEFW	$9000
	DEFW	(BIT_TITLE1&$FFFF)
	DB		$10
	DB		$07
	DB		:BIT_TITLE1

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

;********************************
	END
;********************************
