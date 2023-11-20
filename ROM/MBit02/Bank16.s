;********************************
; BANK16.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
BANK16	GROUP	$16				; Specify bank group.
		ORG		$4000

;********************************
; Naroom - Vash 1 - 4
;********************************
		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP01\NRMVASH01.S
		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP02\NRMVASH02.S
		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP03\NRMVASH03.S
		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP04\NRMVASH04.S

		
;********************************
	END
;********************************