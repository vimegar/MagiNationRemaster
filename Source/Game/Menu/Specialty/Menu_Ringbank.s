;********************************
; MENU_RINGBANK.S
;********************************
;	Author:	ExoByte
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?RINGBANK_CLEAR_BOTTOM

	LD		A,MENU_BANK
	LD		(VBLANK_BANK),A
	MOVADDR		VBLANK_FUNC,?RINGBANK_VBLANK_CLEAR_BOTTOM
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT
	MOVADDR		VBLANK_FUNC,?RINGBANK_VBLANK_CLEAR_BOTTOM2
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT


	RET

;********************************
?RINGBANK_CLOSE

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
?RINGBANK_DEFRAG_XRAM

	
	LD		A,(RINGBANK_ACTING_ON)
	DEC		A
	LD		(MENU_COUNTER),A
	LD		B,A
	LD		C,CREATURE_XRAM_SIZE
	CALL	?MULT
	LD		BC,CREATURE00
	ADD		HL,BC				;HL	PTS AT NEW BLANK CREATURE
	PUSH	HL
	
	LD		BC,XRAM_CREATURE_RELIC0
	ADD		HL,BC
	LD		BC,RINGBANK_RELIC_0
	LD_BCI_HLI
	LD_BCI_HLI
	POP		HL
	PUSH	HL	
	
	LD		BC,CREATURE_XRAM_SIZE
	ADD		HL,BC
	POP		BC				;BC IS BLANK CREATURE, HL IS ONE AHEAD
	
_DEFRAG_LOOP
	LD		A,(MENU_COUNTER)
	CP		XRAM_RINGBANK_SIZE-1
	RET		Z
	
	LD		D,CREATURE_XRAM_SIZE
	
_DEFRAG_INNER_LOOP
	LD_BCI_HLI
	DEC		D
	JR		NZ,_DEFRAG_INNER_LOOP
	
	LD		A,(MENU_COUNTER)
	INC		A
	LD		(MENU_COUNTER),A
	JR		_DEFRAG_LOOP
	
;********************************
;NEARLY THE SAME TO RINGSMITH BORDER
?RINGBANK_DRAW_BORDER

	LD		A,1
	LD		(RINGSMITH_BORROW_BORDER),A
	CALL_FOREIGN	?RINGSMITH_DRAW_BORDER
	
	XOR		A
	LD		(VBK),A
	
	;ARROWS
	;-------------
	LD		A,RINGBANK_VRAM_ARROW
	
	LD		($9C29),A	
	LD		($9C2A),A	
	LD		($9D69),A	
	LD		($9D6A),A
	
	;"LVL"
	;------------------
	LD		A,RINGBANK_VRAM_LVL
	LD		HL,$9C4D
	LD		DE,1
	LD		C,3
	CALL	?RINGBANK_VRAM_TO_BG
	
	;"E"
	;-------------------
	LD		A,RINGBANK_VRAM_E
	LD		($9C51),A
	
	;CREATURE NAMES
	;-------------------
	LD		A,$97
	LD		HL,$9C4D
	LD		DE,1
	LD		B,7
	
_LOOP_EACH
	PUSH	BC
	LD		BC,$16
	ADD		HL,BC	
	POP		BC
	LD		C,10
		
_NAME_LOOP
	CALL	?RINGBANK_VRAM_TO_BG	
	DEC		B
	JR		NZ,_LOOP_EACH
	
	RET

;********************************	
?RINGBANK_DRAW_INFO

	XOR		A
	LD		(MENU_COUNTER),A
	
	;CLEAR OUT ARROWS
	XOR		A
	LD		(VBK),A
	LD		A,$80
	LD		($9C29),A			;TL ARROW
	LD		($9C2A),A			;TR ARROW
	LD		($9D69),A			;BL ARROW
	LD		($9D6A),A			;BR ARROW
	
	;DRAW THE ARROWS IF THEY NEED BE.
	;------------------------------
	LD		A,(MENU_MAIN_VALID)
	AND		A
	JR		Z,_CHECK_LOWER_ARROW	
	LD		A,RINGBANK_VRAM_ARROW
	LD		HL,$9C29
	LD		(HLI),A			;TL ARROW
	LD		(HLI),A			;TR ARROW	
	
_CHECK_LOWER_ARROW
	LD		A,(MENU_MAIN_VALID+8)
	AND 	A
	JR		Z,_TOP
	LD		A,RINGBANK_VRAM_ARROW
	LD		HL,$9D69
	LD		(HLI),A			;BL ARROW
	LD		(HLI),A			;BR ARROW		
	
