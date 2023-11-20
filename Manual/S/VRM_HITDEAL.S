;Size:9
;********************************
; VRM_HITDEAL.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_HITDEAL

VRM_HITDEAL
	DB		$01

	DEFW	$8000
	DEFW	(BIT_HITDEAL&$FFFF)
	DB		$0D
	DB		$01
	DB		:BIT_HITDEAL

	DB		$00

;********************************
	END
;********************************
