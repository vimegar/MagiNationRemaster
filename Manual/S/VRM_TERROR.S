;Size:9
;********************************
; VRM_TERROR.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_TERROR

VRM_TERROR
	DB		$01

	DEFW	$8000
	DEFW	(BIT_TERROR&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_TERROR

	DB		$00

;********************************
	END
;********************************
