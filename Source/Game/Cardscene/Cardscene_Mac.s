;********************************
; CARDSCENE_MAC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

;********************************
BITMAP_CARD_DEFINE		MACRO	name
BIT_&name
					BINSET	0,$140			;4*5*TILESIZE :TILESIZE = 16bytes
					LIBBIN	MANUAL\Cardscene\Bitmaps\BIT_&name&.BIN
					BINSET	$0000				
	ENDM

	
;********************************
BG_CARDS_DEFINE		MACRO	name
					LIB		MANUAL\Cardscene\BG\BG_&name&.s	
	ENDM


;********************************
CREATURE_CARD_TEMPLATE MACRO	name,bit,pal_type

	GLOBAL		bit
	
name&_CARD_GFX
name&_CARD_BIT		DW		(bit!&$FFFF)
name&_CARD_BIT_BANK	DB		:bit
name&_PAL_INDEX 	DB		pal_type                ; THIS IS 4..7
	ENDM

;********************************
; note: VRAM size and BG size is constant (48tiles, 32x32)
ARENA_CSCENE_TEMPLATE MACRO	name,bit,bg,palette,song

	GLOBAL		bit
	GLOBAL		bg
	GLOBAL		palette
	
name&_CSCENE
name&_CSCENE_BIT		DW		(bit!&$FFFF)
name&_CSENE_BIT_BANK	DB		:bit
name&_CSCENE_BG			DW		(bg!&$FFFF)
name&_CSENE_BG_BANK		DB		:bg
name&_CSENE_PAL			DW		(palette!&$FFFF)
name&_CSENE_PAL_BANK	DB		:palette
name&_CSENE_SONG		DB		song
	ENDM
		
;********************************
BTL_OPEN_CARDSCENE	MACRO	arena
	LD				A,1
	LD				(CARDSCN_START),A
	LD				A,arena
	LD				(ARENA_INDEX),A
	CALL_FOREIGN	?CARDSCENE_OPEN	
	ENDM

;********************************
BTL_RESET_CARDSCENE	MACRO
	SCRIPT_SET		MASTER_SCRIPT,?_BATTLE_ACTOR_INIT
	CALL_FOREIGN	?CARDSCENE_INIT
	ENDM
			
;********************************
; (TEMP_MISC1)	:  which creature_card to load
; (TEMP_MISC2)  :  card slot to go into
BTL_LOAD_CARD_VRAM	MACRO	creature, slot
	LD				A,creature
	LD				(TEMP_MISC1),A
	LD				A,slot
	LD				(TEMP_MISC2),A
	CALL_FOREIGN	?BTL_LOAD_CARD_VRAM
	ENDM
	

;********************************
; (TEMP_MISC1)	:  which creature_card to load
; (TEMP_MISC2)  :  card slot to go into
BTL_DRAW_CARD_VRAM	MACRO	 creature, slot
	LD			A,creature
	LD			(TEMP_MISC1),A
	LD			A,slot
	LD			(TEMP_MISC2),A
	SCREEN_HIDE
	CALL_FOREIGN	?BTL_DRAW_CARD_VRAM
	SCREEN_SHOW
	ENDM
	
;********************************
; (TEMP_MISC2)  :  card slot to go into
BTL_ERASE_CARD_VRAM	MACRO	 slot
	LD			A,BLANK_CARD_TILE
	LD			(TEMP_MISC1),A
	LD			A,slot
	LD			(TEMP_MISC2),A
	SCREEN_HIDE
	CALL_FOREIGN	?BTL_DRAW_CARD_VRAM
	SCREEN_SHOW
	ENDM		
;********************************
	END
;********************************