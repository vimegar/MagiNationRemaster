;********************************
; BTLCMD_MAC.S
;********************************
;	Author:	Patrick Meehan/Dylan "PurpleSpungyspoo" Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
;32 = 100%
BTL_DRAIN_ATTACK		MACRO	percent

	LD		A,percent
	LD		(BTL_DRAIN_FLAG),A
	LD		(BTL_DRAIN_AMOUNT),A
	CALL_FOREIGN	?BTL_DRAIN_ATTACK

	ENDM

;********************************
BTL_KILL_ME			MACRO	

	LD		A,1
	LD		(BTL_EXERTION_FLAG),A
	
	ENDM

;********************************
BTL_KILL_TARGET			MACRO	

	CALL_FOREIGN	?BTL_KILL_TARGET
	
	ENDM
	
;********************************
BTL_NORMAL_FIGHTSCENE	MACRO	script

	GLOBAL			script

	LD		A,:script
	LD		BC,script
	
	CALL	?BTL_NORMAL_FIGHTSCENE

	ENDM
	
;********************************
BTL_STAT_MSG		MACRO		who,amt,script

	LD		A,who
	CP		TONY			;NO MSG FOR MAGI
	RET		NC
	LD		(BTL_CREATURE_PARAM),A
	LD		A,amt
	LD		(BTL_AMT_PARAM),A
	SCRIPT_SET		TEXT_SCRIPT,script
	
	CALL	?BTL_STAT_MSG
	
	ENDM	

;********************************
LOWER_LUCK_STAT			MACRO	data_ptr, decrement		
	LD		HL,data_ptr
	LD		BC,CREATURE_LUCK
	LD		A,decrement	
	CALL	?DECREMENT_CREATURE_STAT	
	ENDM
	

;********************************
LOWER_STR_STAT			MACRO	data_ptr, decrement		
	LD		HL,data_ptr
	LD		BC,CREATURE_STR		
	LD		A,decrement	
	CALL	?DECREMENT_CREATURE_STAT	
	ENDM
	
;********************************
LOWER_DEFENSE_STAT			MACRO	data_ptr, decrement		
	LD		HL,data_ptr
	LD		BC,CREATURE_DEF		
	LD		A,decrement	
	CALL	?DECREMENT_CREATURE_STAT	
	ENDM	
	
;********************************
LOWER_SKILL_STAT	MACRO	data_ptr, decrement		
	LD		HL,data_ptr
	LD		BC,CREATURE_SKILL		
	LD		A,decrement	
	CALL	?DECREMENT_CREATURE_STAT	
	ENDM
	
;********************************
LOWER_RESIST_STAT	MACRO	data_ptr, decrement		
	LD		HL,data_ptr
	LD		BC,CREATURE_RESIST		
	LD		A,decrement	
	CALL	?DECREMENT_CREATURE_STAT	
	ENDM				

;********************************
LOWER_SPEED_STAT			MACRO	data_ptr, decrement		
	LD		HL,data_ptr
	LD		BC,CREATURE_SPEED		
	LD		A,decrement	
	CALL	?DECREMENT_CREATURE_STAT	
	ENDM	
	
;********************************
LOWER_STAT_BY_PERCENT_SCALAR	MACRO data_ptr, stat_offset, percent_scalar			
	LD		HL,data_ptr
	LD		DE,stat_offset		
	LD		B,percent_scalar
	CALL	?DECREMENT_STAT_BY_PERCENT		
	ENDM	

;********************************
RAISE_LUCK_STAT			MACRO	data_ptr, increment		
	LD		HL,data_ptr
	LD		BC,CREATURE_LUCK		
	LD		E,MAX_DEFENSE_STAT_BOUNDARY
	LD		A,increment	
	CALL	?INCREMENT_CREATURE_STAT	
	ENDM	

;********************************
RAISE_STR_STAT			MACRO	data_ptr, increment		
	LD		HL,data_ptr
	LD		BC,CREATURE_STR		
	LD		E,MAX_STR_STAT_BOUNDARY
	LD		A,increment	
	CALL	?INCREMENT_CREATURE_STAT	
	ENDM
;********************************
RAISE_SKILL_STAT	MACRO	data_ptr, increment		
	LD		HL,data_ptr
	LD		BC,CREATURE_SKILL		
	LD		E,MAX_SKILL_STAT_BOUNDARY
	LD		A,increment	
	CALL	?INCREMENT_CREATURE_STAT	
	ENDM
;********************************
RAISE_SPEED_STAT			MACRO	data_ptr, increment		
	LD		HL,data_ptr
	LD		BC,CREATURE_SPEED		
	LD		E,MAX_SPEED_STAT_BOUNDARY
	LD		A,increment	
	CALL	?INCREMENT_CREATURE_STAT	
	ENDM	
;********************************
RAISE_DEFENSE_STAT			MACRO	data_ptr, increment		
	LD		HL,data_ptr
	LD		BC,CREATURE_DEF		
	LD		E,MAX_DEFENSE_STAT_BOUNDARY
	LD		A,increment	
	CALL	?INCREMENT_CREATURE_STAT	
	ENDM	

;********************************
RAISE_RESIST_STAT	MACRO	data_ptr, increment		
	LD		HL,data_ptr
	LD		BC,CREATURE_RESIST		
	LD		E,MAX_RESIST_STAT_BOUNDARY
	LD		A,increment	
	CALL	?INCREMENT_CREATURE_STAT	
	ENDM	
	
;********************************
RAISE_STAT_BY_PERCENT_SCALAR	MACRO data_ptr, stat_offset, percent_scalar, max_stat				
	LD		HL,data_ptr
	LD		DE,stat_offset		
	LD		B,percent_scalar
	LD		C,max_stat
	CALL	?INCREMENT_STAT_BY_PERCENT		
	ENDM

