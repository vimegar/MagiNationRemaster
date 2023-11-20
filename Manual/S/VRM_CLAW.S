;Size:9
;********************************
; VRM_CLAW.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_CLAW

VRM_CLAW
	DB		$01

	DEFW	$8000
	DEFW	(BIT_CLAW&$FFFF)
	DB		$05
	DB		$01
	DB		:BIT_CLAW

	DB		$00

;********************************
	END
;********************************
