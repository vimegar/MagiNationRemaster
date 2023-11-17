;********************************
; SCRIPT_00_AUDIO.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?CMD_SFX
	LD		A,(BC)
	INC		BC
	LD		(CURRENT_SFX00),A
	JP		?SCRIPT_PLAY_NEXT
	
;********************************
?CMD_SFX2
	LD		A,(BC)
	INC		BC
	LD		(CURRENT_SFX01),A
	JP		?SCRIPT_PLAY_NEXT
	
;********************************
?CMD_SONGPAUSE
	LD		A,$02
	LD		(STOP_SONG),A
	JP		?SCRIPT_PLAY_NEXT

;********************************
?CMD_SONGRESUME
	LD		A,$04
	LD		(STOP_SONG),A
	JP		?SCRIPT_PLAY_NEXT

;********************************
?CMD_SONGSTART
	LD		A,(BC)				; Load a with the command's param
	INC		BC					; Get the next param
	SOUND_START_SONG	A	
	JP		?SCRIPT_PLAY_NEXT	; Go to the next script command

;********************************
?CMD_FADEOUTSONG
	LD		A,(BC)
	INC		BC
	;scripter specifies framecount (0..255)
	;i convert it into a delta of 1..16; example 60frames = 4 frames_delta (every 4 frames i decrement 1)
	SWAP	A   ;div by 16
	AND		$0F
	INC		A	
	LD		(FADER_SONG_DELTA),A
	XOR		A
	LD		(FADER_SONG_COUNT),A
	LD		A,$01
	LD		(VOLUME_SET_FLAG),A
	;LD		A,$0F
	;LD		(VOLUME_SONG),A
	JP		?SCRIPT_PLAY_NEXT
;********************************
?CMD_FADEINSONG
	LD		A,(BC)
	INC		BC
	SWAP	A   ;div by 16
	AND		$0F
	INC		A	
	LD		(FADER_SONG_DELTA),A
	XOR		A
	LD		(FADER_SONG_COUNT),A
	LD		(VOLUME_SONG),A
	LD		A,$02
	LD		(VOLUME_SET_FLAG),A
	JP		?SCRIPT_PLAY_NEXT
;********************************
?CMD_SETSONGVOLUME
	LD		A,(BC)
	INC		BC
	AND		$0F
	LD		(VOLUME_SONG),A
	XOR		A
	LD		(FADER_SONG_COUNT),A
	LD		(FADER_SONG_DELTA),A
	LD		A,$04
	LD		(VOLUME_SET_FLAG),A
	JP		?SCRIPT_PLAY_NEXT
				
;********************************
; if "CMD_FANFARESTART" is called while a fanfare is already going
; it ignores the call and advances the pointer
?CMD_FANFARESTART
	LD		A,(BC)
	INC		BC
	LD		E,A
	SOUND_START_SFX_SONG	E
	JP		?SCRIPT_PLAY_NEXT	; Go to the next script command

;********************************
?CMD_SONGSTOP
	LD		A,$01
	LD		(STOP_SONG),A
	JP		?SCRIPT_PLAY_NEXT

;********************************
	END
;********************************