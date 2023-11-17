;********************************
; MENU_SHOPS.S
;********************************
;	Author:	Erik Hutchinson
;	(c)2000	Interactive Imagination
;	All rights reserved
;********************************

;********************************
?MENU_SHOP_LOOP
	LD		A,$FF							;precautionary
	LD		(MENU_RETURN_VALUE),A
	MENU_GO
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT  	; clobbers actors for now
	LD		A,(MENU_RETURN_VALUE)
	CP		$FF	
	JR		Z,_ITEM_ON_CURSOR
	
	CP		$FE								;the b button
	JP		Z,?MENU_SHOP_VALID_SELECT
	
	CP		MENU_SHOP_SCROLLBACK			; LEFT: go back in the menu
	JP		Z,?MENU_SHOP_SCROLL_BACK
	CP		MENU_SHOP_SCROLLFORWARD			; RIGHT: go forward in the menu
	JP		Z,?MENU_SHOP_SCROLL_FORWARD

	CP		MENU_SHOP_BUY
	JP		Z,?MENU_SHOP_BUYSELL_SWITCH
	CP		MENU_SHOP_SELL
	JP		Z,?MENU_SHOP_BUYSELL_SWITCH
	CP		MENU_SHOP_DONE
	JP		Z,?MENU_SPECIAL_END

	;not one of the previous choices, so user must be either buying or selling an item
	LD		A,(MENU_SPECIAL_MODE)
	CP		MENU_SHOP_BUY_MODE
	JP		Z,?MENU_SHOP_BUY_ITEM
	JP		?MENU_SHOP_SELL_ITEM

_ITEM_ON_CURSOR
	LD	A,(MENU_CURSOR_ID)
	LD	C,A
	LD	A,(MENU_SPECIAL_NUMBER_HOLDER)	;used to keep track of updates
	CP	C
	JP	Z,?MENU_SHOP_LOOP
	LD	A,C
	LD	(MENU_SPECIAL_NUMBER_HOLDER),A
	LD	B,MENU_SHOP_SCROLLBACK		;the menu choice right after the last item
	LD	A,MENU_SHOP_ITEM1
	
_LOOP
	CP	C
	JP	Z,?MENU_SHOP_ITEM_INFO
	INC	A
	CP	B
	JR	NZ,_LOOP
	
	LD		A,$03							
	LD		(VBLANK_BANK),A	
	MOVADDR	VBLANK_FUNC,?MENU_SHOP_NO_ITEM_INFO	;setting up the vblank 
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT  		;clobbers actors for now	
	MOVADDR	VBLANK_FUNC,?VBLANK_IDLE		;resetting the vblank
	JP		?MENU_SHOP_LOOP

;********************************
;Scrolls back through the inventory list
?MENU_SHOP_SCROLL_BACK
	XOR		A
	LD		(MENU_SHOP_ITEM_SOLDOUT),A			;resetting var
	CALL	?MENU_SHOP_NUMBER_OF_ITEMS
	LD		A,(MENU_SPECIAL_MODE)
	CP		MENU_SHOP_BUY_MODE
	JR		NZ,_SELL
	
	LD		A,(MENU_SPECIAL_TOP_ITEM)
	DEC		A
	LD		(MENU_SPECIAL_TOP_ITEM),A
	CALL	?MENU_SHOP_PREVIOUS_BUY_SCREEN
	JR		_DISPLAY
	
_SELL	
	CALL	?MENU_SPECIAL_PREVIOUS_SCREEN
		
_DISPLAY	
	LD		A,(MENU_SPECIAL_ITEM_NUM)
	SUB		MENU_SPECIAL_NUMBER_ON_SCREEN
	LD		(MENU_SPECIAL_ITEM_NUM),A
	CALL	?MENU_SHOP_MAIN2
	JP		?MENU_SHOP_LOOP

;********************************
?MENU_SHOP_SCROLL_FORWARD						;resetting the return_value
	LD		A,(MENU_SHOP_ITEM_SOLDOUT)
	CP		$00
	JR		NZ,_DISPLAY

	LD		A,(MENU_SPECIAL_MODE)
	CP		MENU_SHOP_BUY_MODE
	JR		NZ,_SELL
	LD		A,(MENU_SPECIAL_ITEM_NUM)
	LD		(MENU_SPECIAL_TOP_ITEM),A
	ADD		A,MENU_SPECIAL_NUMBER_ON_SCREEN
	LD		(MENU_SPECIAL_ITEM_NUM),A	
	JR		_DISPLAY

