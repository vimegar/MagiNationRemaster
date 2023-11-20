;********************************
; BANK1D.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
BANK1D	GROUP	$1D				; Specify bank group.
		ORG		$4000

		LIB		SCRIPTS\REGIONS\NAROOM\GLADE\MAP10\NRMGLADE10.S
		LIB		SCRIPTS\REGIONS\NAROOM\GLADE\MAP11\NRMGLADE11.S

;********************************
; Weave - Gia's Hut
;********************************
		LIB		SCRIPTS\REGIONS\WEAVE\GIASHUT\MAP01\WVEGIASHUT01.S
		LIB		SCRIPTS\REGIONS\WEAVE\GIASHUT\MAP02\WVEGIASHUT02.S

;********************************
	END
;********************************