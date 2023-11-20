;********************************
; BANK2F.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
BANK2F	GROUP	$2F				; Specify bank group.
		ORG		$4000

		LIB		SCRIPTS\REGIONS\OVERWORLD\SURFACE\MAP01\OVRSURFACE01.S
		LIB		SCRIPTS\REGIONS\OVERWORLD\SURFACE\MAP02\OVRSURFACE02.S
		LIB		SCRIPTS\REGIONS\OVERWORLD\SURFACE\MAP03\OVRSURFACE03.S
		LIB		SCRIPTS\REGIONS\OVERWORLD\SURFACE\MAP04\OVRSURFACE04.S
		LIB		SCRIPTS\REGIONS\OVERWORLD\SURFACE\MAP05\OVRSURFACE05.S

;********************************
	END
;********************************