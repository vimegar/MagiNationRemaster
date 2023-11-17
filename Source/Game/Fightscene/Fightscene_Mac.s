;********************************
; FIGHTSCENE_MAC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

;********************************
BITMAP_ARENA_PARALLAX_DEFINE		MACRO	name
BIT_&name
					;BINSET	0,$0400			;16*4*TILESIZE :TILESIZE = 16bytes
					LIBBIN	MANUAL\Arena\Bitmaps\BIT_&name&.BIN	
					;BINSET	$0000	
	ENDM

;********************************
BG_ARENA_PARALLAX_RLE_DEFINE		MACRO	name
BG_&name			
					LIBBIN	MANUAL\Arena\BG\BG_&name&.bin	
	ENDM
	
;********************************
BG_ARENA_PARALLAX_DEFINE		MACRO	name
					LIB		MANUAL\Arena\BG\BG_&name&.s	
	ENDM
	
;********************************
BITMAP_CREATURE_DEFINE			MACRO	name
BIT_&name
					;BINSET	0,$0800			;16*8*TILESIZE :TILESIZE = 16bytes
					LIBBIN	MANUAL\FIGHTSCENE\Bitmaps\BIT_&name&.BIN	
					;BINSET	$0000					
	ENDM
					
;********************************
BG_CREATURE_RLE_DEFINE		MACRO	name
BG_&name			
					LIBBIN	MANUAL\FIGHTSCENE\BG\BG_&name&.bin	
	ENDM

;********************************
BG_CREATURE_DEFINE		MACRO	name
					LIB		MANUAL\FIGHTSCENE\BG\BG_&name&.s	
	ENDM

;********************************
; THIS IS THE PARALLAX GRAPHICS BASED ON THE ARENA TYPE
ARENA_GFX_TEMPLATE	MACRO	name,bit_top,bg_top,bit_btm,bg_btm,arena_pal,spd0,spd1,arena_color

	GLOBAL		bit_top
	GLOBAL		bg_top
	GLOBAL		bit_btm
	GLOBAL		bg_btm
	GLOBAL		arena_pal

name&_GFX

name&_BIT1			DW		(bit_top!&$FFFF)
name&_BIT_BANK1		DB		:bit_top
name&_BG1			DW		(bg_top!&$FFFF)
name&_BG_BANK1		DB		:bg_top

name&_BIT2			DW		(bit_btm!&$FFFF)
name&_BIT_BANK2		DB		:bit_btm
name&_BG2			DW		(bg_btm!&$FFFF)
name&_BG_BANK2		DB		:bg_btm

name&_BORDER0_SPD	DB		(spd0!&$FF)
name&_BORDER1_SPD	DB		(spd1!&$FF)

name&_PALETTE		DW		(arena_pal!&$FFFF)
name&_PAL_BANK		DB		:arena_pal

name&_COLOR			DW		(arena_color)  ;used for Cardscene
	ENDM

;********************************
CREATURE_GFX_TEMPLATE	MACRO	name,bit,bg,pal,width,height

	GLOBAL		bit
	GLOBAL		bg
	GLOBAL		pal

name&_GFX

name&_BIT			DW		(bit!&$FFFF)
name&_BIT_BANK		DB		:bit
name&_BG			DW		(bg!&$FFFF)
name&_BG_BANK		DB		:bg
name&_WIDTH			DB		width		; In 8x8 tiles
name&_HEIGHT		DB		height		; In 8x8 tiles
name&_PALETTE		DW		(pal!&$FFFF)
name&_PAL_BANK		DB		:pal

	ENDM


;********************************
CREATURE_GFX_STRUCT	MACRO	name	

name&_GFX_STRUCT