_SELL
	LD		HL,MENU_SPECIAL_ON_SCREEN
	LD		E,$07
	LD		D,$00
	ADD		HL,DE
	LD		A,(HL)
	INC		A
	LD		(MENU_SPECIAL_TOP_ITEM),A
	LD		A,(MENU_SPECIAL_ITEM_NUM)
	ADD		A,MENU_SPECIAL_NUMBER_ON_SCREEN
	LD		(MENU_SPECIAL_ITEM_NUM),A

_DISPLAY	
	XOR		A
	LD		(MENU_SHOP_ITEM_SOLDOUT),A
	LD		A,(MENU_RETURN_VALUE)
	LD		(MENU_CURSOR_ID),A
	CALL	?MENU_SHOP_MAIN
	JP		?MENU_SHOP_LOOP

;********************************
;The entry point into the shop menu interface
?MENU_SHOP_START
	CALL	?MENU_SPECIAL_ATTRIB_SETUP	
	LD		BC,MENU_SHOP_BG_TABLE
	CALL	?MENU_SPECIAL_READ_DUMP	
	
	XOR		A
	LD		(MENU_SPECIAL_COUNTER),A
	LD		(MENU_SHOP_ITEM_SOLDOUT),A
	LD		A,MENU_SPECIAL_NUMBER_ON_SCREEN
	LD		(MENU_SPECIAL_ITEM_NUM),A
	
	LD		A,$03
	LD		(MENU_SPECIAL_MODE),A		;the menu starts off in no mode
	LD		(MENU_SPECIAL_MENU_SECTION),A
	LD		A,$04
	LD		(MENU_SPECIAL_VRAM_ARROW_POS),A
	LD		A,MENU_SHOP_BUY
	LD		(MENU_CURSOR_ID),A
	
	SWITCH_RAM_BANK		WRAM_INFLATE
	LD		A,(MENU_SHOP_TABLE_SIZE)
	LD		(MENU_SPECIAL_TOTAL_ITEMS),A
	
	LD		A,ITEM_SIZE
	LD		(MENU_SPECIAL_TYPE_SIZE),A
	LD		A,ITEM_NAME_OFFSET
	LD		(MENU_SPECIAL_TYPE_OFFSET),A
	LD		HL,ITEM_TABLE
	SET16	H,L,MENU_SPECIAL_TYPE_TABLE
	
	LD		HL,XRAM_INVENTORY_ITEMS
	SET16	H,L,MENU_SPECIAL_TYPE_ADD
	
	LD		A,ITEM_NAME_SIZE
	LD		(MENU_SPECIAL_NAME_SIZE),A
	
	SCREEN_HIDE
	LD			DE,$8860
	FSET16		D,E,MENU_VRAM_PTR
	LD			A,104							;8 times the item size..number of blanks
	CALL		?MENU_SPECIAL_BLANK_LINE		;inserts blank spaces in place of items
	LD		BC,MENU_SHOP_STR					;the string to be added into vram
	LD		A,$0D								;the number of chars in the string
	CALL	?MENU_SPECIAL_NUMBERS				;the function that puts the string into vram
	CALL	?MENU_SHOP_TONY_MONEY
	CALL	?VBLANK_MENU_SHOP
	MENU_INIT	MENU_SHOP_SEL,243,MENU_SPECIAL_VALID,?MENU_SHOP_KEY_START,?MENU_FLASH,(MENU_CURSOR_ID),MENU_CURSOR_BLINK,MENU_CURSOR_SPRITE
	SCREEN_SHOW
	JP		?MENU_SHOP_LOOP	
	
;********************************
;the main loop that gets called by the other menu functions when
;the screen needs to be updated, usually as a result of a scroll
?MENU_SHOP_MAIN
	CALL	?MENU_SHOP_NUMBER_OF_ITEMS		;result is put in MENU_SPECIAL_TOTAL_ITEMS
	LD		A,(MENU_SPECIAL_MODE)
	CP		MENU_SHOP_BUY_MODE
	JR		NZ,_SELL
	
	CALL	?MENU_SHOP_BUY_ON_SCREEN		;gets shop list....only for BUY menu
	JR		?MENU_SHOP_MAIN2

_SELL
	CALL	?MENU_SPECIAL_SELL_ON_SCREEN		;gets inventory...only for SELL menu

;********************************
?MENU_SHOP_MAIN2
	SCREEN_HIDE	
	LD		BC,MENU_SHOP_BG_TABLE
	CALL	?MENU_SPECIAL_READ_DUMP
	CALL	?MENU_SPECIAL_ITEMS_UPDATE
	CALL	?MENU_SHOP_ITEM_AMOUNT
	
