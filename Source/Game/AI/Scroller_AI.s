;********************************
; ANIM_AI.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000 Interactive Imagination
;	All rights reserved

;********************************
;	BC:		Ptr to gob
?SCROLLER_AI
	CALL	?ANIM_AI
	CALL	?CAMERA_UPDATE
	RET

;********************************
	END
;********************************