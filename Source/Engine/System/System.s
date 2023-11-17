;********************************
; SYSTEM.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\ENGINE\SYSTEM\MATH\MATH.S
	LIB		SOURCE\ENGINE\SYSTEM\GRAPHICS\GRAPHICS.S
	LIB		SOURCE\ENGINE\SYSTEM\SOUND\SOUND_VBLANK.S

;********************************
	GLOBAL	?_TXT_NOTHING_HAPPENED

;********************************
?CALL_FOREIGN
	
	PUSH_ROM_BANK
	SWITCH_ROM_BANK		E
	CALL_HL
	POP_ROM_BANK
	
	RET

;********************************
?CALL_HL
	JP		(HL)

;********************************
; E:	ADD value  -- PREVENTS OVERFLOW OF MAX
; D:	MAX VALUE
; BC:	Total tiles to ADD E to
; HL:	Starting address
?MEM_ADD

_LOOP
	LD				A,(HL)
	ADD				A,E
	CP				D
	JR				C,_DONT_CLIP				
	LD				A,D
_DONT_CLIP
	LD				(HLI),A
	DEC16_LOOP		B,C,_LOOP

	RET

;********************************
; E:	AND value
; BC:	Total tiles to clear
; HL:	Starting address
?MEM_AND

_LOOP
	LD				A,(HL)
	AND				E
	LD				(HLI),A
	DEC16_LOOP		B,C,_LOOP

	RET

;********************************
?MEM_MOV
	LD		A,(HLI)
	LD		(DE),A
	INC		DE
	DEC		BC
	LD		A,B
	OR		C
	JR		NZ,?MEM_MOV
	RET

;********************************
; E:	OR value
; BC:	Total tiles to clear
; HL:	Starting address
?MEM_OR

_LOOP
	LD				A,(HL)
	OR				E
	LD				(HLI),A
	DEC16_LOOP		B,C,_LOOP

	RET

;********************************
; E:	Set value
; BC:	Total tiles to clear
; HL:	Starting address
?MEM_SET

_LOOP
	LD				A,E
	LD				(HLI),A
	DEC16_LOOP		B,C,_LOOP

	RET

;********************************
; E:	XOR value
; BC:	Total tiles to clear
; HL:	Starting address
?MEM_XOR

_LOOP
	LD				A,(HL)
	XOR				E
	LD				(HLI),A
	DEC16_LOOP		B,C,_LOOP

	RET

;********************************
?SCREEN_HIDE
	XOR		A
	LD		(SCREEN_VISIBLE),A

	LD		A,(LCDC)
	BIT		$07,A
	RET		Z			; Already in LCDC STOP state

	XOR		A
	LD		(IF),A
	LD		(IE),A
_LOOP
	LD		A,(LY)		; Wait for V-BLANK
	CP		145
	JR		NZ,_LOOP
	
	XOR		A
	LD		(LCDC),A
	
	LD		(IF),A
	LD		(IE),A
	
	EI
	
	CALL		?TIMER_START
	RET

;********************************
?SCREEN_SHOW
	LD		A,(SCREEN_VISIBLE)
	AND		A
	RET		NZ

	LD		A,%01000000
	LD		(STAT),A

	XOR		A
	LD		(IF),A
	LD		(VBLANK_CONTROL),A

	LD		A,%00000011	; Enable hblank, vblank
	LD		(IE),A

	LD		A,%11100011
	LD		(LCDC),A
	LD		(SCREEN_VISIBLE),A
	
	EI
	
	RET
	
;********************************
?SYSTEM_DO_VFUNC

	LD			A,(SCREEN_VISIBLE)
	AND			A
	JR			NZ,_VISIBLE

	SWITCH_ROM_BANK	(VBLANK_BANK)
	GET16			H,L,VBLANK_FUNC
	CALL_HL
	
	RET

_VISIBLE
	LD			A,%00000110
	LDFF_A		VBLANK_CONTROL
	CALL		?SYSTEM_WAIT_VBLANK

	RET

;********************************
?SYSTEM_INIT

	COLL_INIT
	HOTSPOT_INIT
	INTERRUPT_INIT
	FRAME_INIT
	TEXTBOX_INIT
	XCALL	?ACTORLIST_INIT
	CONTROLLER_INIT
	BATTLE_INIT

	LD		HL,ITEM_SCRIPT_BANK

	LD		A,:?_TXT_NOTHING_HAPPENED
	LD		(HLI),A
	LD		A,?_TXT_NOTHING_HAPPENED&$FF
	LD		(HLI),A
	LD		A,(?_TXT_NOTHING_HAPPENED>>$08)&$FF
	LD		(HLI),A

	XOR		A
	LD		(RAM_BANK),A
	LD		(ROM_BANK),A
	LD		(ACTOR_RESTORE_FLAG),A
	LD		(ENCOUNTER_FLAGS),A
	LD		(MENU_DISABLE_MAIN),A
	LD		(TEXTBOX_SOUND_ENABLE),A

	LD		A,TEXTBOX_STATE_HALT
	LD		(TEXTBOX_HALT),A

	LD		HL,AI_HEROFLAGS_NEXT
	LD		(HLI),A
	LD		(HLI),A
	
	RET

;********************************
?SYSTEM_UPDATE_GAME

	PUSH_RAM_BANK
	PUSH_ROM_BANK

	GRAPHICS_OPEN

	CALL			?INTERPRETER_UPDATE

	SCRIPT_DO		MASTER_SCRIPT
	SCRIPT_DO		SCROLL_SCRIPT
	SCRIPT_DO		SYSTEM_SCRIPT
	SCRIPT_DO		TEXT_SCRIPT

	AI_UPDATE_CONTROLLER
	AI_UPDATE_HEROFLAGS
	ACTORLIST_RUN

	GRAPHICS_CLOSE

	XCALL	?SOUND_DETERMINE_SFUNC
	
	LD		A,%00000111
	LDFF_A	VBLANK_CONTROL
	CALL	?SYSTEM_WAIT_VBLANK

	POP_ROM_BANK
	POP_RAM_BANK

	RET

;********************************
?SYSTEM_UPDATE_GAME_NOSCRIPT

	PUSH_RAM_BANK
	PUSH_ROM_BANK

	GRAPHICS_OPEN
	GRAPHICS_CLOSE

	XCALL	?SOUND_DETERMINE_SFUNC
	
	LD		A,%00000111
	LDFF_A	VBLANK_CONTROL
	CALL	?SYSTEM_WAIT_VBLANK

	POP_ROM_BANK
	POP_RAM_BANK

	RET

;********************************
?SYSTEM_WAIT_VBLANK

	LDA_FF	VBLANK_CONTROL
	SET		$07,A
	LDFF_A	VBLANK_CONTROL

	HALT						; Halt system clock, economize on power
	NOP							; To avoid bug that occurs on rare occasions where instruction
								; after HALT is not processed.
_NO_VBLANK
	LDA_FF	VBLANK_CONTROL		; Wait for V-BLANK.
	BIT		$07,A
	JR		NZ,_NO_VBLANK

	RET

;********************************
	END
;********************************