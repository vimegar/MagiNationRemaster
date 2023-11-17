;********************************
; SOUND_MAC.S
;********************************
;	Author:	Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
SOUND_INIT		MACRO
	XCALL				?SOUND_INIT
	ENDM

;********************************
SOUND_START_SONG	MACRO	song
	PUSH	DE
	LD		A,song
	LD		E,A
	LD		A,(CURRENT_SONG)
	CP		E
	DB		$28,$09		;JR		Z,_END
	LD		A,E
	LD		(CURRENT_SONG),A
	LD		A,$01
	LD		(START_SONG),A
;_END	
	; BY DEFAULT TROUNCE ANY PREVIOUS COMMANDS
	; FOR VOLUME CONTROL THIS FORCES ALL FADES PREVIOUS TO THIS
	; CALL TO BE IGNORED
	XOR		A
	LD		(VOLUME_SET_FLAG),A
	LD		A,$0F
	LD		(VOLUME_SONG),A	
	POP		DE
	ENDM

;********************************
SOUND_START_OVERTURE	MACRO	
	LD		A,(CURRENT_SFX_SONG_STATUS)
	AND		A
	JR		NZ,_SKIP		
	LD		A,$09
	LD		(CURRENT_SFX_SONG_STATUS),A
	
_SKIP	
	ENDM
	

;********************************
SOUND_START_SFX_SONG	MACRO	song
	LD		A,(CURRENT_SFX_SONG_STATUS)
	AND		A
	DB		$20,$0A		;	JR		NZ,_SKIP		
	LD		A,$02
	LD		(CURRENT_SFX_SONG_STATUS),A
	LD		A,song
	LD		(CURRENT_SFX_SONG),A
;_SKIP	
	ENDM
	
;********************************
SOUND_STOP_SONG	MACRO	song
	LD		A,$01
	LD		(STOP_SONG),A
	ENDM

;********************************
SOUND_PAUSE_SONG	MACRO	
	LD		A,$02
	LD		(STOP_SONG),A
	ENDM
;********************************
SOUND_RESUME_SONG	MACRO	
	LD		A,$04
	LD		(STOP_SONG),A
	ENDM

;********************************
SOUND_START_SFX		MACRO	sfx
	LD		A,sfx
	LD		(CURRENT_SFX00),A
	ENDM
	
SOUND_START_SFX2	MACRO	sfx
	LD		A,sfx
	LD		(CURRENT_SFX01),A
	ENDM
		
;********************************
SOUND_VBLANK	MACRO

	SWITCH_ROM_BANK	MUSYX_ROM_BANK
	SWITCH_RAM_BANK	WRAM_MUSYX

	LDA_FF		VBLANK_CONTROL
	BIT			$02,A
	JR			Z,_SKIP_SOUND

	GET16		H,L,SOUND_VB_FUNC
	CALL_HL

_SKIP_SOUND
	XCALL		snd_Handle

	ENDM

;********************************
PAUSE_SONG	MACRO
	XCALL	snd_PauseSong
	
	LD		C,MUSIC_STATE_SIZE	
	LD		HL,MUSIC_STATE_BUFFER
	XCALL	snd_SaveState
	ENDM

;********************************
RESUME_SONG MACRO 
	;XCALL	snd_GetStateSize
	;LD		C,A

	LD		C,MUSIC_STATE_SIZE	
	LD		HL,MUSIC_STATE_BUFFER
	XCALL	snd_RestoreState	
	XCALL	snd_ResumeSong	
	ENDM

FADEOUT_SONG	MACRO	number_frames
	LD		A,number_frames
	SWAP	A   ;div by 16
	AND		$0F
	INC		A		
	LD		(FADER_SONG_DELTA),A
	XOR		A
	LD		(FADER_SONG_COUNT),A
	LD		A,$01
	LD		(VOLUME_SET_FLAG),A
	ENDM

FADEIN_SONG		MACRO	number_frames
	LD		A,number_frames
	SWAP	A   ;div by 16
	AND		$0F
	LD		(FADER_SONG_DELTA),A
	XOR		A
	LD		(FADER_SONG_COUNT),A
	LD		(VOLUME_SONG),A
	LD		A,$02
	LD		(VOLUME_SET_FLAG),A
	ENDM	

;********************************
SOUND_SET_SONG_VOL	MACRO	volume ;0..15
	LD		A,volume
	LD		(VOLUME_SONG),A
	XOR		A
	LD		(FADER_SONG_COUNT),A
	LD		(FADER_SONG_DELTA),A
	LD		A,$04
	LD		(VOLUME_SET_FLAG),A
	ENDM
	
;********************************
	END
;********************************
