;Size:9
;********************************
; VRM_WHIRLPOOL.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_WHIRLPOOL

VRM_WHIRLPOOL
	DB		$01

	DEFW	$8000
	DEFW	(BIT_WHIRLPOOL&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_WHIRLPOOL

	DB		$00

;********************************
	END
;********************************
