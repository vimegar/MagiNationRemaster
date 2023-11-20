;********************************
; BANK2B.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
BANK2B	GROUP	$2B				; Specify bank group.
		ORG		$4000

;********************************
; Naroom - Vash
;********************************
		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP12\NRMVASH12.S
		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP05\NRMVASH05.S
		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP06\NRMVASH06.S

;********************************
; Orothe - Deep Water
;********************************
		LIB		SCRIPTS\REGIONS\OROTHE\DEEP\MAP01\ORODEEP01.S

;********************************
; Naroom - To Weave
;********************************
		LIB		SCRIPTS\REGIONS\NAROOM\TOWEAVE\MAP01\NRMTOWEAVE01.S

;********************************
	END
;********************************