;********************************
; TRIGGER_00.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; HL:	Table addr
?TRIGGER_LOAD_TBL

	PUSH		HL
	SCRIPT_CLOSE
	SWITCH_ROM_BANK		HOTSPOT_BANK
	POP			HL

	LD			A,(HLI)
	LD			(TRIGGER_TABLE_SIZE),A
	AND			A
	JP			Z,_RETURN
	LD			C,A
	SET16		H,L,TRIGGER_TABLE

_LOOP
	SWITCH_ROM_BANK		HOTSPOT_BANK
	LD			A,(HLI)
	CP			TRIGGER_CONFIG
	JR			NZ,_SKIP

	LD			A,(HLI)
	LD			(SYSTEM_SCRIPT_BANK),A
	LD			A,(HLI)
	LD			(SYSTEM_SCRIPT_FRAME),A
	LD			A,(HLI)
	LD			(SYSTEM_SCRIPT_FRAME+1),A
	
	MOVADDR		SYSTEM_SCRIPT_STATE,?SCRIPT_PLAY_NEXT

	PUSH		HL
	PUSH		BC

_DO_SCRIPT
	SCRIPT_DO		SYSTEM_SCRIPT
	SWITCH_ROM_BANK	(VBLANK_BANK)
	GET16			H,L,VBLANK_FUNC
	CALL_HL
	
	LD				A,(SYSTEM_SCRIPT_FRAME+$01)
	AND				A
	JR				NZ,_DO_SCRIPT

	POP			BC
	POP			HL

	DEC			C
	JR			NZ,_LOOP
	JR			_RETURN

_SKIP
	INC			HL
	INC			HL
	INC			HL

	DEC			C
	JR			NZ,_LOOP

_RETURN
	LD				HL,MASTER_SCRIPT
	SCRIPT_OPEN
	RET

;********************************
	END
;********************************