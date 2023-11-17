;********************************
; FIGHTSCENE_GFX.S		
;********************************
;	Author:	Patrick Meehan,EMG
;	(c)2000	Interactive Imagination
;	All rights reserved
;	these functions init the graphics for the fightscene
;********************************	

;-----------------------------------------------------------------------------
;	HERE ARE THE CALLABLE FUNCTIONS IN THIS BANK -- THE REST ARE INTERNAL
;-----------------------------------------------------------------------------
;*************************************************
;?BTL_SET_CREATURE_PAL
; input:
; (TEMP_PALETTE) :   pointer to the palette you want to set
; (TEMP_PAL_BANK):   bank number of where the palette is
; (TEMP_MISC2)	 :   what creature side:  0 left, 1 right (i.e. XFLIP)  
;*************************************************
;-----------------------------------------------------------------------------

;********************************
; GLOBAL
;********************************
	GLOBAL	PAL_EFFECT_TABLE

;********************************************	
DEBUG_VRAM_COPY			MACRO
		if 	1
			CALL		?RLE_DECOMPRESS
		else
			CALL		?MEM_MOV
		endif
						ENDM

DEBUG_BG_UNPACK			MACRO
		if 	1
			CALL		?UNPACK_BG_RLE
		else
			CALL		?UNPACK_BG
		endif
						ENDM
				
DEBUG_BG_UNPACK_XFLIP	MACRO
		if 	1
			CALL		?UNPACK_BG_RLE_XFLIP
		else
			CALL		?UNPACK_BG_XFLIP
		endif	
						ENDM							
;********************************************
	
;********************************
?BTL_DRAW_CREATURE0
	PUSH_ROM_BANK		
; LOAD BITMAP, INIT VRAM BANK 0
	XOR			A
	LD			(VBK),A
	; Switch to Bitmap bank
	SWITCH_ROM_BANK		(TEMP_BIT_BANK)
	; Copy the Bitmap to VRAM
	GET16		H,L, TEMP_BIT
	LD			DE,FIGHTSCN_POSTER0VRM
	LD			BC,$0800
	DEBUG_VRAM_COPY
	
	;Init the BG CHAR Data to BLANK
	XCALL		?BTL_CLEAR_CREATURE0_BG_BANK0	
	
; LOAD BG DATA, INIT VRAM BANK 1
	LD			A,$01
	LD			(VBK),A
	;Init the BG ATTRIBUTE Data to BLANK	
	XCALL		?BTL_CLEAR_CREATURE0_BG_BANK1
	; Switch to BG bank
	LD			A,(TEMP_BG_BANK)
	SWITCH_ROM_BANK		A
	; Copy the BG_DATA to VRAM
	LD			HL,FIGHTSCN_POSTER0BG
	LD			A,(TEMP_WIDTH)
	LD			E,A
	LD			A,(TEMP_HEIGHT)
	LD			D,A
	XOR			A
	CALL		?CALC_DEST_BG_OFFSET
	GET16		B,C, TEMP_BG
	DEBUG_BG_UNPACK
	
; SET UP CREATURE PALETTE VALUES 
	; Switch to PAL bank
	LD			A,(TEMP_PAL_BANK)
	SWITCH_ROM_BANK		A
	; Copy the Creature's Pal to PAL_RAM
	GET16		B,C, TEMP_PALETTE
	CALL		?BTL_LOAD_PALETTE_CREATURE_0
	POP_ROM_BANK
	RET
;********************************
?BTL_DRAW_CREATURE1
	PUSH_ROM_BANK
; LOAD BITMAP, INIT VRAM BANK 1
	LD		A,$01
	LD		(VBK),A
	; Switch to Bitmap bank
	SWITCH_ROM_BANK		(TEMP_BIT_BANK)
	; Copy the Bitmap to VRAM
	GET16		H,L, TEMP_BIT
	LD			DE,FIGHTSCN_POSTER1VRM
	LD			BC,$0800
	DEBUG_VRAM_COPY
    XCALL		?BTL_CLEAR_CREATURE1_BG_BANK1				 

