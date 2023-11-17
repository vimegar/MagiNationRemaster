;********************************
; MENU_SPECIAL_FUNCS.S
;********************************
;	Author:	Erik Hutchinson
;	(c)2000	Interactive Imagination
;	All rights reserved
;********************************

;********************************
?MENU_SPECIAL_ATTRIB_SETUP
	SCREEN_HIDE
;ATTRIBUTE STUFF
	LD		A,$01
	LD		(VBK),A
;FILL THE ATTRIBS
	LD		D,$0F		;MY ATTRIBS
	LD		BC,564
	
_TOP_ATTRIB
	LD		HL,$9BFF			;START OF MY BG
	ADD		HL,BC
	LD		(HL),D	
	DEC16_LOOP	B,C,_TOP_ATTRIB	
	
;Bottom line
	;-----------------
	LD		A,%01001111
	LD		D,18
	LD		HL,$9E21
	
_BOT_ATTRIB_LOOP
	LD		(HLI),A
	DEC		D
	JR		NZ,_BOT_ATTRIB_LOOP
	
	;Right line
	;----------------------
	LD		BC,16
		
_RIGHT_ATTRIB_LOOP
	LD		HL,$9C00
	PUSH	BC
	SLA16	B,C,5
	ADD		HL,BC
	LD		A,%00101111
	LD		(HLI),A
	POP		BC
	DEC		C
	JR		NZ,_RIGHT_ATTRIB_LOOP	
	
	;Set attribs for corners and arrows
	;----------------------
	LD		A,%00101111			
	LD		($9C00),A			;UL CORNER
	LD		($9C2A),A			;UR ARROW	
	LD		($9DA0),A			;ML CORNER
	
	LD		A,%01001111			
	LD		($9E33),A			;LR CORNER
	LD		($9D89),A			;LL ARROW
	
	LD		A,%01101111
	LD		($9E20),A			;LL	CORNER
	LD		($9D8A),A			;LR ARROW	
	
	;WINDOW
	XOR		A
	LD		(TEXTBOX_WY),A		;WIN Y
	LD		A,7
	LD		(TEXTBOX_WX),A		;WIN X
	CALL_FOREIGN		?MAIN_MENU_ARCHIVE_VRAM
	CALL_FOREIGN	?CARDSCENE_ARCHIVE_BG_VRAM
	
	;Setting up the Valid menu items
	XOR		A
	LD		(MENU_CURSOR_ID),A
	LD		HL,MENU_SPECIAL_VALID
	LD		C,$01
	LD		(HL),C		;Items value in menu valid
	INC		HL
	LD		(HL),C		;Spells value in menu valid
	INC		HL
	LD		(HL),C		;Relics value in menu valid
	INC		HL
	LD		(HLI),A		;menu item 1 invalid
	LD		(HLI),A		;menu item 2 invalid
	LD		(HLI),A		;menu item 3 invalid
	LD		(HLI),A		;menu item 4 invalid
	LD		(HLI),A		;menu item 5 invalid
	LD		(HLI),A		;menu item 6 invalid
	LD		(HLI),A		;menu item 7 invalid
	LD		(HLI),A		;menu item 8 invalid
	LD		(HLI),A		;makes the initial scroll back invalid
	LD		(HLI),A		;initial scroll forward INvalid
	LD		(HL),C		;make DONE value valid
	LD		(MENU_SPECIAL_MENU_SECTION),A
	
	RET
	
;********************************
;2 Params
;WORD: address of where items/relics/spells are in XRAM
;Param is passed to the function in HL
;WORD: number of bytes to search in XRAM, param is passed into C
;determines the number of items that is either in tonys inventory
;the total number of items is then stored in MENU_SPECIAL_TOTAL_ITEMS
?MENU_SPECIAL_NUMBER_OF_ITEMS
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	LD		B,$00
_LUPE
	DEC		C
	JR		Z,_DONE
	LD		A,(HLI)
	CP		$00
	JR		Z,_LUPE
	INC		B
	JR		_LUPE

