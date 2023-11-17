;********************************
; ONTOP_AI.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000 Interactive Imagination
;	All rights reserved

;********************************
;	BC:		Ptr to gob
?ONTOP_AI
	CALL			?ANIM_AI
	LD				A,$C8
	LDFF_A			ACTOR_SCREEN_Y
	RET

;********************************
	END
;********************************