_TOP
	LD		HL,RINGBANK_ON_SCREEN
	LD		A,(MENU_COUNTER)
	LD		C,A
	LD		B,0
	SLA		C
	ADD		HL,BC				;CURRENT CREATURE ID
	LD		A,(HL)
	LD		(BTL_NAME_INDEX),A
	LD		BC,INV_CURRENT
	FSET16	B,C,BTL_TABLE_COPY_TO	
	CALL_FOREIGN	?BTL_COPY_CREATURE_NAME
	
	LD		B,RINGBANK_VRAM_DISTANCE
	LD		A,(MENU_COUNTER)
	LD		C,A
	CALL	?MULT
	LD		BC,RINGBANK_NAMESTART_VRAM
	ADD		HL,BC
	SET16	H,L,MENU_VRAM_PTR			;GET VRAM PTR
	LD		BC,INV_CURRENT
	FSET16	B,C,MENU_CUR_CHAR
	LD		A,10
	LD		(MENU_CHAR_LEFT),A
	
	CALL_FOREIGN	?MAIN_MENU_PACK_VRAM

	XOR		A
	LD		(VBK),A
	
	;CHECK FOR EMPTY VS. FULL NAME
	;-----------------------------
	LD		A,(INV_CURRENT)
	CP		?SPCE
	JR		NZ,_NORMAL
		
_EMPTY
	;Clear out equip X
	;---------------------
	LD		A,(MENU_COUNTER)
	LD		B,A
	LD		C,RINGBANK_BG_DISTANCE
	PUSH	DE
	CALL	?MULT
	POP		DE
	PUSH	HL
	LD		BC,RINGBANK_XSTART_BG
	ADD		HL,BC
	LD		(HL),$80
	
	;Clear out the ring icon
	;-----------------------
	POP		BC
	LD		HL,RINGBANK_RINGSTART_BG
	ADD		HL,BC
	LD		(HL),$80	

	;Set the lvl to blanks
	;-------------------------
	LD		A,$FA		;NEG DISTANCE FROM 0 TO SPACE
	LD		(X10),A
	LD		(X1),A	
	JR		_BOTH

_NORMAL
	;Activate the ring icon
	;-----------------------
	LD		A,(MENU_COUNTER)
	LD		B,A
	LD		C,RINGBANK_BG_DISTANCE
	CALL	?MULT
	LD		BC,RINGBANK_RINGSTART_BG
	ADD		HL,BC
	LD		(HL),RINGBANK_VRAM_RING	
	
	;See if the ring is equipped
	;---------------------------
	LD		A,(RINGBANK_TOP_ENTRY)
	LD		HL,MENU_COUNTER
	ADD		A,(HL)
	LD		B,A				;STORE THE RING #	
	INC		B				;RINGS ARE OFFSET FROM 1

	LD		HL,XRAM_INVENTORY_RINGS
	LD		D,$A
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON	

_EQUIP_LOOP
	LD		A,(HLI)
	CP		B
	JR		Z,_EQUIPPED
	DEC		D
	JR		NZ,_EQUIP_LOOP
	
_NOT_EQUIPPED
	LD		A,$80
	JR		_NORMAL_CONT
	
_EQUIPPED
	LD		A,(MENU_COUNTER)
	LD		C,A
	LD		B,0
	LD		HL,MENU_MAIN_VALID+1
	ADD		HL,BC
	LD		(HL),RINGBANK_VALID_EQUIPED

	LD		A,RINGBANK_VRAM_X	;SETUP CHR

_NORMAL_CONT
	LD		D,A
	BATTERY_OFF
	LD		A,(MENU_COUNTER)
	LD		B,A
	LD		C,RINGBANK_BG_DISTANCE
	PUSH	DE
	CALL	?MULT
	POP		DE
	LD		BC,RINGBANK_XSTART_BG
	ADD		HL,BC
	LD		(HL),D
	
	LD		HL,RINGBANK_ON_SCREEN
	LD		A,(MENU_COUNTER)
	LD		C,A
	LD		B,0
	SLA		C
	ADD		HL,BC	
	INC		HL				;CURRENT CREATURE LVL
	LD		E,(HL)
	LD		D,0
	CALL	?CONVERT_NUMBER_2_ELEMENT	

