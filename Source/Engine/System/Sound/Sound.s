;********************************
; SOUND.S
;********************************
;	Author:	Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; GLOBALS
	GLOBAL		snd_GetStateSize
	GLOBAL		snd_Handle
	GLOBAL		snd_Init
	GLOBAL		snd_PauseSong
	GLOBAL		snd_RestoreState
	GLOBAL		snd_ResumeSong
	GLOBAL		snd_SaveState
	GLOBAL		snd_SetMasterVolume
	GLOBAL		snd_SetSFXVolume
	GLOBAL		snd_SetSongVolume
	GLOBAL		snd_SongActive
	GLOBAL		snd_StartSFX
	GLOBAL		snd_StartSong
	GLOBAL		snd_StopSong
	GLOBAL		snd_CheckFlag

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
?SOUND_INIT
	LD		A,WRAM_MUSYX
	LD		(SVBK),A

	XOR		A
	LD		(START_SONG),A
	LD		(SOUNDTEST_SONG),A
	LD		(SOUNDTEST_SFX),A
	LD		(STOP_SONG),A
	LD		(CURRENT_SFX_SONG),A
	LD		(CURRENT_SFX_SONG_STATUS),A
	LD		(VOLUME_SET_FLAG),A
	LD		(SOUND_INIT),A
	
	LD		A,$FF
	LD		(CURRENT_SFX00),A
	LD		(CURRENT_SFX01),A
	LD		(CURRENT_SONG),A
	
	LD					A,%10000001
	CALL_FOREIGN		snd_Init
	
	LD		A,$55
	LD		(SOUND_INIT),A
	MOVADDR				SOUND_VB_FUNC,?SOUND_VB_INIT
	RET

;********************************
?SOUND_DETERMINE_SFUNC
	
_CHECK_STOP_SONG
	;Determine if we need to Stop/Pause/Resume a Song
	LD		A,(STOP_SONG)
	AND		A
	JR		Z,_CHECK_START_SONG
	
	; Determine if we need to Stop Song
	LD		A,(STOP_SONG)
	AND		$02
	JR		Z,_CHECK_PAUSE_SONG
	XOR		A
	LD		(STOP_SONG),A
	LD		A,$FF
	LD		(CURRENT_SONG),A
	MOVADDR	SOUND_VB_FUNC,?SOUND_VB_STOP_SONG
	RET

_CHECK_PAUSE_SONG
	; Determine if we need to Pause Song
	LD		A,(STOP_SONG)
	AND		$02
	JR		Z,_CHECK_RESUME_SONG
	XOR		A
	LD		(STOP_SONG),A
	MOVADDR	SOUND_VB_FUNC,?SOUND_VB_PAUSE_SONG
	RET

_CHECK_RESUME_SONG
	; Determine if we need to Resume Song
	LD		A,(STOP_SONG)
	AND		$04
	JR		Z,_INVALID_STOP_SONG
	XOR		A
	LD		(STOP_SONG),A
	MOVADDR	SOUND_VB_FUNC,?SOUND_VB_RESUME_SONG
	RET

_INVALID_STOP_SONG
	XOR		A
	LD		(STOP_SONG),A
	MOVADDR	SOUND_VB_FUNC,?SOUND_VB_STOP_SONG
	RET

_CHECK_START_SONG	
	LD		A,(START_SONG)
	AND		A
	JR		Z,_CHECK_START_SFX_00

_SKIP_SET_VOLUME	
	MOVADDR	SOUND_VB_FUNC,?SOUND_VB_PLAY_SONG
	RET
	
_CHECK_START_SFX_00
	LD		A,(CURRENT_SFX00)
	CP		$FF
	JR		Z,_CHECK_START_SFX01
	
	MOVADDR	SOUND_VB_FUNC,?SOUND_VB_PLAY_SFX00
	RET	

_CHECK_START_SFX01
	LD		A,(CURRENT_SFX01)
	CP		$FF
	JR		Z,_CHECK_START_SFX_SONG
	
	MOVADDR	SOUND_VB_FUNC,?SOUND_VB_PLAY_SFX01
	RET

; this must be the last thing in the list to do cause it polls...
; otherwise no other sound functions would work until Song Status Resumed 
	
_CHECK_START_SFX_SONG
	LD		A,(CURRENT_SFX_SONG_STATUS)
	AND     A
	JR		Z, _CHECK_FADEOUT_SONG
	
	;check if we are doing the overture_special_set
	;CP		$07
	;JR		NC,_CHECK_OVERTURE			;GREATER THAN 7
	
	; Check if we need to Pause+Start
	BIT		1,A								; check if its 2
	JR		Z,_CHECK_SFX_SONG_IF_DONE		
	DEC      A   							; make status one
	LD		(CURRENT_SFX_SONG_STATUS),A
	MOVADDR	SOUND_VB_FUNC,?SOUND_VB_START_SFX_SONG
	RET
	