_DONE
	BATTERY_OFF
	LD		A,B
	LD		(MENU_SPECIAL_TOTAL_ITEMS),A
	RET	
	
;********************************
;Scrolls backwards through the list of items/spells/relics in inventory
;Uses the info stored in MENU_SPECIAL_TOP_ITEM to scroll backwards through the inventory
;and re-output numbers of the items on screen into MENU_SPECIAL_ON_SCREEN
?MENU_SPECIAL_PREVIOUS_SCREEN
	LD		HL,MENU_SPECIAL_ON_SCREEN
	LD		DE,$0007
	ADD		HL,DE
	LD		D,H
	LD		E,L

	FGET16	H,L,MENU_SPECIAL_TYPE_ADD
	LD		A,(MENU_SPECIAL_TOP_ITEM)
	DEC		A
	LD		C,A
	LD		B,$00
	ADD		HL,BC
		
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON

_LOOP
	DEC		C
	LD		A,(HLD)
	CP		$00
	JR		Z,_LOOP
	LD		A,C
	INC		A			;actually at one too few for present item, so dec for holder
	LD		(DE),A
	DEC		DE
	INC		B
	LD		A,B
	CP		MENU_SPECIAL_NUMBER_ON_SCREEN
	JR		NZ,_LOOP
	LD		A,C
	INC		A
	LD		(MENU_SPECIAL_TOP_ITEM),A
	BATTERY_OFF	
	RET					;all the proper items have been loaded into the holder

;********************************
;Sets up a holding variable which contains the number of each item currently on the screen
;Takes in the address of the table in MENU_SPECIAL_TYPE_ADD
;Outputs the items on screen into  MENU_SPECIAL_ON_SCREEN
?MENU_SPECIAL_SELL_ON_SCREEN
	FGET16	H,L,MENU_SPECIAL_TYPE_ADD	
	LD		A,(MENU_SPECIAL_TOP_ITEM)
	LD		C,A
	LD		B,$00
	ADD		HL,BC
	LD		DE,MENU_SPECIAL_ON_SCREEN
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON

_LOOP
	INC		C
	LD		A,C
	CP		$FF
	JR		Z,_EMPTIES
	LD		A,(HLI)
	CP		$00
	JR		Z,_LOOP
	LD		A,C
	DEC		A			;actually at one too many for present item, so dec for holder
	LD		(DE),A
	INC		DE
	INC		B
	LD		A,B
	CP		MENU_SPECIAL_NUMBER_ON_SCREEN
	JR		NZ,_LOOP
	BATTERY_OFF	
	RET					;all the proper items have been loaded into the holder
	
_EMPTIES
	LD		A,$FF
	LD		(DE),A
	INC		DE
	INC		B
	LD		A,B
	CP		MENU_SPECIAL_NUMBER_ON_SCREEN
	JR		NZ,_EMPTIES
	BATTERY_OFF
	RET					;proper items along with empties have been placed in holder

	
;********************************
;Displays items on screen that are stored in MENU_SPECIAL_ON_SCREEN
;WARNING: Screen must already be hidden upon entering this fucntion
?MENU_SPECIAL_ITEMS_UPDATE
	LD		A,$01
	LD		(VBK),A

	XOR		A
	LD		(MENU_SPECIAL_COUNTER),A
	LD		DE,$8860
	FSET16	D,E,MENU_VRAM_PTR
	
