;Size:9
;********************************
; VRM_WATER_FLOW.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_WATER_FLOW

VRM_WATER_FLOW
	DB		$01

	DEFW	$8000
	DEFW	(BIT_WATER_FLOW&$FFFF)
	DB		$10
	DB		$01
	DB		:BIT_WATER_FLOW

	DB		$00

;********************************
	END
;********************************
