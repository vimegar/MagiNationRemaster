;********************************
; SOUND.S
;********************************
;	Author:	Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
;	All Before any Snd Call 
; 	I assume the following has 
;	been done:
;	LD		A,MUSYX_ROM_BANK
;	LD		(ROMB0),A
;	LD		A,WRAM_MUSYX
;	LD		(SVBK),A
;********************************

;********************************
; (VOLUME_SONG) 0..15 SONG'S VOLUME
?SET_SONG_VOLUME	
	LD			A,(VOLUME_SONG)
	CALL		snd_SetSongVolume 
	RET

?SOUND_VB_INIT
	LD			A,$07
	CALL		snd_SetMasterVolume

	LD			A,$0F
	LD			(VOLUME_SONG),A
	CALL		snd_SetSongVolume
	
	LD			A,$0F
	LD			(VOLUME_SFX),A
	CALL		snd_SetSFXVolume
	
	; TEST TO SEE BUFFERSIZE
	;CALL 		snd_GetStateSize
	RET

;********************************
?SOUND_VB_NOP
	RET
	
;********************************
?SOUND_VB_PLAY_SONG
	XOR		A
	LD		(START_SONG),A
	LD		(CURRENT_SFX_SONG_STATUS),A
	
	;Stop Currently Playing Song
	CALL	snd_StopSong  	
	;Start the new Current Song    
	LD		A,(CURRENT_SONG)
	CALL	snd_StartSong	
	;Update the MUSYX
	CALL	?SET_SONG_VOLUME
	RET

;********************************
?SOUND_VB_FADEOUT_SONG
	LD			A,(FADER_SONG_DELTA)
	LD			E,A
	LD			A,(FADER_SONG_COUNT)
	INC			A
	LD			(FADER_SONG_COUNT),A
	CP			E
	JP			NZ,_UPDATE_VOL
	XOR			A
	LD			(FADER_SONG_COUNT),A
	
	LD			A,(VOLUME_SONG)
	AND			A
	JP			Z,_FADE_DONE
	DEC			A
	JP			Z,_FADE_DONE
_NOT_DONE	
	LD			(VOLUME_SONG),A
_UPDATE_VOL	
	CALL		?SET_SONG_VOLUME
	RET
_FADE_DONE
	LD			A,$FF
	LD			(CURRENT_SONG),A
	XOR			A
	LD			(VOLUME_SONG),A
	LD			(VOLUME_SET_FLAG),A
	LD			A,1
	LD			(FADER_SONG_DELTA),A
	CALL		?SET_SONG_VOLUME
	;Stop Currently Playing Song
	CALL		snd_StopSong
	RET
	
;********************************
?SOUND_VB_FADEIN_SONG
	LD			A,(FADER_SONG_DELTA)
	LD			E,A
	LD			A,(FADER_SONG_COUNT)
	INC			A
	LD			(FADER_SONG_COUNT),A
	CP			E
	JP			NZ,_UPDATE_VOL
	XOR			A
	LD			(FADER_SONG_COUNT),A
	
	LD			A,(VOLUME_SONG)
	INC			A
	CP			15
	JP			Z,_FADE_DONE
_NOT_DONE	
	LD			(VOLUME_SONG),A
_UPDATE_VOL	
	CALL		?SET_SONG_VOLUME
	RET
_FADE_DONE
	LD			(VOLUME_SONG),A
	XOR			A
	LD			(VOLUME_SET_FLAG),A
	LD			A,1
	LD			(FADER_SONG_DELTA),A
	CALL		?SET_SONG_VOLUME
	RET
	
;********************************
;	input:
;   (VOLUME_SONG)  : 0..15 volume setting
?SOUND_VB_SETVOLUME_SONG
	CALL		?SET_SONG_VOLUME
	XOR			A
	LD			(VOLUME_SET_FLAG),A	  ;CLEAR THE FLAG - ALWAYS 1 ITERATION
	RET
			
;********************************
?SOUND_VB_STOP_SONG
	LD			A,$FF
	LD			(CURRENT_SONG),A
	CALL		snd_StopSong 
	RET
	
;********************************
?SOUND_VB_PAUSE_SONG
	CALL		snd_PauseSong 
	RET

;********************************
?SOUND_VB_RESUME_SONG
	CALL		snd_ResumeSong 
	RET

;********************************
?SOUND_VB_PLAY_SFX00
	LD		A,(CURRENT_SFX00)
	LD		B,15
	LD		C,1
	CALL   snd_StartSFX
	
	LD		A,$FF
	LD		(CURRENT_SFX00),A     ; Reset Flag
	RET


;********************************
?SOUND_VB_PLAY_SFX01	
	LD		A,(CURRENT_SFX01)
	LD		B,15
	LD		C,1
	CALL   snd_StartSFX
	
	LD		A,$FF
	LD		(CURRENT_SFX01),A     ; Reset Flag
	RET
;********************************
?SOUND_VB_START_SFX_SONG
	PAUSE_SONG
	LD		A,(CURRENT_SFX_SONG)
	CALL	snd_StartSong
	RET
	

;********************************
?SOUND_VB_CHECK_SFX_SONG_IF_DONE
	CALL	snd_SongActive
	JR		NZ,_STILL_PLAYING_SFX_SONG
	LD		(CURRENT_SFX_SONG_STATUS),A			; Reset song status
	RESUME_SONG		
_STILL_PLAYING_SFX_SONG		
	RET
	
	if 0
;********************************
?SOUND_VB_DO_OVERTURE
	LD		A,(CURRENT_SFX_SONG_STATUS)
	CP		9
	JR		NZ,_POLLING
	DEC		A
	LD		(CURRENT_SFX_SONG_STATUS),A
	
	CALL    snd_StopSong
	XOR		A
	LD		(START_SONG),A
	LD		A,SONGID_overture1
	LD		(CURRENT_SONG),A
	CALL	snd_StartSong	
	LD      A,$0F
    LD      (VOLUME_SONG),A
    CALL    snd_SetSongVolume
	RET
	
_POLLING	
	CALL	snd_SongActive
	RET    	NZ								;Still Playing Song ..Leave
	LD		A,(CURRENT_SONG)
	CP		SONGID_overture1
	JR		NZ,_PO_P2
_PO_P1	
	CALL    snd_StopSong 
	XOR		A
	LD		(START_SONG),A
			;Start the new Song    
	LD		A,SONGID_overture2
	LD		(CURRENT_SONG),A
	CALL	snd_StartSong	
	RET
_PO_P2	
	CP		SONGID_overture3
	JR		NZ,_PO_DONE
	
	CALL    snd_StopSong 
	XOR		A
	LD		(START_SONG),A
			;Start the new Song    
	LD		A,SONGID_overture3
	LD		(CURRENT_SONG),A
	CALL	snd_StartSong	
	RET
	
_PO_DONE	
	XOR 	A
	LD		(CURRENT_SFX_SONG_STATUS),A
	RET

;********************************
?SOUND_VBLANK
	LD		A,MUSYX_ROM_BANK
	LD		(ROMB0),A
	LD		A,WRAM_MUSYX
	LD		(SVBK),A
	GET16	H,L,SOUND_VB_FUNC
	JP		(HL)
	endif
	
	
;********************************
	END
;********************************

