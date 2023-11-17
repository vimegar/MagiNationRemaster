;********************************
; MENU_FUNCS.S
;********************************
;	Author:	Dylan ExoByte Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
;TABLE OF FUNCTIONS FOR A/B PRESSES
MENU_FUNC_PTR_TABLE
	DEFW	?MAIN_MENU_KEY_AB	
	DEFW	?MENU_A_CONFIRM
	DEFW	?MENU_B_CONFIRM
	DEFW	?MENU_FLASH
	DEFW	?MENU_A_SELECT
	DEFW	?MENU_B_SELECT
	DEFW	?MENU_NOTHING
	
;********************************
;HERES ALL THE MENU FUNCS, GENERIC AND MAIN

;********************************
?MENU_A_SELECT

	LD		A,(MENU_CURSOR_ID)
	LD		(MENU_RETURN_VALUE),A

	RET

;********************************
?MENU_B_SELECT

	LD		A,$FE
	LD		(MENU_RETURN_VALUE),A

	RET
	
;********************************
?MENU_A_CONFIRM

	LD		HL,MENU_CONFIRM
	LD		A,(HL)
	AND		A
	JR		Z,_NO_CONFIRM
	
	LD		A,(MENU_CURSOR_ID)
	LD		(MENU_RETURN_VALUE),A	
	
	RET	
	
_NO_CONFIRM
	INC		(HL)
	
	RET
		
;********************************
?MENU_B_CONFIRM

	LD		HL,MENU_CONFIRM
	LD		A,(HL)
	AND		A
	JR		Z,_NO_CONFIRM

	DEC		(HL)
	
	RET
	
_NO_CONFIRM
	LD		A,$FE
	LD		(MENU_RETURN_VALUE),A

	RET
	
;********************************
?MENU_FLASH

	SCREEN_HIDE
	LD	BC,$4FFF
_LUPE
	DEC16_LOOP	B,C,_LUPE	
	
	SCREEN_SHOW
	
	RET
	
;********************************
?MENU_NOTHING

	RET

;********************************
?MAIN_MENU_KEY_START

	POP		DE					;BALANCE THE STACK
	JP		?MAIN_MENU_CLOSE	;BAIL BAIL!
	
;********************************	
?MAIN_MENU_KEY_SELECT

	LD		A,(MENU_CURSOR_ID)
	CP		MAINMENU_RELIC0_CUR
	JR		Z,_ON_RELIC
	
	CP		MAINMENU_RELIC0_CUR+1
	RET		NZ
	
_ON_RELIC
	SUB		MAINMENU_RELIC0_CUR
	LD		(MENU_CURRENT_RELIC),A
	LD		A,(MENU_CACHED_RELIC)
	AND		A
	JR		Z,_DE_EQUIP
	
	LD		C,A
	LD		B,0
	LD		HL,XRAM_INVENTORY_RELICS
	ADD		HL,BC
	
	BATTERY_ON
	BATTERY_SET_BANK	RAMB_GAMESTATE
	
	DEC		(HL)

	LD		A,(MENU_CREATURE_INDEX)
	LD		C,A
	LD		B,0
	LD		HL,XRAM_INVENTORY_RINGS
	ADD		HL,BC
	LD		A,(HL)	
	LD		C,A
	LD		B,CREATURE_XRAM_SIZE
	CALL	?MULT
	LD		BC,CREATURE_XRAM+XRAM_CREATURE_RELIC0
	ADD		HL,BC
	LD		A,(MENU_CURRENT_RELIC)
	LD		C,A
	LD		B,0
	ADD		HL,BC
	
	BATTERY_SET_BANK	RAMB_CREATURES
		
	LD		C,(HL)		;YOINK PREVIOUSLY EQUIPEED RELIC
	LD		A,(MENU_CACHED_RELIC)
	LD		(HL),A
	
	BATTERY_SET_BANK	RAMB_GAMESTATE
	
	XOR		A
	CP		C
	JR		Z,_NO_SAVE
	LD		B,0
	LD		HL,XRAM_INVENTORY_RELICS
	ADD		HL,BC
	INC		(HL)
	
_NO_SAVE
	BATTERY_OFF
	
	XOR		A
	LD		(MENU_CACHED_RELIC),A
	LD		A,1
	LD		(MENU_DIRTY),A
	
	RET	
	