; LOAD BG DATA, INIT BG DATA
	XOR			A
	LD			(VBK),A
	;Init the BG CHR Data to BLANK	
	XCALL		?BTL_CLEAR_CREATURE1_BG_BANK0
	; Switch to BG bank
	SWITCH_ROM_BANK		(TEMP_BG_BANK)
	; Copy the BG_DATA to VRAM
	LD			HL,FIGHTSCN_POSTER1BG
	LD			A,(TEMP_WIDTH)
	LD			E,A
	LD			A,(TEMP_HEIGHT)
	LD			D,A
	LD			A,1
	CALL		?CALC_DEST_BG_OFFSET
	GET16		B,C, TEMP_BG
	DEBUG_BG_UNPACK_XFLIP
	
	XCALL		?BTL_SET_CREATURE1_XFLIP
			
; SET UP CREATURE PALETTE VALUES 
	; Switch to PAL bank
	SWITCH_ROM_BANK		(TEMP_PAL_BANK)
	; Copy the Creature's Pal to PAL_RAM
	GET16		B,C, TEMP_PALETTE
	CALL		?BTL_LOAD_PALETTE_CREATURE_1
	POP_ROM_BANK
	RET	

;********************************
?BTL_DRAW_ARENA
	PUSH_ROM_BANK
; LOAD BITMAPs - PARALLAX, INIT VRAM BANK 0
;--------------------------------
	XOR			A
	LD			(VBK),A
	; Switch to Top Parallax Bitmap bank
	SWITCH_ROM_BANK		(TEMP_BIT_BANK)
	; Copy the Top Parallax Bitmap to VRAM
	GET16		H,L, TEMP_BIT
	LD			DE,FIGHTSCN_BORD0VRM
	LD			BC,$0400								;$800 = whole bank partition
	DEBUG_VRAM_COPY
	
	; Switch to Bottom Parallax Bitmap bank
	SWITCH_ROM_BANK		(TEMP_MISC1)
	; Copy the Bottom Parallax Bitmap to VRAM
	GET16		H,L, TEMP_MISC3
	LD			DE,FIGHTSCN_BORD1VRM
	LD			BC,$0400								
	DEBUG_VRAM_COPY
			
; LOAD BG DATA - PARALLAX, INIT VRAM BANK 1
;--------------------------------
	LD			A,$01
	LD			(VBK),A
	MEM_SET		$8800,$0010,$00					;SET THE "BLANK" VRAM FOR ARENA BACKGROUND
	
	; Switch to Top Parallax BG bank
	SWITCH_ROM_BANK		(TEMP_BG_BANK)
	; Copy the Top Parallax BG_DATA to VRAM
	LD			HL,FIGHTSCN_BORD0BG
	LD			E,32
	LD			D,4
	GET16		B,C, TEMP_BG
	DEBUG_BG_UNPACK
	; SET COLOR BANK SPECIFICATION
	;MEM_OR		FIGHTSCN_BORD0BG,32*4,$08          		

;-----------------------------------------------------------------------------------------	
	; Switch to Bottom Parallax BG bank
	SWITCH_ROM_BANK		(TEMP_MISC2)
	; Copy the Bottom Parallax BG_DATA to VRAM
	LD			HL,FIGHTSCN_BORD1BG
	LD			E,32
	LD			D,4
	GET16		B,C, TEMP_MISC4
	DEBUG_BG_UNPACK
	; SET COLOR BANK SPECIFICATION
	;MEM_OR		FIGHTSCN_BORD1BG,32*4,$08          		
		
;-------------------------------------------
; FIX to use upper part of BG for parallax
	XOR			A
	LD			(VBK),A
	MEM_ADD		FIGHTSCN_BORD0BG,32*4,$80,$FF
	MEM_ADD		FIGHTSCN_BORD1BG,32*4,$C0,$FF

;-------------------------------------------
; FIX to use palette 6,7
	LD			A,1
	LD			(VBK),A
	MEM_ADD		FIGHTSCN_BORD0BG,32*4,$06,$FF
	MEM_ADD		FIGHTSCN_BORD1BG,32*4,$06,$FF	
		
; SET UP Arena PALETTE VALUES 
	; Switch to PAL bank
	SWITCH_ROM_BANK		(TEMP_PAL_BANK)
	; Copy the Arena's Pal to PAL_RAM
	GET16		B,C, TEMP_PALETTE
	CALL		?BTL_LOAD_PALETTE_ARENA
	
	; the first color of the Arena Palette is the Background Color
	GET16		H,L, TEMP_PALETTE
	LD		A,(HLI)
	LD		H,(HL)
	LD		L,A		
	BTL_SET_ARENA_COLOR	H,L 	
	
	POP_ROM_BANK
	RET

	if 0	
