;********************************
; SYSTEM_VAR.S
;********************************
;	Author:	Patrick Meehan, Dylan 'Cheese Log' Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\ENGINE\SYSTEM\BATTERY\BATTERY_VAR.S
	LIB		SOURCE\ENGINE\SYSTEM\GRAPHICS\GRAPHICS_VAR.S
	LIB		SOURCE\ENGINE\SYSTEM\SOUND\SOUND_VAR.S

;********************************
CNT1		DS	$01		; Controller 1 mask
CNTDOWN		DS	$01		; Controller 1 press event
CNTUP		DS	$01		; Controller 1 release event
SCYW		DS	$01		; WORK for scroll register Y
SCXW		DS	$01		; WORK for scroll register X

;********************************
SCREEN_VISIBLE			DS	$01

;********************************
RAM_BANK				DS	$01
ROM_BANK				DS	$01

;********************************
	END
;********************************
