;Size:9
;********************************
; VRM_FORCE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_FORCE

VRM_FORCE
	DB		$01

	DEFW	$8000
	DEFW	(BIT_FORCE&$FFFF)
	DB		$10
	DB		$02
	DB		:BIT_FORCE

	DB		$00

;********************************
	END
;********************************
