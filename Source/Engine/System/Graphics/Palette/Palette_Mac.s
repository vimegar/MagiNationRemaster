;********************************
; PALETTE_MAC.S
;********************************
;	Author:	Meester Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
UNROLL_LOOP_CPY_COLOR MACRO
	LD		A,(HLI)
	LD		(C),A
	;DEC		B  ;no need as we unrolled the loop
	
	LD		A,(HLI)
	LD		(C),A
	;DEC		B  ;no need as we unrolled the loop
	ENDM

UNROLL_LOOP_CPY_PAL MACRO
	UNROLL_LOOP_CPY_COLOR
	UNROLL_LOOP_CPY_COLOR
	UNROLL_LOOP_CPY_COLOR
	UNROLL_LOOP_CPY_COLOR
	ENDM


BTL_LOADPALETTE_BG_BUFFER MACRO		color_buffer,rom_data, color_offset, total_colors
	LD			HL,color_buffer
	LD			BC,	rom_data
	LD			E, color_offset
	LD			A, total_colors
	CALL		?UNPACK_PALETTE_RAM
	ENDM

BTL_LOADPALETTE_OBJ_BUFFER MACRO	color_buffer,rom_data, color_offset, total_colors
	LD			HL,color_buffer
	LD			BC,	rom_data
	LD			E, color_offset
	LD			A, total_colors
	CALL		?UNPACK_PALETTE_RAM
	ENDM
;********************************
; SWAP input:
;   B = high byte, C = low byte (actual color content)
SWAP_PALETTE_COLOR_RB	MACRO
	CALL    	?CONVERTCOLOR_15TO24
    ;   D = Blue, E = Green, A = Red
    LD			B,A
    LD			A,D
    LD			D,B
    ;RES			7,D
    CALL    	?CONVERTCOLOR_24TO15
	ENDM 
SWAP_PALETTE_COLOR_BG	MACRO
	CALL    	?CONVERTCOLOR_15TO24
    ;   D = Blue, E = Green, A = Red
    LD			B,E
    LD			E,D
    LD			D,B
    ;RES			7,D
    CALL    	?CONVERTCOLOR_24TO15
	ENDM 
SWAP_PALETTE_COLOR_RG	MACRO
	CALL    	?CONVERTCOLOR_15TO24
    ;   D = Blue, E = Green, A = Red
    LD			B,E
    LD			E,A
    LD			A,B
    CALL    	?CONVERTCOLOR_24TO15
	ENDM 

SWAP_PALETTE_COLOR_RGB	MACRO
	CALL    	?CONVERTCOLOR_15TO24
    ;   D = Blue, E = Green, A = Red
    LD			B,A
    LD			A,E
    LD			E,D
    LD			D,B
    ;RES			7,D
    CALL    	?CONVERTCOLOR_24TO15
	ENDM 

;----------------------------------------------------------------------

		
;********************************
BTL_CYCLE_CREATURE_PAL	MACRO	xflip
	LD		A,xflip
	LD		(TEMP_MISC2),A
	CALL_FOREIGN	?BTL_CYCLE_CREATURE_PAL	
	ENDM		

;********************************
BTL_FADE_CREATURE_PALETTE MACRO speed,xflip, rh,rl   ;REGISTER = COLOR
	LD		A,rh
	LD		(TEMP_MISC3+1),A
	LD		A,rl			
	LD		(TEMP_MISC3),A
	LD		A,xflip
	LD		(TEMP_MISC2),A
	LD		A,speed
	LD		(TEMP_MISC4),A
	CALL_FOREIGN	?BTL_FADE_CREATURE_PAL
	ENDM

;********************************
BTL_LOAD_CREATURE_PAL	MACRO	index, xflip, offset
	LD		A,index
	LD		(TEMP_MISC1),A
	LD		A,xflip
	LD		(TEMP_MISC2),A
	LD		A,offset
	LD		(TEMP_MISC3),A
	CALL_FOREIGN	?BTL_LOAD_CREATURE_PAL
	ENDM
	
;********************************
; 	 16bit var pointer	outline color to set
;     8bit val			creature side 0 left,1 right
BTL_SET_CREATURE_OUTLINE	MACRO	color, xflip
	LD			A,(color+1)
	LD			(TEMP_MISC3+1),A
	LD			A,(color)
	LD			(TEMP_MISC3),A
	LD			A,xflip
	LD			(TEMP_MISC2),A	
	CALL_FOREIGN	?BTL_SET_CREATURE_OUTLINE	
	ENDM
	
;********************************
BTL_SWAP_CREATURE_PALETTE MACRO	combo_swap, xflip
	LD		A,combo_swap
	LD		(TEMP_MISC1),A
	LD		A,xflip
	LD		(TEMP_MISC2),A
	CALL_FOREIGN	?BTL_SWAP_CREATURE_PALETTE
	ENDM
	

;********************************
	END
;********************************