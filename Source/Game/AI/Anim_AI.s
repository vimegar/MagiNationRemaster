;********************************
; ANIM_AI.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000 Interactive Imagination
;	All rights reserved

;********************************
;	BC:		Ptr to gob
?ANIM_AI
	ACTOR_OPEN
	
	SCRIPT_OPEN
	SCRIPT_PLAY
	SCRIPT_CLOSE
	
	SCRIPT_OPEN
	SCRIPT_PLAY
	SCRIPT_CLOSE

	CALL			?BLOCKER_AI_CLEAN_TILE
	
	COLL_FREEMOVE

	ACTOR_CLOSE

	RET

;********************************
	END
;********************************