_BOTH
	LD		A,(MENU_COUNTER)
	LD		B,A
	LD		C,RINGBANK_BG_DISTANCE
	CALL	?MULT
	LD		BC,RINGBANK_LVLSTART_BG
	ADD		HL,BC
	LD		A,(X10)
	ADD		A,RINGBANK_VRAM_0
	LD		(HLI),A
	LD		A,(X1)
	ADD		A,RINGBANK_VRAM_0
	LD		(HL),A
	
	LD		HL,MENU_COUNTER
	INC		(HL)
	LD		A,RINGBANK_FITS_ONSCREEN
	CP		(HL)
	JP		NZ,_TOP	
	
	;Print the bottom of screen info
	;-----------------------------
	LD		BC,RINGBANK_CHOOSE_STR_1
	FSET16	B,C,MENU_CUR_CHAR
	LD		BC,$8DD0
	FSET16	B,C,MENU_VRAM_PTR
	LD		A,17
	LD		(MENU_CHAR_LEFT),A
	CALL_FOREIGN	?MAIN_MENU_PACK_VRAM
	
	LD		BC,RINGBANK_CHOOSE_STR_2
	FSET16	B,C,MENU_CUR_CHAR
	LD		A,15
	LD		(MENU_CHAR_LEFT),A
	CALL_FOREIGN	?MAIN_MENU_PACK_VRAM
	
	XOR		A
	LD		(VBK),A
	
	LD		A,$DD
	LD		HL,$9DA1
	LD		DE,1
	LD		C,17
	CALL	?RINGBANK_VRAM_TO_BG
	
	LD		HL,$9DC1
	LD		C,15
	CALL	?RINGBANK_VRAM_TO_BG	
	
	RET
	
;********************************
?RINGBANK_MAINLOOP

	MENU_GO_CLOBBER
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT
	LD		A,(MENU_RETURN_VALUE)
	CP		$FF
	JR		Z,?RINGBANK_MAINLOOP
	
	LD		(RINGBANK_CURSOR_RETURN),A
	
	AND		A
	JR		NZ,_NOT_UP
	
_UP_DOWN
	SCREEN_HIDE
	CALL	?RINGBANK_SET_ARRAY
	CALL	?RINGBANK_DRAW_INFO	
	MENU_INIT	RINGBANK_CHOICE,243,MENU_MAIN_VALID,?MENU_FLASH,?MENU_FLASH,1,MENU_CURSOR_NOBLINK,MENU_CURSOR_SPRITE
	SCREEN_SHOW
	JP		?RINGBANK_MAINLOOP

_NOT_UP
	CP		8
	JR		Z,_UP_DOWN
	
_NOT_DOWN
	CP		$FE
	JR		NZ,_SELECTED
	JP		?RINGBANK_CLOSE	
	
_SELECTED
	CALL	?RINGBANK_SELECTED
	LD		A,(RINGBANK_SELECT_RETURN)
	CP		RINGBANK_RETURN_NOTHING
	JP		Z,_NOTHING
	
	CP		RINGBANK_RETURN_CANCEL
	JR		Z,_RESTART
	
	CP		RINGBANK_RETURN_EQUIP	
	JP		NZ,?RINGBANK_CLOSE
	
	;Update screen for new equip
	;--------------------------
	CALL	?RINGBANK_UPDATE_NEW_EQUIP
	
_RESTART
	CALL	?RINGBANK_CLEAR_BOTTOM
	MENU_INIT	RINGBANK_CHOICE,243,MENU_MAIN_VALID,?MENU_FLASH,?MENU_FLASH,(RINGBANK_CURSOR_RETURN),MENU_CURSOR_NOBLINK,MENU_CURSOR_SPRITE
	
	MENU_TEXT_SETUP		$8DD0,1,$9DA1,17,RINGBANK_RESTART_1
	CALL_FOREIGN		?MENU_TEXT_UPDATE
	MENU_TEXT_SETUP		$8EE0,1,$9DC1,15,RINGBANK_RESTART_2
	CALL_FOREIGN				?MENU_TEXT_UPDATE
	
	JP		?RINGBANK_MAINLOOP
	
_NOTHING
	MENU_INIT	RINGBANK_CHOICE,243,MENU_MAIN_VALID,?MENU_FLASH,?MENU_FLASH,(MENU_CURSOR_ID),MENU_CURSOR_NOBLINK,MENU_CURSOR_SPRITE
	JP		?RINGBANK_MAINLOOP

;********************************
?RINGBANK_OPEN

	FRAME_INIT

	SCREEN_HIDE
	
	XOR			A
	LD			(WY),A		;WIN Y
	LD			A,7
	LD			(WX),A		;WIN X	
	
	CALL_FOREIGN	?MAIN_MENU_ARCHIVE_VRAM
	CALL_FOREIGN	?CARDSCENE_ARCHIVE_BG_VRAM
	
	;Load needed vram stuff
	;(1) Digits
	;----------------------
	LD		BC,MENU_ZERO_STR_9		;DIGIT STRING
	FSET16	B,C,MENU_CUR_CHAR
	LD		BC,$8860				;VRAM DEST
	FSET16	B,C,MENU_VRAM_PTR
	LD		A,10					;SIZE
	LD		(MENU_CHAR_LEFT),A
	CALL_FOREIGN	?MAIN_MENU_PACK_VRAM	
	
	;(2) Ring logo
	;---------------------
	LD		A,1
	LD		(VBLANK_VBK),A
	LD		BC,BIT_FONT+(?RING*16)
	FSET16	B,C,VBLANK_SOURCE
	LD		BC,$8900				;VRAM DEST
	FSET16	B,C,VBLANK_DEST
	LD		E,MENU_GRAPHICS_BANK	;BANK OF FONT
	LD		HL,?VBLANK_COPY_TILE
	CALL	?CALL_FOREIGN
	
	;(3) Arrow
	;---------------------
	LD		BC,BIT_FONT+(?ARROW*16)
	FSET16	B,C,VBLANK_SOURCE
	LD		HL,?VBLANK_COPY_TILE
	CALL	?CALL_FOREIGN	
	
	;(4) "LvlEX"
	;----------------------
	LD		BC,MENU_LVL_STR		;DIGIT STRING
	FSET16	B,C,MENU_CUR_CHAR
	LD		BC,$8920				;VRAM DEST
	FSET16	B,C,MENU_VRAM_PTR
	LD		A,5						;SIZE
	LD		(MENU_CHAR_LEFT),A
	CALL_FOREIGN	?MAIN_MENU_PACK_VRAM
	
	;Init vars
	;------------------------
