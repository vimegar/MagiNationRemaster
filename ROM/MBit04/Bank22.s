;********************************
; BANK22.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
BANK22	GROUP	$22				; Specify bank group.
		ORG		$4000


;********************************
; Main
;********************************
		LIB		SCRIPTS\SYSTEM\SYSTEM.S

		LIB		SCRIPTS\REGIONS\UNDERNEATH\TOWN\MAP01\UNDTOWN01.S

;********************************
; Naroom - Vash 12 - 20
;********************************
		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP17\NRMVASH17.S
		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP18\NRMVASH18.S
		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP19\NRMVASH19.S
		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP20\NRMVASH20.S

;********************************
	END
;********************************