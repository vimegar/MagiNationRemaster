;********************************
; BANK28.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
BANK28	GROUP	$28				; Specify bank group.
		ORG		$4000

		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP07\NRMVASH07.S
		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP08\NRMVASH08.S
		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP09\NRMVASH09.S
		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP10\NRMVASH10.S
		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP22\NRMVASH22.S
		LIB		SCRIPTS\REGIONS\NAROOM\VASH\MAP23\NRMVASH23.S

;********************************
; Cald - Lavapool
;********************************
		LIB		SCRIPTS\REGIONS\CALD\LAVAPOOL\MAP01\CLDLAVAPOOL01.S

;********************************
	END
;********************************