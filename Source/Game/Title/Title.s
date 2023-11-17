;********************************
; TITLE.S
;********************************
;	Author:	Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
?TITLE_OPEN
	;--------------------------------
	XOR			A
	LD			(FIGHTSCN_SCX),A
	LD			(FIGHTSCN_BORDX0),A
	LD			(FIGHTSCN_BORDX1),A
	; note: SPEED of Parallax IS INIT'D BY LOAD_ARENA
	MOVADDR		VBLANK_HANDLER_FUNC,?VBLANK_HANDLER_TITLESCENE
	RET

;********************************
?TITLE_CLOSE
	;--------------------------------
	XOR			A
	LD			(FIGHTSCN_OPTIONS),A
	MOVADDR		VBLANK_HANDLER_FUNC,?VBLANK_HANDLER_STD
	MOVADDR		HFUNC,?HFUNC_IDLE
	RET

	
;********************************
	END
;********************************