name&_BIT			DS		$02		; BMP data pointer
name&_BIT_BANK		DS		$01		; BMP data bank
name&_BG			DS		$02		; BG screen data pointer (tile index) 
name&_BG_BANK		DS		$01		; BG screen data bank    ; CHR+ATTRIBUTES 10*16*2 = 320 = $140 total
name&_WIDTH			DS		$01 	; In 8x8 tiles
name&_HEIGHT		DS		$01		; In 8x8 tiles
name&_PALETTE		DS		$02		; PAL data pointer 
name&_PAL_BANK		DS		$01		; PAL data bank   
name&_MISC1			DS		$01
name&_MISC2			DS		$01
name&_MISC3			DS		$02
name&_MISC4			DS		$02
name&_MISC5			DS		$02
	ENDM	
	
;---------------------------------------------------------------------
;********************************
; (ARENA_INDEX)			:	ARENA PARALLAX
; (CREATURE_INDEX)		:	ATTACKER (LEFT)
; (CREATURE_INDEX+1)	:	DEFENDER (RIGHT)
BTL_START_FIGHTSCENE	MACRO	arena,attacker,defender,battle_script
	GLOBAL			battle_script
	MOVADDR			FIGHTSCN_SCRIPT,battle_script
	LD				A,:battle_script
	LD				(FIGHTSCN_SCRIPT_BANK),A
	
	LD				A,1
	LD				(FIGHTSCN_START),A
	LD				(FIGHTSCN_DONE),A
	; TEST SETTING FOR ARENA INDEX
	LD				A,arena
	LD				(ARENA_INDEX),A
	; SET CREATURES TO FIGHT
	LD				A,attacker
	LD				(CREATURE_INDEX),A
	LD				A,defender
	LD				(CREATURE_INDEX+1),A
	CALL_FOREIGN	?FIGHTSCENE_DO						
	ENDM

;********************************
; (ARENA_INDEX)			:	ARENA PARALLAX
; (CREATURE_INDEX)		:	ATTACKER (LEFT)
; (CREATURE_INDEX+1)	:	DEFENDER (RIGHT)
BTL_START_FIGHTSCENE_ABC	MACRO	arena,attacker,defender

	LD				(FIGHTSCN_SCRIPT_BANK),A

	FSET16			B,C,FIGHTSCN_SCRIPT
	
	LD				A,1
	LD				(FIGHTSCN_START),A
	LD				(FIGHTSCN_DONE),A
	; TEST SETTING FOR ARENA INDEX
	LD				A,arena
	LD				(ARENA_INDEX),A
	; SET CREATURES TO FIGHT
	LD				A,attacker
	LD				(CREATURE_INDEX),A
	LD				A,defender
	LD				(CREATURE_INDEX+1),A
	CALL_FOREIGN	?FIGHTSCENE_DO						
	ENDM



;********************************
BTL_LOAD_ARENA	MACRO	index
	LD		A,index
	LD		(ARENA_INDEX),A

	CALL_FOREIGN	?BTL_LOAD_ARENA	
	ENDM

;********************************
BTL_SET_ARENA_COLOR	MACRO rh,rl   ;REGISTER = COLOR
	LD			A,rh
	LD			(ARENA_COLOR+1),A
	LD			A,rl			
	LD			(ARENA_COLOR),A
	CALL_FOREIGN	?BTL_SET_ARENA_COLOR	
	ENDM

;********************************
BTL_LOAD_CREATURE	MACRO	index, xflip
	LD		A,index
	LD		(TEMP_MISC1),A
	LD		A,xflip
	LD		(TEMP_MISC2),A
	CALL_FOREIGN	?BTL_LOAD_CREATURE
	ENDM

;---------------------------------------------------------------------

	
	
;********************************
; direction		:   scroll to the:  0 left, 1 right
; scrollspeed	:   speed to scroll it: pixel delta
;********************************
BTL_SCROLL_SCENE	MACRO		direction,scrollspeed
	LD		A,direction
	LD		(SCROLL_DIRECTION),A
	LD		A,scrollspeed
	LD		(SCROLL_DELTA),A
	CALL_FOREIGN	?BTL_SCROLL_SCENE	
	ENDM

;********************************
	END
;********************************