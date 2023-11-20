;Size:9
;********************************
; VRM_LAMP.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_LAMP

VRM_LAMP
	DB		$01

	DEFW	$8000
	DEFW	(BIT_LAMP&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_LAMP

	DB		$00

;********************************
	END
;********************************
