;********************************
; AI_VAR.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000 Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\GAME\AI\HERO\HERO_VAR.S

;********************************
AI_CNT1				DS	$01		; Controller 1 mask
AI_CNTDOWN			DS	$01		; Controller 1 press event
AI_CNTUP			DS	$01		; Controller 1 release event

;********************************
HERO_ABILITY		DS	$01		; (0:None)(1:Boxxle)(2:Dig)(3:Long Jump)(4:Swim)(5:Fly)

;********************************
AI_BOX_SOURCE		DS	$02
AI_BOX_XDEST		DS	$01
AI_BOX_YDEST		DS	$01
AI_BOX_DEST			DS	$02

;********************************
	END
;********************************