?RINGBANK_RESTART_CONTINUE
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	
	LD		A,(XRAM_CREATURECOUNT)
	LD		(RINGBANK_NUM_CREATURES),A
	
	BATTERY_OFF
	
	LD		A,1
	LD		(MENU_MAIN_VALID+1),A
	LD		HL,MENU_MAIN_VALID+9
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	
	MENU_INIT	RINGBANK_CHOICE,243,MENU_MAIN_VALID,?MENU_FLASH,?MENU_FLASH,1,MENU_CURSOR_NOBLINK,MENU_CURSOR_SPRITE
		
	CALL	?RINGBANK_DRAW_BORDER
	CALL	?RINGBANK_SET_ARRAY	
	CALL	?RINGBANK_DRAW_INFO
	
	SCREEN_SHOW	

	JP		?RINGBANK_MAINLOOP

;********************************	
?RINGBANK_RESTART

	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT
	SCREEN_HIDE
	JP	?RINGBANK_RESTART_CONTINUE

;********************************	
?RINGBANK_SELECTED

	XOR		A
	LD		(RINGBANK_SELECT_RETURN),A

	;(-1)which ring are we acting on?
	;---------------------------
	CALL	?RINGBANK_CLEAR_BOTTOM
	LD		A,(MENU_CURSOR_ID)
	LD		HL,RINGBANK_TOP_ENTRY
	ADD		A,(HL)
	LD		(RINGBANK_ACTING_ON),A
	
	;Is it eqpuipped
	;-----------------------------
	LD		A,(MENU_CURSOR_ID)
	LD		C,A
	LD		B,0
	LD		HL,MENU_MAIN_VALID
	ADD		HL,BC
	LD		A,RINGBANK_VALID_EQUIPED
	CP		(HL)
	JP		NZ,_NOT_EQUIPPED
	
_EQUIPPED
	;Find out if they want to de-equip all
	;----------------------------
	MENU_TEXT_SETUP		$8EE0,1,$9DA1,16,RINGBANK_DEEQUIP_1
	CALL_FOREIGN				?MENU_TEXT_UPDATE
	MENU_TEXT_SETUP		$8FE0,1,$9DC1,15,RINGBANK_DEEQUIP_2
	CALL_FOREIGN				?MENU_TEXT_UPDATE
	MENU_TEXT_SETUP		$90D0,1,$9E02,12,RINGBANK_DEEQUIP_3
	CALL_FOREIGN				?MENU_TEXT_UPDATE
	
	MENU_INIT	RINGBANK_CHOICE,243,MENU_MAIN_VALID,?MENU_FLASH,?MENU_FLASH,11,MENU_CURSOR_NOBLINK,MENU_CURSOR_SPRITE
	
_DEEQUIP_LOOP_YN
	MENU_GO_CLOBBER
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT
	LD		A,(MENU_RETURN_VALUE)
	CP		$FF
	JR		Z,_DEEQUIP_LOOP_YN

	LD		A,(MENU_RETURN_VALUE)
	CP		12
	JR		Z,_DEEQUIP_CONFIRM
	
	CP		$FE
	JR		NZ,_DEEQUIP_ONE
	
	LD		A,RINGBANK_RETURN_CANCEL
	LD		(RINGBANK_SELECT_RETURN),A
	RET
	
_DEEQUIP_CONFIRM
	LD		HL,XRAM_INVENTORY_RINGS
	LD		D,10

	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON

	LD		A,$FF
	
_DEEQUIP_LOOP
	LD		(HLI),A
	DEC		D
	JR		NZ,_DEEQUIP_LOOP

	BATTERY_OFF
	
	POP		HL
	JP		?RINGBANK_RESTART
	
