;********************************
; UNPACK_MAP.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; BC:	File base address
?UNPACK_MAP

	SCRIPT_UNPACK	?UNPACK_PALETTE_BG
	SCRIPT_UNPACK	?UNPACK_VRAM
	SCRIPT_UNPACK	?UNPACK_PATTERN
	SCRIPT_UNPACK	?UNPACK_TILEMAP
	SCRIPT_UNPACK	?UNPACK_COLL

	RET

;********************************
	END
;********************************
