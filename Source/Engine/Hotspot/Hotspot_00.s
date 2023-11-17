;********************************
; HOTSPOT.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?HOTSPOT_GET_TYPE
	SWITCH_ROM_BANK		HOTSPOT_BANK
	LD					A,(HLI)
	LD					E,A
	SWITCH_ROM_BANK		AI_BANK
	LD					A,E
	RET

;********************************
?HOTSPOT_SET_SCRIPT
	SWITCH_ROM_BANK		HOTSPOT_BANK
	LD					A,(HLI)
	LD					(SYSTEM_SCRIPT_BANK),A
	LD					A,(HLI)
	LD					(SYSTEM_SCRIPT_FRAME),A
	LD					A,(HLI)
	LD					(SYSTEM_SCRIPT_FRAME+1),A
	SWITCH_ROM_BANK		AI_BANK
	RET

;********************************
	END
;********************************