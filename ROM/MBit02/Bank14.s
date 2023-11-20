;********************************
; BANK14.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
BANK14	GROUP	$14				; Specify bank group.
		ORG		$4000

;********************************
; Naroom - Glade
;********************************
		LIB		SCRIPTS\REGIONS\NAROOM\GLADE\MAP01\NRMGLADE01.S
		LIB		SCRIPTS\REGIONS\NAROOM\GLADE\MAP02\NRMGLADE02.S
		LIB		SCRIPTS\REGIONS\NAROOM\GLADE\MAP03\NRMGLADE03.S
		LIB		SCRIPTS\REGIONS\NAROOM\GLADE\MAP04\NRMGLADE04.S
		LIB		SCRIPTS\REGIONS\NAROOM\GLADE\MAP05\NRMGLADE05.S
		LIB		SCRIPTS\REGIONS\NAROOM\GLADE\MAP06\NRMGLADE06.S
		LIB		SCRIPTS\REGIONS\NAROOM\GLADE\MAP07\NRMGLADE07.S
		LIB		SCRIPTS\REGIONS\NAROOM\GLADE\MAP08\NRMGLADE08.S
		LIB		SCRIPTS\REGIONS\NAROOM\GLADE\MAP09A\NRMGLADE09A.S
		LIB		SCRIPTS\REGIONS\NAROOM\GLADE\MAP09B\NRMGLADE09B.S
		

;********************************
; Naroom  - Vash 11
;********************************
		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP11\NRMVASH11.S

;********************************
	END
;********************************