;********************************
; (TEMP_MISC1)  :   what effect palette to load
; (TEMP_MISC2)	:    0 = left creature  (ATTACKER),
;					 1 = right creature (DEFENDER), 
;					 2 = ARENA PAL
;*************************************************
?BTL_INIT_EFFECT_PALETTE
	PUSH_ROM_BANK
	LD			A,:PAL_EFFECT_TABLE
	SWITCH_ROM_BANK		A
	LD			A,(TEMP_MISC2)
	AND			A
	JR			NZ,_SET_EFFECT_C1
	
	LD			HL,PAL_EFFECT_TABLE
	LD			A,(TEMP_MISC1)
	LD			C,A
	CALL		?GET_POINTER_FROM_TABLE
	
	; SAVE ARENA'S NEW COLOR INTO ARENA_COLOR
	LD			HL,ANIM_PAL_BG_BUFFER+24 ;(ARENA'S COLOR)
	LD			A,(HLI)
	LD			H,(HL)
	LD			L,A		
	LD			A,H
	LD			(ARENA_COLOR+1),A
	LD			A,L			
	LD			(ARENA_COLOR),A 
	; update the anim pal
	XOR			A
	LD			(PALETTE_SAFE),A
	LD			HL,ANIM_PAL_BG_BUFFER
	LD			E, 0
	LD			A, 12
	CALL		?UNPACK_PALETTE_RAM
	;load the existing Arena_Color
	XCALL		?BTL_UPDATE_ARENA_COLOR_ANIM
	LD			A,1
	LD			(PALETTE_SAFE),A
	POP_ROM_BANK
	RET	
_SET_EFFECT_C1
	CP			1
	JR			NZ,_SET_EFFECT_ARENA
	LD			HL,PAL_EFFECT_TABLE
	LD			A,(TEMP_MISC1)
	LD			C,A
	CALL		?GET_POINTER_FROM_TABLE
	
	; SAVE ARENA'S NEW COLOR INTO ARENA_COLOR
	LD			HL,ANIM_PAL_BG_BUFFER+24 ;(ARENA'S COLOR)
	LD			A,(HLI)
	LD			H,(HL)
	LD			L,A		
	LD			A,H
	LD			(ARENA_COLOR+1),A
	LD			A,L			
	LD			(ARENA_COLOR),A 
	; update the anim pal
	XOR			A
	LD			(PALETTE_SAFE),A
	LD			HL,ANIM_PAL_BG_BUFFER
	LD			E, 4*3
	LD			A, 12
	CALL		?UNPACK_PALETTE_RAM
	XCALL		?BTL_UPDATE_ARENA_COLOR_ANIM
	;after affecting the screen's arena color by fading we need to save it
	LD			A,1
	LD			(PALETTE_SAFE),A
	POP_ROM_BANK
	RET
_SET_EFFECT_ARENA
	;CP			ARENA_PAL
	;JR			NZ,_SET_EFFECT_BG
	LD			HL,PAL_EFFECT_TABLE
	LD			A,(TEMP_MISC1)
	LD			C,A
	CALL		?GET_POINTER_FROM_TABLE
	CALL		?BTL_LOAD_PALETTE_ARENA
	POP_ROM_BANK
	RET
	endif
	
;********************************
; BC:	File base address to load
?BTL_LOAD_PALETTE_CREATURE_0
	XOR			A
	LD			(PALETTE_SAFE),A
	LD			HL,BASE_PAL_BG_BUFFER
	LD			E, 0
	LD			A, 12
	CALL		?UNPACK_PALETTE_RAM
	;load the existing Arena_Color
	XCALL		?BTL_UPDATE_CREATURE_ARENA_COLOR
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET
	
;********************************
; BC:	File base address
?BTL_LOAD_PALETTE_CREATURE_1
	XOR			A
	LD			(PALETTE_SAFE),A
	LD			HL,BASE_PAL_BG_BUFFER
	LD			E, 4*3
	LD			A, 12
	CALL		?UNPACK_PALETTE_RAM
	;load the existing Arena_Color
	XCALL		?BTL_UPDATE_CREATURE_ARENA_COLOR 
	LD			A,1
	LD			(PALETTE_SAFE),A	
	RET

;********************************
; BC:	File base address 
?BTL_LOAD_PALETTE_ARENA
	XOR			A
	LD			(PALETTE_SAFE),A
	
	LD			HL,BASE_PAL_BG_BUFFER
	LD			E, 4*6    ;offset
	LD			A, 8
	CALL		?UNPACK_PALETTE_RAM
	
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET
	
;********************************
; BC:	File base address 	
; HL:   BASE TO LOAD
?BTL_LOAD_TOTAL_PALETTE
	XOR			A
	LD			(PALETTE_SAFE),A
	LD			E, 0    ;offset
	LD			A, 32
	CALL		?UNPACK_PALETTE_RAM
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET

;********************************
; (TEMP_PALETTE) :   pointer to the palette you want to set
; (TEMP_PAL_BANK):   bank number of where the palette is
; (TEMP_MISC2)	 :   what creature side:  0 left, 1 right (i.e. XFLIP)  
?BTL_SET_CREATURE_PAL
	PUSH_ROM_BANK
	LD			A,(TEMP_MISC2)
	AND			A
	JR			NZ,_BTL_LOAD_PAL_C1
_BTL_LOAD_PAL_C0
	; Switch to PAL bank
	LD			A,(TEMP_PAL_BANK)
	SWITCH_ROM_BANK		A
	; Copy the Creature's Pal to PAL_RAM
	GET16		B,C, TEMP_PALETTE
	CALL		?BTL_LOAD_PALETTE_CREATURE_0
	;-----------------------------------
	POP_ROM_BANK
	RET	
_BTL_LOAD_PAL_C1
	; Switch to PAL bank
	LD			A,(TEMP_PAL_BANK)
	SWITCH_ROM_BANK		A
	; Copy the Creature's Pal to PAL_RAM
	GET16		B,C, TEMP_PALETTE
	CALL		?BTL_LOAD_PALETTE_CREATURE_1
	;-----------------------------------
	POP_ROM_BANK
	RET	

;********************************
; HL = BASE POINTER
;  D = HEIGHT
;  E = WIDTH
;  A = X-FLIP ;0,1
;output:
; HL = BASE POINTER offset		
;********************************
?CALC_DEST_BG_OFFSET
	AND			A
	JR			NZ,_CALC_DEST_XFLIP
	
	;force left justify  
	LD			A,E
	CP			16
	JR			Z,_SKIP_INC_X
	INC			HL
_SKIP_INC_X
	CALL		?CALC_DEST_YOFFSET
	ADD			HL,BC
	RET	
	
_CALC_DEST_XFLIP
	LD			A,E			;OFFSET (WIDTH)
	CP			16
	JR			NC,_CALC_DEST_Y
	CALL		?CALC_DEST_XOFFSET
	CPL		
	INC			A
	ADD			A,16
	SUB			C			;OFFSET JUSTIFICATION (NORMALLY CENTERED)
	LD			C,A
	ADD			HL,BC
_CALC_DEST_Y
	CALL		?CALC_DEST_YOFFSET
	ADD			HL,BC
	RET
	
		
;********************************
;INPUT 	E reg  = WIDTH	
;OUTPUT	BC reg = WIDTH OFFSET
?CALC_DEST_XOFFSET	
	LD			BC,00
	LD			A,E
	CP			16
	RET			NC
	PUSH		HL
	LD			C,E
	LD			HL,DEST_XOFFSET_TABLE
	ADD			HL,BC
	LD			C,(HL)
	POP			HL
	RET	

;********************************
;INPUT 	D reg  = HEIGHT	
;OUTPUT	BC reg = HEIGHT OFFSET
?CALC_DEST_YOFFSET
	LD			BC,$0000
	LD			A,D
	CP			10
	RET			Z
	PUSH		HL
	LD			C,D
	LD			HL,DEST_YOFFSET_TABLE
	ADD			HL,BC
	LD			C,(HL)
	POP			HL
	RET	
	
	if 0
;********************************
; input:
; HL:	Palette List base address
;  C:   index
; output:
; BC:   actual pointer 	
?GET_POINTER_FROM_TABLE
	PUSH		DE
	;get palette pointer based on offset 
	LD			A,C
	LD			D,0
	LD			E,A
	SLA			E
	RL 			D
	ADD			HL,DE
	;now get the base pointer .:. HL = (HL)
	LD			A,(HLI)
	LD			H,(HL)
	LD			L,A	

	LD			B,H
	LD			C,L
	POP			DE
	RET		
	endif
	
		
;*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
;*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
	
;********************************
	END
;********************************