;********************************
; PALETTE_FX.S
;********************************
;	Author:	Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved


;-----------------------------------------------------------------------------
;	HERE ARE THE CALLABLE FUNCTIONS IN THIS BANK -- THE REST ARE INTERNAL
;-----------------------------------------------------------------------------
;********************************
;?BTL_CYCLE_CREATURE_PAL**	
; (TEMP_MISC2)	:   what creature side:  0 left, 1 right (i.e. XFLIP) 
;********************************
;?BTL_FADE_CREATURE_BASE_PAL**
; (TEMP_MISC2)	:   what creature side:  0 left, 1 right (i.e. XFLIP) 
; (TEMP_MISC4)  :   fade speed
;********************************
;?BTL_FADE_CREATURE_PAL**
; (TEMP_MISC2)	:   what creature side:  0 left, 1 right (i.e. XFLIP) 
; (TEMP_MISC3)  :   what color to fade to
; (TEMP_MISC4)  :   fade speed;
;********************************
;?BTL_LOAD_CREATURE_PAL**
;  caveat emptor -- assumes that Load Arena has already happened and that "ARENA_COLOR" has been set
; (TEMP_MISC1)	:   which creature's palette to load
; (TEMP_MISC2)	:   what creature side:  0 left, 1 right (i.e. XFLIP)  
; (TEMP_MISC3)	:   palette offset for palette input 0 for base, 1,2 offsets are allowed
;********************************
;?BTL_SET_CREATURE_OUTLINE
; (TEMP_MISC3)  :   what color to fade to
; (TEMP_MISC2)	:  creature side:  0 left, 1 right 
;********************************
;?BTL_SWAP_CREATURE_PALETTE **
; (TEMP_MISC2)	:   what creature side:  0 left, 1 right (i.e. XFLIP) 
; (TEMP_MISC1)  :   what rgb combination to swap (1 rb 2 bg 3 rg 4 rgb)
;********************************	
;-----------------------------------------------------------------------------


;********************************
; (TEMP_MISC2)	:   what creature side:  0 left, 1 right (i.e. XFLIP) 
?BTL_CYCLE_CREATURE_PAL	
	XOR			A
	LD			(PALETTE_SAFE),A
	
	LD			A,(TEMP_MISC2)
	AND			A
	JR			NZ,_DO_C1

_DO_C0	
	LD			HL,ANIM_PAL_BG_BUFFER
	LD			E,0
	LD			A,3
	CALL		?CYCLE_PALETTE_RAM
	
	LD			HL,ANIM_PAL_BG_BUFFER
	LD			E,1
	LD			A,3
	CALL		?CYCLE_PALETTE_RAM
		
	LD			HL,ANIM_PAL_BG_BUFFER
	LD			E,2
	LD			A,3
	CALL		?CYCLE_PALETTE_RAM

	LD			A,1
	LD			(PALETTE_SAFE),A
	RET

_DO_C1	
	LD			HL,ANIM_PAL_BG_BUFFER
	LD			E,3
	LD			A,3
	CALL		?CYCLE_PALETTE_RAM
	
	LD			HL,ANIM_PAL_BG_BUFFER
	LD			E,4
	LD			A,3
	CALL		?CYCLE_PALETTE_RAM
		
	LD			HL,ANIM_PAL_BG_BUFFER
	LD			E,5
	LD			A,3
	CALL		?CYCLE_PALETTE_RAM
	
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET

;********************************
; (TEMP_MISC2)	:   what creature side:  0 left, 1 right (i.e. XFLIP) 
; (TEMP_MISC4)  :   fade speed
?BTL_FADE_CREATURE_BASE_PAL
	LD			A,(TEMP_MISC2)
	AND			A
	JR			NZ,_FADE_CREATURE1
	CALL		?FADE_CREATURE0_BASE
	RET
_FADE_CREATURE1				
	CALL		?FADE_CREATURE1_BASE
	RET