; New macros to help with levelup logic
GET_STAT_GAIN_INDEX				MACRO stat_offset
	LD		B,stat_offset
	LD		A,(LVL_UP_STAT_LEVEL)
	ADD     A,B
	AND		%00000111
	LD		C,A
	LD		B,0
	ENDM


;*********************************
; GET 16-BIT WORD (HL order byte) 
; HL = CREATURE_BTL POINTER
; DE = OFFSET_EQUATE			eg.: DE = CREATURE_EXPH, CREATURE_ENGMAXH, etc.
; output: VAL is place into HL
;*********************************
; warning!:						"?GET_CREATURE_WORD" is assumed to work with "?SET_CREATURE_WORD"	 
;		    					so there is a pointer to Data that pushed on to STACK 
;								for "?SET_CREATURE_WORD"!!!
;*********************************
GET_CREATURE_WORD				MACRO	base_pointer, offset_equate
	LD			HL,base_pointer
	LD			DE,offset_equate
	; get  "data pointer"
	ADD			HL,DE
	; save "data pointer"
	PUSH		HL
	
	; put (contents of HL -16bit-) into HL
	LD			A,(HLI)
	LD			L,(HL)
	LD			H,A
	ENDM
			
;*********************************
; SET 16-BIT WORD (HL order byte) 
; HL = DATA VALUE YOU WANT TO SET
; warning!:						"?SET_CREATURE_WORD" is assumed to work with "?GET_CREATURE_WORD"	 
;		    					so there needs to be is a "data pointer" that was pushed on to STACK 
;								by "?GET_CREATURE_WORD"!!!
;*********************************
SET_CREATURE_WORD				MACRO
	; store the new xp back into CREATURE_BTL's structure
	LD			A,H
	LD			C,L
	
	; get "data pointer"
	POP			HL
	
	LD			(HLI),A	
	LD			(HL),C		
	ENDM
	
;*********************************
; GET BYTE
; HL = CREATURE_BTL POINTER
; DE = OFFSET_EQUATE			eg.: DE = CREATURE_LUCK, CREATURE_LVL, etc.
; output: VAL is place into A
;*********************************
; warning!:						"?GET_CREATURE_BYTE" is assumed to work with "?SET_CREATURE_BYTE"	 
;		    					so there is a pointer to Data that pushed on to STACK 
;								for "?SET_CREATURE_BYTE"!!!
;*********************************
GET_CREATURE_BYTE				MACRO	base_pointer, offset_equate
	LD			HL,base_pointer
	LD			DE,offset_equate
	; get  "data pointer"
	ADD			HL,DE
	; save "data pointer"
	PUSH		HL
	
	; put (contents of HL -8bit-) into A
	LD			A,(HL)
	ENDM

;*********************************
; SET BYTE
; A = DATA VALUE YOU WANT TO SET
;*********************************
; warning!:						"?SET_CREATURE_BYTE" is assumed to work with "?SET_CREATURE_BYTE"	 
;		    					so there is a pointer to Data that pushed on to STACK 
;								by "?GET_CREATURE_BYTE"!!!
;*********************************
SET_CREATURE_BYTE				MACRO
	POP			HL
	; put (contents of HL -16bit-) into HL
	LD			(HL),A
	ENDM
	
	
	
	
;********************************
;CURRENT SIZE: 16 BYTES 
BTL_CMD			MACRO	name
name&_CMD

; General params
name&_FUNC_PTR	DS		$02		; Pointer to the function used
name&_COST		DS		$01		; Energy consumed
name&_TARGET	DS		$01		; Targeting mode/Slot
name&_MENU		DS		$01		; Menu to handle function

; Union of attack, item, summon, spell params
name&_RATING	DS		$01		; Strength of the command
name&_CMDELEM	DS		$01		; Elemental
name&_SUMMON					; Creature to summon (2 bytes)
name&_ITEM						; Item to use		(2 bytes)
name&_DAMAGE	DS		$01		; Max damage of cmd
name&_CHANCE	DS		$01		; Chance for successful hit
name&_NAME		DS		$07		; WHATS MY NAME?

	ENDM
		
;********************************
BTL_CMD_TEMPLATE1	MACRO	name,func,cost,target,menu

name&_FUNC_PTR	DW		(func	!& $FFFF)	; Pointer to the function used
name&_COST		DB		cost	; Energy consumed
name&_TARGET	DB		target	; Targeting mode
name&_MENU		DB		menu	; Menu to handle function

	ENDM
	
;********************************
BTL_CMD_TEMPLATE2	MACRO	name,rating,cmdelem,damage,chance

; Union of attack, item, summon, spell params
name&_RATING	DB		rating	; Strength of the command
name&_CMDELEM	DB		cmdelem	; Elemental
name&_SUMMON					; Creature to summon (2 bytes)
name&_ITEM						; Item to use
name&_DAMAGE	DB		damage	; Max damage of cmd
name&_CHANCE	DB		chance	; Chance for success

	ENDM

;********************************
BTL_CMD_TEMPLATE3	MACRO	name,name1,name2,name3,name4,name5,name6,name7

name&_NAME1		DB		name1	; 1ST name char
name&_NAME2		DB		name2	; 2ND name char
name&_NAME3		DB		name3	; 3RD name char
name&_NAME4		DB		name4	; 4TH name char
name&_NAME5		DB		name5	; 5TH name char
name&_NAME6		DB		name6	; 6TH name char
name&_NAME7		DB		name7	; 7TH name char

	ENDM

;********************************
	END
;********************************
