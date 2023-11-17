;********************************
; TITLE_AI.S
;********************************
;	Author:	Patrick Meehan,eMG
;	(c)2000 Interactive Imagination
;	All rights reserved

;********************************

;********************************
;	BC:		Ptr to gob
?TITLE_AI
	ACTOR_OPEN
	CALL_FOREIGN	?TITLE_OPEN			
	MOVADDR_FF		ACTOR_STATE,?TITLE_AI_IDLE
	ACTOR_CLOSE
	RET

;********************************
?TITLE_AI_IDLE
	ACTOR_OPEN
	ACTOR_CLOSE
	RET
	
		
;********************************
	END
;********************************
