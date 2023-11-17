;********************************
; TITLE_EQU.S
;********************************
;	Author:	Patrick Meehan,'emg'
;	(c)2000	Interactive Imagination
;	All rights reserved
 
;********************************
TITLE_BANK				EQU		$04
;********************************
TITLE_SCY				EQU		$48		;9 tiles down from BG TOP LEFT is where "TITLE_BG" IS (1-row above the title should contain black tiles)
TITLE_LYC1				EQU		$47		;9 TILES DOWN (where paralax1 starts)
TITLE_LYC2				EQU		$68		;13 TILES DOWN (where paralax2 starts)

TITLE_BORDY1			EQU		$B8		;<-- this define controls the scroll position of parallax (add 8 go up, -8 to go down by per tile)

;********************************
	END
;********************************