_DONE_ITEMS
	CALL	?MENU_SHOP_TONY_MONEY
	CALL	?VBLANK_MENU_SHOP

	SCREEN_SHOW
	CALL		?MENU_SPECIAL_VALID_ARRAY_UPDATE
	CALL		?SYSTEM_UPDATE_GAME_NOSCRIPT  	;clobbers actors for now
	MENU_INIT	MENU_SHOP_SEL,243,MENU_SPECIAL_VALID,?MENU_SHOP_KEY_START,?MENU_FLASH,(MENU_CURSOR_ID),MENU_CURSOR_BLINK,MENU_CURSOR_SPRITE
	XOR	A
	LD	(MENU_SPECIAL_NUMBER_HOLDER),A				;for functions that check this to update
	RET

;********************************
;figures out an items cost, or amount in inventory and puts 
;that value into vram
?MENU_SHOP_ITEM_AMOUNT
	XOR		A
	LD		(VBK),A
	LD		(MENU_SPECIAL_COUNTER),A
		
_LOOP	
	LD		HL,MENU_SPECIAL_ON_SCREEN
	LD		A,(MENU_SPECIAL_COUNTER)
	LD		C,A
	LD		B,$00
	ADD		HL,BC
	LD		A,(HL)
	CP		$FF
	JP 		Z,_NEXT
	LD		B,$20							;the amount to move after each amount displayed
	CALL	?MULT

	LD		E,L
	LD		D,H
	LD		HL,MENU_SHOP_ITEM_AMOUNT_POS	
	ADD		HL,DE
	PUSH	HL
	LD		A,(MENU_SPECIAL_MODE)
	CP		MENU_SHOP_BUY_MODE
	JR		Z,_BUY
	
_SELL
	LD		A,(MENU_SPECIAL_COUNTER)		;the item number
	LD		C,A
	LD		B,$00
	LD		HL,MENU_SPECIAL_ON_SCREEN
	ADD		HL,BC
	LD		A,(HL)	
	CALL	?MENU_SHOP_GET_ITEM_COST	
	POP		HL
	LD		(HL),MENU_SHOP_VRAM_BLANK_POS
	INC		HL
	LD		D,B
	LD		E,C
	JR		_MAIN
	
_BUY
	LD		A,(MENU_SPECIAL_COUNTER)
	LD		C,A
	LD		A,(MENU_SPECIAL_TOP_ITEM)
	ADD		A,C
	LD		C,A	
	LD		B,$03							;3 bytes between each item in shop table
	CALL	?MULT							;getting to proper position in table...so mult by 3 bytes		
	LD		BC,MENU_SHOP_TABLE_ADDRESS
	ADD		HL,BC
	INC		HL								;getting to the cost offset
	LD		A,(HLI)							;how much the item costs
	LD		E,A
	LD		D,(HL)
	POP		HL
	LD		(HL),MENU_SHOP_VRAM_ANIMITE_POS			; the symbol for animite
	INC		HL
		
_MAIN
	CALL	?CONVERT_NUMBER_2_ELEMENT
	LD		B,H
	LD		C,L	
	LD		HL,MENU_SPECIAL_UPDATE_VAR
	LD		(HL),$01
	INC		HL
	LD		(HL),B
	INC		HL
	LD		(HL),C
	INC		HL	
	CALL	?MENU_SHOP_DISPLAY_NUMBERS
	LD		(HL),MENU_SHOP_VRAM_BLANK_POS			;a blank space
	INC		HL
	CALL	?VBLANK_MENU_SHOP

_NEXT
	LD		A,(MENU_SPECIAL_COUNTER)
	INC		A
	CP		MENU_SPECIAL_NUMBER_ON_SCREEN
	RET		Z
	
	LD		(MENU_SPECIAL_COUNTER),A
	JP		_LOOP
	
;********************************	
?MENU_SHOP_BUY_ON_SCREEN
	LD		A,(MENU_SPECIAL_TOP_ITEM)
	LD		(MENU_SPECIAL_COUNTER),A
	XOR		A
	LD		(MENU_SPECIAL_NUMBER_HOLDER),A
	SWITCH_RAM_BANK		WRAM_INFLATE