_CHECK_SFX_SONG_IF_DONE
	; BEFORE polling if song is done -- 
	; we need to check volume settings first!
	LD		A,(VOLUME_SET_FLAG)
	AND		A
	JR		NZ,_CHECK_FADEOUT_SONG
	MOVADDR	SOUND_VB_FUNC,?SOUND_VB_CHECK_SFX_SONG_IF_DONE
	RET

_CHECK_OVERTURE
	;LD		A,(VOLUME_SET_FLAG)
	;AND		A
	;JR		NZ,_CHECK_FADEOUT_SONG
	;MOVADDR	SOUND_VB_FUNC,?SOUND_VB_DO_OVERTURE
	;RET
	
_CHECK_FADEOUT_SONG
	LD		A,(VOLUME_SET_FLAG)
	AND		A
	JR		Z,_DO_NOTHING
	; Determine if we need to Fade Out a Song
	LD		A,(VOLUME_SET_FLAG)
	AND		$01
	JR		Z,_CHECK_FADEIN_SONG
	LD		A,$FF
	LD		(CURRENT_SONG),A
	MOVADDR	SOUND_VB_FUNC,?SOUND_VB_FADEOUT_SONG
	RET
	
_CHECK_FADEIN_SONG
	; Determine if we need to Fade In a Song
	LD		A,(VOLUME_SET_FLAG)
	AND		$02
	JR		Z,_CHECK_SETVOLUME_SONG
	MOVADDR	SOUND_VB_FUNC,?SOUND_VB_FADEIN_SONG
	RET
	
_CHECK_SETVOLUME_SONG	
	MOVADDR	SOUND_VB_FUNC,?SOUND_VB_SETVOLUME_SONG
	RET
	
_DO_NOTHING
	; end of func do nothing this Vblank
	MOVADDR	SOUND_VB_FUNC,?SOUND_VB_NOP
	RET

;********************************
?SOUND_TEST	

	; if you press (A) you start a new song
	LD		A,(CNTDOWN)
	BIT		0,A
	JP     	Z,TEST_BATTLE_START
	
	if 1
	; set soundtest to play the next song
	LD		A,(SOUNDTEST_SONG)
	INC		A
	CP		SONG_TOTAL+1
	JR      NZ,__SET_SOUNDTEST_SONG
	XOR 	A		
__SET_SOUNDTEST_SONG	
	LD		(SOUNDTEST_SONG),A	
	
	; set the current song to whatever is in soundtest
	SOUND_START_SONG (SOUNDTEST_SONG)
	RET

	endif
	

TEST_BATTLE_START	
	; if you press (start) you start a new battle
	LD		A,(CNTDOWN)
	BIT		3,A
	JP    	Z,_TEST_FANFARE
	
	SOUND_START_SFX	SFXID_EARTHQUAKE_END 
	RET
	
_TEST_FANFARE	
	; if you press (select) you start a new fanfare
	LD		A,(CNTDOWN)
	BIT		2,A
	JP    	Z,TEST_SFX
	
	SOUND_START_SFX	SFXID_EARTHQUAKE ;SFXID_TREASURECHEST
	
	if 0
	;******************************
	;DEBUG
	;******************************
	; set soundtest to play the PREVIOUS song
	LD		A,(SOUNDTEST_SONG)
	AND		A
	CP		0
	JR		Z,_RESET_TOTAL
	DEC		A
	CP		0
	JR      NZ,_SET_SOUNDTEST_SONG
_RESET_TOTAL	
	LD		A,SONG_TOTAL		
_SET_SOUNDTEST_SONG	
	LD		(SOUNDTEST_SONG),A	
	; set the current song to whatever is in soundtest
	SOUND_START_SONG (SOUNDTEST_SONG)
	;******************************
	endif
	RET
	
TEST_SFX

	; if you press (B) you start a new sfx
	LD		A,(CNTDOWN)
	BIT		1,A
	RET     Z
	
	SOUND_START_SFX	(SOUNDTEST_SFX)
	LD		A,(SOUNDTEST_SFX)
	INC 	A
	CP		SFX_TOTAL+1
	JR      NZ,__SET_SOUNDTEST_SFX
	XOR 	A		
__SET_SOUNDTEST_SFX
	LD		(SOUNDTEST_SFX),A	
	RET

;********************************
	END
;********************************

