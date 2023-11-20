;Size:9
;********************************
; VRM_CYCLONE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_CYCLONE

VRM_CYCLONE
	DB		$01

	DEFW	$8000
	DEFW	(BIT_CYCLONE&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_CYCLONE

	DB		$00

;********************************
	END
;********************************
