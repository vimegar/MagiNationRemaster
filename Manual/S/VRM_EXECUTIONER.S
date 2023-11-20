;Size:9
;********************************
; VRM_EXECUTIONER.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_EXECUTIONER

VRM_EXECUTIONER
	DB		$01

	DEFW	$8000
	DEFW	(BIT_EXECUTIONER&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_EXECUTIONER

	DB		$00

;********************************
	END
;********************************