_LOOP
	LD		HL,MENU_SPECIAL_ON_SCREEN
	LD		A,(MENU_SPECIAL_COUNTER)
	LD		C,A
	LD		B,$00
	ADD		HL,BC
	LD		A,(HL)								;the item number from the list
	CP		$FF
	JR		Z,_EMPTIES
	LD		B,A
	LD		A,(MENU_SPECIAL_TYPE_SIZE)
	LD		C,A
	CALL	?MULT
	
	GET16	B,C,MENU_SPECIAL_TYPE_TABLE
	ADD		HL,BC								;adding the table location to the item location
	SET16	H,L,INV_OBJ_PTR
	LD		BC,INV_CURRENT
	FSET16	B,C,INV_ADDR
	CALL_FOREIGN	?INV_COPY_ITEM_ARRAY	; copy into the dest array
	LD		HL,INV_CURRENT	
	LD		A,(MENU_SPECIAL_TYPE_OFFSET)		;the name offset for the type
	LD		E,A
	LD		D,$00
	ADD		HL,DE
	SET16	H,L,MENU_CUR_CHAR
	LD		A,(MENU_SPECIAL_NAME_SIZE)		;all types have the same size string...change if necessary
	LD		(MENU_CHAR_LEFT),A
	CALL_FOREIGN	?MAIN_MENU_PACK_VRAM
	
	LD		A,(MENU_SPECIAL_COUNTER)
	ADD		A,MENU_HISTORIAN_ITEM1
	LD		HL,MENU_SPECIAL_VALID
	LD		D,$00
	LD		E,A
	ADD		HL,DE
	LD		A,$01
	LD		(HL),A	
	LD		HL,MENU_SPECIAL_COUNTER
	INC		(HL)
	LD		A,(HL)
	CP		MENU_SPECIAL_NUMBER_ON_SCREEN									;the number of items that can be on screen
	JR		NZ,_LOOP
	RET

_EMPTIES
	LD		A,(MENU_SPECIAL_NAME_SIZE)
	CALL	?MENU_SPECIAL_BLANK_LINE			;inserts blank spaces in place of items
	LD		A,(MENU_SPECIAL_COUNTER)
	ADD		A,MENU_HISTORIAN_ITEM1
	LD		HL,MENU_SPECIAL_VALID
	LD		D,$00
	LD		E,A
	ADD		HL,DE
	LD		(HL),D
	LD		HL,MENU_SPECIAL_COUNTER
	INC		(HL)
	LD		A,(HL)
	CP		MENU_SPECIAL_NUMBER_ON_SCREEN		;the number of items that can be on screen
	JR		NZ,_EMPTIES
	RET	
	
;********************************
;Does clean up and exits the menu
?MENU_SPECIAL_END
	FRAME_CLEAR_ALL
	SCREEN_HIDE
	
	CALL_FOREIGN		?MAIN_MENU_DE_ARCHIVE_VRAM
	SWITCH_RAM_BANK		WRAM_VRAMBAK1
	
	XOR			A
	LD			(VBK),A
	
	MEM_MOV		$9000,$D000,$800
	
	LD			A,1
	LD			(VBK),A
	
	MEM_MOV		$9000,$D800,$800
	
	
	TEXTBOX_INIT
	SCREEN_SHOW
	RET

;********************************
;adds the placeholder hand into the menu
;expects MENU_SPECIAL_MODE/MENU_SPECIAL_MODE to hold either  0,1, or 2  
;0 for  SELL/ITEMS,  1 for BUY/SPELLS,  2 for RELICS
?MENU_SPECIAL_HAND_INSERTION
	LD		A,$03							
	LD		(VBLANK_BANK),A	
	MOVADDR	VBLANK_FUNC,_PUTHAND			;setting up the vblank function	
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT	;clobbers actors for now
	MOVADDR	VBLANK_FUNC,?VBLANK_IDLE		;resets the vblank function
	RET

_PUTHAND
	LD		A,(MENU_SPECIAL_MODE)
	CP		$00
	JR		Z,_SELL
	CP		$01
	JR		Z,_BUY
	
	LD		HL,MENU_HISTORIAN_RELICS_HAND_ADD	
	JR		_DONE
	
_SELL
	LD		HL,MENU_SHOP_SELL_HAND_ADDRESS
	JR		_DONE
	
_BUY	
	LD		HL,MENU_SHOP_BUY_HAND_ADDRESS

_DONE	
	LD		(HL),MENU_SHOP_VRAM_HAND_POS
	RET

