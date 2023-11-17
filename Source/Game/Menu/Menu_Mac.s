;********************************
; MENU_MAC.S
;********************************
;	Author:	ExoByte
;	(c)2000	Interactive Imagination
;	All rights reserved
;
;	call MENU_INIT first, then loop through MENU_GO until one
; 	of your MENU_FUNCS return a value.
	
;********************************
;QUAN: HOW LONG
;BASETILE: UL CORNER OF WHERE TO START (TILE NUMBER)
MENU_BORDER_HORIZ_LINE	MACRO	 quan,basetile,label


	LD		A,TEXT_BOX_BORD0		;HORIZ BAR
	LD		HL,basetile
	LD		C,quan

label	
	LD		(HLI),A
	DEC		C
	JR		NZ,label	

	ENDM


;********************************
;QUAN: HOW LONG
;BASETILE: UL CORNER OF WHERE TO START (TILE NUMBER)
MENU_BORDER_VERT_LINE  	MACRO	quan,basetile,label


	LD		A,TEXT_BOX_BORD1		;HORIZ BAR
	LD		HL,basetile
	LD		C,quan
	LD		DE,32

label	
	LD		(HL),A	
	ADD		HL,DE
	DEC		C
	JR		NZ,label	

	
	ENDM

;********************************
;index:	INDEX OF CREATURE
;addr:	WHERE IN RAM YOU WANT IT
MENU_GET_CREATURE_NAME		MACRO 	index	

	MENU_RING_TO_ID index
	
	LD		A,B
	
	CP		$FF
	DB	$20,$05						;JR		NZ,_NON_EMPTY
	LD		HL,CREATURE_EMPTYNAME
	DB	$18,$0A						;JR		_GOT_STR
	
;_NON_EMPTY
	LD		C,A
	LD		B,CREATURE_NAME_SIZE
	
	CALL	?MULT
	
	LD		BC,CREATURE_NAMETABLE
	ADD		HL,BC					;HL PTS TO NAME NOW
	
;_GOT_STR
	TEXT_SET_STRING_HL		
	
	ENDM
	
;********************************
MENU_GO		MACRO			;any tangos at our location?

	CALL_FOREIGN	?MENU_GO!		;bravo, GO!
	
	ENDM

;********************************
;CLOBBERS OTHER SPRITES
MENU_GO_CLOBBER	MACRO			;any tangos at our location?

	CALL_FOREIGN	?MENU_GO_CLOBBER		;bravo, GO!
	
	ENDM
	
;********************************
;table:			ptr to where your cursor table starts in mem
;				these need to be in MENU_BANK
;mask:			set bits to 0 of which keys you want to mask out, all others should be 
;				1... cannot be given in binary because issys is dum
;valid:			ptr to the array that tells if certain menu id's are valid or not, set 
;				to $0000 if all are always valid.
;start:			ptr to func to call when start is hit
;sel:			ptr to func to call when select is hit
;id:			what menu cursor ID to start on
;blink:			blinky cursor flag
;cursortype:	Sprite or BG based cursor
;also loads MENU_RETURN_VALUE w/ $FF
;assumes the current ram bank is the one you have your valid array in.
MENU_INIT	MACRO	table,mask,valid,start,select,id,blink,cursortype	
	
	LD			A,table
	LD			(MENU_INIT_INDEX),A
	
	LD			A,mask
	LD			(MENU_KEY_MASK),A
	
	LD			A,(RAM_BANK)
	LD			(MENU_VALID_BANK),A
	LD			BC,valid
	FSET16		B,C,MENU_VALID_ARRAY
	LD			BC,start
	FSET16		B,C,MENU_START_FUNC
	LD			BC,select
	FSET16		B,C,MENU_SELECT_FUNC
	
	LD			A,id
	LD			(MENU_CURSOR_ID),A
	
	LD			A,blink
	LD			(MENU_BLINK_FLAG),A
		
	LD			A,cursortype
	LD			(MENU_CURSORTYPE),A
	
	CALL_FOREIGN	?MENU_INIT
	
	LD			A,$FF
	LD			(MENU_RETURN_VALUE),A
	
	ENDM	

;********************************
MENU_NAME_SETUP	MACRO		vram,vbank,bg,len,index
	
	TEXT_SETUP	vram,vbank,bg,len
	MENU_GET_CREATURE_NAME	index
	LD		A,len
	INC		A
	LD		(MENU_TXT_COUNT),A
	TEXT_SET_MODE	?TEXT_STRING
	
	ENDM	
	
;********************************
; B <- ID OF CREATURE
; HL <- XRAM COPY OF CREATURE
MENU_RING_TO_ID				MACRO	index

	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON
	
	LD		A,(index)
	LD		C,A
	LD		B,0
	LD		HL,XRAM_INVENTORY_RINGS
	ADD		HL,BC
	
	LD		A,(HL)
	CP		$FF
	LD		B,A
	DB		$28,$13				;JR		Z,_EMPTY_RING
	
	LD		B,A
	LD		C,CREATURE_XRAM_SIZE
	
	CALL	?MULT
	
	BATTERY_SET_BANK	RAMB_CREATURES
	
	LD		BC,CREATURE_XRAM
	ADD		HL,BC
	LD		B,(HL)				;ID IS FIRST BYTE
	
;_EMPTY_RING
	
	BATTERY_OFF

	ENDM

;********************************
MENU_TEXT_SETUP	MACRO		vram,vbank,bg,len,str

	TEXT_SETUP	vram,vbank,bg,len
	TEXT_SET_STRING	str
	LD		A,len
	INC		A
	LD		(MENU_TXT_COUNT),A
	TEXT_SET_MODE	?TEXT_STRING
	
	ENDM	
	
;********************************
MENU_TEXT_SETUP_REG	MACRO		vbank,len

	TEXT_SET_STRING_HL
	TEXT_SETUP_REGISTERS	vbank,len
	LD		A,len
	INC		A
	LD		(MENU_TXT_COUNT),A
	TEXT_SET_MODE	?TEXT_STRING
	
	ENDM	
		
;********************************
MENU_TEXTUPDATE		MACRO	loop

loop
	TEXT_UPDATE
	CALL	?SYSTEM_UPDATE_GAME
	
	LD		HL,MENU_TXT_COUNT
	DEC		(HL)
	JR		NZ,loop

	
	ENDM
	
;********************************
MENU_TEXTUPDATE_NOSCRIPT	MACRO	loop

loop
	TEXT_UPDATE
	CALL	?SYSTEM_UPDATE_GAME_NOSCRIPT
	
	LD		HL,MENU_TXT_COUNT
	DEC		(HL)
	JP		NZ,loop
	
	ENDM	

;********************************
;WARNING: DO NOT CALL MACRO_A
MACRO_A		MACRO
	
	LD		A,B
	MACRO_B
	
	ENDM
		
;********************************
;WARNING: DO NOT CALL MACRO_B
MACRO_B		MACRO
	
	LD		B,A
	MACRO_A
	
	ENDM	
;********************************
	END
;********************************