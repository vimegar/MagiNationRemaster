;Size:9
;********************************
; VRM_FIRD.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_FIRD

VRM_FIRD
	DB		$01

	DEFW	$8000
	DEFW	(BIT_FIRD&$FFFF)
	DB		$09
	DB		$01
	DB		:BIT_FIRD

	DB		$00

;********************************
	END
;********************************