;********************************
;adds the placeholder hand into the menu
;expects MENU_SPECIAL_MODE/MENU_SPECIAL_MODE to hold either  0,1, or 2  
;0 for  SELL/ITEMS,  1 for BUY/SPELLS,  2 for RELICS
?MENU_SPECIAL_HAND_REMOVAL
	LD		A,$03							
	LD		(VBLANK_BANK),A	
	MOVADDR	VBLANK_FUNC,_TAKEHAND			;setting up the vblank function	
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT	;clobbers actors for now
	MOVADDR	VBLANK_FUNC,?VBLANK_IDLE		;resets the vblank function
	RET

_TAKEHAND
	LD		HL,MENU_HISTORIAN_RELICS_HAND_ADD	
	LD		(HL),MENU_SHOP_VRAM_BLANK_POS
	LD		HL,MENU_SHOP_SELL_HAND_ADDRESS
	LD		(HL),MENU_SHOP_VRAM_BLANK_POS
	LD		HL,MENU_SHOP_BUY_HAND_ADDRESS
	LD		(HL),MENU_SHOP_VRAM_BLANK_POS
	LD		(HL),MENU_SHOP_VRAM_BLANK_POS
	RET
	
;********************************
;checks to make sure there is at least one valid item in the upper menu
;returns a 0 in A if there are no valid items in upper menu
;returns a 1 in A if there is at least one valid item in upper menu
?MENU_SPECIAL_UPPER_CHECK
	LD		HL,MENU_SPECIAL_VALID
	LD		E,MENU_SHOP_ITEM1
	LD		D,$00
	ADD		HL,DE
	LD		C,MENU_SHOP_SCROLLFORWARD
	INC		C
	
_LOOP
	LD		A,(HLI)
	CP		$01
	JR		Z,_VALID
	INC		E	
	LD		A,E
	CP		C
	JR		NZ,_LOOP
	
	XOR		A
	RET

_VALID
	LD		A,$01
	RET

;********************************	
;reads the bg dump into memory for the shop
;Expects the address of the dump to be loaded in BC
?MENU_SPECIAL_READ_DUMP
	XOR			A
	LD			(WY),A		;WIN Y
	LD			A,7
	LD			(WX),A		;WIN X
	
_BEGIN	
	XOR			A
	LD			(VBK),A
	LD			HL,$9C00	
	LD			A,$12
	LD			(MENU_SPECIAL_NUMBER_HOLDER),A
	LD			A,$14
	LD			(MENU_SPECIAL_NUMBER_HOLDER+$01),A
	LD			D,A
	LD			E,$0C
	
_LOOP
	LD_HLI_BCI
	DEC			D
	JR			NZ,_LOOP
	
_NEWROW
	LD			A,(MENU_SPECIAL_NUMBER_HOLDER)
	DEC			A
	RET			Z
	LD			(MENU_SPECIAL_NUMBER_HOLDER),A
	LD			D,$00
	ADD			HL,DE
	LD			A,(MENU_SPECIAL_NUMBER_HOLDER+$01)
	LD			D,A
	JR			_LOOP
	RET	
			
;********************************
;Takes 2 inputs
;BYTE	number of spaces to be added....value passed into A
;The starting position in VRAM.... value passed in MENU_VRAM_PTR
?MENU_SPECIAL_BLANK_LINE
	LD		HL,INV_CURRENT
	LD		B,?SPCE
	LD		C,$00
	LD		(MENU_CHAR_LEFT),A
_LUPE	
	LD		(HL),B
	INC		HL
	DEC		A
	CP		C
	JR 		NZ,_LUPE
	
	LD		BC,INV_CURRENT
	FSET16	B,C,MENU_CUR_CHAR
	CALL_FOREIGN	?MAIN_MENU_PACK_VRAM
	RET	
		
;********************************
;Puts the arrow character for the forward position in the dump 
?MENU_SPECIAL_FORWARD_INSERT
	LD		A,$03							
	LD		(VBLANK_BANK),A	
	MOVADDR	VBLANK_FUNC,_SCROLLINSERT		;setting up the vblank function	
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT	;clobbers actors for now
	MOVADDR	VBLANK_FUNC,?VBLANK_IDLE		;resets the vblank function
	RET