_LOOP	
	LD		A,(MENU_SPECIAL_COUNTER)
	LD		C,A
	LD		B,$03							;3 bytes between each item in shop table
	CALL	?MULT							;getting to proper position in table...so mult by 3 bytes		
	
	LD		DE,MENU_SHOP_TABLE_ADDRESS
	ADD		HL,DE
	LD		A,(HL)
	LD		B,A

	LD		A,(MENU_SPECIAL_NUMBER_HOLDER)
	LD		HL,MENU_SPECIAL_ON_SCREEN
	LD		E,A
	LD		D,$00
	ADD		HL,DE
	LD		(HL),B	
	LD		A,(MENU_SPECIAL_ITEM_NUM)
	LD		B,A
	LD		A,(MENU_SPECIAL_COUNTER)
	INC		A
	CP		B								;the max number item to be up to
	RET		Z
	
	LD		(MENU_SPECIAL_COUNTER),A
	LD		B,A
	LD		A,(MENU_SPECIAL_NUMBER_HOLDER)
	INC		A
	LD		(MENU_SPECIAL_NUMBER_HOLDER),A
	LD		A,(MENU_SPECIAL_TOTAL_ITEMS)
	CP		B
	JR		NZ,_LOOP
	
_EMPTIES	
	LD		A,(MENU_SPECIAL_NUMBER_HOLDER)
	LD		HL,MENU_SPECIAL_ON_SCREEN
	LD		E,A
	LD		D,$00
	ADD		HL,DE
	LD		(HL),$FF
	
	LD		A,(MENU_SPECIAL_ITEM_NUM)
	LD		B,A
	LD		A,(MENU_SPECIAL_COUNTER)
	INC		A
	CP		B
	RET		Z
	
	LD		(MENU_SPECIAL_COUNTER),A
	LD		A,(MENU_SPECIAL_NUMBER_HOLDER)
	INC		A
	LD		(MENU_SPECIAL_NUMBER_HOLDER),A
	JR		_EMPTIES

;********************************	
?MENU_SHOP_PREVIOUS_BUY_SCREEN
	LD		A,(MENU_SPECIAL_TOP_ITEM)
	LD		(MENU_SPECIAL_COUNTER),A
	LD		A,MENU_SPECIAL_NUMBER_ON_SCREEN
	DEC		A
	LD		(MENU_SPECIAL_NUMBER_HOLDER),A
	SWITCH_RAM_BANK		WRAM_INFLATE

_LOOP	
	LD		A,(MENU_SPECIAL_COUNTER)
	LD		C,A
	LD		B,$03							;3 bytes between each item in shop table
	CALL	?MULT							;getting to proper position in table...so mult by 3 bytes		
	LD		DE,MENU_SHOP_TABLE_ADDRESS
	
	ADD		HL,DE
	LD		A,(HL)
	LD		B,A

	LD		A,(MENU_SPECIAL_NUMBER_HOLDER)
	LD		HL,MENU_SPECIAL_ON_SCREEN
	LD		E,A
	LD		D,$00
	ADD		HL,DE
	LD		(HL),B	
	
	LD		A,(MENU_SPECIAL_NUMBER_HOLDER)
	CP		$00
	JR		Z,_DONE
	
	DEC		A
	LD		(MENU_SPECIAL_NUMBER_HOLDER),A
	LD		A,(MENU_SPECIAL_COUNTER)
	DEC		A
	LD		(MENU_SPECIAL_COUNTER),A
	JR		_LOOP

_DONE	
	LD		A,(MENU_SPECIAL_COUNTER)
	LD		(MENU_SPECIAL_TOP_ITEM),A
	RET	

;********************************
?MENU_SHOP_SELL_ITEM
	LD		A,(MENU_RETURN_VALUE)
	SUB		MENU_SHOP_ITEM1				;offset from menu position to actual item

	LD		E,A
	LD		D,$00
	LD		HL,MENU_SPECIAL_ON_SCREEN
	ADD		HL,DE
	LD		A,(HL)
	LD		D,$00
	LD		E,A
	PUSH	DE

	BATTERY_OFF
	LD		A,E
	CALL	?MENU_SHOP_GET_ITEM_COST		;item price comes back in BC
	XOR		A
	CP		C								;is the cost of the item 0?
	JP		NZ,_NOTZERO						;tony cannot sell an item that costs 0
	CP		B
	JP		Z,?CANT_BUYSELL					;the item costs 0, cannot sell it

_NOTZERO
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON

	FGET16	H,L,XRAM_INVENTORY_ANIMITE	
	ADD		HL,BC
	
	LD		A,H								;checking to see if tony has 999 animite
	CP		$03
	JR		C,_MONEYFINE
	JR		Z,_NEXTTEST
	JR		NC,_TOOMUCH

