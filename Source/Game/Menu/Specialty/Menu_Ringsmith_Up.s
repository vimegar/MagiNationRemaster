;********************************
; MENU_RINGUP.S
;********************************
;	Author:	Erik Hutchinson
;	(c)2000	Interactive Imagination
;	All rights reserved
;********************************

;********************************
;The Main RINGUP loop that checks for users choices and goes to the appropriate functions
?MENU_RINGUP_LOOP
	LD		A,$FF							;precautionary
	LD		(MENU_RETURN_VALUE),A
	MENU_GO
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT
	LD		A,(MENU_RETURN_VALUE)
	CP		$FF	
	JR		Z,_ITEM_ON_CURSOR
	
	CP		$FE	
	JP		Z,?MENU_SPECIAL_END
	
	CP		MENU_RINGUP_SCROLLBACK
	JP		Z,?MENU_RINGUP_SCROLL_BACK
	CP		MENU_RINGUP_SCROLLFORWARD
	JP		Z,?MENU_RINGUP_SCROLL_FORWARD
		
	;if not of the above, then one of the rings must have been selected to be leveled
	LD		A,$FF
	LD		(MENU_SPECIAL_NUMBER_HOLDER),A
	JP		?MENU_RINGUP_LEVEL_RING
	
_ITEM_ON_CURSOR	
	LD		A,(MENU_CURSOR_ID)
	LD		C,A
	LD		A,(MENU_SPECIAL_NUMBER_HOLDER)	;used to keep track of updates
	CP		C
	JR		Z,?MENU_RINGUP_LOOP
	JP		?MENU_RINGUP_LEVELUP_INFO

;********************************
;Scrolls back through the inventory list
?MENU_RINGUP_SCROLL_BACK
	LD		A,(MENU_SPECIAL_TOP_ITEM)
	SUB		MENU_SPECIAL_NUMBER_ON_SCREEN
	LD		(MENU_SPECIAL_TOP_ITEM),A
	
	CALL	?MENU_RINGUP_MAIN

	LD		A,(MENU_SPECIAL_VRAM_ARROW_POS)
	CALL	?MENU_SPECIAL_FORWARD_INSERT
	LD		HL,MENU_SPECIAL_VALID+MENU_RINGUP_SCROLLFORWARD	
	LD		A,$01
	LD		(HLD),A
	
	LD		A,(MENU_SPECIAL_TOP_ITEM)
	
	CP		MENU_SPECIAL_NUMBER_ON_SCREEN
	JR		NC,_CANSCROLL
	LD		A,$00
	LD		(HL),A						;setting up scroll back to be invalid
	CALL	?MENU_SPECIAL_BACK_REMOVAL
	JR		_DONE
	
_CANSCROLL	
	CALL	?MENU_SPECIAL_BACK_INSERTION
	
_DONE
	LD		A,(MENU_RETURN_VALUE)
	LD		(MENU_CURSOR_ID),A
	MENU_INIT	MENU_RINGUP_SEL,243,MENU_SPECIAL_VALID,?MENU_SHOP_KEY_START,?MENU_FLASH,(MENU_CURSOR_ID),MENU_CURSOR_BLINK,MENU_CURSOR_SPRITE
	JP		?MENU_RINGUP_LOOP
	
;********************************
;Scrolls forward through the inventory list
?MENU_RINGUP_SCROLL_FORWARD	
	LD		A,(MENU_SPECIAL_TOP_ITEM)
	ADD		A,MENU_SPECIAL_NUMBER_ON_SCREEN
	LD		(MENU_SPECIAL_TOP_ITEM),A

	CALL	?MENU_RINGUP_MAIN
	
	LD		A,(MENU_RETURN_VALUE)
	LD		(MENU_CURSOR_ID),A
	
	CALL	?MENU_SPECIAL_BACK_INSERTION
	LD		A,$01
	LD		HL,MENU_SPECIAL_VALID+MENU_RINGUP_SCROLLBACK
	LD		(HLI),A						;setting up scroll back to be valid
	LD		A,(MENU_SPECIAL_TOTAL_ITEMS)
	LD		C,A	
	LD		A,(MENU_SPECIAL_TOP_ITEM)
	ADD		A,MENU_SPECIAL_NUMBER_ON_SCREEN
	CP		C
	JR		C,_CANSCROLL
	
	LD		A,$00						;cant scroll forward anymore
	LD		(HL),A						;HL is already setup at scrollforward point
	LD		A,MENU_RINGUP_SCROLLBACK
	LD		(MENU_CURSOR_ID),A	
	CALL	?MENU_SPECIAL_FORWARD_REMOVAL
	JR		_DONE