_SCROLLINSERT
	LD		HL,MENU_SPECIAL_FORWARD_ADDRESS
	LD		A,(MENU_SPECIAL_VRAM_ARROW_POS)
	LD		(HLI),A
	LD		(HL),A
	RET	

;********************************
;Puts the arrow character for the back position in the dump 
?MENU_SPECIAL_BACK_INSERTION
	LD		A,$03							
	LD		(VBLANK_BANK),A	
	MOVADDR	VBLANK_FUNC,_SCROLLINSERT		;setting up the vblank function	
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT	;clobbers actors for now
	MOVADDR	VBLANK_FUNC,?VBLANK_IDLE		;resets the vblank function
	RET

_SCROLLINSERT
	LD		HL,MENU_SPECIAL_BACK_ADDRESS
	LD		A,(MENU_SPECIAL_VRAM_ARROW_POS)
	LD		(HLI),A
	LD		(HL),A
	RET
	
;********************************
;Puts the arrow character for the forward position in the dump 
?MENU_SPECIAL_FORWARD_REMOVAL
	LD		A,$03							
	LD		(VBLANK_BANK),A	
	MOVADDR	VBLANK_FUNC,_SCROLLREMOVAL		;setting up the vblank function	
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT	;clobbers actors for now
	MOVADDR	VBLANK_FUNC,?VBLANK_IDLE		;resets the vblank function
	RET

_SCROLLREMOVAL
	LD		HL,MENU_SPECIAL_FORWARD_ADDRESS
	LD		A,MENU_MUSIC_VRAM_BLANK_POS
	LD		(HLI),A
	LD		(HL),A
	RET	

;********************************
;Puts the arrow character for the back position in the dump 
?MENU_SPECIAL_BACK_REMOVAL
	LD		A,$03							
	LD		(VBLANK_BANK),A	
	MOVADDR	VBLANK_FUNC,_SCROLLREMOVAL		;setting up the vblank function	
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT	;clobbers actors for now
	MOVADDR	VBLANK_FUNC,?VBLANK_IDLE		;resets the vblank function
	RET

_SCROLLREMOVAL
	LD		HL,MENU_SPECIAL_BACK_ADDRESS
	LD		A,MENU_MUSIC_VRAM_BLANK_POS
	LD		(HLI),A
	LD		(HL),A
	RET
		
;********************************
;HL	-->	The location where values are to be stored	
;E  --> Holds the starting tile # in vram of the numbers 0-9
;A  --> Holds the value to be updated to the screen 
;HL <-- Function will return with value of tile # stored in HL
?MENU_SPECIAL_INSERT_NUMBER
	LD			D,$00
_LOOP
	CP			D
	JR			Z,_PUT
	DEC			A
	INC			E
	JR			_LOOP
_PUT
	LD			(HL),E
	INC			HL
	RET	


;********************************
;puts the numbers 0-9 into the vram along with
;buy, sel, done, x
;these are perm and used throughout the menu
;BC --> the address of the string to use to be in BC
;A	--> the number of characters in the string to be displayed
?MENU_SPECIAL_NUMBERS	
	PUSH	AF
	PUSH	BC	
	LD		A,$30						;where the text for numbers starts
	LD		D,$40
	LD		BC,INV_CURRENT
_DIGITLOOP	
	LD		(BC),A
	INC		BC
	INC		A
	CP		D
	JR		NZ,_DIGITLOOP
_DIGITNEXT
	LD		BC,INV_CURRENT
	FSET16	B,C,MENU_CUR_CHAR
	LD		A,$0A
	LD		(MENU_CHAR_LEFT),A
	CALL_FOREIGN	?MAIN_MENU_PACK_VRAM
		
	POP		BC
	FSET16	B,C,MENU_CUR_CHAR
	POP		AF
	LD		(MENU_CHAR_LEFT),A
	CALL_FOREIGN	?MAIN_MENU_PACK_VRAM
	RET
		
;********************************
	END
;********************************