_NEXTTEST
	LD		A,L
	CP		$E7
	JR		C,_MONEYFINE

_TOOMUCH	
	LD		H,$03
	LD		L,$E7
		
_MONEYFINE	
	LD		C,L
	LD		B,H

_CLEANUP
	FSET16	B,C,XRAM_INVENTORY_ANIMITE
	BATTERY_OFF		
	CALL	?MENU_SHOP_TONY_MONEY
	LD		A,$03							
	LD		(VBLANK_BANK),A	
	MOVADDR	VBLANK_FUNC,?VBLANK_MENU_SHOP	;setting up the vblank function	
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT		;clobbers actors for now
	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE		;resets the vblank function

	POP		DE
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	LD		HL,XRAM_INVENTORY_ITEMS
	ADD		HL,DE
	DEC		(HL)
	JP		NZ,_DONE						;if zero, then soldout

_SOLDOUT	
	LD		A,(MENU_RETURN_VALUE)
	SUB		$03
	LD		C,A
	LD		B,$20
	CALL	?MULT

	LD		E,L
	LD		D,H
	LD		HL,MENU_SHOP_ITEM_AMOUNT_POS
	ADD		HL,DE
	LD		B,H
	LD		C,L
	LD		HL,MENU_SPECIAL_UPDATE_VAR
	LD		(HL),$02
	LD		D,$00
	LD		E,$07
	ADD		HL,DE
	
	LD		(HL),B
	INC		HL
	LD		(HL),C
	INC		HL	
	LD		(HL),MENU_SHOP_VRAM_BLANK_POS				;a blank space

	LD		A,$01
	LD		(MENU_SHOP_ITEM_SOLDOUT),A
	LD		A,(MENU_RETURN_VALUE)
	LD		HL,MENU_SPECIAL_VALID
	LD		C,A
	LD		B,$00
	ADD		HL,BC
	LD		(HL),B
	CALL	?MENU_SPECIAL_VALID_ARRAY_UPDATE
	
	CALL	?MENU_SHOP_SETUP_VBLANK	
	MENU_INIT	MENU_SHOP_SEL,243,MENU_SPECIAL_VALID,?MENU_SHOP_KEY_START,?MENU_FLASH,(MENU_CURSOR_ID),MENU_CURSOR_BLINK,MENU_CURSOR_SPRITE
	LD		A,(MENU_CURSOR_ID)				;setting up the values to be passed to item_info func
	LD		C,A
	JP		?MENU_SHOP_ITEM_INFO

_DONE
	BATTERY_OFF
	LD		A,$FF
	LD		(MENU_SPECIAL_NUMBER_HOLDER),A	
	JP		?MENU_SHOP_LOOP

;********************************
?MENU_SHOP_BUY_ITEM
	LD		A,(MENU_RETURN_VALUE)
	SUB		MENU_SHOP_ITEM1					;subtracting offset of valid array
	LD		C,A
	LD		A,(MENU_SPECIAL_ITEM_NUM)
	LD		B,MENU_SPECIAL_NUMBER_ON_SCREEN
	SUB		B
	ADD		A,C
	LD		C,A
	LD		B,$03							;3 bytes between each item in shop table
	CALL	?MULT							;getting to proper position in table...so mult by 3 bytes		
	LD		B,H								;need hl in bc
	LD		C,L
	
	SWITCH_RAM_BANK		WRAM_INFLATE
	
	LD		HL,MENU_SHOP_TABLE_ADDRESS
	ADD		HL,BC
	LD		A,(HLI)							;the item number in the item table
	LD		(INV_ID),A						;storing the item number to buy
	LD		A,(HLI)							;how much the item costs
	LD		C,A
	LD		B,(HL)
	
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	FGET16	H,L,XRAM_INVENTORY_ANIMITE		;how much money tony has
	BATTERY_OFF
	
	PUSH	BC								;pushing item cost onto stack
	LD		A,B
	CP		H
	JR		C,_PLENTYMONEY
	JR		NZ,?CANT_BUYSELL
	LD		A,L
	CP		C
	JP		C,?CANT_BUYSELL

_PLENTYMONEY
	LD		A,INV_TYPE_ITEM
	LD		(INV_ID_TYPE),A
	LD		A,$01
	LD		(INV_ID_TOTAL),A
	CALL_FOREIGN	?INVENTORY_GIVE			;buying the item...function checks to see if tony can get it
	LD		A,(INV_ID_SUCCESS)
	CP		$00
	JP		Z,?CANT_BUYSELL

	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	FGET16	D,E,XRAM_INVENTORY_ANIMITE		;reloading amount of money
	LD		A,E
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
	