_CANSCROLL	
	CALL	?MENU_SPECIAL_FORWARD_INSERT

_DONE
	MENU_INIT	MENU_RINGUP_SEL,243,MENU_SPECIAL_VALID,?MENU_SHOP_KEY_START,?MENU_FLASH,(MENU_CURSOR_ID),MENU_CURSOR_BLINK,MENU_CURSOR_SPRITE
	JP		?MENU_RINGUP_LOOP

;********************************
;HL --> contains the address of where to store the numbers
?MENU_RINGUP_DISPLAY_NUMBERS
	LD		E,MENU_RINGUP_NUMBERS_VRAM
	LD		A,(X100)
	CALL	?MENU_SPECIAL_INSERT_NUMBER
	LD		E,MENU_RINGUP_NUMBERS_VRAM
	LD		A,(X10)
	CALL	?MENU_SPECIAL_INSERT_NUMBER
	LD		E,MENU_RINGUP_NUMBERS_VRAM
	LD		A,(X1)
	CALL	?MENU_SPECIAL_INSERT_NUMBER
	
	RET
	
;********************************
?MENU_RINGUP_NO_INFO
	LD		HL,MENU_SPECIAL_UPDATE_VAR
	LD		A,$80
	LD		B,$0C
_LOOP
	LD		(HLI),A
	DEC		B
	JR		NZ,_LOOP
	PUSH	HL
	
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	FGET16	D,E,XRAM_INVENTORY_ANIMITE
	BATTERY_OFF
	CALL	?CONVERT_NUMBER_2_ELEMENT
	POP		HL
	CALL	?MENU_RINGUP_DISPLAY_NUMBERS


	;*****BANK ITS IN....warning if bank changes, update this	
	LD		A,$03							
	LD		(VBLANK_BANK),A	
	MOVADDR	VBLANK_FUNC,?VBLANK_MENU_RINGUP	;setting up the vblank function	
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT	;clobbers actors for now
	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE	;resets the vblank function


	JP		?MENU_RINGUP_LOOP

;********************************	
?MENU_RINGUP_LEVELUP_INFO	
	LD		A,(MENU_CURSOR_ID)
	LD		(MENU_SPECIAL_NUMBER_HOLDER),A
	CP		MENU_RINGUP_SCROLLBACK
	JP		NC,?MENU_RINGUP_NO_INFO
	SUB		$03						;might need to dec by 3 (or get rid of) because of positions
	LD		C,A
	LD		B,MENU_RINGUP_COST_SIZE
	CALL	?MULT
	LD		DE,MENU_RINGUP_COSTS
	ADD		HL,DE					;where in the store var the associated costs are
	LD		A,(HLI)
	LD		E,A
	LD		A,(HLI)
	LD		D,A
	CP		$FF						;the level of the creature at this spot on the menu
	JP		Z,?MENU_RINGUP_NO_INFO
	PUSH	HL
	CALL	?CONVERT_NUMBER_2_ELEMENT
	LD		HL,MENU_SPECIAL_UPDATE_VAR
	LD		A,MENU_RINGUP_ANIMITE_VRAM
	LD		(HLI),A
	CALL	?MENU_RINGUP_DISPLAY_NUMBERS
	LD		B,H
	LD		C,L
	POP		HL
	PUSH	BC
	LD		A,(HLI)
	LD		E,A
	LD		D,$00
	CALL	?CONVERT_NUMBER_2_ELEMENT
	POP		HL
	LD		A,MENU_RINGUP_INFUSED_VRAM
	LD		(HLI),A
	CALL	?MENU_RINGUP_DISPLAY_NUMBERS
	PUSH	HL
	
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	LD		A,(MENU_CURSOR_ID)
	SUB		$03
	LD		HL,MENU_SPECIAL_ON_SCREEN
	LD		C,A
	LD		B,$00
	ADD		HL,BC
	LD		A,(HL)						;the creature number
	LD		HL,XRAM_INVENTORY_INFUSED
	LD		C,A
	ADD		HL,BC
	LD		A,(HL)						;the amount of infused animite
	LD		E,A
	LD		D,$00
	BATTERY_OFF
	CALL	?CONVERT_NUMBER_2_ELEMENT
	POP		HL
	LD		A,MENU_RINGUP_INFUSED_VRAM
	LD		(HLI),A
	CALL	?MENU_RINGUP_DISPLAY_NUMBERS
	PUSH	HL
	
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	FGET16	D,E,XRAM_INVENTORY_ANIMITE
	BATTERY_OFF
	CALL	?CONVERT_NUMBER_2_ELEMENT
	POP		HL
	CALL	?MENU_RINGUP_DISPLAY_NUMBERS
	
	;*****BANK ITS IN....warning if bank changes, update this	
	LD		A,$03							
	LD		(VBLANK_BANK),A	
	MOVADDR	VBLANK_FUNC,?VBLANK_MENU_RINGUP	;setting up the vblank function	
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT	;clobbers actors for now
	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE	;resets the vblank function

	JP		?MENU_RINGUP_LOOP

