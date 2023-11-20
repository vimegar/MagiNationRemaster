;********************************
; BANK1C.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
BANK1C	GROUP	$1C				; Specify bank group.
		ORG		$4000

;********************************
; Shadowhold - Cell
;********************************
		LIB		SCRIPTS\REGIONS\SHADOWHOLD\HLDCELL\MAP01\HLDCELL01.S
		LIB		SCRIPTS\REGIONS\SHADOWHOLD\HLDCELL\MAP06\HLDCELL06.S

;********************************
; Underneath - Town
;********************************
		LIB		SCRIPTS\REGIONS\UNDERNEATH\TOWN\MAP02\UNDTOWN02.S
		LIB		SCRIPTS\REGIONS\UNDERNEATH\TOWN\MAP03\UNDTOWN03.S
		LIB		SCRIPTS\REGIONS\UNDERNEATH\TOWN\MAP04\UNDTOWN04.S
		LIB		SCRIPTS\REGIONS\UNDERNEATH\TOWN\MAP05\UNDTOWN05.S
		LIB		SCRIPTS\REGIONS\UNDERNEATH\TOWN\MAP06\UNDTOWN06.S
		LIB		SCRIPTS\REGIONS\UNDERNEATH\TOWN\MAP07\UNDTOWN07.S
		LIB		SCRIPTS\REGIONS\UNDERNEATH\TOWN\MAP08\UNDTOWN08.S
		LIB		SCRIPTS\REGIONS\UNDERNEATH\TOWN\MAP09\UNDTOWN09.S

;********************************
	END
;********************************