_DONE
	BATTERY_OFF	
	CALL	?MENU_SHOP_TONY_MONEY
	CALL	?MENU_SHOP_SETUP_VBLANK	
	LD		A,$FF
	LD		(MENU_SPECIAL_NUMBER_HOLDER),A	
	JP		?MENU_SHOP_LOOP

;********************************
?MENU_SHOP_SETUP_VBLANK
	;*****BANK ITS IN....warning if bank changes, update this	
	LD		A,$03							
	LD		(VBLANK_BANK),A	
	MOVADDR	VBLANK_FUNC,?VBLANK_MENU_SHOP	;setting up the vblank function	
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT	;clobbers actors for now
	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE	;resets the vblank function
	RET
	
;********************************	
?CANT_BUYSELL
	POP		BC								;clearing out the stack
	SOUND_START_SFX	SFXID_SFX_CANCEL
	JP		?MENU_SHOP_LOOP	
	
;********************************	
?MENU_SHOP_DISPLAY_NUMBERS
	LD		E,MENU_SHOP_VRAM_NUMBER_POS
	LD		A,(X100)
	CALL	?MENU_SPECIAL_INSERT_NUMBER
	LD		E,MENU_SHOP_VRAM_NUMBER_POS
	LD		A,(X10)
	CALL	?MENU_SPECIAL_INSERT_NUMBER
	LD		E,MENU_SHOP_VRAM_NUMBER_POS
	LD		A,(X1)
	CALL	?MENU_SPECIAL_INSERT_NUMBER
	RET
	
;********************************
;determines the number of items that is either in tonys inventory
;or in the shop menus list, depending upon whether the menu is in buy or sell mode
;the total number of items is then stored in MENU_SPECIAL_TOTAL_ITEMS
?MENU_SHOP_NUMBER_OF_ITEMS
	LD		A,(MENU_SPECIAL_MODE)
	CP		MENU_SHOP_BUY_MODE
	JR		Z,_BUY		; if 0, then currently in buy mode

	LD		HL,XRAM_INVENTORY_ITEMS
	LD		C,$F0							;the number of bytes in xram
	CALL	?MENU_SPECIAL_NUMBER_OF_ITEMS
	RET

_BUY
	SWITCH_RAM_BANK		WRAM_INFLATE
	LD		A,(MENU_SHOP_TABLE_SIZE)
	LD		(MENU_SPECIAL_TOTAL_ITEMS),A
	RET
	
;********************************
;gets from xram the amount of animite that tony 
;currently has and then calls ?menu_shop_display_numbers 
;to display that amount on the screen	
?MENU_SHOP_TONY_MONEY
	XOR		A
	LD		(VBK),A
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	FGET16	D,E,XRAM_INVENTORY_ANIMITE
	BATTERY_OFF
	CALL	?CONVERT_NUMBER_2_ELEMENT
	LD		HL,MENU_SHOP_MONEY_POSITION
	LD		B,H
	LD		C,L	
	
	LD		HL,MENU_SPECIAL_UPDATE_VAR
	LD		(HL),$01
	INC		HL
	LD		(HL),B
	INC		HL
	LD		(HL),C
	INC		HL	
	
	LD		(HL),MENU_SHOP_VRAM_ANIMITE_POS					;the symbol for animite
	INC		HL
	CALL	?MENU_SHOP_DISPLAY_NUMBERS
	RET	
	

	
;********************************
;should this ever get called, it just exits the menu
?MENU_SHOP_KEY_START
	JP		?MENU_SPECIAL_END		;BAIL BAIL!

;********************************
;switches the menu between buy or sell mode
?MENU_SHOP_BUYSELL_SWITCH
	LD		A,MENU_SHOP_ITEM1
	LD		(MENU_CURSOR_ID),A
	LD		A,(MENU_RETURN_VALUE)
	LD		B,A
	LD		A,(MENU_SPECIAL_MODE)
	CP		B
	JR		NZ,_NEXT
	LD		A,$01
	LD		(MENU_SPECIAL_MENU_SECTION),A
	LD		A,MENU_SHOP_ITEM1
	LD		(MENU_CURSOR_ID),A
	CALL	?MENU_SPECIAL_VALID_ARRAY_UPDATE
	MENU_INIT	MENU_SHOP_SEL,243,MENU_SPECIAL_VALID,?MENU_SHOP_KEY_START,?MENU_FLASH,(MENU_CURSOR_ID),MENU_CURSOR_BLINK,MENU_CURSOR_SPRITE
	JP		?MENU_SHOP_LOOP
	
