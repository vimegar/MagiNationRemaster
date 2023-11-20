;********************************
; MENU_GAMELOOP_06.S
;********************************
;	Author:	Dylan 'Stupid Bitch Dumb-Ass' Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
;A : VAL TO GO ON SCREEN
;HL: BG ADDR	
?MAIN_MENU_2DIGIT_VALS
	
	LD		E,A
	LD		D,0
	CALL	?CONVERT_NUMBER_2_ELEMENT

	LD		A,(X10)
	ADD		A,MENU_VRAM_0
	LD		(HLI),A
	LD		A,(X1)
	ADD		A,MENU_VRAM_0
	LD		(HLI),A

	RET

;********************************
?MAIN_MENU_ARCHIVE_VRAM
	
	LD			A,MENU_VRAM_BANK
	LD 			(VBK),A					;SET VBANK	
	
	LD			BC,MENU_VRAM_ARCHIVE	;WHERE WE STORE THE COMMON STUFF
	
	LD			HL,$8E00				;WHERE IT IS IN VRAM
	
	CALL		?MAIN_MENU_COPY_200	;COPY $200 BYTES

	RET
	
;********************************
?MAIN_MENU_ATTRIB_UPDATE

	LD		A,1
	LD		(VBK),A
	
	LD		A,$0F
	LD		($9C2A),A		;UR ARROW	
	LD		($9D32),A		;UR ARROW-RSTT
	LD		($9D29),A		;LL ARROW
	LD		($9D42),A		;LL ARROW-RSTT
	LD		($9D2A),A		;LR ARROW
	LD		($9D52),A		;LR ARROW-RSTT	
	
	LD		A,(MENU_CUR_MENU)
	CP		MENU_SPELID
	JR		Z,_FLIP_ARROW
	
	CP		MENU_ITEMID
	JR		Z,_FLIP_ARROW
	
	CP		MENU_SITMID
	JR		Z,_FLIP_ARROW
	
	CP		MENU_ILSTID
	JR		Z,_FLIP_ARROW
	
	CP		MENU_RSTTID
	JR		Z,_FLIP_RSTT
	
	CP		MENU_GLYFID
	JR		Z,_GLYF_ATTRIBS
	
	CP		MENU_HSTTID
	JR		Z,_NORMAL_ATTRIBS
	
	RET	
	
_FLIP_ARROW
	LD		A,%00101111			
	LD		($9C2A),A			;UR ARROW	
		
	LD		A,%01001111			
	LD		($9D29),A			;LL ARROW
	
	LD		A,%01101111
	LD		($9D2A),A			;LR ARROW
	
	
_FLIP_RSTT
	LD		A,%00101111			
	LD		($9C2A),A			;UR ARROW	
		
	LD		A,%01001111			
	LD		($9D49),A			;LL ARROW
	
	LD		A,%01101111
	LD		($9D4A),A			;LR ARROW
	
	RET
	
_GLYF_ATTRIBS
	LD		HL,$9C44
	LD		BC,BG_GLYPH_ATTRIB
	LD		A,8
	LD		(MENU_COUNTER),A
	
_OUTER_LOOP
	LD		D,12
	
_INNER_LOOP
	LD_HLI_BCI
	DEC		D
	JR		NZ,_INNER_LOOP
	
	LD		A,(MENU_COUNTER)
	DEC		A
	JR		Z,_STONE_ATTRIB
	
	LD		(MENU_COUNTER),A
	LD		DE,20
	ADD		HL,DE
	JR		_OUTER_LOOP
	
_STONE_ATTRIB
	BATTERY_ON
	BATTERY_SET_BANK	RAMB_GAMESTATE
	
	LD		A,(XRAM_GLYPH_COUNT)
	LD		B,A
	
	BATTERY_OFF
	
	LD		A,B
	CP		2
	RET		C
	
	LD		A,$0F
	LD		($9CCA),A
	
	LD		A,B
	CP		4
	RET		C
	
	LD		A,$0F
	LD		($9CEA),A
	
	LD		A,B
	CP		5
	RET		C
	
	LD		A,$0F
	LD		($9D0A),A
		
	LD		A,B
	CP		6
	RET		NZ
	
	LD		BC,BG_GLYPH_MID_ATTRIB	
	CALL	?MAIN_MENU_GLYPH_MIDDLE
	
	RET

_NORMAL_ATTRIBS
	JP		?MAIN_MENU_NORM_ATTRIB	

;********************************
?MAIN_MENU_BORDER

;FILL W/ BLANKS
;THIS MENU SYSTEM IS SO GOOD, IT SHOULD BE (BLANK)
	XOR		A
	LD		(VBK),A			
	LD		BC,563
	LD		HL,$9C00
	
_TOP_BLANK
	LD		A,TEXT_BOX_BLANK		;BLANK
	LD		(HLI),A
	DEC16_LOOP	B,C,_TOP_BLANK
	
;PLOT BORDER
;CORNERS
	LD		A,TEXT_BOX_BORD2	;CORNER

;UL CORNER
	LD		($9C00),A
	
;UR CORNER
	LD		($9C13),A

;LL CORNER
	LD		($9D60),A

;LR	CORNER
	LD		($9D73),A
	
;ML	CORNER
	LD		($9E20),A

;MR	CORNER
	LD		($9E33),A

;HORIZ LINES
	
;BOTTOM LINE
	MENU_BORDER_HORIZ_LINE	18,$9E21,_BOTTOM

;DIVIDING LINE
	MENU_BORDER_HORIZ_LINE	18,$9D61,_DIV
	
;TOP LINE
	MENU_BORDER_HORIZ_LINE	18,$9C01,_TOP
	
;VERT LINES

;LOWER LEFT LINE
	MENU_BORDER_VERT_LINE	5,$9D80,_LL

;LOWER RIGHT LINE
	MENU_BORDER_VERT_LINE	5,$9D93,_LR
	
;TEXT FOR CHOICES
	XOR		A
	LD		(VBK),A

;HERO~
	LD		A,$86		;HERO$
	LD		HL,$9D82
	LD		DE,1
	LD		C,5			;HOW MANY
	
	CALL	?MAIN_MENU_VRAM_TO_BG

;SPELL
	LD		A,$8B
	LD		HL,$9DA2
	LD		DE,1
	LD		C,5
	
	CALL	?MAIN_MENU_VRAM_TO_BG

;RINGS
	LD		A,$90
	LD		HL,$9DC2
	LD		DE,1
	LD		C,5

	CALL	?MAIN_MENU_VRAM_TO_BG

;ITEMS
	LD		A,$95
	LD		HL,$9DE2
	LD		DE,1
	LD		C,5
	
	CALL	?MAIN_MENU_VRAM_TO_BG

;GLYPH
	LD		A,$9A
	LD		HL,$9E02
	LD		DE,1
	LD		C,5
	
	CALL	?MAIN_MENU_VRAM_TO_BG
		
	BATTERY_ON
	BATTERY_SET_BANK	RAMB_GAMESTATE

	LD		A,(XRAM_GLYPH_COUNT)
	AND		A
	JR		NZ,_NO_GLYPH_ERASE
	
	LD		HL,$9E02
	LD		A,MENU_VRAM_BLANK
	LD		D,5
	
_GLYPH_ERASE_LOOP
	LD		(HLI),A
	DEC		D
	JR		NZ,_GLYPH_ERASE_LOOP	
	
	BATTERY_OFF
	
_NO_GLYPH_ERASE	
		
;*List
	LD		A,$7A
	LD		HL,$9E0E
	LD		DE,1
	LD		C,5
	
	CALL	?MAIN_MENU_VRAM_TO_BG
		
;SAVE/EXIT
	LD		A,$76
	LD		HL,$9DEE
	LD		DE,1
	LD		C,4
	
	CALL	?MAIN_MENU_VRAM_TO_BG
	
		
;STATUS TEXT
;ANIMITE LOGO
	LD	A,$9F		;ANIMITE LOGO
	LD	($9DAB),A	;WHERE IT GOES
	
;HP/NRG/WHATEVER LOGO
	LD	A,$A0		;HP/NRG LOGO
	LD	($9D8D),A	;WHERE IT GOES
	
;COLON
	LD	A,$75
	LD	($9DAF),A
	
;DYNAMIC STRINGS
;AMOUNT OF CASH
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	FGET16		D,E,XRAM_INVENTORY_ANIMITE
	BATTERY_OFF
	
	CALL		?CONVERT_NUMBER_2_ELEMENT		

	LD		HL,$9D8E
	LD		D,MENU_VRAM_0
	CALL	?MAIN_MENU_DRAW_3DIGIT_VALUE
	
