;Size:9
;********************************
; VRM_JUDGE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_JUDGE

VRM_JUDGE
	DB		$01

	DEFW	$8000
	DEFW	(BIT_JUDGE&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_JUDGE

	DB		$00

;********************************
	END
;********************************
