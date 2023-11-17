;********************************
; RAINDROP_AI.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000 Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\GAME\AI\RAINDROP\RAINDROP_TABLE.S

;********************************
;	BC:		Ptr to gob
?RAINDROP_AI
	ACTOR_OPEN

	SCRIPT_OPEN
	SCRIPT_PLAY
	SCRIPT_CLOSE

	COLL_FREEMOVE

	ACTOR_CLOSE
	RET

;********************************
	END
;********************************