;AMOUNT OF NRG
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON
	LD		HL,CREATURETONY_ENGH
	LD		A,(HLI)
	LD		E,(HL)
	LD		D,A
	
	CALL		?CONVERT_NUMBER_2_ELEMENT		
	
	LD		HL,$9DAC
	LD		D,MENU_VRAM_0
	CALL	?MAIN_MENU_DRAW_3DIGIT_VALUE
	
;MAX NRG
	LD		HL,CREATURETONY_ENGMAXH
	LD		A,(HLI)
	LD		E,(HL)
	LD		D,A	
	
	CALL		?CONVERT_NUMBER_2_ELEMENT		
	
	LD		HL,$9DB0
	LD		D,MENU_VRAM_0
	CALL	?MAIN_MENU_DRAW_3DIGIT_VALUE


	BATTERY_OFF
	
			
?MAIN_MENU_NORM_ATTRIB
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
	
	;Set attribs for corners
	;----------------------
	LD		A,%00101111			;UL
	LD		($9C00),A
	LD		($9D60),A			;ML
	
	LD		A,%01001111			;LR
	LD		($9E33),A
	
	LD		A,%01101111			;LL
	LD		($9E20),A	
	
;WINDOW STUFF
	XOR		A
	LD		(TEXTBOX_WY),A		;WIN Y
	LD		A,7
	LD		(TEXTBOX_WX),A		;WIN X

	RET	
	
;********************************
?MAIN_MENU_CLEAR_RELIC

	LD		A,$80		;LD A W/ BLANK TILE
	LD		DE,$1D		;DISTANCE FROM END TO START OF NEXT LINE
	
	;TOP ROW
	;-------------
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	
	ADD		HL,DE
	
	;MIDDLE ROW
	;-------------
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	
	ADD		HL,DE
	
	;BOTTOM ROW
	;-------------
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	
	RET
	
;********************************
;THIS COPIES $200 BYTES INTO (BC) FROM (HL)
?MAIN_MENU_COPY_200			
	
	LD		D,32			;32 * 16 = $200
	
_LUPE
	LD		E,16

_INNER_LUPE
	LD_BCI_HLI
	DEC		E
	JR		NZ,_INNER_LUPE
	
	DEC		D
	JR		NZ,_LUPE	

	RET
	
;********************************
?MAIN_MENU_COPY_RELIC_NAME

	ADD		HL,BC
	LD		BC,MENU_STAT_BUFFER	
	
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON
	
	LD_BCI_HLI
		
	BATTERY_OFF	
	
	LD		A,(MENU_STAT_BUFFER)
	AND		A
	JR		Z,_EMPTY
	LD		(INV_OBJ_INDEX),A
	LD		BC,INV_CURRENT
	FSET16	B,C,INV_ADDR
	
	CALL_FOREIGN	?INV_COPY_RELIC_INDEX
	
_CONT
	LD		BC,INV_CURRENT+RELIC_NAME_OFFSET+1
	FSET16	B,C,MENU_CUR_CHAR
	LD		A,12
	LD		(MENU_CHAR_LEFT),A
	
	CALL	?MAIN_MENU_PACK_VRAM

	RET	
	
_EMPTY
	LD		BC,INV_CURRENT+RELIC_NAME_OFFSET+1
	LD		HL,MAIN_MENU_EMPTY
	LD		D,12
	
_LOOP
	LD_BCI_HLI
	DEC		D
	JR		NZ,_LOOP
	
	JR		_CONT
	
;********************************
?MAIN_MENU_DE_ARCHIVE_VRAM
	
	LD			A,MENU_VRAM_BANK
	LD 			(VBK),A					;SET VBANK	
	
	LD			HL,MENU_VRAM_ARCHIVE	;WHERE WE STORE THE COMMON STUFF
	
	LD			BC,$8E00				;WHERE IT IS IN VRAM
	
	CALL		?MAIN_MENU_COPY_200	;COPY $200 BYTES

	RET
	
;********************************
;CALL AFTER C_N_2_E
; HL = BG START
; D = VRAM_0
?MAIN_MENU_DRAW_3DIGIT_VALUE
	
	LD		A,(X100)
	ADD		A,D
	LD		(HLI),A
	LD		A,(X10)
	ADD		A,D
	LD		(HLI),A
	LD		A,(X1)
	ADD		A,D
	LD		(HLI),A

	RET
	
;********************************
?MAIN_MENU_DRAW_CURRENT

_BALL_AND
	
	LD			HL,MENU_STRINFO_TABLE	;GET TO START OF THIS MENU'S DATA
	LD			A,(MENU_CUR_MENU)
	ADD			A,A						;TABLE SET UP ON WORD BOUNDRIES
	LD			E,A
	LD			D,$00
	ADD			HL,DE
	LD			A,(HLI)
	LD			H,(HL)
	LD			L,A						;AND WE'RE THERE.
	
	LD			A,(HLI)					;SNAG WHERE IT STARTS IN VRAM	
	LD			E,A
	LD			A,(HLI)
	LD			D,A						;GOT IT

	SET16		D,E,MENU_VRAM_PTR		;STORE IT	
	
	LD			A,(HLI)					;HOW MANY STRS?
	LD			D,A						;OH! THAT MANY!	
	
_LUPE_TOP
	PUSH		DE
	LD			A,(HLI)
	LD			C,A
	LD			A,(HLI)
	LD			B,A						;GO TO SIZE
	SET16		B,C,MENU_CUR_CHAR		;ADDR OF START OF STR

	LD			A,(HLI)					;LD A, MOVE HL TO NEXT ENTRY IN TABLE
	LD			(MENU_CHAR_LEFT),A		;STORE SIZE
	
_COPY_TILES
	PUSH		HL
	CALL	?MAIN_MENU_PACK_VRAM
	POP 		HL
	
_STRINGDONE
	POP			DE
	DEC			D						;NUM_STRS_COUNTER
	JR			NZ,_LUPE_TOP
	
;CHAIN CHECK STUFF
	LD			A,(MENU_CUR_MENU)		
	CP			3						;CHAIN MENUS =>  0->1 1->5 2->7
	JR			NC,_NO_CHAIN			;ONLY MENUS 0-2 CHAIN
	INC			A						;TAKE CARE OF 0->1
	CP			1						;ALSO,1->2,2->3
	JR			Z,_CHAIN				;GET 0->1 INTO CUR_MENU
	SLA			A						;2->4, 3->6
	INC			A						;4->5, 6->7! I AM SO CLEVER! =^.^=
		
_CHAIN
	LD			(MENU_CUR_MENU),A	
	JR			_BALL_AND

_NO_CHAIN

;***************
;DEBUG
	
	LD			A,(MENU_CUR_MENU)
	CP			MENU_DEBGID
	JP			Z,_DEBUG_SKIP
	
;DEBUG
;********************

;READ THE PLOT TO BG FILES FOR THE CURRENT MENU
	CALL		?MAIN_MENU_PLOT_TO_BG
	
;	check for dynamic tiles and add if needed
;------------------------------
	LD			A,(MENU_CUR_MENU)
	CP			MENU_RSTTID
	JR			NZ,_NOT_RSTT
	
	CALL		?MAIN_MENU_RSTT_DYNAMIC
	
	JP			_NOT_DYNAMIC
	
_NOT_RSTT
	CP			MENU_ITEMID
	JR			NZ,_NOT_ITEM
	
	LD		BC,XRAM_INVENTORY_ITEMS
	FSET16	B,C,MENU_DYN_XRAM_BASE
	LD		BC,ITEM_TABLE
	FSET16	B,C,MENU_DYN_TABLE_BASE
	LD		A,MENU_ITEM_CURSOR
	LD		(MENU_CURSOR_START),A
	LD		A,ITEM_SIZE
	LD		(MENU_INV_SIZE),A
	
	CALL		?MAIN_MENU_DYNAMIC_PACK_NAMES
	CALL		?MAIN_MENU_DYNAMIC_ITEM_QUAN
	
	LD		A,MENU_ITEM_CURSOR
	LD		(MENU_CURSOR_ID),A
	CALL_FOREIGN	?MENU_UPDATE_CURSOR
	
	JP			_NOT_DYNAMIC	
	
_NOT_ITEM
	CP			MENU_SPELID
	JR			NZ,_NOT_SPEL
	
	LD		BC,XRAM_INVENTORY_SPELLS
	FSET16	B,C,MENU_DYN_XRAM_BASE
	LD		BC,SPELL_TABLE
	FSET16	B,C,MENU_DYN_TABLE_BASE
	LD		A,MENU_SPEL_CURSOR
	LD		(MENU_CURSOR_START),A
	LD		A,SPELL_SIZE
	LD		(MENU_INV_SIZE),A
	
	CALL		?MAIN_MENU_DYNAMIC_PACK_NAMES
	CALL		?MAIN_MENU_DYNAMIC_ITEM_QUAN	
	
	LD		A,MENU_SPEL_CURSOR
	LD		(MENU_CURSOR_ID),A
	CALL_FOREIGN	?MENU_UPDATE_CURSOR
	
	JP			_NOT_DYNAMIC	
	
