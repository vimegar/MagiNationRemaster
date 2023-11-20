;Size:9
;********************************
; VRM_CRUSHROCK.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_CRUSHROCK

VRM_CRUSHROCK
	DB		$01

	DEFW	$8000
	DEFW	(BIT_CRUSHROCK&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_CRUSHROCK

	DB		$00

;********************************
	END
;********************************
