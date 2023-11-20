;********************************
; BANK1F.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
BANK1F	GROUP	$1F				; Specify bank group.
		ORG		$4000

;********************************
; Hometown - Cave
;********************************
		LIB		SCRIPTS\REGIONS\HOMETOWN\CAVE\MAP01\HMTCAVE01.S
		LIB		SCRIPTS\REGIONS\HOMETOWN\CAVE\MAP02\HMTCAVE02.S
		LIB		SCRIPTS\REGIONS\HOMETOWN\CAVE\MAP03\HMTCAVE03.S
		LIB		SCRIPTS\REGIONS\HOMETOWN\CAVE\MAP04\HMTCAVE04.S

;********************************
; Cald - Geyser
;********************************

		LIB		SCRIPTS\REGIONS\CALD\GEYSER\MAP01\CLDGEYSER01.S
		LIB		SCRIPTS\REGIONS\CALD\GEYSER\MAP02\CLDGEYSER02.S
		LIB		SCRIPTS\REGIONS\CALD\GEYSER\MAP03\CLDGEYSER03.S
		LIB		SCRIPTS\REGIONS\CALD\GEYSER\MAP04\CLDGEYSER04.S
		LIB		SCRIPTS\REGIONS\CALD\GEYSER\MAP05\CLDGEYSER05.S
		LIB		SCRIPTS\REGIONS\CALD\GEYSER\MAP06\CLDGEYSER06.S

;********************************
; Shadowhold - Maze
;********************************
		LIB		SCRIPTS\REGIONS\SHADOWHOLD\HLDMAZE\MAP21\HLDMAZE21.S
		LIB		SCRIPTS\REGIONS\SHADOWHOLD\HLDMAZE\MAP22\HLDMAZE22.S

;********************************
	END
;********************************