_NOT_SPEL
	CP			MENU_SITMID
	JR			NZ,_NOT_SITM
	
	XOR		A
	LD		(MENU_USED_ITEM),A
	LD		(MENU_CACHED_RELIC),A
	
	LD		BC,XRAM_INVENTORY_RELICS
	FSET16	B,C,MENU_DYN_XRAM_BASE
	LD		BC,RELIC_TABLE
	FSET16	B,C,MENU_DYN_TABLE_BASE
	LD		A,MENU_SITM_CURSOR
	LD		(MENU_CURSOR_START),A
	LD		A,RELIC_SIZE
	LD		(MENU_INV_SIZE),A
	
	CALL		?MAIN_MENU_DYNAMIC_PACK_NAMES
	CALL		?MAIN_MENU_DYNAMIC_ITEM_QUAN
	
	LD		A,MENU_SITM_CURSOR
	LD		(MENU_CURSOR_ID),A
	CALL_FOREIGN	?MENU_UPDATE_CURSOR
	
	JR			_NOT_DYNAMIC	
	
_NOT_SITM
	CP			MENU_ILSTID
	JR			NZ,_NOT_ILST
	
	LD		BC,XRAM_INVENTORY_INFUSED
	FSET16	B,C,MENU_DYN_XRAM_BASE
	LD		A,MENU_ITEM_CURSOR
	LD		(MENU_CURSOR_START),A
	LD		A,1
	LD		(MENU_INV_SIZE),A
	
	CALL		?MAIN_MENU_DYNAMIC_PACK_NAMES
	CALL		?MAIN_MENU_DYNAMIC_ITEM_QUAN
	
	LD		HL,MENU_MAIN_VALID+MENU_ITEM_CURSOR
	LD		D,0
	
_EMPTY_INFUSED_LOOP
	LD		A,(HLI)
	AND		A
	JR		NZ,_EIL_CONT
	PUSH	HL
	PUSH	DE
	
	LD		B,D
	LD		C,MENU_BG_INFUSEDIST
	CALL	?MULT
	LD		BC,MENU_BG_INFUSE0
	ADD		HL,BC
	LD		C,11	
	LD		A,$80
	
_EIL_INNER_LOOP
	LD		(HLI),A
	DEC		C
	JR		NZ,_EIL_INNER_LOOP

	POP		DE
	POP		HL
	
_EIL_CONT
	INC		D
	LD		A,5
	CP		D
	JR		NZ,_EMPTY_INFUSED_LOOP
	
	
	LD		A,MENU_SITM_CURSOR
	LD		(MENU_CURSOR_ID),A
	CALL_FOREIGN	?MENU_UPDATE_CURSOR
	
	JR			_NOT_DYNAMIC

_NOT_ILST
	CP			MENU_HSTTID
	JR			NZ,_NOT_HSTT
	
	CALL		?MAIN_MENU_HSTT_DYNAMIC
	
	JR			_NOT_DYNAMIC
	
_NOT_HSTT
	CP			MENU_SPECID
	JR			NZ,_NOT_SPEC
	
	CALL		?MAIN_MENU_SPEC_DYNAMIC	
		
	JR			_NOT_DYNAMIC
	
_NOT_SPEC
	CP			MENU_GLYFID
	JR			NZ,_NOT_SPEC
	
	CALL		?MAIN_MENU_GLYF_DYNAMIC
	
			
_NOT_DYNAMIC
_DEBUG_SKIP

;MENU IS NO LONGER DIRTY
	XOR			A
	LD			(MENU_DIRTY),A

	RET	
	
;********************************
;FINDS THE AMOUNT (FOR ITEMS) OR COST (FOR SPELLS)
;OF THE CURRENT ITEMS AND MAKES THEM DISPLAYABLE
?MAIN_MENU_DYNAMIC_ITEM_QUAN

	BATTERY_ON
	BATTERY_SET_BANK	RAMB_GAMESTATE
	
	XOR			A
	LD 			(VBK),A			
	
	LD		BC,00
	
_LOOP
	;get the prts out of the dyn pack
	;list, turn the quan into digits, then
	;update the BG data.
	;----------------------------------
	LD		HL,MENU_DYN
	LD		B,0
	ADD		HL,BC
	ADD		HL,BC
	LD		A,(HLI)
	LD		H,(HL)
	LD		L,A		
	
	XOR		A
	CP		(HL)
	JR		NZ,_NONEMPTY
	LD		A,$DF  	;(NEG DISTANCE TO BLANK CHAR IN VRAM)
	LD		HL,X1
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	
	;Setup menu valid array
	;----------------------
	LD		A,(MENU_CURSOR_START)
	LD		E,A
	LD		D,0
	PUSH	HL
	LD		HL,MENU_MAIN_VALID
	ADD		HL,BC
	ADD		HL,DE
	XOR		A
	LD		(HL),A
	POP		HL
	JR		_SET_BG	
	
_NONEMPTY
	;Setup menu valid array
	;----------------------
	LD		A,(MENU_CURSOR_START)
	LD		E,A
	LD		D,0
	PUSH	HL
	LD		HL,MENU_MAIN_VALID
	ADD		HL,BC
	ADD		HL,DE
	LD		A,1
	LD		(HL),A
	POP		HL

	LD		E,(HL)	
	LD		D,0
	
	;get digits into BG data
	;------------------------
	PUSH	BC
	CALL	?CONVERT_NUMBER_2_ELEMENT	
	POP		BC	
	
_SET_BG
	LD		B,MENU_BG_QUAN_DIST
	
	CALL	?MULT
	
	LD		DE,MENU_BG_QUAN
	ADD		HL,DE
	LD		D,MENU_VRAM_0	
	CALL	?MAIN_MENU_DRAW_3DIGIT_VALUE
	
	INC		C
	LD		A,5
	CP		C
	JR		NZ,_LOOP		
	
	BATTERY_OFF

	RET
	
;********************************
?MAIN_MENU_DYNAMIC_PACK_NAMES

	BATTERY_ON
	BATTERY_SET_BANK	RAMB_GAMESTATE

	CALL	?MAIN_MENU_PACK_DYN_ARRAY
	
	;SETUP ARROWS AND MENU VALID ARRAY FOR THEM
	;-------------------------
	LD		A,1
	LD		(MENU_MAIN_VALID+11),A
	LD		(MENU_MAIN_VALID+12),A
	LD		(MENU_MAIN_VALID+23),A
	LD		(MENU_MAIN_VALID+24),A
	
_CHECK_TOP
	FGET16	B,C,MENU_DYN_XRAM_BASE
	TWOS_COMP	B,C
	LD		HL,MENU_DYN
	DEREF_HL
	ADD		HL,BC
	LD		B,0
	LD		C,L	
		
	
_CHECK_TOP_LOOP
	FGET16	H,L,MENU_DYN_XRAM_BASE
	DEC		BC
	LD		A,$FF
	CP		C
	JR		Z,_AT_TOP
	ADD		HL,BC
	LD		A,(HL)
	AND		A
	JR		Z,_CHECK_TOP_LOOP
	JR		_CHECK_BOTTOM
		
_AT_TOP
	XOR		A
	LD		(MENU_MAIN_VALID+11),A
	LD		(MENU_MAIN_VALID+23),A
	LD		A,$80
	LD		HL,$9C29
	LD		(HLI),A
	LD		(HLI),A

_CHECK_BOTTOM
	FGET16	B,C,MENU_DYN_XRAM_BASE
	TWOS_COMP	B,C
	LD		HL,MENU_DYN+8
	DEREF_HL
	ADD		HL,BC
	LD		B,0
	LD		C,L	
	LD		A,C
	AND		C
	JR		Z,_AT_BOTTOM
	
_CHECK_BOTTOM_LOOP
	FGET16	H,L,MENU_DYN_XRAM_BASE
	INC		BC
	LD		A,$FF
	CP		C
	JR		Z,_AT_BOTTOM
	ADD		HL,BC
	LD		A,(HL)
	AND		A
	JR		Z,_CHECK_BOTTOM_LOOP
	JR		_CHECK_DONE
	
_AT_BOTTOM
	XOR		A
	LD		(MENU_MAIN_VALID+12),A
	LD		(MENU_MAIN_VALID+24),A
	LD		A,$80
	LD		HL,$9D29
	LD		(HLI),A
	LD		(HLI),A		
	
