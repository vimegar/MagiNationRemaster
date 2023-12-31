;********************************
; BANK17.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
BANK17	GROUP	$17				; Specify bank group.
		ORG		$4000

;********************************
; Hidden - Fort
;********************************
		LIB		SCRIPTS\REGIONS\HIDDEN\FORT\MAP01\FORT01.S
		LIB		SCRIPTS\REGIONS\HIDDEN\FORT\MAP02\FORT02.S
		LIB		SCRIPTS\REGIONS\HIDDEN\FORT\MAP03\FORT03.S
		LIB		SCRIPTS\REGIONS\HIDDEN\FORT\MAP04\FORT04.S

;********************************
; Cald - Lavavent
;********************************
		LIB		SCRIPTS\REGIONS\CALD\LAVAVENT\MAP01\CLDLAVAVENT01.S
		LIB		SCRIPTS\REGIONS\CALD\LAVAVENT\MAP02\CLDLAVAVENT02.S
		LIB		SCRIPTS\REGIONS\CALD\LAVAVENT\MAP03\CLDLAVAVENT03.S
		LIB		SCRIPTS\REGIONS\CALD\LAVAVENT\MAP04\CLDLAVAVENT04.S
		LIB		SCRIPTS\REGIONS\CALD\LAVAVENT\MAP05\CLDLAVAVENT05.S
		LIB		SCRIPTS\REGIONS\CALD\LAVAVENT\MAP06\CLDLAVAVENT06.S
		LIB		SCRIPTS\REGIONS\CALD\LAVAVENT\MAP07\CLDLAVAVENT07.S
		LIB		SCRIPTS\REGIONS\CALD\LAVAVENT\MAP08\CLDLAVAVENT08.S

;********************************
; Cald - Lavatown 2
;********************************
		LIB		SCRIPTS\REGIONS\CALD\LAVATOWN\MAP02\CLDLAVATOWN02.S

;********************************
; Arderial - Clouds
;********************************
		LIB		SCRIPTS\REGIONS\ARDERIAL\CLOUDS\MAP01\ARDCLOUDS01.S
		LIB		SCRIPTS\REGIONS\ARDERIAL\CLOUDS\MAP02\ARDCLOUDS02.S
		LIB		SCRIPTS\REGIONS\ARDERIAL\CLOUDS\MAP03\ARDCLOUDS03.S
		LIB		SCRIPTS\REGIONS\ARDERIAL\CLOUDS\MAP04\ARDCLOUDS04.S
		LIB		SCRIPTS\REGIONS\ARDERIAL\CLOUDS\MAP05\ARDCLOUDS05.S
		LIB		SCRIPTS\REGIONS\ARDERIAL\CLOUDS\MAP06\ARDCLOUDS06.S
		LIB		SCRIPTS\REGIONS\ARDERIAL\CLOUDS\MAP07\ARDCLOUDS07.S
		LIB		SCRIPTS\REGIONS\ARDERIAL\CLOUDS\MAP08\ARDCLOUDS08.S
		LIB		SCRIPTS\REGIONS\ARDERIAL\CLOUDS\MAP09\ARDCLOUDS09.S
		LIB		SCRIPTS\REGIONS\ARDERIAL\CLOUDS\MAP10\ARDCLOUDS10.S
		LIB		SCRIPTS\REGIONS\ARDERIAL\CLOUDS\MAP11\ARDCLOUDS11.S
		LIB		SCRIPTS\REGIONS\ARDERIAL\CLOUDS\MAP12\ARDCLOUDS12.S
		LIB		SCRIPTS\REGIONS\ARDERIAL\CLOUDS\MAP13\ARDCLOUDS13.S
		LIB		SCRIPTS\REGIONS\ARDERIAL\CLOUDS\MAP14\ARDCLOUDS14.S
		LIB		SCRIPTS\REGIONS\ARDERIAL\CLOUDS\MAP15\ARDCLOUDS15.S
		LIB		SCRIPTS\REGIONS\ARDERIAL\CLOUDS\MAP16\ARDCLOUDS16.S

;********************************
; Naroom - Forest
;********************************
		LIB		SCRIPTS\REGIONS\NAROOM\FOREST\MAP01\NRMFOREST01.S
		LIB		SCRIPTS\REGIONS\NAROOM\FOREST\MAP02\NRMFOREST02.S
		LIB		SCRIPTS\REGIONS\NAROOM\FOREST\MAP03\NRMFOREST03.S

;********************************
	END
;********************************