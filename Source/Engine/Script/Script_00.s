;********************************
; SCRIPT.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB			SOURCE\ENGINE\SCRIPT\SCRIPT_PLAY.S

;********************************
	LIB			SOURCE\ENGINE\SCRIPT\MODULES\SCRIPT_00_ACTOR.S
	LIB			SOURCE\ENGINE\SCRIPT\MODULES\SCRIPT_00_AUDIO.S
	LIB			SOURCE\ENGINE\SCRIPT\MODULES\SCRIPT_00_BATTLE.S
	LIB			SOURCE\ENGINE\SCRIPT\MODULES\SCRIPT_00_FIGHTFX.S
	LIB			SOURCE\ENGINE\SCRIPT\MODULES\SCRIPT_00_FLOW.S
	LIB			SOURCE\ENGINE\SCRIPT\MODULES\SCRIPT_00_FRAME.S
	LIB			SOURCE\ENGINE\SCRIPT\MODULES\SCRIPT_00_GLOBAL.S
	LIB			SOURCE\ENGINE\SCRIPT\MODULES\SCRIPT_00_LOAD.S
	LIB			SOURCE\ENGINE\SCRIPT\MODULES\SCRIPT_00_PALFX.S
	LIB			SOURCE\ENGINE\SCRIPT\MODULES\SCRIPT_00_SCROLL.S
	LIB			SOURCE\ENGINE\SCRIPT\MODULES\SCRIPT_00_SYSTEM.S
	LIB			SOURCE\ENGINE\SCRIPT\MODULES\SCRIPT_00_TEXT.S
	LIB			SOURCE\ENGINE\SCRIPT\MODULES\SCRIPT_00_TRIGGER.S
	LIB			SOURCE\ENGINE\SCRIPT\MODULES\SCRIPT_00_XRAM.S

;********************************
?INTERPRETER_REINIT

	SCRIPT_INIT		SCROLL_SCRIPT
	;SCRIPT_INIT		SYSTEM_SCRIPT
	SCRIPT_INIT		TEXT_SCRIPT
	
	XOR				A
	LD				(SCRIPT_SYNC),A
	LD				(SCRIPT_SYNC_NEXT),A
	LD				(SCRIPT_SYNC_COUNT),A
	LD				(MASTER_EVENT_NEXT),A
	LD				(SCROLL_EVENT_NEXT),A
	LD				(TEXT_EVENT_NEXT),A

	RET

;********************************
?INTERPRETER_UPDATE

	; UPDATE SCRIPT SYNC
	;--------------------------------
	LD			HL,SCRIPT_SYNC_NEXT
	LD			A,(HLI)		; Get pending sync
	ADD			A,(HL)		; Add to current sync
	JR			NC,_NO_POP
	LD			A,(SCRIPT_SYNC_COUNT)
	INC			A
	LD			(SCRIPT_SYNC_COUNT),A
	XOR			A			; Clear sync on overflow
_NO_POP
	LD			(HLD),A		; Store new sync
	XOR			A
	LD			(HL),A		; Erase pending sync
	

	; UPDATE SCRIPT EVENTS
	;--------------------------------
	LD			HL,SCRIPT_EVENTS

	; MASTER SCRIPT EVENT
	;--------------------------------
	LD			A,(HLI)		; Get pending event
	LD			(HLD),A		; Load current event
	XOR			A
	LD			(HLI),A		; Clear pending event
	INC			HL

	; SCROLL SCRIPT EVENT
	;--------------------------------
	LD			A,(HLI)		; Get pending event
	LD			(HLD),A		; Load current event
	XOR			A
	LD			(HLI),A		; Clear pending event
	INC			HL

	; TEXT SCRIPT EVENT
	;--------------------------------
	LD			A,(HLI)		; Get pending event
	LD			(HLD),A		; Load current event
	XOR			A
	LD			(HLI),A		; Clear pending event
	INC			HL

	RET

;********************************
?SCRIPT_CLOSE

	GET16		H,L,SCRIPT_CURRENT

	LDA_FF		SCRIPT_WBANK
	LD			(HLI),A
	LDA_FF		SCRIPT_WFRAME
	LD			(HLI),A
	LDA_FF		SCRIPT_WFRAME+1
	LD			(HLI),A
	LDA_FF		SCRIPT_WSTATE
	LD			(HLI),A
	LDA_FF		SCRIPT_WSTATE+1
	LD			(HLI),A
	LDA_FF		SCRIPT_WCOUNT
	LD			(HLI),A
	LDA_FF		SCRIPT_WCOUNT+1
	LD			(HLI),A
	
	RET

;********************************
;	HL:		Address of script
;	BC:		<- Current frame
?SCRIPT_OPEN

	SET16		H,L,SCRIPT_CURRENT

	LD			A,(HLI)
	LDFF_A		SCRIPT_WBANK
	LD			A,(HLI)
	LDFF_A		SCRIPT_WFRAME
	LD			C,A
	LD			A,(HLI)
	LDFF_A		SCRIPT_WFRAME+1
	LD			B,A
	LD			A,(HLI)
	LDFF_A		SCRIPT_WSTATE
	LD			A,(HLI)
	LDFF_A		SCRIPT_WSTATE+1
	LD			A,(HLI)
	LDFF_A		SCRIPT_WCOUNT
	LD			A,(HLI)
	LDFF_A		SCRIPT_WCOUNT+1

	RET

;********************************
	END
;********************************