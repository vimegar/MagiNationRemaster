;********************************
; BANK2A.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
BANK2A	GROUP	$2A				; Specify bank group.
		ORG		$4000

;********************************
; Naroom - River
;********************************
		LIB		SCRIPTS\REGIONS\NAROOM\RIVER\MAP01\NRMRIVER01.S
		LIB		SCRIPTS\REGIONS\NAROOM\RIVER\MAP02\NRMRIVER02.S
		LIB		SCRIPTS\REGIONS\NAROOM\RIVER\MAP03\NRMRIVER03.S

;********************************
; Cald - Ferry
;********************************
		LIB		SCRIPTS\REGIONS\CALD\FERRY\MAP01\FERRY01.S
		LIB		SCRIPTS\REGIONS\CALD\FERRY\MAP02\FERRY02.S
		LIB		SCRIPTS\REGIONS\CALD\FERRY\MAP03\FERRY03.S

;********************************
; Hidden - Load
;********************************
		LIB		SCRIPTS\REGIONS\HIDDEN\LOAD\MAP01\HDNLOAD01.S

;********************************
	END
;********************************