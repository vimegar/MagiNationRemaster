;********************************
; SCRIPT_00_GLOBAL.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?CMD_CLEARSYNC
	LD			HL,SCRIPT_SYNC_NEXT
	LD			A,$01
	LD			(HLI),A			; SCRIPT_SYNC_NEXT = $01
	LD			A,$FF
	LD			(HLI),A			; SCRIPT_SYNC = $FF
	LD			A,(BC)
	INC			BC
	DEC			A
	LD			(HLI),A
	JP			?SCRIPT_PLAY_NEXT

;********************************
?CMD_SETANYEVENTMASTER
	LD			A,(MASTER_EVENT_NEXT)
	AND			A
	RET			NZ
	
	LD			A,$FF
	LD			(MASTER_EVENT_NEXT),A
	JP			?SCRIPT_PLAY_NEXT

;********************************
?CMD_SETANYEVENTSCROLL
	LD			A,(SCROLL_EVENT_NEXT)
	AND			A
	RET			NZ
	
	LD			A,$FF
	LD			(SCROLL_EVENT_NEXT),A
	JP			?SCRIPT_PLAY_NEXT

;********************************
?CMD_SETANYEVENTTEXT
	LD			A,(TEXT_EVENT_NEXT)
	AND			A
	RET			NZ
	
	LD			A,$FF
	LD			(TEXT_EVENT_NEXT),A
	JP			?SCRIPT_PLAY_NEXT

;********************************
?CMD_SETEVENTMASTER
	LD			A,(MASTER_EVENT_NEXT)
	AND			A
	RET			NZ
	
	LD			A,(BC)
	INC			BC
	LD			(MASTER_EVENT_NEXT),A
	JP			?SCRIPT_PLAY_NEXT

;********************************
?CMD_SETEVENTSCROLL
	LD			A,(SCROLL_EVENT_NEXT)
	AND			A
	RET			NZ

	LD			A,(BC)
	INC			BC
	LD			(SCROLL_EVENT_NEXT),A
	JP			?SCRIPT_PLAY_NEXT

;********************************
?CMD_SETEVENTTEXT
	LD			A,(TEXT_EVENT_NEXT)
	AND			A
	RET			NZ
	
	LD			A,(BC)
	INC			BC
	LD			(TEXT_EVENT_NEXT),A
	JP			?SCRIPT_PLAY_NEXT

;********************************
?CMD_SETMASTER
	LD			HL,MASTER_SCRIPT
	JP			?SCRIPT_SET_SCRIPT

;********************************
?CMD_SETSCROLL
	LD			HL,SCROLL_SCRIPT
	JP			?SCRIPT_SET_SCRIPT

;********************************
?CMD_SETTEXT

	LD			A,(TEXTBOX_OPEN)
	CP			TEXTBOX_STATE_BUSY
	RET			Z

	LD			HL,TEXT_SCRIPT
	JP			?SCRIPT_SET_SCRIPT

;********************************
?CMD_SYNC
	LD				A,(BC)
	LD				E,A

	LD				A,(SCRIPT_SYNC_COUNT)
	
	CP				E
	RET				C

	INC				BC
	SET16			B,C,SCRIPT_WFRAME

	LD				HL,SCRIPT_SYNC_NEXT
	INC				(HL)
	MOVADDR			SCRIPT_WSTATE,_WAIT_SYNC
	RET

_WAIT_SYNC
	LD				HL,SCRIPT_SYNC
	SCRIPT_BYTE		E
	LD				A,(HLD)
	AND				A
	JR				Z,_RETURN
	CP				E
	RET				C
	LD				A,$01
	LD				(HLI),A			; SCRIPT_SYNC_NEXT = $01
	LD				A,$FF
	LD				(HLI),A			; SCRIPT_SYNC = $FF
	RET

_RETURN
	SET16			B,C,SCRIPT_WFRAME
	MOVADDR			SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET

;********************************
?CMD_WAITANYEVENTMASTER
	LD			A,(MASTER_EVENT)
	JP			?SCRIPT_WAIT_ANY_EVENT

;********************************
?CMD_WAITANYEVENTSCROLL
	LD			A,(SCROLL_EVENT)
	JP			?SCRIPT_WAIT_ANY_EVENT

;********************************
?CMD_WAITANYEVENTTEXT
	LD			A,(TEXT_EVENT)
	JP			?SCRIPT_WAIT_ANY_EVENT

;********************************
?CMD_WAITEVENTMASTER
	LD			A,(MASTER_EVENT)
	JP			?SCRIPT_WAIT_EVENT

;********************************
?CMD_WAITEVENTSCROLL
	LD			A,(SCROLL_EVENT)
	JP			?SCRIPT_WAIT_EVENT

;********************************
?CMD_WAITEVENTTEXT
	LD			A,(TEXT_EVENT)
	JP			?SCRIPT_WAIT_EVENT

;********************************
?SCRIPT_SET_SCRIPT

	LD_HLI_BCI
	LD_HLI_BCI
	LD_HLI_BCI

	LD			A,?SCRIPT_PLAY_NEXT&$FF
	LD			(HLI),A

	LD			A,(?SCRIPT_PLAY_NEXT>>$08)&$FF
	LD			(HLI),A

	JP			?SCRIPT_PLAY_NEXT

;********************************
?SCRIPT_WAIT_ANY_EVENT
	AND			A
	RET			Z
	
	MOVADDR		SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET

;********************************
?SCRIPT_WAIT_EVENT
	LD			D,A
	LD			A,(BC)
	CP			D
	RET			NZ
	
	INC			BC
	SET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET

;********************************
	END
;********************************