_CHECK_DONE
	BATTERY_OFF
	
	LD		A,(MENU_NEW_INFO)
	AND		A
	RET		Z	
	
_TO_STRS

	BATTERY_OFF
	
	;stuff vram w/ the strings of the names
	;----------------------------------
	LD		BC,0
	
_VRAM_LOOP
	LD		B,0
	LD		HL,MENU_DYN
	ADD		HL,BC
	
	;grab the ptr into XRAM
	;--------------------	
	LD		A,(HLI)
	LD		H,(HL)	
	LD		L,A	
	
	;sub XRAM base to make into index
	;----------------------
	PUSH	BC				;SAVE PTR FOR LATER
	GET16	B,C,MENU_DYN_XRAM_BASE
	TWOS_COMP	B,C
	ADD		HL,BC			
	LD		C,L
	LD		A,(MENU_INV_SIZE)
	LD		B,A
	LD		A,(MENU_CUR_MENU)
	CP		MENU_ILSTID
	JR		Z,_ILST
	
	CALL	?MULT
	
	;mult by size and add into table
	GET16	B,C,MENU_DYN_TABLE_BASE
	ADD		HL,BC			
	
	SET16	H,L,INV_OBJ_PTR
	LD		BC,INV_CURRENT
	FSET16	B,C,INV_ADDR
	
	LD		A,(MENU_CUR_MENU)
	CP		MENU_SITMID
	JR		Z,_SITM
		
	CALL_FOREIGN	?INV_COPY_ITEM_ARRAY	;COPY ITEM INTO WRAM
	JR		_CONTINUE	
	
_ILST
	LD		A,C
	LD		(BTL_NAME_INDEX),A
	LD		BC,INV_CURRENT
	FSET16	B,C,INV_ADDR
	CALL_FOREIGN	?BTL_COPY_CREATURE_NAME
	JR		_CONTINUE	

_SITM	
	CALL_FOREIGN	?INV_COPY_RELIC_ARRAY	;COPY RELIC INTO WRAM
	
_CONTINUE
	POP		BC
	PUSH	BC
	SRL		C
	LD		B,MENU_ITEM_VRAM_DIST
	CALL	?MULT
	LD		BC,MENU_ITEM_VRAM1
	ADD		HL,BC
	
	LD		A,(MENU_CUR_MENU)
	CP		MENU_SITMID
	JR		NZ,_NOT_RELIC_SIZE	
	LD		BC,INV_CURRENT+RELIC_NAME_OFFSET	;START OF NAME STRING
	JR		_HAVE_SIZE

_NOT_RELIC_SIZE	
	CP		MENU_ILSTID
	JR		Z,_ILSISIZE
	LD		BC,INV_CURRENT+SPELL_NAME_OFFSET		;START OF NAME STRING
	JR		_HAVE_SIZE	
	
_ILSISIZE
	LD		BC,INV_CURRENT
	
_HAVE_SIZE
	LD		A,13
	LD		(MENU_CHAR_LEFT),A
	SET16	H,L,MENU_VRAM_PTR
	FSET16	B,C,MENU_CUR_CHAR
	CALL	?MAIN_MENU_PACK_VRAM		
	
	POP		BC
	INC		BC
	INC		BC
	LD		A,C
	CP		$0A
	JP		NZ,_VRAM_LOOP	

	RET	
	
;********************************	
?MAIN_MENU_EQUIP_RELIC

	LD		A,MENU_RSTTID
	LD		(MENU_CUR_MENU),A
	LD		A,1
	LD		(MENU_DIRTY),A	
	LD		A,(MENU_CURRENT_RELIC)
	ADD		A,MAINMENU_RELIC0_CUR
	LD		(MENU_CURSOR_ID),A
	
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON	
	
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
	
	LD		A,(MENU_USED_ITEM)
	LD		B,(HL)
	LD		(HL),A
	
	BATTERY_SET_BANK	RAMB_GAMESTATE
	
	LD		A,B
	AND		A
	JR		Z,_EMPTY_RELIC
	LD		C,A
	LD		B,0
	LD		HL,XRAM_INVENTORY_RELICS
	ADD		HL,BC
	INC		(HL)	
	
_EMPTY_RELIC
	LD		A,(MENU_USED_ITEM)
	LD		C,A
	LD		B,0
	LD		HL,XRAM_INVENTORY_RELICS
	ADD		HL,BC
	DEC		(HL)	
	
	BATTERY_OFF
	

	RET
	
;********************************	
?MAIN_MENU_GLYF_DYNAMIC

	CALL	?MAIN_MENU_COPY_GLYPH
	
	XOR		A
	LD		(VBK),A
	
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	
	LD		A,(XRAM_GLYPH_COUNT)
	LD		D,A
	
	BATTERY_OFF

_TOP	
	LD		A,D
	CP		1
	RET		Z
	
	LD		HL,$9CC9
	LD		BC,BG_GLYPH_TOP
	
	LD_HLI_BCI
	LD_HLI_BCI
	
_LEFT
	LD		A,D	
	CP		2
	RET		Z
	
	LD		HL,$9CE9
	LD		BC,BG_GLYPH_LEFT
	
	LD_HLI_BCI
	
_RIGHT
	LD		A,D	
	CP		3
	RET		Z
	
	LD		HL,$9CEA
	LD		BC,BG_GLYPH_RIGHT
	
	LD_HLI_BCI
	
_BOTTOM
	LD		A,D
	CP		4
	RET		Z
	
	LD		HL,$9D09
	LD		BC,BG_GLYPH_BOTTOM
	
	LD_HLI_BCI
	LD_HLI_BCI
	
_MIDDLE
	LD		A,D
	CP		5
	RET		Z
	
	
	LD		BC,BG_GLYPH_MID
	CALL	?MAIN_MENU_GLYPH_MIDDLE
	

	RET
	
;********************************	
?MAIN_MENU_GLYPH_MIDDLE

	LD		HL,$9C28
	
	LD_HLI_BCI
	LD_HLI_BCI
	LD_HLI_BCI
	LD_HLI_BCI	
	
	LD		HL,$9C48
	
	LD_HLI_BCI
	LD_HLI_BCI
	LD_HLI_BCI
	LD_HLI_BCI	
	
	LD		HL,$9C68
	
	LD_HLI_BCI
	LD_HLI_BCI
	LD_HLI_BCI
	LD_HLI_BCI	
	
	LD		HL,$9C88
	
	LD_HLI_BCI
	LD_HLI_BCI
	LD_HLI_BCI
	LD_HLI_BCI	
	
	LD		HL,$9CA8
	
	LD_HLI_BCI
	LD_HLI_BCI
	LD_HLI_BCI
	LD_HLI_BCI		

	RET
	
;********************************	
?MAIN_MENU_HSTT_DYNAMIC

	;Load tony's portrait
	;----------------------------	
	LD		HL,ICON_TONY
	LD		A,L
	AND		$0F				;GET BANK OUT OF ICON_EQU
	LD		E,A
	
	LD		A,L				;GET OFFSET
	AND		$F0
	LD		L,A	
	
	SET16	H,L,VBLANK_SOURCE
	LD		BC,$8AB0
	FSET16	B,C,VBLANK_DEST
	LD		A,1
	LD		(VBLANK_VBK),A
	
	LD		D,25		;NUMBER OF TILES
	
_COPY_LOOP
	LD		HL,?VBLANK_COPY_TILE
	CALL	?CALL_FOREIGN
	DEC		D
	JR		NZ,_COPY_LOOP	
	
	;Load tony's lvl
	;--------------------
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON
	LD		A,(CREATURETONY_LVL)
	LD		E,A
	LD		D,0
	BATTERY_OFF
	
	CALL		?CONVERT_NUMBER_2_ELEMENT		
	
	XOR		A
	LD		(VBK),A
	
	LD		A,(X10)
	ADD		A,MENU_VRAM_0
	LD		($9C4B),A
	
	LD		A,(X1)
	ADD		A,MENU_VRAM_0
	LD		($9C4C),A	
	
	;Load tony's EXP
	;--------------------
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON
	LD		HL,CREATURETONY_EXPH
	LD		A,(HLI)
	LD		E,(HL)
	LD		D,A
	BATTERY_OFF
	
	CALL		?CONVERT_NUMBER_2_ELEMENT		
			
	LD		HL,$9C6B
	LD		D,MENU_VRAM_0
	CALL	?MAIN_MENU_DRAW_3DIGIT_VALUE		
	