;********************************
?VBLANK_MENU_RINGUP
	LD		HL,MENU_SPECIAL_UPDATE_VAR
	LD		BC,MENU_RINGUP_COST_POS
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI
	
	LD		BC,MENU_RINGUP_INFUSED_COST_POS
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI
	
	LD		BC,MENU_RINGUP_INFUSED_POS
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI
	
	LD		BC,MENU_RINGUP_MONEY_POS
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI
	
	RET

;********************************
;Initializes the RINGUP menu, along with the border, and
;displays the initial choices of items, spells, and relics
?MENU_RINGUP_START
	CALL		?MENU_SPECIAL_ATTRIB_SETUP
	LD			BC,MENU_RINGUP_BG_TABLE
	CALL		?MENU_SPECIAL_READ_DUMP
	
	XOR			A
	LD			(MENU_SPECIAL_TOP_ITEM),A
	LD			(MENU_SPECIAL_TYPE_OFFSET),A
	LD			A,$03
	LD			(MENU_CURSOR_ID),A
		
	LD			HL,XRAM_INVENTORY_RINGS
	SET16		H,L,MENU_SPECIAL_TYPE_ADD
	
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	LD			A,(XRAM_CREATURECOUNT)
	LD			(MENU_SPECIAL_TOTAL_ITEMS),A
	BATTERY_OFF
	CALL		?MENU_RINGUP_MAIN
	
	MENU_INIT	MENU_RINGUP_SEL,243,MENU_SPECIAL_VALID,?MENU_SHOP_KEY_START,?MENU_FLASH,(MENU_CURSOR_ID),MENU_CURSOR_BLINK,MENU_CURSOR_SPRITE
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT
	LD		A,$03
	LD		(MENU_SPECIAL_MENU_SECTION),A
	LD		A,MENU_RINGUP_ARROW_VRAM
	LD		(MENU_SPECIAL_VRAM_ARROW_POS),A

	CALL	?MENU_SPECIAL_BACK_REMOVAL
	XOR		A
	LD		HL,MENU_SPECIAL_VALID+MENU_RINGUP_SCROLLBACK	
	LD		(HLI),A		
	LD		(HL),A
	LD		A,(MENU_SPECIAL_TOTAL_ITEMS)
	LD		C,A
	LD		A,MENU_SPECIAL_NUMBER_ON_SCREEN
	CP		C
	JR		NC,_NOFORWARD

	LD		A,$01
	LD		(HL),A						;setting up scroll forward to be valid
	CALL	?MENU_SPECIAL_FORWARD_INSERT
	JR		_DONE

_NOFORWARD
	CALL	?MENU_SPECIAL_FORWARD_REMOVAL	
