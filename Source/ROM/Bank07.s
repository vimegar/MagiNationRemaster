;********************************
; BANK07.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
BANK07	GROUP	$07			; Specify bank group.
		ORG		$4000

;********************************
; SYSTEM
;********************************
		LIB		SOURCE\ENGINE\SYSTEM\BATTERY\BATTERY.S
		LIB		SOURCE\ENGINE\SYSTEM\GRAPHICS\PALETTE\PALETTE.S
		LIB		SOURCE\ENGINE\SYSTEM\GRAPHICS\TILEMAP\TILEMAP.S
		LIB		SOURCE\ENGINE\SYSTEM\GRAPHICS\SCREENFX\SCREENFX.S
		LIB		SOURCE\ENGINE\SYSTEM\SOUND\SOUND.S
		LIB		SOURCE\ENGINE\SYSTEM\SYSTEM_EXTRA.S
		LIB		SOURCE\GAME\MENU\SPECIALTY\MENU_RINGUP_LEVEL_COSTS.S
		
		
;********************************
; GAME
;********************************
		; MUST BE IN SAME BANK AS "PALETTE.S"
		LIB		SOURCE\GAME\FIGHTSCENE\FIGHTSCENE_PALFX.S
		LIB		SOURCE\GAME\INVENTORY\INVENTORY_07.S

;********************************
	END
;********************************