;	LD		A,(X100)
;	ADD		A,MENU_VRAM_0
;	LD		($9C6B),A
;	
;	LD		A,(X10)
;	ADD		A,MENU_VRAM_0
;	LD		($9C6C),A
;	
;	LD		A,(X1)
;	ADD		A,MENU_VRAM_0
;	LD		($9C6D),A
	
	;Load the Quest Items
	;---------------------
	CALL	?MAIN_MENU_COPY_RELICS
	
	;Load lvl lbls
	;---------------------
	CALL	?MAIN_MENU_COPY_LVL_LBLS
		
	;Blank the BG for relics he doesn't have
	;-----------------------
	XOR		A
	LD		(VBK),A
	
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	
	LD		A,(XRAM_HERO_ABILITY)
	LD		(MENU_COUNTER),A
	
	BATTERY_OFF	
	
_RELIC_1
	XOR		A
	LD		HL,MENU_COUNTER
	OR		(HL)
	JR		Z,_RELIC_1_CLEAR
	DEC		(HL)
	JR		_RELIC_2	
	
_RELIC_1_CLEAR
	LD		HL,$9CE1
	CALL	?MAIN_MENU_CLEAR_RELIC
	JR		_RELIC_2_CLEAR

_RELIC_2
	XOR		A
	LD		HL,MENU_COUNTER
	OR		(HL)
	JR		Z,_RELIC_2_CLEAR
	DEC		(HL)
	JR		_RELIC_3	
	
_RELIC_2_CLEAR
	LD		HL,$9CE6
	CALL	?MAIN_MENU_CLEAR_RELIC
	JR	_RELIC_3_CLEAR

_RELIC_3
	XOR		A
	LD		HL,MENU_COUNTER
	OR		(HL)
	JR		Z,_RELIC_3_CLEAR
	DEC		(HL)
	JR		_RELIC_4		
	
_RELIC_3_CLEAR
	LD		HL,$9CEB
	CALL	?MAIN_MENU_CLEAR_RELIC
	JR	_RELIC_4_CLEAR

_RELIC_4
	XOR		A
	LD		HL,MENU_COUNTER
	OR		(HL)
	JR		Z,_RELIC_4_CLEAR
	DEC		(HL)
	JR		_RELIC_5		
	
_RELIC_4_CLEAR
	LD		HL,$9CF0
	CALL	?MAIN_MENU_CLEAR_RELIC
	JR	_RELIC_5_CLEAR

_RELIC_5
	XOR		A
	LD		HL,MENU_COUNTER
	OR		(HL)
	RET		NZ	
	
_RELIC_5_CLEAR
	LD		HL,$9C30
	CALL	?MAIN_MENU_CLEAR_RELIC	

	RET
	
;********************************
?MAIN_MENU_MAINLUPE

;WHY?  BECAUSE WE LOVE YOU
	FRAME_READY
	
;DO WE NEED TO DRAW A NEW MENU?
	LD		A,(MENU_DIRTY)
	CP		1
	JR		NZ,_NOT_DIRTY
	
	SCREEN_HIDE
	
	CALL	?MAIN_MENU_DRAW_CURRENT	;YOU'RE SUCH A BAD DIRTY MENU
	CALL	?MAIN_MENU_ATTRIB_UPDATE
	
	SCREEN_SHOW
		
_NOT_DIRTY

;DRAW THE CURSOR
	CALL_FOREIGN	?MENU_DRAW_CURSOR_SPRITE

;CHECK THE KEYS
	LD		A,(CNTDOWN)
	BIT		BitRight,A
	JR		NZ,_RTOGGLE
	BIT		BitLeft,A
	JR		Z,_NORMAL
	
_RTOGGLE
	LD		A,(MENU_CURSOR_ID)
	CP		28
	JR		C,_NORMAL
	CP		30
	JR		NC,_NORMAL
	XOR		A
	SET		BitSelect,A
	LD		(CNTDOWN),A

_NORMAL
	CALL_FOREIGN	?MENU_KEY_CHECK		
	
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT
	
	JP			?MAIN_MENU_MAINLUPE	

;********************************
?MAIN_MENU_OPEN

	;IS THE TXTBOX OPEN?
	;------------------------
	LD			A,(TEXTBOX_OPEN)
	CP			TEXTBOX_STATE_CLOSED
	RET			NZ
			
	;IS TONY ACTIVE?
	;------------------------
	LD			A,(AI_HEROFLAGS)
	BIT			HEROFLAGS_ACTIVE,A
	RET			Z	
			
	;IS THE SYSTEM SCRIPT BUSY?
	;--------------------------
	LD			A,(SYSTEM_SCRIPT_ACTIVE)
	AND			A
	RET			NZ
	
	;IS THE DISABLE BIT SET?
	;------------------------
	LD			A,(MENU_DISABLE_MAIN)
	AND			A
	RET			NZ
			
	SOUND_SET_SONG_VOL	6
	FRAME_INIT
		
	SCREEN_HIDE
	
	CALL			?MAIN_MENU_ARCHIVE_VRAM
	CALL_FOREIGN	?CARDSCENE_ARCHIVE_BG_VRAM
	
	XOR			A
	LD			(WY),A		;WIN Y
	LD			A,7
	LD			(WX),A		;WIN X
	
	CALL		?MENU_DEBUG_VRAM_QS

	LD			A,MENU_ZEROID
	LD 			(MENU_CUR_MENU),A		;START ON MENU 0
	LD 			BC,MENU_VRAM_TILES
	FSET16		B,C,MENU_VRAM_PTR		;START OF MENU VRAM 
	LD			BC,MAIN_MENU_CURSOR_TABLE
	FSET16		B,C,MENU_CURSOR_TABLE	;WHAT CURSOR TABLE DO WE USE?		
	XOR			A
	LD			(MENU_BLINK),A			;BLINK = 0
	LD			(MENU_CONFIRM),A		;CONFIRM = 0
	LD			(MENU_CREATURE_INDEX),A	;START ON CREATURE 0
	LD			(MENU_CACHED_RELIC),A
	
	LD			(MENU_CURSOR_ID),A		;CURSORID = 0 
	CALL_FOREIGN	?MENU_UPDATE_CURSOR
	
	LD			A,%11111111
	LD			(MENU_KEY_MASK),A		;MASK = EAT SELECT
	LD			A,TEXT_BOX_CURSOR1
	LD			(MENU_CURSOR_VRAM),A	;CURSOR'S VRAM TILE
	
	LD			A,1
	LD			(MENU_BLINK_FLAG),A
	
	;Arrow
	;---------------------
	LD		A,1
	LD		(VBLANK_VBK),A
	LD		BC,BIT_FONT+(?ARROW*16)
	FSET16	B,C,VBLANK_SOURCE
	LD		BC,$97F0				;VRAM DEST
	FSET16	B,C,VBLANK_DEST
	LD		E,MENU_GRAPHICS_BANK	;BANK OF FONT
	LD		HL,?VBLANK_COPY_TILE
	CALL	?CALL_FOREIGN
	
	;"Infused"
	;----------------------
	LD		BC,MENU_ZERO_STR_10
	FSET16	B,C,MENU_CUR_CHAR
	LD		BC,$97A0
	FSET16	B,C,MENU_VRAM_PTR
	LD		A,5
	LD		(MENU_CHAR_LEFT),A
	CALL	?MAIN_MENU_PACK_VRAM
	
	;":"
	;---------------------
	LD		BC,BIT_FONT+(?COLN*16)
	FSET16	B,C,VBLANK_SOURCE
	LD		BC,$9750				;VRAM DEST
	FSET16	B,C,VBLANK_DEST
	LD		E,MENU_GRAPHICS_BANK	;BANK OF FONT
	LD		HL,?VBLANK_COPY_TILE
	CALL	?CALL_FOREIGN
	
	;"Save" 
	;------------------	
	LD		BC,MENU_ZERO_BLANK
	LD		A,(MENU_SAVE_ENABLE)
	AND		A
	JR		Z,_NO_SAVE
	
	LD		BC,MENU_ZERO_SAVE_STR	
	
_NO_SAVE	
	FSET16	B,C,MENU_CUR_CHAR
	LD		BC,$9760
	FSET16	B,C,MENU_VRAM_PTR
	LD		A,4
	LD		(MENU_CHAR_LEFT),A
	CALL	?MAIN_MENU_PACK_VRAM	


	LD			BC,?MAIN_MENU_KEY_START
	FSET16		B,C,MENU_START_FUNC
	LD			BC,?MAIN_MENU_KEY_SELECT
	FSET16		B,C,MENU_SELECT_FUNC
	
	LD			HL,MENU_MAIN_VALID
	SET16		H,L,MENU_VALID_ARRAY
	LD			A,1
	LD			D,$2C
	
_VALID_LOOP
	LD			(HLI),A
	DEC			D
	JR			NZ,_VALID_LOOP	
	
	;Disable empty menus
	;--------------------------
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	
	;SPELL
	LD		HL,XRAM_INVENTORY_SPELLS+1
	LD		D,$FD
	XOR		A
	
