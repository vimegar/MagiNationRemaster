;********************************
; SCRIPT_00_BATTLE.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?CMD_BTLNEW

	LD					A,(HEROACTOR_XTILE)
	LD					(HERO_DOORX),A

	LD					A,(HEROACTOR_YTILE)
	LD					(HERO_DOORY),A

	SWITCH_RAM_BANK		WRAM_BATTLE

	LD					A,(BC)
	INC					BC
	LD					(ARENA_INDEX),A

	LD					A,(BC)
	INC					BC
	LD					(BTL_AI_MAGI),A
	
	CP					MAGI_RND1
	JR					Z,_RUN
	
	XOR					A
	JR					_BOTH
	
_RUN
	LD					A,1
	
_BOTH
	LD					(BTL_RUN_FLAG),A
	
	LD					A,(BC)
	INC					BC
	LD					(BTL_EXP_LVL),A

	LD					HL,MASTER_SCRIPT
	LD_HLI_BCI
	LD_HLI_BCI
	LD_HLI_BCI
	
	;Allow booty
	;--------------------------
	XOR		A
	LD		(BTL_NO_BOOTY),A	

	MOVADDR				MASTER_SCRIPT_STATE,?SCRIPT_PLAY_NEXT

	SET16_FF			B,C,SCRIPT_WFRAME
	MOVADDR_FF			SCRIPT_WSTATE,?CMD_BTLNEXTTURN
	MOVADDR_FF			SCRIPT_CURRENT,SYSTEM_SCRIPT
	SCRIPT_CLOSE

	SWITCH_ROM_BANK		CARDSCN_BANK
	JP					?CARDSCENE_OPEN

;**********************************
?CMD_BTLATTACK
	LD					A,$04
	CALL				?SCRIPT_BTL_PARAMS
	JP					?CMD_BTLATTACK_02

;**********************************
?CMD_BTLAUTO
	MOVADDR_FF			SCRIPT_WSTATE,?CMD_BTLAUTO
	XOR					A
	LD					(BTL_SCRIPT_BUSY),A
	RET

;**********************************
?CMD_BTLCASTSPELL
	LD					A,$04
	CALL				?SCRIPT_BTL_PARAMS
	JP					?CMD_BTLCASTSPELL_02

;**********************************
?CMD_BTLEVALUATE
	;LD					A,$03
	;CALL				?SCRIPT_BTL_PARAMS
	JP					?CMD_BTLEVALUATE_02

;**********************************
?CMD_BTLFOCUS
	LD					A,$01
	CALL				?SCRIPT_BTL_PARAMS
	JP					?CMD_BTLFOCUS_02

;**********************************
?CMD_BTLNEXTTURN
	XOR					A
	LD					(BTL_SCRIPT_BUSY),A
	MOVADDR_FF			SCRIPT_WSTATE,_WAIT
	RET

_WAIT
	LD					A,(BTL_SCRIPT_BUSY)
	AND					A
	RET					Z

	JP					?SCRIPT_PLAY_NEXT

;**********************************
?CMD_BTLRINGGIVE

	LD					A,$02
	CALL				?SCRIPT_BTL_PARAMS
	JP					?CMD_BTLRINGGIVE_02

;**********************************
?CMD_BTLSUMMON
	LD					A,$04
	CALL				?SCRIPT_BTL_PARAMS
	XOR					A
	LD					(BTL_SCRIPT_BUFFER+4),A
	JP					?CMD_BTLSUMMONDELAY_02
;	JP					?CMD_BTLSUMMON_02

;**********************************
?CMD_BTLSUMMONDELAY
	LD					A,$05
	CALL				?SCRIPT_BTL_PARAMS
	JP					?CMD_BTLSUMMONDELAY_02

;**********************************
?CMD_BTLUSEITEM
	LD					A,$04
	CALL				?SCRIPT_BTL_PARAMS
	JP					?CMD_BTLUSEITEM_02

;**********************************
?CMD_SCREENWIPE

	; set func ptr 
	LD		A,(BC)
	LD		(SCREENFX_FUNC),A
	INC		BC
	LD		A,(BC)
	LD		(SCREENFX_FUNC+1),A
	INC		BC
	
	; get song id and save old song
	LD		A,(CURRENT_SONG)
	LD		(SAVED_SONG),A
	LD		A,(BC)
	INC		BC
	
	PUSH	BC
	CP		$FF
	JR		Z,_SKIP
	SOUND_START_SONG	A

_SKIP
	POP		BC

	SET16_FF	B,C,SCRIPT_WFRAME
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT

	SWITCH_ROM_BANK	:?DO_SCREENFX
	JP				?DO_SCREENFX

;********************************
?CMD_SETBTLRETURN

	SWITCH_RAM_BANK	WRAM_BATTLE

	LD				HL,BTL_WIN_SCRIPT_BANK
	
	LD_HLI_BCI		; Win script
	LD_HLI_BCI
	LD_HLI_BCI
	LD_HLI_BCI		; Lose script
	LD_HLI_BCI
	LD_HLI_BCI

	JP				?SCRIPT_PLAY_NEXT

;********************************
?CMD_SETENCOUNTER

	LD				A,$01
	LD				(ENCOUNTER_FLAGS),A

	LD				A,$FF
	LD				(RANDOM_COUNTER),A

	LD				HL,ENCOUNTER_SCRIPT_BANK
	LD_HLI_BCI		; Encounter script
	LD_HLI_BCI
	LD_HLI_BCI

	LD				HL,ENCOUNTER_WAIT_TABLE
	LD_HLI_BCI		; Encounter frequency table
	LD_HLI_BCI

	JP				?SCRIPT_PLAY_NEXT

;**********************************
; A:		Total bytes to copy
?SCRIPT_BTL_PARAMS
	
	LD					L,C
	LD					H,B
	LD					DE,BTL_SCRIPT_BUFFER
	LD					C,A
	LD					B,$00

	SWITCH_RAM_BANK		WRAM_BATTLE

	CALL				?MEM_MOV

	SET16_FF			H,L,SCRIPT_WFRAME
	MOVADDR_FF			SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	
	SWITCH_ROM_BANK		2

	RET

;********************************
	END
;********************************