;********************************
; ZOMBIE_AI.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000 Interactive Imagination
;	All rights reserved

;********************************
;	BC:		Ptr to gob
?ZOMBIE_AI
	ACTOR_OPEN
	
	SCRIPT_OPEN
	SCRIPT_PLAY
	SCRIPT_CLOSE
	
	SCRIPT_OPEN
	SCRIPT_PLAY
	SCRIPT_CLOSE

	COLL_DETECT
	CHECK_HOTSPOT

	LD			HL,AI_HEROFLAGS_NEXT
	SET			HEROFLAGS_ACTIVE,(HL)

	ACTOR_CLOSE

	RET

;********************************
	END
;********************************