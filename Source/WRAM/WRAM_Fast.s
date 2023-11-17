;********************************
; WRAM_FAST.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
WRAMFAST	GROUP	$00
		ORG		$FF8A

		LIB		SOURCE\ENGINE\ACTOR\ACTOR_VAR_FAST.S
		LIB		SOURCE\ENGINE\INTERRUPT\INTERRUPT_VAR_FAST.S
		LIB		SOURCE\ENGINE\SCRIPT\SCRIPT_VAR_FAST.S
		LIB		SOURCE\ENGINE\SYSTEM\SYSTEM_VAR_FAST.S

		LIB		SOURCE\GAME\AI\AI_VAR_FAST.S

;********************************
	END
;********************************