_SPELL_LOOP
	OR		(HL)
	INC		HL
	DEC		D
	JR		NZ,_SPELL_LOOP
	
	AND		A
	JR		NZ,_CHECK_ITEM
	LD		(MENU_MAIN_VALID+1),A	
	
_CHECK_ITEM
	LD		HL,XRAM_INVENTORY_ITEMS+1
	LD		D,$FD
	XOR		A
	
_ITEMS_LOOP
	OR		(HL)
	INC		HL
	DEC		D
	JR		NZ,_ITEMS_LOOP
	
	AND		A
	JR		NZ,_CHECK_ILST
	LD		(MENU_MAIN_VALID+3),A	
	
_CHECK_ILST
	LD		HL,XRAM_INVENTORY_INFUSED
	LD		D,$FE
	XOR		A
	
_ILST_LOOP
	OR		(HL)
	INC		HL
	DEC		D
	JR		NZ,_ILST_LOOP
	
	AND		A
	JR		NZ,_CHECK_RING
	LD		(MENU_MAIN_VALID+5),A	
	
_CHECK_RING
	LD		A,(XRAM_INVENTORY_RINGS)
	INC		A
	LD		(MENU_MAIN_VALID+2),A	
	
_GLYPH
	LD		A,(XRAM_GLYPH_COUNT)
	LD		(MENU_MAIN_VALID+4),A
	
_SAVE
	LD		A,(MENU_SAVE_ENABLE)
	LD		(MENU_MAIN_VALID+36),A
	
	BATTERY_OFF	
	
	CALL		?MAIN_MENU_BORDER		;DRAW STATIC TILES	
	
	CALL		?MAIN_MENU_DRAW_CURRENT		;DRAW THE MENU

	SCREEN_SHOW
	
	FRAME_READY

	CALL		?SYSTEM_UPDATE_GAME_NOSCRIPT

	JP			?MAIN_MENU_MAINLUPE
	
;********************************
?MAIN_MENU_PACK_DYN_ARRAY

	LD		A,1
	LD		(MENU_NEW_INFO),A

	;Did we just get into this menu?
	;--------------------------
	LD		A,(MENU_CURSOR_ID)
	CP		$0D
	JR		Z,_NEW
	
	CP		$06
	JR		Z,_NEW	
	
	JR		_NOT_NEW
		
_NEW	
	LD		HL,MENU_DYN
	LD		A,MENU_LEFT_EDGE
	LD		(MENU_PG_EDGE),A
	LD		C,$A
	XOR		A
	
_CLEAR_LOOP
	LD		(HLI),A
	DEC		C
	JR		NZ,_CLEAR_LOOP	
	
	FGET16	B,C,MENU_DYN_XRAM_BASE
	DEC		BC
	LD		HL,MENU_DYN
	JR		_TOP
			
_NOT_NEW
	;Loop through items, taking the first 5
	;that are present in inventory
	;in the proper direction based on input
	;----------------------------
	LD		A,(MENU_CURSOR_ID)
	CP		$17
	JP		Z,_PG_LEFT
	
	CP		$0B
	JP		Z,_PG_LEFT
	
	CP		$12
	JP		Z,_PG_LEFT
	
	FGET16	B,C,MENU_DYN+8

_PG_RIGHT
	LD		A,(MENU_PG_EDGE)
	CP		MENU_RIGHT_EDGE
	JR		NZ,_NEW_RIGHT
	XOR		A
	LD		(MENU_NEW_INFO),A
	RET
_NEW_RIGHT
	XOR		A
	LD		(MENU_PG_EDGE),A
	LD		HL,MENU_DYN
	
_TOP
	;is the inventory slot empty?
	;-------------------------
	INC		BC
	LD		A,(BC)
	CP		0
	JR		Z,_NO_ITEM
	
	;if not
	;-----------------------
	LD		(HL),C
	INC		HL
	LD		(HL),B
	INC		HL					;STORE ADDR IN ARRAY
	LD		DE,MENU_DYN+10
	TWOS_COMP	D,E
	PUSH	HL
	ADD		HL,DE
	LD		A,H
	OR		L					;CHECK FOR 5 ITEMS
	POP		HL
	RET		Z

_NO_ITEM
	;inc the ptr going through the item array, stop
	;when you hit the end
	;----------------------------
	PUSH	HL
	FGET16 	H,L,MENU_DYN_XRAM_BASE
	LD		DE,$FE
	ADD		HL,DE					;END OF THIS XRAM TBL
	TWOS_COMP	H,L
	ADD		HL,BC
	LD		A,H
	OR		L
	POP		HL						
	JR		NZ,_TOP	
	LD		A,MENU_RIGHT_EDGE
	LD		(MENU_PG_EDGE),A
	PUSH	HL
	LD		DE,MENU_DYN				;CHECK FOR NO NEW
	TWOS_COMP	D,E
	ADD		HL,DE
	LD		A,H
	OR		L
	POP		HL
	JR		NZ,_CLEAR_OUT_LOOP
	XOR		A
	LD		(MENU_NEW_INFO),A
	RET
	
	;ld remainder of array w/ $00 so they can 
	;blanked
	;---------------------------
_CLEAR_OUT_LOOP
	PUSH	HL
	LD		DE,MENU_DYN+$0A
	TWOS_COMP	D,E
	ADD		HL,DE
	LD		A,H
	OR		L
	POP		HL	
	RET  	Z
	GET16	B,C,MENU_DYN_XRAM_BASE
	LD		(HL),C
	INC		HL
	LD		(HL),B
	INC		HL
	JR		_CLEAR_OUT_LOOP

;PAGE LEFT
;----------------	
_PG_LEFT	
	LD		A,(MENU_PG_EDGE)
	CP		MENU_LEFT_EDGE
	JR		NZ,_NEW_LEFT
	XOR		A
	LD		(MENU_NEW_INFO),A
	RET
_NEW_LEFT
	XOR		A
	LD		(MENU_PG_EDGE),A
	FGET16	B,C,MENU_DYN
	LD		HL,MENU_DYN+8
	
_TOP_L
	;is the inventory slot empty?
	;-------------------------
	DEC		BC
	LD		A,(BC)
	CP		0
	JR		Z,_NO_ITEM_L
	
	;if not
	;-----------------------
	LD		(HL),C
	INC		HL
	LD		(HL),B
	INC		HL					;STORE ADDR IN ARRAY
	LD		DE,MENU_DYN+2
	TWOS_COMP	D,E
	PUSH	HL
	ADD		HL,DE
	LD		A,H
	OR		L					;CHECK FOR LOOP AROUND
	POP		HL
	LD		DE,$FFFC			;-4
	ADD		HL,DE
	RET		Z

_NO_ITEM_L
	;inc the ptr going through the item array, loop
	;around when you hit the end
	;----------------------------
	PUSH	HL
	FGET16 	H,L,MENU_DYN_XRAM_BASE		;END OF THIS XRAM TBL
	TWOS_COMP	H,L
	ADD		HL,BC
	LD		A,H
	OR		L
	POP		HL						
	JR		NZ,_TOP_L
	LD		A,MENU_LEFT_EDGE
	LD		(MENU_PG_EDGE),A
	PUSH	HL					;CHECK FOR NO NEW
	LD		DE,MENU_DYN+8
	TWOS_COMP	D,E
	ADD		HL,DE
	LD		A,H
	OR		L
	POP		HL
	RET		NZ	
	XOR		A
	LD		(MENU_NEW_INFO),A
	RET
	
;********************************
?MAIN_MENU_RSTT_DYNAMIC
	
	;Find out it just entered or pg left/right
	;----------------------------
	XOR		A
	LD		(MENU_EMPTY_RELIC_LIST),A
	
	BATTERY_ON
	BATTERY_SET_BANK	RAMB_GAMESTATE	
	
	LD		A,(MENU_CURSOR_ID)
	CP		$19					;JUST IN
	JR		Z,_NEW
	CP		28					;BACK FROM RELICS
	JR		Z,_NEW
	CP		29
	JR		NZ,_NOT_NEW
	
_NEW
	LD		A,(MENU_CREATURE_INDEX)
	LD		C,A
	LD		B,0
	LD		HL,XRAM_INVENTORY_RINGS
	ADD		HL,BC
	LD		A,(HL)
	JR		_READY_TO_DRAW			
			
_NOT_NEW
	CP		$1B
	JR		NZ,_LEFT
	
_RIGHT
	LD		A,(MENU_CREATURE_INDEX)
	LD		C,A
	LD		B,0
	LD		HL,XRAM_INVENTORY_RINGS
	ADD		HL,BC				;WHERE IN EQUIPED RING LIST
	