_DE_EQUIP
	BATTERY_ON
	BATTERY_SET_BANK	RAMB_GAMESTATE

	LD		A,(MENU_CREATURE_INDEX)
	LD		C,A
	LD		B,0
	LD		HL,XRAM_INVENTORY_RINGS
	ADD		HL,BC
	LD		A,(HL)	
	LD		C,A
	LD		B,CREATURE_XRAM_SIZE
	CALL	?MULT
	LD		BC,CREATURE_XRAM+XRAM_CREATURE_RELIC0
	ADD		HL,BC
	LD		A,(MENU_CURRENT_RELIC)
	LD		C,A
	LD		B,0
	ADD		HL,BC
	
	BATTERY_SET_BANK	RAMB_CREATURES
	
	LD		A,(HL)
	
	AND		A
	JR		Z,_NO_DE_EQUIP
	
	LD		(HL),0
	LD		(MENU_CACHED_RELIC),A
	
	LD		C,A
	LD		B,0
	LD		HL,XRAM_INVENTORY_RELICS
	ADD		HL,BC
	
	BATTERY_SET_BANK	RAMB_GAMESTATE
	
	INC		(HL)	
	
	LD		A,1
	LD		(MENU_DIRTY),A
	
_NO_DE_EQUIP
	BATTERY_OFF

	RET
	
;********************************
?MAIN_MENU_CLOSE

	FRAME_CLEAR_ALL

	SCREEN_HIDE
	CALL_FOREIGN		?MAIN_MENU_DE_ARCHIVE_VRAM
	
	;Bottom chunk of VBK0 and VBK1
	;------------------------
	SWITCH_RAM_BANK		WRAM_VRAMBAK1
	
	XOR			A
	LD			(VBK),A
	
	MEM_MOV		$9000,$D000,$800
	
	LD			A,1
	LD			(VBK),A
	
	MEM_MOV		$9000,$D800,$800
	
	
	TEXTBOX_INIT
	SCREEN_SHOW
	
	POP		DE
	POP		DE
	POP		DE			;BALANCE STACK
	
	SOUND_SET_SONG_VOL	15
	RET	
	
;********************************
?MAIN_MENU_KEY_AB

;KEY CODES SHOULD BE IN B

	LD		A,(MENU_CURSOR_ID)
	ADD		A,A
	ADD		A,A			;MULT*4 FOR PROPER OFFSET
	
	BIT		BitA,B
	JR		NZ,_NOT_B	;A OVERRIDES B IF SIMULTAINIOUSLIOUSY
	ADD		A,2			;THIS IS WHERE B'S INFO IS IN THE TABLE
	
_NOT_B
	LD		HL,MENU_CURSOR_ID_TABLE_KEY
	LD		C,A
	LD		B,$00
	ADD		HL,BC		;AND THIS IS THE ADDRESS OF THE INFO
	
;GET THE MENU ID
	LD		A,(HLI)

;MAKE SURE A AND HL AREN'T MOLESTED 
	PUSH	HL
	PUSH	AF
	
;AND CHECK FOR SPECIAL CASE FLAG THINGS	
	CP		44			;43 IS (CURRENTLY) THE LAST OF THE VALID CURSOR IDS
	JP		C,_NO_SPEC
	
;CHECK FOR 99: B ON ZERO (RET TO GAME)
_CHECK_99
	CP		99			;THIS MEANS GO BACK TO GAME
	JR		NZ,_CHECK_88
	ADD		SP,6		;BALANCE THE STACK
	JP		?MAIN_MENU_CLOSE		
	
;CHECK FOR 88: B ON CONFIRMING
_CHECK_88
	CP		88
	JR		NZ,_CHECK_77
	
;CHECK FOR CONFIRM FLAG
;IF THE CONFIRM FLAG IS UP, JUST CLEAR IT AND 
;GET BACK TO THE MAINLUPE
	LD		HL,MENU_CONFIRM
	LD		A,(HL)
	AND		A
	JR		Z,_NO_CONFIRM_88
	DEC		(HL)
	JP		_END_SPEC

;OTHERWISE WE HAVE TO FIGURE OUT WHAT MENU TO
;CANCEL BACK TO
_NO_CONFIRM_88
	LD		A,(MENU_CUR_MENU)
	CP		6
	JR		Z,_SITM88
	CP		3
	JR		Z,_SPEL88
	CP		11
	JR		Z,_ILST88
;HERE IS FOR THE ITEM MENU, JUST BACK TO MENUZERO
	POP     BC
	PUSH	AF
	JP		_NO_SPEC

;MENUSITM GOES BACK TO MENURSTT	
_SITM88
	LD		A,1
	LD		(MENU_DIRTY),A
	LD		A,7
	LD		(MENU_CUR_MENU),A
	LD		A,25
	LD		(MENU_CURSOR_ID),A	  
	JR		_END_SPEC	
	