_DEEQUIP_ONE
	;SETUP FLAGS
	;----------------------------
	LD		A,RINGBANK_RETURN_EQUIP
	LD		(RINGBANK_SELECT_RETURN),A	
	LD		A,(RINGBANK_ACTING_ON)
	LD		(RINGBANK_EQUIP_REPLACE),A
	
	
	;Find where this ring is equipped
	;-----------------------------
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	
	LD		HL,XRAM_INVENTORY_RINGS
	LD		A,(RINGBANK_ACTING_ON)
	LD		B,A
	LD		D,10
	
_FIND_LOOP
	DEC		D
	LD		A,(HLI)
	CP		B
	JR		NZ,_FIND_LOOP
	
	;HL now points one past the equipped one
	;------------------------------
	LD		B,H
	LD		C,L
	DEC		BC
	LD		A,$FF
	LD		(BC),A
	INC		D
	
_DEFRAG_EQUIP_LOOP
	DEC		D
	JR		Z,_DONE_DEEQUIP
	LD_BCI_HLI
	JR		_DEFRAG_EQUIP_LOOP	
	
_DONE_DEEQUIP	
	LD		A,$FF
	LD		(XRAM_INVENTORY_RINGS+9),A
	
	BATTERY_OFF
	
	RET

_NOT_EQUIPPED	
	;(1) Setup the Equip/Destroy text
	;------------------------
	MENU_TEXT_SETUP		$8EE0,1,$9DA1,14,RINGBANK_ED_STR_1
	CALL_FOREIGN				?MENU_TEXT_UPDATE
	MENU_TEXT_SETUP		$8FC0,1,$9DC2,17,RINGBANK_ED_STR_2
	CALL_FOREIGN				?MENU_TEXT_UPDATE
	
	MENU_INIT	RINGBANK_CHOICE,243,MENU_MAIN_VALID,?MENU_FLASH,?MENU_FLASH,9,MENU_CURSOR_NOBLINK,MENU_CURSOR_SPRITE	
	
_ED_LOOP	
	MENU_GO_CLOBBER
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT
	LD		A,(MENU_RETURN_VALUE)
	CP		$FF
	JR		Z,_ED_LOOP
	
	;Did they cancel?
	;--------------------
	CP		$FE
	JR		NZ,_CHOSE
_CANCEL
	LD		A,RINGBANK_RETURN_CANCEL
	LD		(RINGBANK_SELECT_RETURN),A
	RET		
	
	
_CHOSE
	;Do they want to equip?
	;-----------------------
	CP		9
	JP		Z,_EQUIP_CHECK
	
_DESTROY
	;If not, they must want to <Urien> DESTROY! MU AH HA HA!
	;----------------------
	CALL		?RINGBANK_CLEAR_BOTTOM
	
	;If they have less than 10 rings, no destroy 
	;---------------------------------------
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	
	LD		A,(XRAM_CREATURECOUNT)
	LD		B,A
	
	BATTERY_OFF
	
	LD		A,B
	CP		10
	JP		NC,_CONFIRM_DESTROY
	
	MENU_TEXT_SETUP		$8EE0,1,$9DA1,16,RINGBANK_NO_DESTROY_1
	CALL_FOREIGN				?MENU_TEXT_UPDATE
	MENU_TEXT_SETUP		$8FE0,1,$9DC1,17,RINGBANK_NO_DESTROY_2
	CALL_FOREIGN				?MENU_TEXT_UPDATE
	MENU_TEXT_SETUP		$90F0,1,$9DE1,10,RINGBANK_NO_DESTROY_3
	CALL_FOREIGN				?MENU_TEXT_UPDATE
	
	WAIT_AB_NOSCRIPT	_NODLOOP
	
	JP		_NO_DESTROY	

_CONFIRM_DESTROY	
	MENU_TEXT_SETUP		$8EE0,1,$9DA1,17,RINGBANK_DESTROY_1
	CALL_FOREIGN				?MENU_TEXT_UPDATE
	MENU_TEXT_SETUP		$8FF0,1,$9DC1,17,RINGBANK_DESTROY_2
	CALL_FOREIGN				?MENU_TEXT_UPDATE
	MENU_TEXT_SETUP		$9100,1,$9E02,15,RINGBANK_DESTROY_3
	CALL_FOREIGN				?MENU_TEXT_UPDATE
	
	;Did they comfirm?
	;--------------------
	MENU_INIT	RINGBANK_CHOICE,243,MENU_MAIN_VALID,?MENU_FLASH,?MENU_FLASH,12,MENU_CURSOR_NOBLINK,MENU_CURSOR_SPRITE
	
_YN_LOOP	
	MENU_GO_CLOBBER
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT
	LD		A,(MENU_RETURN_VALUE)
	CP		$FF
	JR		Z,_YN_LOOP	

	LD		A,(MENU_RETURN_VALUE)
	CP		11
	JR		Z,_DESTROY_COMFIRMED	
	
_NO_DESTROY	
	LD		A,RINGBANK_RETURN_CANCEL
	LD		(RINGBANK_SELECT_RETURN),A
	RET		
	
