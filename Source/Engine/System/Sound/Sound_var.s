;********************************
; SOUND_VAR.S
;********************************
;	Author:	Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved

	
;********************************
MUSIC_STATE_BUFFER		DS	$52
SOUND_VB_FUNC			DS	$02		; 	VBLANK FUNCTION PTR

;********************************
SOUND_INIT				DS  $01     ; $55 MEANS DID IT
START_SONG				DS	$01
STOP_SONG				DS	$01		;1 = STOP, 2 = PAUSE, 4 = RESUME

CURRENT_SONG			DS  $01
CURRENT_SFX00			DS	$01		;CH1	SFX
CURRENT_SFX01			DS	$01		;CH4	SFX
SAVED_SONG				DS	$01
	

CURRENT_SFX_SONG_STATUS	DS  $01 	;2 = PAUSE AND START, 1 = CHECK IF DONE AND RESUME, 0 = DO NOTHING
CURRENT_SFX_SONG		DS  $01  

SOUNDTEST_SONG			DS 	$01
SOUNDTEST_SFX			DS 	$01

FADER_SONG_COUNT		DS	$01
FADER_SONG_DELTA		DS	$01
VOLUME_SET_FLAG			DS	$01	    ;1 = FADEOUT, 2 = FADEIN, 4 = SETVOLUME
VOLUME_SFX				DS	$01
VOLUME_SONG				DS	$01


;********************************
X1						DS	$01
X10						DS	$01
X100					DS	$01
PERCENT_COUNT			DS	$01

;********************************
; "debug" VARS
	if 0
TARGET_TYPE				DS	$01
TARGET_LVL				DS	$01
TARGET_EXPH				DS	$01
TARGET_EXPL				DS	$01
TARGET_ENGMAXH			DS	$01
TARGET_ENGMAXL			DS	$01
TARGET_SKILL				DS	$01
TARGET_SKILL			DS	$01
TARGET_SPEED			DS	$01
TARGET_DEF				DS	$01
TARGET_RESIST			DS	$01
TARGET_LUCK				DS	$01
	endif

;********************************
	END
;********************************