_NEXT	
	XOR		A
	LD		(MENU_SHOP_ITEM_SOLDOUT),A
	LD		(MENU_SPECIAL_COUNTER),A
	LD		A,MENU_SPECIAL_NUMBER_ON_SCREEN	; how many items on the screen at a time
	LD		(MENU_SPECIAL_ITEM_NUM),A
	INC		A
	LD		(MENU_SPECIAL_MENU_SECTION),A
		
	LD		HL,MENU_SPECIAL_VALID
	LD		D,$00
	LD		E,MENU_SHOP_SCROLLBACK
	ADD		HL,DE
	LD		(HL),D
	INC		HL
	LD		(HL),$01
	
	LD		A,(MENU_RETURN_VALUE)
	CP		MENU_SHOP_BUY
	JR		Z,_BUY
	
_SELL
	LD		A,MENU_SHOP_SELL_MODE
	LD		(MENU_SPECIAL_MODE),A
	JR		_DONE
		
_BUY
	LD		A,MENU_SHOP_BUY_MODE
	LD		(MENU_SPECIAL_MODE),A

_DONE
	XOR		A
	LD		(MENU_SPECIAL_TOP_ITEM),A
	CALL	?MENU_SHOP_MAIN
	JP		?MENU_SHOP_LOOP

;********************************
;Expects 13 bytes to be placed in MENU_SHOP_VBLANK_VAR
;1st byte is how many items are to be updated (how many times to loop, must be at least once)
;next word is the offset into the bg dump
;followed by 4 bytes, each of which is a value to be updated into the dump
;the next five bytes are another set of 1 and 4 	
?VBLANK_MENU_SHOP
	LD		HL,MENU_SPECIAL_UPDATE_VAR
	LD		A,(HLI)
	LD		E,A
	
_MAIN
	DEC		E
	LD		A,(HLI)
	LD		B,A
	LD		A,(HLI)
	LD		C,A
	LD		A,(MENU_SHOP_ITEM_SOLDOUT)
	SUB		E
	CP		$01
	JR		Z,_SELLOUT
	
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI
	
	LD		A,E
	CP		$00
	RET		Z
	JR		_MAIN

	JR		NZ,_MAIN
	RET		

_SELLOUT
	LD		A,$05
	LD		(MENU_SHOP_ITEM_SOLDOUT),A
	LD		E,$0F
	LD		A,C
	SUB		E
	JR		NC,_PREP
	DEC		B

_PREP	
	LD		H,B
	LD		L,A
	LD		D,MENU_SHOP_VRAM_BLANK_POS
	LD		A,$15
	LD		B,$00
	
_SOLDOUTLOOP
	LD		(HL),D
	INC		HL
	DEC		A
	CP		B
	JR		NZ,_SOLDOUTLOOP
	RET	
	
;********************************
;Function provides additional info to user
;When in buy mode, function shows user info on how many of a particular item that he already has
;When in sell mode, function shows user how much money he would gain by selling the particular item
;Function takes 1 argument:
;C is to hold the value of the item cursor is on...
;this MUST be correct in order for this function to work properly
;or else major garbage could occur
?MENU_SHOP_ITEM_INFO	
	DEC		C							;adjusting value of c to match up with tables
	DEC		C
	DEC		C
	LD		HL,MENU_SPECIAL_ON_SCREEN
	LD		B,$00
	ADD		HL,BC
	
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	LD		A,(HL)
	LD		C,A
	LD		B,$00
	LD		HL,XRAM_INVENTORY_ITEMS
	ADD		HL,BC						;the item in xram
	LD		A,(HL)						;how much of that item exists in tonys inv
	LD		E,A
	BATTERY_OFF	
	
	LD		D,$00						;number to be converted in DE
	CALL	?CONVERT_NUMBER_2_ELEMENT
	LD		HL,MENU_SPECIAL_UPDATE_VAR
	LD		(HL),$01
	INC		HL
	LD		BC,MENU_SHOP_XITEM_AMOUNT_POS

	LD		(HL),B
	INC		HL
	LD		(HL),C
	INC		HL
	LD		(HL),$03
	INC		HL
	CALL	?MENU_SHOP_DISPLAY_NUMBERS

_DONE
	CALL	?MENU_SHOP_SETUP_VBLANK	
	JP		?MENU_SHOP_LOOP