_DESTROY_COMFIRMED	
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT	;MAKE SURE WE STEP ON NO TOES
	XOR		A
	LD		HL,RINGBANK_RELIC_0
	LD		(HLI),A
	LD		(HLI),A
	
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON
	
	CALL	?RINGBANK_DEFRAG_XRAM	
	
	;Clear out the last ring
	;-----------------------
	LD		A,$FF
	LD		D,CREATURE_XRAM_SIZE
	LD		HL,CREATURECF
	
_DESTROY_LOOP
	LD		(HLI),A
	DEC		D
	JR		NZ,_DESTROY_LOOP	
	
	BATTERY_SET_BANK	RAMB_GAMESTATE
	
	LD		HL,XRAM_CREATURECOUNT
	DEC		(HL)
	
	;RE-POINT EQUIPPED RINGS ABOVE DESTROYED ONE
	LD		A,(RINGBANK_ACTING_ON)
	LD		B,A
	LD		D,10
	LD		HL,XRAM_INVENTORY_RINGS
	
_RE_POINT_LOOP
	LD		A,(HL)
	CP		$FF
	JR		Z,_NO_REPOINT
	CP		B
	JR		C,_NO_REPOINT
	DEC		A
	LD		(HL),A	
	
_NO_REPOINT
	INC		HL
	DEC		D
	JR		NZ,_RE_POINT_LOOP
	
	;Salvage relics
	;------------------------
	LD		B,0
	LD		A,(RINGBANK_RELIC_0)
	AND		A
	JR		Z,_RELIC1
	LD		C,A
	LD		HL,XRAM_INVENTORY_RELICS
	ADD		HL,BC
	INC		(HL)	
	
_RELIC1
	LD		A,(RINGBANK_RELIC_1)
	AND		A
	JR		Z,_RELIC_DONE
	LD		C,A
	LD		HL,XRAM_INVENTORY_RELICS
	ADD		HL,BC
	INC		(HL)	
	
_RELIC_DONE
	BATTERY_OFF
	
	LD		A,RINGBANK_RETURN_DESTROY
	LD		(RINGBANK_SELECT_RETURN),A
	
	RET		

	;First see if they have an empty finger
	;And fill equipped array as you do
	;-----------------------------
_EQUIP_CHECK
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	
	LD		HL,XRAM_INVENTORY_RINGS
	LD		BC,RINGBANK_EQUIPPED_RINGS
	LD		D,10
	
_EMPTY_FINGER_LOOP
	LD_BCI_HLI
	CP		$FF
	JP		Z,_EMPTY_FINGER
	DEC		D
	JR		NZ,_EMPTY_FINGER_LOOP
	
	BATTERY_OFF
	
	;Find which ring they want to replace
	;---------------------------
	CALL	?RINGBANK_CLEAR_BOTTOM
	MENU_TEXT_SETUP		$8DD0,1,$9DA1,17,RINGBANK_REPLACE_1
	CALL_FOREIGN				?MENU_TEXT_UPDATE
	MENU_TEXT_SETUP		$8F40,1,$9DC1,16,RINGBANK_REPLACE_2
	CALL_FOREIGN			?MENU_TEXT_UPDATE
	
	XOR		A
	LD		(MENU_COUNTER),A
	
_EQUIP_REPLACE_LOOP
	LD		A,(MENU_COUNTER)
	LD		C,A
	LD		B,0
	LD		HL,RINGBANK_EQUIPPED_RINGS
	ADD		HL,BC
	LD		A,(HL)
	DEC		A
	LD		C,A
	LD		B,CREATURE_XRAM_SIZE
	CALL	?MULT
	LD		BC,CREATURE00
	ADD		HL,BC
	
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON
	
	LD		A,(HL)	
	LD		(BTL_NAME_INDEX),A
	
	BATTERY_OFF
	
	LD		BC,INV_CURRENT
	FSET16	B,C,BTL_TABLE_COPY_TO
	CALL_FOREIGN	?BTL_COPY_CREATURE_NAME	
	
	MENU_TEXT_SETUP		$9040,1,$9E05,10,INV_CURRENT
	CALL_FOREIGN				?MENU_TEXT_UPDATE
	
_CROSSPAD_LOOP
	LD		A,(CNTDOWN)
	AND		%11110011
	JR		Z,_CROSSPAD_LOOP
	
	BIT		BitA,A
	JR		NZ,_EQUIP_HERE
	
	BIT		BitB,A
	JP		NZ,_CANCEL	
	
	AND		%10010000
	JR		Z,_DOWN_RIGHT
	
	LD		HL,MENU_COUNTER
	DEC		(HL)
	LD		A,$FF
	CP		(HL)
	JP		NZ,_EQUIP_REPLACE_LOOP
	LD		(HL),9
	JP		_EQUIP_REPLACE_LOOP
	
