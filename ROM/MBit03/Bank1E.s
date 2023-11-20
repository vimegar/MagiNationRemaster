;********************************
; BANK1E.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
BANK1E	GROUP	$1E				; Specify bank group.
		ORG		$4000

;********************************
; Cald - Lavatown
;********************************
		LIB		SCRIPTS\REGIONS\CALD\LAVATOWN\MAP03\CLDLAVATOWN03.S
		LIB		SCRIPTS\REGIONS\CALD\LAVATOWN\MAP06\CLDLAVATOWN06.S
		LIB		SCRIPTS\REGIONS\CALD\LAVATOWN\MAP07\CLDLAVATOWN07.S
		LIB		SCRIPTS\REGIONS\CALD\LAVATOWN\MAP08\CLDLAVATOWN08.S
		LIB		SCRIPTS\REGIONS\CALD\LAVATOWN\MAP09\CLDLAVATOWN09.S
		LIB		SCRIPTS\REGIONS\CALD\LAVATOWN\MAP10\CLDLAVATOWN10.S
		LIB		SCRIPTS\REGIONS\CALD\LAVATOWN\MAP11\CLDLAVATOWN11.S
		LIB		SCRIPTS\REGIONS\CALD\LAVATOWN\MAP12\CLDLAVATOWN12.S

;********************************
	END
;********************************