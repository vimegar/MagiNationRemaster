;********************************
; BANK00.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; INTERRUPT VECTORS
;********************************
BANK00	GROUP	$00		; Specify bank group.
?ZERO
	
		ORG		$00			; Reset
		JP		?SOFT_RESET

		ORG		$40			; VBlank
		JP		?DO_VBLANK

		ORG		$48			; LCDC Status (HBlank)
		JP		?DO_HBLANK

		ORG		$50			; Timer
		JP		?DO_TIMER

		ORG		$58			; Serial I/O
		RETI

		ORG		$60			; Key Input
		RETI

;********************************
; REGISTRY
;********************************
		ORG		$100
		LIB		SOURCE\MAIN\REGISTRY.S

;********************************
; MAIN
;********************************
		ORG		$150
		LIB		SOURCE\MAIN\BOOT.S
		LIB		SOURCE\MAIN\GAMELOOP.S

;********************************
; SYSTEM
;********************************
		LIB		SOURCE\ENGINE\ACTOR\ACTOR_00.S
		LIB		SOURCE\ENGINE\SYSTEM\SYSTEM.S
		LIB		SOURCE\ENGINE\DECOMPRESS\DECOMPRESS.S
		LIB		SOURCE\ENGINE\HOTSPOT\HOTSPOT_00.S
		LIB		SOURCE\ENGINE\SCRIPT\SCRIPT_00.S
		LIB		SOURCE\ENGINE\INTERRUPT\INTERRUPT.S
		LIB		SOURCE\ENGINE\TEXT\TEXT.S
		LIB		SOURCE\ENGINE\TRIGGER\TRIGGER_00.S
		LIB		SOURCE\ENGINE\UNPACK\UNPACK.S

;********************************
; GAME
;********************************
		LIB		SOURCE\GAME\CARDSCENE\CARDSCENE_00.S
		LIB		SOURCE\GAME\FIGHTS~1\FIGHTSCENE_00.S
		LIB		SOURCE\GAME\TITLE\TITLE_00.S
		LIB		SOURCE\GAME\BATTLE\BATTLE_00.S

;********************************
	END
;********************************