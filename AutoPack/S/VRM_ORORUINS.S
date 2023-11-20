;Size:37
;********************************
; VRM_ORORUINS.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

	GLOBAL		BIT_ORORUINS01
	GLOBAL		BIT_ORORUINS02
	GLOBAL		BIT_TRIGGERS
	GLOBAL		BIT_AQUAJONES
	GLOBAL		BIT_FOURCOLOR

VRM_ORORUINS
	DB		$01

	DEFW	$9000
	DEFW	(BIT_ORORUINS01&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ORORUINS01

	DB		$04

	DEFW	$9000
	DEFW	(BIT_ORORUINS02&$FFFF)
	DB		$10
	DB		$08
	DB		:BIT_ORORUINS02

	DEFW	$8EB0
	DEFW	(BIT_TRIGGERS&$FFFF)
	DB		$03
	DB		$02
	DB		:BIT_TRIGGERS

	DEFW	$8000
	DEFW	(BIT_AQUAJONES&$FFFF)
	DB		$10
	DB		$04
	DB		:BIT_AQUAJONES

	DEFW	$8EE0
	DEFW	(BIT_FOURCOLOR&$FFFF)
	DB		$02
	DB		$02
	DB		:BIT_FOURCOLOR

;********************************
	END
;********************************