_DONE	
	JP			?MENU_RINGUP_LOOP

;********************************
?MENU_RINGUP_MAIN	
	CALL		?MENU_RINGUP_ON_SCREEN
	LD			BC,CREATURE_NAMETABLE
	FSET16		B,C,MENU_SPECIAL_TYPE_TABLE
	LD			A,CREATURE_NAME_SIZE
	LD			(MENU_SPECIAL_TYPE_SIZE),A
	LD			(MENU_SPECIAL_NAME_SIZE),A
	SCREEN_HIDE
	CALL		?MENU_RINGUP_ITEMS_UPDATE
		
	LD			BC,MENU_RINGUP_STR
	LD			A,$10
	CALL		?MENU_SPECIAL_NUMBERS
	CALL		?MENU_RINGUP_DISPLAY_LEVELS		;displays the levels for all creatures on the screen
	CALL		?MENU_RINGUP_EQUIPPED
	SCREEN_SHOW
	CALL		?MENU_RINGUP_ASSOCIATE
	RET
	
;********************************
;Displays items on screen that are stored in MENU_SPECIAL_ON_SCREEN
;WARNING: Screen must already be hidden upon entering this fucntion
?MENU_RINGUP_ITEMS_UPDATE
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
	LD		A,?RING
	LD		(BC),A
	INC		BC
	FSET16	B,C,INV_ADDR
	CALL_FOREIGN	?BTL_COPY_CREATURE_ARRAY	; copy into the dest array
	LD		HL,INV_CURRENT	
	LD		A,(MENU_SPECIAL_TYPE_OFFSET)		;the name offset for the type
	LD		E,A
	LD		D,$00
	ADD		HL,DE
	SET16	H,L,MENU_CUR_CHAR
	LD		A,(MENU_SPECIAL_NAME_SIZE)		;the size of the name string for creatures
	INC		A								;add one to the size because we added a ring char
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
	INC		A									;keeping the space for the ring in place
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
;Sets up a holding variable which contains the number of each item currently on the screen
;Takes in the address of the table in MENU_SPECIAL_TYPE_ADD
;Outputs the items on screen into  MENU_SPECIAL_ON_SCREEN
?MENU_RINGUP_ON_SCREEN
	LD		A,(MENU_SPECIAL_TOP_ITEM)
	LD		(MENU_SPECIAL_COUNTER),A
	XOR		A
	LD		(MENU_SPECIAL_COUNTER+1),A
	ADD		HL,BC
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON

_LOOP
	LD		A,(MENU_SPECIAL_TOP_ITEM)
	ADD		A,MENU_SPECIAL_NUMBER_ON_SCREEN
	LD		E,A
	LD		A,(MENU_SPECIAL_COUNTER)
	CP		E
	JR		Z,_EMPTIES
	INC		A
	LD		(MENU_SPECIAL_COUNTER),A
	DEC		A							; one too many for func..fixing for now
	LD		C,A
	
	LD		B,CREATURE_XRAM_SIZE
	CALL	?MULT
	LD		BC,CREATURE00
	ADD		HL,BC
	
	LD		A,(HL)
	CP		$FF
	JR		Z,_LOOP
	LD		E,A
	LD		HL,MENU_SPECIAL_ON_SCREEN
	LD		A,(MENU_SPECIAL_COUNTER+1)
	LD		C,A
	LD		B,$00
	ADD		HL,BC
	LD		(HL),E
	INC		A
	LD		(MENU_SPECIAL_COUNTER+1),A
	CP		MENU_SPECIAL_NUMBER_ON_SCREEN
	JR		NZ,_LOOP
	BATTERY_OFF	
	RET					;all the proper items have been loaded into the holder
	
_EMPTIES
	LD		HL,MENU_SPECIAL_ON_SCREEN	
	LD		A,(MENU_SPECIAL_COUNTER+1)
	LD		C,A
	LD		B,$00
	ADD		HL,BC
		
