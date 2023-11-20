;Size:9
;********************************
; VRM_HAUNT.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_HAUNT

VRM_HAUNT
	DB		$01

	DEFW	$8000
	DEFW	(BIT_HAUNT&$FFFF)
	DB		$10
	DB		$03
	DB		:BIT_HAUNT

	DB		$00

;********************************
	END
;********************************