_DOWN_RIGHT
	LD		HL,MENU_COUNTER
	INC		(HL)
	LD		A,10
	CP		(HL)
	JP		NZ,_EQUIP_REPLACE_LOOP
	LD		(HL),0
	JP		_EQUIP_REPLACE_LOOP
	
_EQUIP_HERE
	LD		A,(MENU_COUNTER)
	LD		C,A
	LD		B,0
	LD		HL,XRAM_INVENTORY_RINGS
	ADD		HL,BC
	
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	
	LD		A,(HL)
	LD		(RINGBANK_EQUIP_REPLACE),A
	LD		A,(RINGBANK_ACTING_ON)
	LD		(HL),A
	
	BATTERY_OFF
	
	LD		A,RINGBANK_RETURN_EQUIP
	LD		(RINGBANK_SELECT_RETURN),A	
		
	RET
	
_EMPTY_FINGER
	LD		A,$FF
	LD		(RINGBANK_EQUIP_REPLACE),A
	DEC		HL			;GO BACK TO THE ONE WE WERE ON
	LD		A,(RINGBANK_ACTING_ON)
	LD		(HL),A	
	
	BATTERY_OFF
	
	LD		A,RINGBANK_RETURN_EQUIP
	LD		(RINGBANK_SELECT_RETURN),A

	RET
	
;********************************
;YOU ALWAYS KNOW THE FIRST $FF CREATURE IS THE BOTTOM
?RINGBANK_SET_ARRAY

	;Clear out menu valid array
	;------------------------
	XOR		A
	LD		HL,MENU_MAIN_VALID
	LD		D,9
	
_CLEAR_VALID_LOOP
	LD		(HLI),A
	DEC		D
	JR		NZ,_CLEAR_VALID_LOOP
	
	;Clear out onscreen array
	;-----------------------
	LD		A,$FF
	LD		HL,RINGBANK_ON_SCREEN
	LD		D,14
	
_CLEAR_ONSCREEN_LOOP
	LD		(HLI),A
	DEC		D
	JR		NZ,_CLEAR_ONSCREEN_LOOP

	LD		A,(MENU_CURSOR_ID)
	CP		0
	JR		Z,_PAGE_UP_START

	CP		8
	JR		Z,_PAGE_DOWN
	
_NEW_PAGE
	XOR		A
	LD		(RINGBANK_TOP_ENTRY),A	
	JR		_PAGE_UP

_PAGE_UP_START	
	LD		HL,RINGBANK_TOP_ENTRY
	LD		A,(HL)
	SUB		RINGBANK_FITS_ONSCREEN
	LD		(HL),A	
	
_PAGE_UP
	XOR		A
	LD		(MENU_COUNTER),A		
	LD		(RINGBANK_DISPLAYED),A
	LD		DE,RINGBANK_ON_SCREEN
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON
	
_PAGE_UP_LOOP
	LD		HL,RINGBANK_DISPLAYED
	INC		(HL)
	LD		A,(RINGBANK_TOP_ENTRY)
	LD		HL,MENU_COUNTER
	ADD		A,(HL)		
	LD		B,A
	LD		C,CREATURE_XRAM_SIZE
	PUSH	DE
	CALL	?MULT
	POP		DE
	LD		BC,CREATURE00
	ADD		HL,BC				;HL PTS TO CURRENT CREATURE
		
	LD		A,(HLI)
	INC		HL					;MOVE HL TO LVL	
	LD		(DE),A				;SAVE ID IN ARRAY
	INC		DE
	LD		A,(HL)
	LD		(DE),A				;SAVE LVL IN ARRAY
	INC		DE
	
	LD		HL,MENU_COUNTER
	INC		(HL)
	LD		A,(HL)
	CP		RINGBANK_FITS_ONSCREEN	;HAVE 7 YET?
	JR		Z,_UP_DONE	
	LD		HL,RINGBANK_TOP_ENTRY
	ADD		A,(HL)
	LD		B,A
	LD		A,(RINGBANK_NUM_CREATURES)	;AT END OF CREATURES?
	CP		B
	JR		NZ,_PAGE_UP_LOOP	
	
_UP_DONE
	;Clear page up if at top of list
	;----------------------------
	LD		A,(RINGBANK_TOP_ENTRY)
	LD		(MENU_MAIN_VALID),A
	
	;Is there more below?
	;--------------------
	LD		A,(RINGBANK_NUM_CREATURES)
	LD		B,A
	LD		A,(RINGBANK_TOP_ENTRY)
	LD		HL,RINGBANK_DISPLAYED
	ADD		A,(HL)	
	CP		B
	JR		NC,_DONE
	
	LD		A,1
	LD		(MENU_MAIN_VALID+8),A
	JR		_DONE