_EMPTIES2
	LD		A,$FF
	LD		(HLI),A
	INC		C
	LD		A,C
	CP		MENU_SPECIAL_NUMBER_ON_SCREEN
	JR		NZ,_EMPTIES2
	BATTERY_OFF
	RET					;proper items along with empties have been placed in holder

;********************************
?MENU_RINGUP_ASSOCIATE
	XOR		A
	LD		(MENU_SPECIAL_COUNTER),A
	LD		HL,MENU_SPECIAL_ON_SCREEN
_NEXT
	LD		A,(MENU_SPECIAL_COUNTER)
	CP		MENU_SPECIAL_NUMBER_ON_SCREEN
	RET		Z
	INC		A
	LD		(MENU_SPECIAL_COUNTER),A
	LD		A,(HLI)
	LD		D,A								;saving the creature # in D
	LD		E,$00							;the counter for the comparison section
	PUSH	HL								;pushing HL to save the address for when we return to this portion
	LD		HL,MENU_RINGUP_COST0
	SWITCH_RAM_BANK		WRAM_INFLATE
	
_COMPARE
	LD		A,(HLI)							;a creature # that the ringsmith can level
	CP		D								;is it the same as the creature on_screen?
	JR		Z,_ASSOCIATE					;if it is the same, associate the value in MENU_RINGUP_COSTS
	INC		E
	LD		A,(MENU_RINGUP_TOTAL)
	CP		E
	JR		NZ,_COMPARE						;continue searching for a math
_NOTHING
	LD		A,$FF							;no match found, set to a NULL number
	LD		BC,INV_CURRENT					;where storing function expects values
	LD		(BC),A
	INC		BC
	LD		(BC),A
	INC		BC
	LD		(BC),A
	JR		_STORE

_ASSOCIATE
	LD		A,(MENU_SPECIAL_COUNTER)
	DEC		A
	LD		C,A
	LD		B,$00
	LD		HL,MENU_RINGUP_SCREEN_LEVELS
	ADD		HL,BC
	LD		A,(HL)							;level of the current creature
	CP		MENU_RINGUP_MAX_LEVEL
	JR		Z,_NOTHING
	LD		C,A
	LD		B,MENU_RINGUP_COST_SIZE
	CALL	?MULT
	LD		DE,MENU_RINGUP_LEVEL_COSTS
	ADD		HL,DE							;the offset into the costs table for the costs of this creature at this level
	SET16	H,L,INV_OBJ_PTR
	LD		BC,INV_CURRENT
	FSET16	B,C,INV_ADDR
	CALL_FOREIGN	?MENU_RINGUP_GET_COSTS	;loads the levels costs into INV_CURRENT for storage
	
_STORE
	LD		A,(MENU_SPECIAL_COUNTER)
	DEC		A								;counter has already been incremented, adjusting for this function
	LD		C,A
	LD		B,MENU_RINGUP_COST_SIZE
	CALL	?MULT
	LD		BC,MENU_RINGUP_COSTS
	ADD		HL,BC
	LD		BC,INV_CURRENT					;where costs have been loaded into
	LD_HLI_BCI
	LD_HLI_BCI
	LD		A,(BC)
	LD		(HL),A
	POP		HL
	JP		_NEXT

;********************************
?MENU_RINGUP_LEVEL_RING
	LD		A,(MENU_RETURN_VALUE)
	SUB		$03								;offset for valid array
	LD		C,A
	LD		B,MENU_RINGUP_COST_SIZE
	CALL	?MULT
	LD		DE,MENU_RINGUP_COSTS
	ADD		HL,DE
	LD		C,(HL)
	INC		HL
	LD		B,(HL)
	INC		HL
	PUSH	BC								;pushing item cost onto stack
	PUSH	HL
	
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	FGET16	H,L,XRAM_INVENTORY_ANIMITE		;how much money tony has
								
	LD		A,B
	CP		H
	JR		C,_PLENTYMONEY
	JR		NZ,?MENU_RINGUP_CANT_LEVEL
	LD		A,L
	CP		C
	JP		C,?MENU_RINGUP_CANT_LEVEL

