;Size:9
;********************************
; VRM_LEAF.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_LEAF

VRM_LEAF
	DB		$01

	DEFW	$8000
	DEFW	(BIT_LEAF&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_LEAF

	DB		$00

;********************************
	END
;********************************
