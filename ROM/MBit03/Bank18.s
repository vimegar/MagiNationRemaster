;********************************
; BANK18.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
BANK18	GROUP	$18				; Specify bank group.
		ORG		$4000

;********************************
; Orothe - Geyser 01 - 12
;********************************

		LIB		SCRIPTS\REGIONS\OROTHE\GEYSER\MAP01\OROGEYSER01.S
		LIB		SCRIPTS\REGIONS\OROTHE\GEYSER\MAP02\OROGEYSER02.S
		LIB		SCRIPTS\REGIONS\OROTHE\GEYSER\MAP03\OROGEYSER03.S
		LIB		SCRIPTS\REGIONS\OROTHE\GEYSER\MAP04\OROGEYSER04.S
		LIB		SCRIPTS\REGIONS\OROTHE\GEYSER\MAP05\OROGEYSER05.S
		LIB		SCRIPTS\REGIONS\OROTHE\GEYSER\MAP06\OROGEYSER06.S
		LIB		SCRIPTS\REGIONS\OROTHE\GEYSER\MAP07\OROGEYSER07.S
		LIB		SCRIPTS\REGIONS\OROTHE\GEYSER\MAP08\OROGEYSER08.S
		LIB		SCRIPTS\REGIONS\OROTHE\GEYSER\MAP09\OROGEYSER09.S
		LIB		SCRIPTS\REGIONS\OROTHE\GEYSER\MAP10\OROGEYSER10.S
		LIB		SCRIPTS\REGIONS\OROTHE\GEYSER\MAP11\OROGEYSER11.S
		LIB		SCRIPTS\REGIONS\OROTHE\GEYSER\MAP12\OROGEYSER12.S

;********************************
; Orothe - City
;********************************
		LIB		SCRIPTS\REGIONS\OROTHE\CITY\MAP02\OROCITY02.S
		LIB		SCRIPTS\REGIONS\OROTHE\CITY\MAP03\OROCITY03.S
		LIB		SCRIPTS\REGIONS\OROTHE\CITY\MAP04\OROCITY04.S

;********************************
; Orothe - Coral
;********************************
		LIB		SCRIPTS\REGIONS\OROTHE\CORAL\MAP01\OROCORAL01.S
		LIB		SCRIPTS\REGIONS\OROTHE\CORAL\MAP02\OROCORAL02.S
		LIB		SCRIPTS\REGIONS\OROTHE\CORAL\MAP03\OROCORAL03.S
		LIB		SCRIPTS\REGIONS\OROTHE\CORAL\MAP04\OROCORAL04.S
		LIB		SCRIPTS\REGIONS\OROTHE\CORAL\MAP05\OROCORAL05.S
		LIB		SCRIPTS\REGIONS\OROTHE\CORAL\MAP06\OROCORAL06.S

;********************************
	END
;********************************