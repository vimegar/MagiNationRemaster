;********************************
; WRAM_SYSTEM.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
WRAMSYSTEM	GROUP	$00
		ORG		$C000

;********************************
; 256-BYTE BOUNDARY ALIGNED VARIABLES
;********************************
		LIB		SOURCE\ENGINE\SYSTEM\GRAPHICS\FRAME\FRAME_VAR_256.S			; $0100 bytes
		LIB		SOURCE\ENGINE\SYSTEM\GRAPHICS\TILEMAP\TILEMAP_VAR_256.S		; $002E bytes
		LIB		SOURCE\ENGINE\COLLISION\COLL_VAR_256.S

;********************************
; SYSTEM VARIABLES
;********************************
		LIB		SOURCE\ENGINE\ACTOR\ACTOR_VAR.S
		LIB		SOURCE\ENGINE\COLLISION\COLL_VAR.S
		LIB		SOURCE\ENGINE\ENCOUNTER\ENCOUNTER_VAR.S
		LIB		SOURCE\ENGINE\HOTSPOT\HOTSPOT_VAR.S
		LIB		SOURCE\ENGINE\INTERRUPT\INTERRUPT_VAR.S
		LIB		SOURCE\ENGINE\SCRIPT\SCRIPT_VAR.S
		LIB		SOURCE\ENGINE\SYSTEM\SYSTEM_VAR.S
		LIB		SOURCE\ENGINE\TEXT\TEXT_VAR.S
		LIB		SOURCE\ENGINE\TRIGGER\TRIGGER_VAR.S

;********************************
; GAME VARIABLES
;********************************
		LIB		SOURCE\GAME\AI\AI_VAR.S
		LIB		SOURCE\GAME\CARDSCENE\CARDSCENE_VAR.S
		LIB		SOURCE\GAME\FIGHTSCENE\FIGHTSCENE_VAR.S
		LIB		SOURCE\GAME\INVENTORY\INVENTORY_VAR.S
		LIB		SOURCE\GAME\MENU\MENU_VAR.S

;********************************
; PADDING FOR THE STACK
;********************************
STACK	DS		$100
STACK_TOP

;********************************
	END
;********************************