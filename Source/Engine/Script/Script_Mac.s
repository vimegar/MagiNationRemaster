;********************************
; SCRIPT_MAC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\ENGINE\SCRIPT\MODULES\TEXTBOX\TEXTBOX_MAC.S

;********************************
INTERPRETER_REINIT	MACRO
	CALL	?INTERPRETER_REINIT
	ENDM

;********************************
INTERPRETER_UPDATE	MACRO
	CALL	?INTERPRETER_UPDATE
	ENDM

;********************************
;	name:	Name of script object
SCRIPT		MACRO	name

name
name&_BANK		DS	$01		; Script ROM bank
name&_FRAME		DS	$01		; Frame counter lo-byte
name&_ACTIVE	DS	$01		; Active flag & frame counter hi-byte
name&_STATE		DS	$02		; State pointer
name&_COUNT		DS	$02		; Repeat counter

	ENDM

;********************************
SCRIPT_BYTE	MACRO	reg
	LD		A,(BC)
	LD		reg,A
	INC		BC
	ENDM

;********************************
SCRIPT_CLOSE	MACRO
	CALL		?SCRIPT_CLOSE
	ENDM

;********************************
SCRIPT_DO		MACRO	addr
	LD			HL,addr
	CALL		?SCRIPT_OPEN
	CALL		?SCRIPT_PLAY
	CALL		?SCRIPT_CLOSE
	ENDM

;********************************
SCRIPT_INIT		MACRO	script
	MOVADDR		script+SCRIPT_STRUCT_FRAME,$0000
	MOVADDR		script+SCRIPT_STRUCT_STATE,?CMD_END
	ENDM

;********************************
;	HL:		Ptr	to current script
;	BC:		<- Current frame
SCRIPT_OPEN		MACRO
	CALL		?SCRIPT_OPEN
	ENDM

;********************************
SCRIPT_PLAY	MACRO
	CALL	?SCRIPT_PLAY
	ENDM

;********************************
SCRIPT_SCREEN_VISIBLE	MACRO
	LD			A,(SCREENT_VISIBLE)
	AND			A
	JP			Z,_SCRIPT_PLAY_NEXT
	ENDM

;********************************
SCRIPT_SET		MACRO	script,anim
	GLOBAL		anim

	LD			HL,script
	
	LD			A,:anim
	LD			(HLI),A
	LD			A,anim!&$FF
	LD			(HLI),A
	LD			A,(anim>>$08)!&$FF
	LD			(HLI),A
	LD			A,?SCRIPT_START!&$FF
	LD			(HLI),A
	LD			A,(?SCRIPT_START>>$08)!&$FF
	LD			(HLI),A

	ENDM

	
;********************************
SCRIPT_SET_VAR	MACRO	script,anim,anim_bank
	LD			HL,script
	
	LD			A,(anim_bank)
	LD			(HLI),A
	LD			A,(anim)
	LD			(HLI),A
	LD			A,(anim+1)
	LD			(HLI),A
	LD			A,?SCRIPT_START!&$FF
	LD			(HLI),A
	LD			A,(?SCRIPT_START>>$08)!&$FF
	LD			(HLI),A

	ENDM

;********************************
SCRIPT_UNPACK		MACRO	func
	SCRIPT_WORD		H,L

	PUSH_ROM_BANK

	SWITCH_ROM_BANK	(BC)
	INC				BC

	PUSH			BC

	LD				C,L
	LD				B,H
	CALL			func
	
	POP				BC
	POP_ROM_BANK
	
	ENDM

;********************************
SCRIPT_WORD	MACRO	regH, regL
	SCRIPT_BYTE		regL
	SCRIPT_BYTE		regH
	ENDM

;********************************
	END
;********************************