;********************************
; (TEMP_MISC2)	:   what creature side:  0 left, 1 right (i.e. XFLIP) 
; (TEMP_MISC3)  :   what color to fade to
; (TEMP_MISC4)  :   fade speed
?BTL_FADE_CREATURE_PAL
	XOR			A
	LD			(PALETTE_SAFE),A
	
	LD			A,(TEMP_MISC4)
	LD			(PALETTE_FADE_SPEED),A
	
	GET16		D,E, TEMP_MISC3
	LD			A,(TEMP_MISC2)
	AND			A
	JR			NZ,_SET_EFFECT_C1
	
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(0*4))*2) ;( index=base0 ((color+(palette*4))*2)
	LD			BC,3
	CALL		?FADE_PALETTE_RAM
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(1*4))*2) 
	LD			BC,3
	CALL		?FADE_PALETTE_RAM
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(2*4))*2)
	LD			BC,3
	CALL		?FADE_PALETTE_RAM
	
	;------------------------------------------
	; IF there is a transparency we don't fade (as this is ARENA COLOR)
	;------------------------------------------
	LD			A,(CREATURE_TRANS)
	AND			A
	JR			Z,_FADE_OK_C0
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET	
_FADE_OK_C0	
	GET16		D,E, TEMP_MISC3
	LD			HL,ANIM_PAL_BG_BUFFER+((0+(2*4))*2)
	LD			BC,1
	CALL		?FADE_PALETTE_RAM
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET	
	
_SET_EFFECT_C1
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(3*4))*2) ;( index=base0 ((color+(palette*4))*2)
	LD			BC,3
	CALL		?FADE_PALETTE_RAM
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(4*4))*2) 
	LD			BC,3
	CALL		?FADE_PALETTE_RAM
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(5*4))*2) 
	LD			BC,3
	CALL		?FADE_PALETTE_RAM
	
	; IF there is a transparency we don't fade (as this is ARENA COLOR)
	LD			A,(CREATURE_TRANS+1)
	AND			A
	JR			Z,_FADE_OK_C1
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET
	
_FADE_OK_C1		
	GET16		D,E, TEMP_MISC3
	LD			HL,ANIM_PAL_BG_BUFFER+((0+(5*4))*2)
	LD			BC,1
	CALL		?FADE_PALETTE_RAM
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET


;********************************
;  caveat emptor -- assumes that Load Arena has already happened and that "ARENA_COLOR" has been set
; (TEMP_MISC1)	:   which creature's palette to load
; (TEMP_MISC2)	:   what creature side:  0 left, 1 right (i.e. XFLIP)  
; (TEMP_MISC3)	:   palette offset for palette input 0 for base, 1,2 offsets are allowed (these will be specific to each creature)
?BTL_LOAD_CREATURE_PAL
	PUSH_ROM_BANK
	;------------------------------------------------------------------------------------------------------
	;		HL		:	Get Ptr to creature's gfx template_struct(RAM) -- offset to PAL
	CALL_FOREIGN	?BTL_GET_CREATURE_BASE_POINTER		; GFX_POINTER IN (TEMP_MISC5) (HL has GFX pointer)
	LD				BC,GFX_BG_PAL
	ADD				HL,BC
	;calc the offset 
	LD			B,0
	LD			A,(TEMP_MISC3)
	CP			B					;is it O offset?
	JR			Z,_STORE_OFFSET
_CP1
	CP			1					;is it 1 offset?
	JR			NZ,_CP2
	LD			A,24
	JR			_STORE_OFFSET
_CP2	
	CP			2					;is it 2 offset?
	JR			NZ,_CP3
	LD			A,48
	JR			Z,_STORE_OFFSET
_CP3	
	CP			3					;is it 3 offset?
	JR			NZ,_DEFAULT
	LD			A,72
	JR			Z,_STORE_OFFSET
_DEFAULT
	XOR			A					
_STORE_OFFSET	
	LD			C,A
	
	;now get the base pointer .:. HL = (HL)
	LD			A,(HLI)
	PUSH		HL				;PUSH TO ADVANCE POINTER FOR PAL_BANK LOOKUP LATER
	LD			H,(HL)
	LD			L,A	
	;add the offset
	ADD			HL,BC
	LD			B,H
	LD			C,L
	
	; Palette address low-high
	LD			A,C		
	LD			(TEMP_PALETTE),A
	LD			A,B		
	LD			(TEMP_PALETTE+1),A
	POP			HL
	INC			HL
	
	; Palette bank
	LD		A,(HLI)		
	LD		(TEMP_PAL_BANK),A
	
	CALL		?BTL_SET_CREATURE_PAL
	;-----------------------------------
	POP_ROM_BANK
	RET
	