;********************************
;Adds blank spots to where the item info goes
;for when the cursor is on a non-item entry
?MENU_SHOP_NO_ITEM_INFO
	LD		HL,MENU_SHOP_XITEM_AMOUNT_POS
	LD		A,MENU_SHOP_VRAM_BLANK_POS		;the code for a blank space
	LD		(HLI),A		
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	RET

;********************************
?MENU_SHOP_VALID_SELECT
	LD		A,(MENU_SPECIAL_MENU_SECTION)
	CP		$00
	JR		Z,_UPPER
	CP		$03
	JP		Z,?MENU_SPECIAL_END
	
_LOWER
	LD		A,$03
	LD		(MENU_SPECIAL_MENU_SECTION),A
	LD		A,MENU_SHOP_BUY
	LD		(MENU_CURSOR_ID),A
	CALL	?MENU_SPECIAL_HAND_REMOVAL
	JR		_DONE

_UPPER
	CALL	?MENU_SPECIAL_UPPER_CHECK
	CP		$00									;if upper check returns zero, done
	JR		Z,_DONE
	LD		A,MENU_SHOP_ITEM1
	LD		(MENU_CURSOR_ID),A
	LD		A,$01
	LD		(MENU_SPECIAL_MENU_SECTION),A
	
_DONE
	MENU_INIT	MENU_SHOP_SEL,243,MENU_SPECIAL_VALID,?MENU_SHOP_KEY_START,?MENU_FLASH,(MENU_CURSOR_ID),MENU_CURSOR_BLINK,MENU_CURSOR_SPRITE
	JP		?MENU_SHOP_LOOP
	
;********************************
?MENU_SPECIAL_VALID_ARRAY_UPDATE
	LD		HL,MENU_SPECIAL_VALID
	LD		C,MENU_SHOP_SCROLLFORWARD
	LD		B,$00
	ADD		HL,BC
	LD		A,(MENU_SPECIAL_TOTAL_ITEMS)
	LD		B,A
	LD		A,(MENU_SPECIAL_ITEM_NUM)
	CP		B
	JR		NC,_NOFORWARD
	
	LD		A,$01
	LD		(HL),A
	LD		A,(MENU_SPECIAL_VRAM_ARROW_POS)
	CALL	?MENU_SPECIAL_FORWARD_INSERT
	JR		_BACKTEST
	
_NOFORWARD
	XOR		A
	LD		(HL),A
		
_BACKTEST
	LD		HL,MENU_SPECIAL_VALID
	LD		C,MENU_SHOP_SCROLLBACK
	LD		B,$00
	ADD		HL,BC
	LD		A,(MENU_SPECIAL_ITEM_NUM)
	LD		B,MENU_SPECIAL_NUMBER_ON_SCREEN
	DEC		A							;making the check easier
	CP		B
	JR		C,_NOBACK
	
	LD		A,$01
	LD		(HLD),A
	CALL	?MENU_SPECIAL_BACK_INSERTION
	JR		_NEXT
	
_NOBACK
	XOR		A
	LD		(HLD),A
	
_NEXT		
	CALL	?MENU_SPECIAL_UPPER_CHECK
	CP		$00
	JR		Z,_REMOVEHAND 
	CALL	?MENU_SPECIAL_HAND_INSERTION
	RET

_REMOVEHAND
	CALL	?MENU_SPECIAL_HAND_REMOVAL
	LD		A,MENU_SHOP_BUY
	LD		(MENU_CURSOR_ID),A
	LD		A,$03
	LD		(MENU_SPECIAL_MENU_SECTION),A
	RET

;********************************
;Expects the item number to be loaded in A
;BC <--- Returns the cost of the item in BC
?MENU_SHOP_GET_ITEM_COST
	LD		B,A						; the item selected
	LD		C,ITEM_SIZE			
	CALL	?MULT						; the offset into item table will come back in HL
	LD		DE,ITEM_TABLE
	ADD		HL,DE						;adding the item_table address to the offset to get appropriate item
	LD		E,ITEM_PRICE_OFFSET
	LD		D,$00
	ADD		HL,DE
	
	SET16			H,L,INV_OBJ_PTR
	LD				BC,INV_CURRENT
	FSET16			B,C,INV_ADDR
	CALL_FOREIGN	?INV_GET_ITEM_COST
	LD				HL,INV_CURRENT
	LD		C,(HL)							;the cost of the item
	INC		HL
	LD		B,(HL)
	RET
	
;********************************
	END
;********************************