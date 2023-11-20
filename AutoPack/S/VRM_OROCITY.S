;Size:37
;********************************
; VRM_OROCITY.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_OROCITY01
	GLOBAL		BIT_OROCITY02
	GLOBAL		BIT_OROCITY03
	GLOBAL		BIT_FOURCOLOR
	GLOBAL		BIT_AQUAJONES

VRM_OROCITY
	DB		$02

	DEFW	$9000
	DEFW	(BIT_OROCITY01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_OROCITY01

	DEFW	$8A00
	DEFW	(BIT_OROCITY02&$FFFF)
	DB		$10
	DB		$06
	DB		:BIT_OROCITY02

	DB		$03

	DEFW	$9100
	DEFW	(BIT_OROCITY03&$FFFF)
	DB		$10
	DB		$07
	DB		:BIT_OROCITY03

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

	DEFW	$8000
	DEFW	(BIT_AQUAJONES&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_AQUAJONES

;********************************
	END
;********************************
