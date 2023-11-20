;********************************
; ROM_SOURCE.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	ISDMG
	ERRTAG			; Required for outputting the error file
	CAPSOFF			; Distinguish uppercase from lowercase
	PUBALL			; Specify public.

;********************************
	LIB		SOURCE\ENGINE\INCLUDES\MACRO.S	; Include the macros first
	
;********************************
	LIB		SOURCE\ROM\BANK00.S
	LIB		SOURCE\ROM\BANK01.S
	LIB		SOURCE\ROM\BANK02.S
	LIB		SOURCE\ROM\BANK03.S
	LIB		SOURCE\ROM\BANK04.S
	LIB		SOURCE\ROM\BANK05.S
	LIB		SOURCE\ROM\BANK06.S
	LIB		SOURCE\ROM\BANK07.S

;********************************
	LIB		SOURCE\XRAM\XRAM_CREATURES.S
	LIB		SOURCE\XRAM\XRAM_GAMESTATE.S

;********************************
	LIB		SOURCE\WRAM\WRAM_BATTLE.S
	LIB		SOURCE\WRAM\WRAM_FAST.S
	LIB		SOURCE\WRAM\WRAM_SYSTEM.S
	LIB		ROM\INCLUDES\SCRIPT_EQU.S

;********************************
	LIB		SOURCE\ENGINE\INCLUDES\EQUATE.S

;********************************
	END
;********************************