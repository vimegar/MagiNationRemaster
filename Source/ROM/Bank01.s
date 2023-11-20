;********************************
; BANK01.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
BANK01	GROUP	$01			; Specify bank group.
		ORG		$4000

;********************************
; SYSTEM
;********************************
		LIB		SOURCE\ENGINE\ACTOR\ACTOR.S
		LIB		SOURCE\ENGINE\ENCOUNTER\ENCOUNTER.S
		LIB		SOURCE\ENGINE\HOTSPOT\HOTSPOT.S
		LIB		SOURCE\ENGINE\SCRIPT\SCRIPT_XX.S
		LIB		SOURCE\ENGINE\TRIGGER\TRIGGER.S

;********************************
; GAME
;********************************
		LIB		SOURCE\GAME\AI\AI.S
		
;********************************
	END
;********************************