_RLOOP
	INC		HL
	LD		A,(MENU_CREATURE_INDEX)
	INC		A
	LD		(MENU_CREATURE_INDEX),A
	LD		BC,XRAM_INVENTORY_RINGS+$0A
	TWOS_COMP	B,C
	PUSH	HL
	ADD		HL,BC
	LD		A,H
	OR		L
	POP		HL
	JR		NZ,_NOT_REND
	XOR		A
	LD		(MENU_CREATURE_INDEX),A
	LD		HL,XRAM_INVENTORY_RINGS	
		
_NOT_REND
	LD		A,(HL)
	CP		$FF
	JR		Z,_RLOOP
	JR		_READY_TO_DRAW	

_LEFT
	LD		A,(MENU_CREATURE_INDEX)
	LD		C,A
	LD		B,0
	LD		HL,XRAM_INVENTORY_RINGS
	ADD		HL,BC				;WHERE IN EQUIPED RING LIST

_LLOOP
	DEC		HL
	LD		A,(MENU_CREATURE_INDEX)
	DEC		A
	LD		(MENU_CREATURE_INDEX),A
	LD		BC,XRAM_INVENTORY_RINGS-$01
	TWOS_COMP	B,C
	PUSH	HL
	ADD		HL,BC
	LD		A,H
	OR		L
	POP		HL
	JR		NZ,_NOT_LEND
	LD		A,9
	LD		(MENU_CREATURE_INDEX),A
	LD		HL,XRAM_INVENTORY_RINGS+$09
	
_NOT_LEND
	LD		A,(HL)
	CP		$FF
	JR		Z,_LLOOP
	JR		_READY_TO_DRAW			
		
_READY_TO_DRAW
	LD		C,A
	LD		B,CREATURE_XRAM_SIZE
	CALL	?MULT
	
	BATTERY_SET_BANK	RAMB_CREATURES
	
	LD		BC,CREATURE_XRAM
	ADD		HL,BC
	PUSH	HL				;SAVE PTR TO CREATURE FOR LATER
	LD		A,(HL)
	LD		(BTL_NAME_INDEX),A
	
	BATTERY_OFF		
	
	LD		BC,MENU_NAME_BUFFER
	FSET16	B,C,BTL_TABLE_COPY_TO
	CALL_FOREIGN	?BTL_COPY_CREATURE_NAME	
	
	LD		HL,MENU_NAME_BUFFER
	SET16	H,L,MENU_CUR_CHAR
	LD		BC,$8AB0
	FSET16 	B,C,MENU_VRAM_PTR
	LD		A,10
	LD		(MENU_CHAR_LEFT),A
	
	CALL	?MAIN_MENU_PACK_VRAM
	
_STAT_LABELS
	;Load the Stat Labels
	;---------------------
	CALL	?MAIN_MENU_COPY_STAT_LBLS
	
_STAT_VALS
	POP		HL				;RESTORE CREATURE POINTER
	PUSH	HL				;SAVE AGAIN
	
	SWITCH_RAM_BANK	WRAM_BATTLE
	
	LD		BC,XRAM_CREATURE_STR
	ADD		HL,BC
	LD		BC,BTL_TARGET_STR	
	
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON

	LD		D,8	
_STAT_LOOP
	LD_BCI_HLI
	DEC		D
	JR		NZ,_STAT_LOOP
	
	POP		HL				;RESTORE CREATURE POINTER
	PUSH	HL				;SAVE AGAIN
	
	LD		BC,XRAM_CREATURE_RELIC0
	ADD		HL,BC
	LD		BC,BTL_TARGET_RELIC0
	
	LD_BCI_HLI
	LD_BCI_HLI	
	
	BATTERY_OFF		
	
	;APPLY RELICS
	;----------------------
	CALL_FOREIGN	?BTL_APPLY_RELICS	
	
	LD		HL,BTL_TARGET_STR
	LD		BC,MENU_STAT_BUFFER	
	
	LD		D,8	
_STAT_LOOP2
	LD_BCI_HLI
	DEC		D
	JR		NZ,_STAT_LOOP2	 
	
	XOR		A
	LD		(VBK),A
	
	;STR Val
	;----------------------
	LD		A,(MENU_STAT_BUFFER)
	LD		HL,$9C8A
	CALL	?MAIN_MENU_2DIGIT_VALS
	
	;SKILL Val
	;----------------------
	LD		A,(MENU_STAT_BUFFER+1)
	LD		HL,$9C91
	CALL	?MAIN_MENU_2DIGIT_VALS
	
	;Spd Val
	;----------------------
	LD		A,(MENU_STAT_BUFFER+2)
	LD		HL,$9CCA
	CALL	?MAIN_MENU_2DIGIT_VALS
	
	;Def Val
	;----------------------
	LD		A,(MENU_STAT_BUFFER+3)
	LD		HL,$9CAA
	CALL	?MAIN_MENU_2DIGIT_VALS
	
	;RESIST Val
	;----------------------
	LD		A,(MENU_STAT_BUFFER+4)
	LD		HL,$9CB1
	CALL	?MAIN_MENU_2DIGIT_VALS
	
	;Luk Val
	;----------------------
	LD		A,(MENU_STAT_BUFFER+7)
	LD		HL,$9CD1
	CALL	?MAIN_MENU_2DIGIT_VALS
	
	;Lvl and Exp and Energy
	;-----------------------
	POP		HL
	PUSH	HL				;RESTORE AND SAVE PTR AGAIN
	LD		BC,XRAM_CREATURE_LVL
	ADD		HL,BC
	LD		BC,MENU_STAT_BUFFER	
	
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON
	
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI
	INC		HL
	INC		HL
	LD_BCI_HLI
	LD_BCI_HLI
	
	BATTERY_OFF	
	
	LD		A,(MENU_STAT_BUFFER)
	LD		HL,$9C6A
	CALL	?MAIN_MENU_2DIGIT_VALS
		
	LD		A,(MENU_STAT_BUFFER+2)
	LD		HL,$9C71
	CALL	?MAIN_MENU_2DIGIT_VALS
	
	FGET16	E,D,MENU_STAT_BUFFER+3
	CALL	?CONVERT_NUMBER_2_ELEMENT
	LD		HL,$9D2F
	LD		D,MENU_VRAM_0
	CALL	?MAIN_MENU_DRAW_3DIGIT_VALUE	
	
	
	;Relic 0
	;------------------
	LD		BC,$8FD0
	FSET16 	B,C,MENU_VRAM_PTR
	POP		HL
	PUSH	HL
	LD		BC,XRAM_CREATURE_RELIC0
	CALL	?MAIN_MENU_COPY_RELIC_NAME	
	
	;Relic 1
	;------------------
	LD		BC,$9090
	FSET16 	B,C,MENU_VRAM_PTR
	POP		HL
	PUSH	HL
	LD		BC,XRAM_CREATURE_RELIC1
	CALL	?MAIN_MENU_COPY_RELIC_NAME	
	
	;Portrait
	;---------------
	POP		HL
	PUSH	HL
	
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON
	
	LD		A,(HL)
	LD		(TEMP_MISC1),A
		
	BATTERY_OFF
	
	CALL_FOREIGN	?GET_CARD_VRAMDATA
	LD			BC,$8D60
	FSET16		B,C,VBLANK_DEST
	LD			A,20
	LD			(MENU_COUNTER),A
	
_COPY_PORT_LOOP	
	LD			A,(VBLANK_BANK)		
	LD			E,A						;E IS BANK
	LD			HL,?VBLANK_COPY_TILE 
	CALL		?CALL_FOREIGN	
	LD			HL,MENU_COUNTER
	DEC			(HL)
	JR			NZ,_COPY_PORT_LOOP	
	
	;Disable relic if no relics
	;--------------------------
	LD		HL,MENU_MAIN_VALID+28
	LD		A,1
	LD		(HLI),A
	LD		(HLI),A	
	
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	
	LD		HL,XRAM_INVENTORY_RELICS
	LD		D,$FE
	XOR		A
	
_NO_RELIC_LOOP
	OR		(HL)
	INC		HL
	DEC		D
	JR		NZ,_NO_RELIC_LOOP
	
	PUSH	AF
		
	BATTERY_OFF
	
	POP		AF
	AND		A
	POP		HL
	RET		NZ
	PUSH	HL
	
	;Just in case they have equipped all the relics they have
	;-----------------------
	LD		A,1
	LD		(MENU_EMPTY_RELIC_LIST),A
	
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON
	
	XOR		A
	
	POP		HL
	LD		BC,XRAM_CREATURE_RELIC0
	ADD		HL,BC
	OR		(HL)
	INC		HL		
	
	LD		BC,MENU_MAIN_VALID+28
	LD		(BC),A
	INC		BC
	XOR		A
	OR		(HL)
	LD		(BC),A
	
	BATTERY_OFF
	
	RET
	
