;********************************
; ACTOR_VAR_FAST.S
;********************************
;	Author: Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
ACTOR_CURRENT		DS		$02

;********************************
ACTOR_BASE
ACTOR_FLAGS			DS		$01
ACTOR_STATE			DS		$02
ACTOR_XOFF			DS		$01
ACTOR_YOFF			DS		$01
ACTOR_XTILE			DS		$01
ACTOR_YTILE			DS		$01
ACTOR_TILE			DS		$02
ACTOR_VRAM			DS		$01

;********************************
ACTOR_SCREEN_X		DS		$01
ACTOR_SCREEN_Y		DS		$01
ACTOR_SCREEN_YPREV	DS		$01

;********************************
	END
;********************************