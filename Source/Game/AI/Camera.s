;********************************
; CAMERA.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?CAMERA_UPDATE

	LD		A,(COLL_XMOVE)
	LD		E,A

	BIT		$07,A
	LDA_FF	ACTOR_SCREEN_X
	JR		Z,_XPOS

	SUB		CAMERA_LEFT
	BIT		$07,A
	JR		NZ,_XTILEMAP
	JR		_XDONE

_XPOS
	SUB		CAMERA_RIGHT
	BIT		$07,A
	JR		NZ,_XDONE

_XTILEMAP
	LD		A,(TILEMAP_XDELTA)
	ADD		A,E
	LD		(TILEMAP_XDELTA),A

_XDONE
	LD		A,(COLL_YMOVE)
	LD		E,A

	BIT		$07,A
	LDA_FF	ACTOR_SCREEN_Y
	JR		Z,_YPOS

	SUB		CAMERA_TOP
	BIT		$07,A
	JR		NZ,_YTILEMAP
	RET

_YPOS
	SUB		CAMERA_BOTTOM
	BIT		$07,A
	RET		NZ

_YTILEMAP
	LD		A,(TILEMAP_YDELTA)
	ADD		A,E
	LD		(TILEMAP_YDELTA),A

	RET

;********************************
	END
;********************************