;********************************	
?MAIN_MENU_SAVE_EXIT

	LD		A,(MENU_SAVE_ENABLE)
	AND		A
	JR		Z,_EXIT
	
_SAVE
	SCRIPT_SET	SYSTEM_SCRIPT,?_MENU_SAVE
	RET	
	
_EXIT
	SCRIPT_SET	SYSTEM_SCRIPT,?_MENU_EXIT
	RET	

	RET

;********************************	
?MAIN_MENU_SPEC_DYNAMIC

	XOR		A
	LD		(VBK),A

	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON	
	
	LD		A,(MENU_CREATURE_INDEX)
	LD		C,A
	LD		B,0
	LD		HL,XRAM_INVENTORY_RINGS
	ADD		HL,BC
	LD		A,(HL)	
	LD		C,A
	LD		B,CREATURE_XRAM_SIZE
	CALL	?MULT
	LD		BC,CREATURE_XRAM+XRAM_CREATURE_CMD0
	ADD		HL,BC
	LD		BC,MENU_COMMAND_BUFFER
	
	BATTERY_SET_BANK	RAMB_CREATURES
	
	LD		D,12
	
_BUFFER_LOOP
	LD_BCI_HLI
	DEC		D
	JR		NZ,_BUFFER_LOOP
	
	BATTERY_OFF
		
	LD		HL,MENU_COMMAND_BUFFER+8
	LD		D,0
	
_LEARN_LOOP
	LD		A,(HLI)
	CP		$FF
	JR		NZ,_DONE_LEARNED
	INC		D
	CP		4
	JR		NZ,_LEARN_LOOP
		
_DONE_LEARNED
	LD		A,D
	LD		(MENU_LEARNED_ABIL),A
	LD		BC,INV_CURRENT
	FSET16	B,C,BTL_TEXT_BUFFER_PTR
	XOR		A
	LD		(MENU_COUNTER),A	
		
_NAME_GRAB_LOOP	
	LD		HL,MENU_COMMAND_BUFFER
	LD		A,(MENU_COUNTER)
	ADD		A,A
	LD		C,A
	LD		B,0
	ADD		HL,BC	
	DEREF_HL
	SET16	H,L,BTL_CMD_BASE_PTR
	LD		A,1
	LD		(BTL_COPY_COST_FLAG),A
	CALL_FOREIGN		?BTL_CMD_COPY_NAME
	
	LD		BC,INV_CURRENT
	FSET16	B,C,MENU_CUR_CHAR
	LD		A,BTL_CMD_NAME_SIZE
	LD		(MENU_CHAR_LEFT),A
	LD		B,MENU_VRAM_ABILDIST
	LD		A,(MENU_COUNTER)
	LD		C,A
	CALL	?MULT
	LD		BC,MENU_VRAM_ABILITY0
	ADD		HL,BC
	SET16	H,L,MENU_VRAM_PTR	
	CALL	?MAIN_MENU_PACK_VRAM
	
	LD		HL,INV_CURRENT+BTL_CMD_NAME_SIZE+1
	XOR		A
	LD		E,(HL)
	CP		E
	JR		Z,_ZERO_COST
	LD		D,0
	CALL	?CONVERT_NUMBER_2_ELEMENT
	JR		_CONT
	
_ZERO_COST
	LD		A,$DF		;NEG DISTANCE 0 TO SPACE
	LD		HL,X1
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	
_CONT
	XOR		A
	LD		(VBK),A
	LD		HL,INV_CURRENT
	LD		D,MENU_VRAM_0
	CALL	?MAIN_MENU_DRAW_3DIGIT_VALUE	
	
	LD		C,MENU_BG_ABCOSTDIST
	LD		A,(MENU_COUNTER)
	LD		B,A
	CALL	?MULT
	LD		BC,MENU_BG_ABILCOST0
	ADD		HL,BC
	LD		BC,INV_CURRENT
	LD_HLI_BCI
	LD_HLI_BCI
	LD_HLI_BCI
	
	LD		HL,MENU_COUNTER
	INC		(HL)
	LD		A,(MENU_LEARNED_ABIL)
	CP		(HL)	
	JP		NZ,_NAME_GRAB_LOOP
	
	LD		A,(HL)
	CP		4
	RET		Z
	
	XOR		A
	LD		(VBK),A
	
_CLEAR_LOOP
	LD		A,(MENU_COUNTER)
	LD		C,A
	LD		B,MENU_BG_ABILDIST
	CALL	?MULT
	LD		BC,MENU_BG_ABIL0
	ADD		HL,BC
	LD		D,MENU_BG_ABIL_SIZE
	LD		A,MENU_VRAM_BLANK
	
_INNER_LOOP
	LD		(HLI),A
	DEC		D
	JR		NZ,_INNER_LOOP
	
	LD		HL,MENU_COUNTER
	INC		(HL)
	LD		A,4
	CP		(HL)	
	JP		NZ,_CLEAR_LOOP

	RET
	
;********************************		
;SET UP VARS FIRST FOR PATRICKS STUPID STUFF THAT
;CAN'T DO ANYTING ON ITS OWN BECAUSE ITS STUPID
?MAIN_MENU_USE_ITEM
				
	LD		A,(MENU_CURSOR_ID)
	CP		36		;SAVE/EXIT
	JP		Z,?MAIN_MENU_SAVE_EXIT
	
	CP		MENU_ITEMID
	JR		NZ,_SPELL
	LD		A,INV_TYPE_ITEM
	JR		_CONT
	
_SPELL
	LD		A,INV_TYPE_SPELL
	
_CONT
	LD		(SCRIPT_USED_TYPE),A
	FGET16	H,L,HEROACTOR_TILE
	PUSH_RAM_BANK
	SWITCH_RAM_BANK WRAM_COLL
	LD		A,(HL)
	LD		(SCRIPT_COLLISION_CODE),A
	POP_RAM_BANK		
	
	LD		A,(MENU_CURSOR_START)
	LD		B,A
	LD		A,(MENU_CURSOR_ID)
	SUB		B
	ADD		A,A
	LD		C,A
	LD		B,0
	LD		HL,MENU_DYN
	ADD		HL,BC
	DEREF_HL
	GET16	B,C,MENU_DYN_XRAM_BASE
	TWOS_COMP	B,C
	ADD		HL,BC
	LD		B,L
	LD		A,L
	LD		(MENU_USED_ITEM),A
	LD		(SCRIPT_USED_ID),A
	LD		C,ITEM_SIZE
	CALL	?MULT
	GET16	B,C,MENU_DYN_TABLE_BASE
	ADD		HL,BC
	SET16	H,L,INV_OBJ_PTR
	LD		BC,INV_CURRENT
	FSET16	B,C,INV_ADDR
	CALL_FOREIGN	?INV_COPY_ITEM_ARRAY
	
	LD		A,(MENU_CUR_MENU)
	CP		MENU_SITMID
	RET		Z
	
	FGET16	H,L,INV_CURRENT+ITEM_MAP_SCRIPT_FUNC_OFFSET
	LD		A,H
	OR		L
	JR		Z,_ZERO	
	
	SCRIPT_SET_VAR	SYSTEM_SCRIPT,INV_CURRENT+ITEM_MAP_SCRIPT_FUNC_OFFSET,INV_CURRENT+ITEM_MAP_SCRIPT_BANK_OFFSET
	
_BOTH
	LD		HL,INV_CURRENT+ITEM_NAME_OFFSET
	TEXT_SET_PARAMS	TEXT_PARAM_BUFFER
	LD		BC,TEXT_PARAM_BUFFER
	LD		D,ITEM_NAME_SIZE
	
_NAME_LOOP
	LD_BCI_HLI
	DEC		D
	JR		NZ,_NAME_LOOP
	
	LD		A,?FORMAT
	LD		(BC),A	
	INC		BC

	RET
	
_ZERO
	SCRIPT_SET_VAR	SYSTEM_SCRIPT,ITEM_SCRIPT,ITEM_SCRIPT_BANK
	JR		_BOTH
	
;********************************	
;A  VRAM TILE
;HL START IN BG
;DE	HL'S INC
;C  HOW MANY
?MAIN_MENU_VRAM_TO_BG
	
	LD		(HL),A
	ADD		HL,DE
	INC		A
	DEC		C
	JR		NZ,?MAIN_MENU_VRAM_TO_BG

	RET	
	
;********************************
?MENU_DEBUG_VRAM_QS

	LD			A,MENU_DEBGID
	LD			(MENU_CUR_MENU),A

	JP			?MAIN_MENU_DRAW_CURRENT

;********************************
	END
;********************************