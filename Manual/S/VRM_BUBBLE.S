;Size:9
;********************************
; VRM_BUBBLE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_BUBBLE

VRM_BUBBLE
	DB		$01

	DEFW	$8000
	DEFW	(BIT_BUBBLE&$FFFF)
	DB		$0A
	DB		$01
	DB		:BIT_BUBBLE

	DB		$00

;********************************
	END
;********************************