_PLENTYMONEY
	LD		A,(MENU_RETURN_VALUE)
	SUB		$03
	LD		HL,MENU_SPECIAL_ON_SCREEN
	LD		C,A
	LD		B,$00
	ADD		HL,BC							;to get to creature type in var
	LD		A,(HL)
	LD		C,A
	BATTERY_ON
	LD		HL,XRAM_INVENTORY_INFUSED
	ADD		HL,BC							;getting to offset for amount of infused for creature type selected
	POP		DE
	PUSH	DE								;quick fix to keep stack balanced
	LD		A,(DE)
	LD		C,A
	LD		A,(HL)
	CP		C				;****BATTERY OFF HERE???****
	JR		C,?MENU_RINGUP_CANT_LEVEL
	SUB		C
	LD		(HL),A							;the new amount of infused that tony has
	
	FGET16	D,E,XRAM_INVENTORY_ANIMITE		;reloading amount of money
	LD		A,E
	POP		HL								;quick fix to reset stack
	POP		BC								;getting item cost back off stack
	SUB		C								;subtracting amount from tonys money
	LD		E,A
	JR		NC,_NOCARRY
	DEC		D
	
_NOCARRY
	LD		A,D
	SUB		B
	LD		D,A
	FSET16	D,E,XRAM_INVENTORY_ANIMITE	
	
	CALL	?MENU_RINGUP_UPDATE_RING
	CALL	?MENU_RINGUP_ASSOCIATE

	JP		?MENU_RINGUP_LOOP

;********************************
?MENU_RINGUP_CANT_LEVEL
	POP 	HL
	POP		HL
	BATTERY_OFF
	SOUND_START_SFX	SFXID_SFX_CANCEL
	JP		?MENU_RINGUP_LOOP

;********************************
?MENU_RINGUP_UPDATE_RING
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON
	LD		A,(MENU_SPECIAL_TOP_ITEM)
	LD		C,A
	LD		A,(MENU_RETURN_VALUE)
	SUB		$03
	ADD		A,C
	LD 		C,A
	LD		B,CREATURE_XRAM_SIZE			
	CALL	?MULT
	LD		DE,CREATURE00
	ADD		HL,DE
	SET16	H,L,RINGSMITH_XRAM_CREATURE
	LD		A,MENU_RINGUP_ADD_LEVEL					;need to send func one more level than i want to raise it by...(want to raise by 1 level, must send it 2)
	LD		(RINGSMITH_LVL_TO_RAISE),A
	PUSH_RAM_BANK
	CALL_FOREIGN	?RINGSMITH_GENERATE_CREATURE
	POP_RAM_BANK
	BATTERY_OFF

	LD		A,(MENU_RETURN_VALUE)
	SUB		$03
	LD		(MENU_SPECIAL_COUNTER),A				;setting up the variable to hold the on_screen item number
	LD		HL,MENU_RINGUP_SCREEN_LEVELS
	LD		C,A
	LD		B,$00
	ADD		HL,BC
	LD		A,(HL)
	INC		A
	LD		(HL),A
	LD		(MENU_SPECIAL_UPDATE_VAR),A
	
	;*****BANK ITS IN....warning if bank changes, update this	
	LD		A,$03							
	LD		(VBLANK_BANK),A	
	MOVADDR	VBLANK_FUNC,?MENU_RINGUP_CREATURE_LEVEL	;setting up the vblank function	
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT			;clobbers actors for now
	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE			;resets the vblank function
	RET

;********************************
;figures out an items cost, or amount in inventory and puts 
;that value into vram
?MENU_RINGUP_DISPLAY_LEVELS
	XOR		A
	LD		(VBK),A
	LD		(MENU_SPECIAL_COUNTER),A
		
