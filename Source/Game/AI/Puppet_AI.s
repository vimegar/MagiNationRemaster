;********************************
; PUPPET_AI.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000 Interactive Imagination
;	All rights reserved

;********************************
;	BC:		Ptr to gob
?PUPPET_AI
	ACTOR_OPEN
	
	XOR		A
	LD		(ACTOR_NEWSTATE+$01),A
	
	SCRIPT_OPEN
	SCRIPT_PLAY
	SCRIPT_CLOSE
	
	SCRIPT_OPEN
	SCRIPT_PLAY
	SCRIPT_CLOSE
	
	COLL_FREEMOVE

	LD		A,(ACTOR_NEWSTATE+$01)
	AND		A
	JR		Z,_RETURN

	LDFF_A	ACTOR_STATE+$01
	
	LD		A,(ACTOR_NEWSTATE)
	LDFF_A	ACTOR_STATE

_RETURN
	ACTOR_CLOSE
	RET

;********************************
	END
;********************************