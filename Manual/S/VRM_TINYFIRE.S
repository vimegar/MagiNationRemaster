;Size:9
;********************************
; VRM_TINYFIRE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_TINYFIRE

VRM_TINYFIRE
	DB		$01

	DEFW	$8000
	DEFW	(BIT_TINYFIRE&$FFFF)
	DB		$0B
	DB		$01
	DB		:BIT_TINYFIRE

	DB		$00

;********************************
	END
;********************************