_LOOP
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON
	;first gets the creature level, then stores it in MENU_RINGUP_SCREEN_LEVELS	
	LD		A,(MENU_SPECIAL_TOP_ITEM)
	LD		C,A
	LD		A,(MENU_SPECIAL_COUNTER)
	ADD		A,C
	LD		C,A
	LD		B,CREATURE_XRAM_SIZE
	CALL	?MULT
	LD		BC,CREATURE00
	ADD		HL,BC							;the creature and its offset to the level info
	LD	 	C,XRAM_CREATURE_LVL
	LD		B,$00
	ADD		HL,BC
	LD		A,(HL)							;the level the creature is at
	LD		E,A
	LD		HL,MENU_RINGUP_SCREEN_LEVELS	;the holding variable for the levels of all the creatures on screen
	LD		A,(MENU_SPECIAL_COUNTER)
	LD		C,A
	LD		B,$00
	ADD		HL,BC
	LD		(HL),E							;storing the level in the holder variable
	LD		A,E
	LD		(MENU_SPECIAL_UPDATE_VAR),A		;storing the level into a var used by the creature_level func to display to screen
	BATTERY_OFF
	CALL	?MENU_RINGUP_CREATURE_LEVEL
	
_NEXT
	LD		A,(MENU_SPECIAL_COUNTER)
	INC		A
	CP		MENU_SPECIAL_NUMBER_ON_SCREEN
	RET		Z
	
	LD		(MENU_SPECIAL_COUNTER),A
	JP		_LOOP

;********************************
;must be called either with screen hidden or in a vblank
;MENU_SPECIAL_COUNTER    --> holds the menu item number of the creature to show level for
;MENU_SPECIAL_UPDATE_VAR --> holds the level number of the creature for display
?MENU_RINGUP_CREATURE_LEVEL
	LD		A,(MENU_SPECIAL_COUNTER)
	LD		C,A
	LD		B,$20							;the amount to move after each amount displayed
	CALL	?MULT

	LD		DE,MENU_RINGUP_LEVEL_POS	
	ADD		HL,DE
	LD		A,(MENU_SPECIAL_UPDATE_VAR)
	CP		$FF
	JR		Z,_EMPTIES
	PUSH	HL
	LD		E,A
	LD		D,$00
		
_MAIN	
	CALL	?CONVERT_NUMBER_2_ELEMENT
	POP 	HL	
	LD		E,MENU_RINGUP_NUMBERS_VRAM
	LD		A,(X10)
	CALL	?MENU_SPECIAL_INSERT_NUMBER
	LD		E,MENU_RINGUP_NUMBERS_VRAM
	LD		A,(X1)
	CALL	?MENU_SPECIAL_INSERT_NUMBER
	RET

_EMPTIES
	;no creatures present in these spaces so put a blank in
	LD		A,MENU_SPECIAL_VRAM_BLANK_POS
	;a blank space
	LD		(HLI),A
	LD		(HLI),A
	RET


;********************************
?MENU_RINGUP_EQUIPPED
	XOR		A
	LD		(MENU_SPECIAL_COUNTER),A
_LOOP
	LD		E,MENU_RINGUP_CHECK_VRAM		;by default, a ring is equipped
	LD		A,(MENU_SPECIAL_COUNTER)
	LD		D,A
	LD		A,(MENU_SPECIAL_TOP_ITEM)
	ADD		A,D
	LD		D,A
	LD		C,$00
	LD		HL,XRAM_INVENTORY_RINGS
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON

_MINORLOOP
	LD		A,(HLI)
	DEC		A
	CP		D
	JR		Z,_EQUIPPED
	INC		C
	LD		A,C
	CP		$0A
	JR		NZ,_MINORLOOP		
	LD		E,MENU_SPECIAL_VRAM_BLANK_POS	;the ring is not equipped
	
_EQUIPPED
	BATTERY_OFF
	LD		A,(MENU_SPECIAL_COUNTER)
	LD		C,A
	LD		B,$20
	PUSH	DE								;saving what to show
	CALL	?MULT							;how much space there is between each equipped check
	LD		BC,MENU_RINGUP_EQUIPPED_POS
	ADD		HL,BC							;the address of where to put the check
	POP		DE								;getting back what to show
	LD		(HL),E							;the 'X' tile to show the ring is equipped

	LD		A,(MENU_SPECIAL_COUNTER)
	INC		A
	CP		MENU_SPECIAL_NUMBER_ON_SCREEN	;max amount of equipped creatures
	RET		Z
	LD		(MENU_SPECIAL_COUNTER),A
	JR		_LOOP
	
;********************************
	END
;********************************