;********************************
; (TEMP_MISC3)  :   what color to fade to
; (TEMP_MISC2)	:  creature side:  0 left, 1 right 
?BTL_SET_CREATURE_OUTLINE	
	XOR			A
	LD			(PALETTE_SAFE),A
	
	GET16		B,C, TEMP_MISC3
	LD			A,(TEMP_MISC2)
	AND			A
	JR			NZ,_SET_OUTLINE_C1
_SET_OUTLINE_C0	
	LD			HL,ANIM_PAL_BG_BUFFER
	LD			E,1
	LD			A,2
		CALL		?SET_COLOR_PALETTE_RAM
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET
_SET_OUTLINE_C1
	LD			HL,ANIM_PAL_BG_BUFFER
	LD			E,1+12
	LD			A,2
	CALL		?SET_COLOR_PALETTE_RAM
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET	

;********************************
; (TEMP_MISC2)	:   what creature side:  0 left, 1 right (i.e. XFLIP) 
; (TEMP_MISC1)  :   what rgb combination to swap (1 rb 2 bg 3 rg 4 rgb)
?BTL_SWAP_CREATURE_PALETTE
	XOR			A
	LD			(PALETTE_SAFE),A
	
	LD			A,(TEMP_MISC1)
	LD			E,A
	LD			A,(TEMP_MISC2)
	AND			A
	JR			NZ,_SET_EFFECT_C1
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(0*4))*2) ;( index=base0 ((color+(palette*4))*2)
	LD			BC,3
	CALL		?SWAP_PALETTE_RAM
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(1*4))*2) 
	LD			BC,3
	CALL		?SWAP_PALETTE_RAM
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(2*4))*2)
	LD			BC,3
	CALL		?SWAP_PALETTE_RAM
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET	
_SET_EFFECT_C1
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(3*4))*2) ;( index=base0 ((color+(palette*4))*2)
	LD			BC,3
	CALL		?SWAP_PALETTE_RAM
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(4*4))*2) 
	LD			BC,3
	CALL		?SWAP_PALETTE_RAM
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(5*4))*2)
	LD			BC,3
	CALL		?SWAP_PALETTE_RAM
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET	
	
;********************************
; (TEMP_MISC2)	:   what creature side:  0 left, 1 right (i.e. XFLIP) 
?BTL_XOR_CREATURE_PALETTE
	XOR			A
	LD			(PALETTE_SAFE),A
	
	LD			A,(TEMP_MISC1)
	LD			E,A
	LD			A,(TEMP_MISC2)
	AND			A
	JR			NZ,_SET_EFFECT_C1
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(0*4))*2) ;( index=base0 ((color+(palette*4))*2)
	LD			BC,3
	CALL		?XOR_PALETTE_RAM
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(1*4))*2) 
	LD			BC,3
	CALL		?XOR_PALETTE_RAM
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(2*4))*2)
	LD			BC,3
	CALL		?XOR_PALETTE_RAM
	;-----------------------------------(SPECIAL CASE FOR TRANSPARENCY)
	LD			A,(CREATURE_TRANS)
	AND			A
	JR			Z,_XOR_OK_C0
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET	
_XOR_OK_C0	
	GET16		D,E, TEMP_MISC3
	LD			HL,ANIM_PAL_BG_BUFFER+((0+(2*4))*2)
	LD			BC,1
	CALL		?XOR_PALETTE_RAM
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET	

_SET_EFFECT_C1
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(3*4))*2) ;( index=base0 ((color+(palette*4))*2)
	LD			BC,3
	CALL		?XOR_PALETTE_RAM
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(4*4))*2) 
	LD			BC,3
	CALL		?XOR_PALETTE_RAM
	LD			HL,ANIM_PAL_BG_BUFFER+((1+(5*4))*2)
	LD			BC,3
	CALL		?XOR_PALETTE_RAM
	;-----------------------------------(SPECIAL CASE FOR TRANSPARENCY)
	LD			A,(CREATURE_TRANS+1)
	AND			A
	JR			Z,_XOR_OK_C1
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET	
_XOR_OK_C1		
	GET16		D,E, TEMP_MISC3
	LD			HL,ANIM_PAL_BG_BUFFER+((0+(5*4))*2)
	LD			BC,1
	CALL		?XOR_PALETTE_RAM
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET

	
	if 0