_PAGE_DOWN
	LD		HL,RINGBANK_TOP_ENTRY
	LD		A,(HL)
	ADD		A,RINGBANK_FITS_ONSCREEN
	LD		(HL),A	

	;Activate page up
	;---------------------
	LD		A,1
	LD		(MENU_MAIN_VALID),A
	
	JR		_PAGE_UP

_DONE
	BATTERY_OFF
	
	;Set up menu valid array
	;-----------------------
	LD		HL,MENU_MAIN_VALID+1
	LD		A,(RINGBANK_DISPLAYED)
	LD		D,A
	LD		A,1
	
_MENU_VALID_LOOP
	LD		(HLI),A
	DEC		D
	JR		NZ,_MENU_VALID_LOOP
	
	RET

;********************************		
?RINGBANK_UPDATE_NEW_EQUIP

	LD		A,(RINGBANK_EQUIP_REPLACE)
	CP		$FF
	JR		Z,_NO_CLEAR
	LD		B,A
	LD		A,(RINGBANK_TOP_ENTRY)
	CP		B
	JR		NC,_NO_CLEAR
	JR		Z,_CLEAR
	ADD		A,RINGBANK_FITS_ONSCREEN
	CP		B
	JR		C,_NO_CLEAR
	
_CLEAR
	LD		A,(RINGBANK_EQUIP_REPLACE)
	LD		HL,RINGBANK_TOP_ENTRY
	SUB		(HL)
	LD		C,A
	LD		B,0
	LD		HL,MENU_MAIN_VALID
	ADD		HL,BC
	LD		(HL),1	

	LD		A,(RINGBANK_TOP_ENTRY)
	LD		B,A
	LD		A,(RINGBANK_EQUIP_REPLACE)
	DEC		A
	SUB		B
	LD		C,A
	LD		B,RINGBANK_BG_DISTANCE
	CALL	?MULT
	LD		BC,RINGBANK_XSTART_BG
	ADD		HL,BC
	
	JR		_CONT
	
_NO_CLEAR
	LD		HL,0

_CONT
	SET16	H,L,RINGBANK_VBLANK_CLEAR
	
	LD		A,(RINGBANK_ACTING_ON)
	LD		HL,RINGBANK_EQUIP_REPLACE
	CP		(HL)
	JR		Z,_NO_MENU
	LD		HL,RINGBANK_TOP_ENTRY
	SUB		(HL)
	LD		C,A
	LD		B,0
	LD		HL,MENU_MAIN_VALID
	ADD		HL,BC
	LD		(HL),RINGBANK_VALID_EQUIPED
	
_NO_MENU	
	LD		A,(RINGBANK_TOP_ENTRY)
	LD		B,A
	LD		A,(RINGBANK_ACTING_ON)
	DEC		A
	SUB		B
	LD		C,A
	LD		B,RINGBANK_BG_DISTANCE
	CALL	?MULT
	LD		BC,RINGBANK_XSTART_BG
	ADD		HL,BC
	SET16	H,L,RINGBANK_VBLANK_ADD
	
		
	LD		A,MENU_BANK
	LD		(VBLANK_BANK),A
	MOVADDR		VBLANK_FUNC,?RINGBANK_VBLANK_UPDATE_EQUIP
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT
	
	RET
	
;********************************	
?RINGBANK_VBLANK_CLEAR_BOTTOM
	
	XOR		A
	LD		(VBK),A
	LD		A,$80
	
	LD		HL,$9DA1
	
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A	
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A	
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A	
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A		
	
	LD		HL,$9DC1	
	
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A	
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A	
	LD		(HLI),A
	LD		(HLI),A	
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A	
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A	

	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE
	RET

;********************************	
?RINGBANK_VBLANK_CLEAR_BOTTOM2
	
	XOR		A
	LD		(VBK),A
	LD		A,$80
	
	LD		HL,$9E02
	
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A	
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A	
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A	
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	
	LD		HL,$9DE1
	
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A	
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A	
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A	
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A

	

	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE
	RET
	
;********************************	
?RINGBANK_VBLANK_UPDATE_EQUIP

	XOR		A
	LD		(VBK),A
	
	FGET16	H,L,RINGBANK_VBLANK_ADD
	LD		(HL),RINGBANK_VRAM_X

	FGET16	H,L,RINGBANK_VBLANK_CLEAR
	LD		A,H
	OR		L
	JR		Z,_NO_CLEAR
	LD		(HL),MENU_VRAM_BLANK
		
_NO_CLEAR
	

	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE
	RET
	
;********************************
;A  VRAM TILE
;HL START IN BG
;DE	HL'S INC
;C  HOW MANY
?RINGBANK_VRAM_TO_BG
	
	LD		(HL),A
	ADD		HL,DE
	INC		A
	DEC		C
	JR		NZ,?RINGBANK_VRAM_TO_BG

	RET	


;********************************
	END
;********************************
