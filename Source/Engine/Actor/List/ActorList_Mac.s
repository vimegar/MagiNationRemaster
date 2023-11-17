;********************************
; ACTORLIST_MAC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
ACTORLIST_ADD_ACTOR	MACRO	gob
		LD		BC,gob
		CALL	?ACTORLIST_ADD_ACTOR
		ENDM

;********************************
;	HL:		Slot to release
ACTORLIST_RELEASE_ACTOR	MACRO
		CALL		?ACTORLIST_RELEASE_ACTOR
		ENDM

;********************************
;	HL:		List to run
ACTORLIST_RUN	MACRO
		XCALL	?ACTORLIST_RUN
		ENDM

;********************************
	END
;********************************