;MENUSPEL TAKES US BACK TO MENUZERO
_SPEL88
	LD		A,1
	LD		(MENU_CURSOR_ID),A	  
	JR		_END_SPEC
	
;MENUILST TAKES US BACK TO MENUZERO
_ILST88
	LD		A,5
	LD		(MENU_CURSOR_ID),A	  
	JR		_END_SPEC
	
	
;CHECK FOR 77: A ON CONFIRMING SELECTION
_CHECK_77
	CP		77
	JR		NZ,_CHECK_45
	
;CHECK FOR CONFIRM FLAG
	LD		A,(MENU_CONFIRM)
	CP		1
	JR		NZ,_NO_CONFIRM_77
	XOR		A
	LD		(MENU_CONFIRM),A
;SEND ITEM "USED" SIGNAL CODE HERE
	LD		A,(MENU_CUR_MENU)
	CP		MENU_ILSTID
	JR		NZ,_CONT_77
	
	LD		A,(MENU_CURSOR_ID)
	CP		36		;SAVE
	JR		NZ,_END_SPEC

_CONT_77
	CALL_FOREIGN	?MAIN_MENU_USE_ITEM
	
	LD		A,(MENU_CUR_MENU)
	CP		MENU_SITMID
	JR		NZ,_NOT_SPEC_77
	
	CALL_FOREIGN	?MAIN_MENU_EQUIP_RELIC
	JR		_END_SPEC
	
_NOT_SPEC_77
	ADD		SP,6		;BALANCE THE STACK
	JP		?MAIN_MENU_CLOSE	
	
_NO_CONFIRM_77
	LD		A,1
	LD		(MENU_CONFIRM),A
	JR		_END_SPEC
	
;CHECK FOR 45: A ON PAGE RIGHT
_CHECK_45
	CP		45
	JR		NZ,_CHECK_44
	

;IT AND PAGE LEFT WILL PROBABLY SET UP A FEW
;THINGS AND THEN GO TO A COMMON AREA FOR THE
;UPDATING STUFF
	LD		A,1
	LD		(MENU_DIRTY),A
	JR		_END_SPEC
	
;CHECK FOR 44: A ON PAGE LEFT
_CHECK_44 
	CP		44
	JR		NZ,_NO_SPEC
	
;IT AND PAGE RIGHT WILL PROBABLY SET UP A FEW
;THINGS AND THEN GO TO A COMMON AREA FOR THE
;UPDATING STUFF
	LD		A,1
	LD		(MENU_DIRTY),A
	JR		_END_SPEC			

_END_SPEC
	POP		BC
	POP		BC
	LD		A,(MENU_CURSOR_ID)
	JR		_GET_OUT	
	
_NO_SPEC
;SPECIAL CASES TAKEN CARE OF
	POP		AF
	POP		HL

;CHECK FOR NEW MENU
	LD		B,A
	LD		A,(MENU_CUR_MENU)
	CP		B	
	JR		Z,_NOT_DIRTY
	
	CP		MENU_RSTTID
	JR		NZ,_NO_RELIC_CHECK	
	LD		A,B
	CP		MENU_SITMID
	JR		NZ,_NO_RELIC_CHECK
	LD		A,(MENU_EMPTY_RELIC_LIST)
	AND		A
	JR		Z,_NO_RELIC_CHECK
	SOUND_START_SFX		SFXID_ERROR
	JR		_GET_OUT	
	
	;See if we are equiping a relic
	;-----------------------------
	
_NO_RELIC_CHECK
	LD		A,(MENU_CURSOR_ID)
	SUB		MAINMENU_RELIC0_CUR
	LD		(MENU_CURRENT_RELIC),A
	
	LD		A,1
	LD		(MENU_DIRTY),A
	LD		A,B
	LD		(MENU_CUR_MENU),A	
	
_NOT_DIRTY	
;GET THE NEW CURSOR ID			
	LD		A,(HL)	
	LD		(MENU_CURSOR_ID),A
	
;BE SURE TO POPx2 BEFORE SHOWING UP HERE
;OTHERWISE YOU WILL TURN INTO A PUMPKIN
_GET_OUT
	CALL	?MENU_UPDATE_CURSOR
		
	RET
	
;********************************
?MENU_TEXT_UPDATE_FROM_MACRO

_LOOP
	TEXT_UPDATE
	CALL	?SYSTEM_UPDATE_GAME
	
	LD		HL,MENU_TXT_COUNT
	DEC		(HL)
	JR		NZ,_LOOP

	RET
	
;********************************
	END
;********************************