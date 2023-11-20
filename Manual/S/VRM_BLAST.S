;Size:9
;********************************
; VRM_BLAST.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_BLAST

VRM_BLAST
	DB		$01

	DEFW	$8000
	DEFW	(BIT_BLAST&$FFFF)
	DB		$10
	DB		$03
	DB		:BIT_BLAST

	DB		$00

;********************************
	END
;********************************