;**************************************
; HL 	base palette buffer
; (arena_color)   
; DE	color offset  : 4*2*2	;creature0	
;						4*5*2	;creature1	
; output:
; A		0 don't fade, 1 fade       
?CHECK_ARENACOLOR_FADE
	PUSH		BC
	GET16		B,C,ARENA_COLOR
_CHECK_ARENA_COLOR
	ADD			HL,DE
	DEREF_HL
	LD			A,H
	CP			B
	JR			NZ,_END	
	LD			A,L
	CP			C
	JR			NZ,_END		
	LD			A,1
	POP			BC
	RET
_END	
	XOR			A
	POP			BC
	RET
	endif			
	
;********************************
; (TEMP_MISC4)  :   fade speed
?FADE_CREATURE0_BASE
	XOR			A
	LD			(PALETTE_SAFE),A
	
	LD			A,(TEMP_MISC4)
	LD			(PALETTE_FADE_SPEED),A
	
	LD			HL,ANIM_PAL_BG_BUFFER+(2)
	LD			BC,BASE_PAL_BG_BUFFER+(2)
	LD			A,3
	LD			(TEMP_WIDTH),A
	CALL		?PALFX_FADE_ANIM_TO_BASE_LOOP	
	
	LD			HL,ANIM_PAL_BG_BUFFER+(2+4*1*2)
	LD			BC,BASE_PAL_BG_BUFFER+(2+4*1*2)
	LD			A,3
	LD			(TEMP_WIDTH),A
	CALL		?PALFX_FADE_ANIM_TO_BASE_LOOP	
	
		
	LD			A,(CREATURE_TRANS)
	AND			A
	JR			Z,_DONT_FADE_FIRST_ELEMENT
	LD			HL,ANIM_PAL_BG_BUFFER+(4*2*2)
	LD			BC,BASE_PAL_BG_BUFFER+(4*2*2)
	LD			A,4
	LD			(TEMP_WIDTH),A
	CALL		?PALFX_FADE_ANIM_TO_BASE_LOOP	
	JR			_EXIT
_DONT_FADE_FIRST_ELEMENT
	LD			HL,ANIM_PAL_BG_BUFFER+(2+4*2*2)
	LD			BC,BASE_PAL_BG_BUFFER+(2+4*2*2)
	LD			A,3
	LD			(TEMP_WIDTH),A
	CALL		?PALFX_FADE_ANIM_TO_BASE_LOOP		
_EXIT	
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET

;********************************
; (TEMP_MISC4)  :   fade speed
?FADE_CREATURE1_BASE
	XOR			A
	LD			(PALETTE_SAFE),A
	
	LD			A,(TEMP_MISC4)
	LD			(PALETTE_FADE_SPEED),A
	
	LD			HL,ANIM_PAL_BG_BUFFER+(26)
	LD			BC,BASE_PAL_BG_BUFFER+(26)
	LD			A,3
	LD			(TEMP_WIDTH),A
	CALL		?PALFX_FADE_ANIM_TO_BASE_LOOP	
	XOR			A
	LD			(PALETTE_SAFE),A
	
	LD			HL,ANIM_PAL_BG_BUFFER+(34)
	LD			BC,BASE_PAL_BG_BUFFER+(34)
	LD			A,3
	LD			(TEMP_WIDTH),A
	CALL		?PALFX_FADE_ANIM_TO_BASE_LOOP	
	XOR			A
	LD			(PALETTE_SAFE),A
	
	LD			A,(CREATURE_TRANS+1)
	AND			A
	JR			NZ,_DONT_FADE_FIRST_ELEMENT
	LD			HL,ANIM_PAL_BG_BUFFER+(40)
	LD			BC,BASE_PAL_BG_BUFFER+(40)
	LD			A,4
	LD			(TEMP_WIDTH),A
	CALL		?PALFX_FADE_ANIM_TO_BASE_LOOP	
	RET
	
_DONT_FADE_FIRST_ELEMENT
	LD			HL,ANIM_PAL_BG_BUFFER+(42)
	LD			BC,BASE_PAL_BG_BUFFER+(42)
	LD			A,3
	LD			(TEMP_WIDTH),A
	;WHEN PALFX_FADE_ANIM_TO_BASE_LOOP() EXITS IT SETS PALETTE_SAFE TO 1 
	CALL		?PALFX_FADE_ANIM_TO_BASE_LOOP	
	RET


	
;********************************
	END
;********************************