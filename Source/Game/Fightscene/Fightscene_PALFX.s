;********************************
; FIGHTSCENE_PALFX.S
;********************************
;	Author:	Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved
;  

;***********************************************************
; NOTE: "FIGHTSCENE_PALFX.S" MUST BE IN THE SAME BANK AS 
;       PALETTE.S -- IF "PALETTE.S" ISN'T IN BANK0
;***********************************************************

;-----------------------------------------------------------------------------
;	HERE ARE THE CALLABLE FUNCTIONS IN THIS BANK 
;-----------------------------------------------------------------------------


;*****************************************************
;?BTL_FADE_ARENA_ANIM_PAL
; input:
; (TEMP_MISC4)  :   fade speed
; (TEMP_MISC3)  :   2 byte color
;*****************************************************
;?BTL_FADE_ARENA_BASE_PAL
; input:
; (TEMP_MISC4)  :   fade speed
;*****************************************************
;?BTL_UPDATE_CREATURE_ARENA_COLOR					
; input:
; (ARENA_COLOR) - 15bit color to load background to
;                 THIS IS -!!AFFECTS BASE!!- PALETTE
;*****************************************************
;?BTL_SET_ARENA_COLOR					; USED FOR CHANGE
; (ARENA_COLOR) - 15bit color to load background to
;                 THIS IS -!!AFFECTS BASE!!- PALETTE
;*****************************************************
;?BTL_UPDATE_ARENA_COLOR_ANIM	
; input:
; (ARENA_COLOR) - 15bit color to load background to
;                 THIS IS -!!AFFECTS ANIM!!- PALETTE
;*****************************************************
;-----------------------------------------------------------------------------

;********************************
; (TEMP_MISC4)  :   fade speed
; (TEMP_MISC3)  :   2byte color
?BTL_FADE_ARENA_ANIM_PAL
	XOR			A
	LD			(PALETTE_SAFE),A
	LD			A,(TEMP_MISC4)
	LD			(PALETTE_FADE_SPEED),A
	
	;step 1 fade the arena base (don't set the arena color yet though)
	; this fades the arena's anim palette to its orginal base 
	LD			A,$61
	LD			(TEMP_MISC1),A
	CALL		?PALFX_FADE_ANIM_TO_COLOR

_SET_CREATURE_ARENA_COLOR	
	; set the arena color to new faded arena color 	
	LD			HL,ANIM_PAL_BG_BUFFER+(4*6*2)
	LD			A,(HLI)
	LD			B,(HL)
	LD			C,A
	SET16		B,C,ARENA_COLOR
	CALL		?BTL_UPDATE_ARENA_COLOR_ANIM
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET
		
;********************************
; (TEMP_MISC4)  :   fade speed
?BTL_FADE_ARENA_BASE_PAL
	XOR			A
	LD			(PALETTE_SAFE),A
	LD			A,(TEMP_MISC4)
	LD			(PALETTE_FADE_SPEED),A
	
	;step 1 fade the arena base (don't set the arena color yet though)
	; this fades the arena's anim palette to its orginal base 
	LD			A,$61
	LD			(TEMP_MISC1),A
	CALL		?PALFX_FADE_ANIM_TO_BASE

_SET_CREATURE_ARENA_COLOR	
	; set the arena color to new faded arena color 	
	LD			HL,ANIM_PAL_BG_BUFFER+(4*6*2)
	LD			A,(HLI)
	LD			B,(HL)
	LD			C,A
	SET16		B,C,ARENA_COLOR
	CALL		?BTL_UPDATE_ARENA_COLOR_ANIM
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET
		
					
;********************************
; (ARENA_COLOR) - 15bit color to load background to
;                 THIS IS -!!AFFECTS BASE!!- PALETTE
?BTL_UPDATE_CREATURE_ARENA_COLOR	
	XOR			A
	LD			(PALETTE_SAFE),A	
	LD			A,(ARENA_COLOR+1)
	LD			B,A
	LD			A,(ARENA_COLOR)
	LD			C,A	
	;-------------------------------------
	; BASE
	;-------------------------------------
	;creature 0
	LD			HL,BASE_PAL_BG_BUFFER
	LD			E,0
	LD			A,2
	CALL		?SET_COLOR_PALETTE_RAM
	;creature 1
	LD			HL,BASE_PAL_BG_BUFFER
	LD			E,4*3
	LD			A,2
	CALL		?SET_COLOR_PALETTE_RAM
	
	LD			HL,BASE_PAL_BG_BUFFER
	CALL		?CHECK_ARENACOLOR_TRANSPARENT
	
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET

;********************************
; (ARENA_COLOR) - 15bit color to load background to
;                 THIS IS -!!AFFECTS BASE!!- PALETTE
?BTL_SET_ARENA_COLOR	
	XOR			A
	LD			(PALETTE_SAFE),A	
	LD			A,(ARENA_COLOR+1)
	LD			B,A
	LD			A,(ARENA_COLOR)
	LD			C,A	
	
	;set arena's color for parallax
	LD			HL,BASE_PAL_BG_BUFFER
	LD			E,4*6
	LD			A,1
	CALL		?SET_COLOR_PALETTE_RAM
	
	;set arena's color for creatures
	CALL		?BTL_UPDATE_CREATURE_ARENA_COLOR
	
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET

;***********************************	
; used for destruction of tiles	
?BTL_SETCREATURE1_ARENACOLOR			
	XOR			A
	LD			(PALETTE_SAFE),A
	
	LD			A,(ARENA_COLOR+1)
	LD			B,A
	LD			A,(ARENA_COLOR)
	LD			C,A	
	;creature 1
	LD			HL,ANIM_PAL_BG_BUFFER
	LD			E,5*4
	LD			A,1
	CALL		?SET_COLOR_PALETTE_RAM
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET	

;********************************
; (ARENA_COLOR) - 15bit color to load background to
;                 THIS IS -!!AFFECTS BASE!!- PALETTE
?BTL_LOAD_CARDSCENE_ARENA_COLOR	
	XOR			A
	LD			(PALETTE_SAFE),A	
	LD			A,(ARENA_COLOR+1)
	LD			B,A
	LD			A,(ARENA_COLOR)
	LD			C,A	
	;-------------------------------------
	; BASE
	;-------------------------------------
	;cardscene arena
	LD			HL,BASE_PAL_BG_BUFFER
	LD			E,6*4
	LD			A,1
	CALL		?SET_COLOR_PALETTE_RAM
	;-------------------------------------
	
	;drop shadow color (black)
	LD			BC,$0000
	LD			HL,BASE_PAL_BG_BUFFER
	LD			E,6*4+1
	LD			A,1
	CALL		?SET_COLOR_PALETTE_RAM
	
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET

;********************************
; (ARENA_COLOR) - 15bit color to load background to
;                 THIS IS -!!AFFECTS ANIM!!- PALETTE
?BTL_UPDATE_ARENA_COLOR_ANIM	
	XOR			A
	LD			(PALETTE_SAFE),A
	
	LD			A,(ARENA_COLOR+1)
	LD			B,A
	LD			A,(ARENA_COLOR)
	LD			C,A	
	;-------------------------------------
	; ANIM
	;-------------------------------------
	;creature 0
	LD			HL,ANIM_PAL_BG_BUFFER
	LD			E,0
	LD			A,2
	CALL		?SET_COLOR_PALETTE_RAM
	;creature 1
	LD			HL,ANIM_PAL_BG_BUFFER
	LD			E,3*4
	LD			A,2
	CALL		?SET_COLOR_PALETTE_RAM
	;arena
	LD			HL,ANIM_PAL_BG_BUFFER
	LD			E,6*4
	LD			A,1
	CALL		?SET_COLOR_PALETTE_RAM
	
	
	; if transparent in pal 3 set the color_rom
	; check creature 0
	LD			A,(CREATURE_TRANS)
	AND			A
	JR			Z,_CHECK_C1
	
	LD			HL,ANIM_PAL_BG_BUFFER
	LD			E,2*4
	LD			A,1
	CALL		?SET_COLOR_PALETTE_RAM

_CHECK_C1
	LD			A,(CREATURE_TRANS+1)
	AND			A
	JR			Z,_EXIT
	
	LD			HL,ANIM_PAL_BG_BUFFER
	LD			E,5*4
	LD			A,1
	CALL		?SET_COLOR_PALETTE_RAM
	
_EXIT
	;-------------------------------------
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET	
	
;**************************************
; HL 	base palette buffer
; BC	arena color 
; --------------------------------------
; 
?CHECK_ARENACOLOR_TRANSPARENT
	;-------------------------------------
	; check if transparent color
	
	PUSH		BC						;save arena color
	PUSH		HL						;save base palette buffer pointer	
	
	XOR			A						;init no transparency by default
	LD			(CREATURE_TRANS),A
	LD			(CREATURE_TRANS+1),A
	
_CHECK_CREATURE0
	LD			BC,$3DE0				;transparent color
	LD			DE,4*2*2				;creature0
	ADD			HL,DE
	DEREF_HL
	LD			A,H
	CP			B
	JR			NZ,_CHECK_CREATURE1		
	LD			A,L
	CP			C
	JR			NZ,_CHECK_CREATURE1		
	POP			HL						;restore base palette buffer pointer	
	POP			BC						;restore Arena color
	PUSH		BC						;save arena color
	PUSH		HL						;save base palette buffer pointer	
	LD			E,4*2
	LD			A,1
	LD			(CREATURE_TRANS),A
	CALL		?SET_COLOR_PALETTE_RAM	;set arena color in creature0's third palette
				
_CHECK_CREATURE1
	
	LD			BC,$3DE0				;transparent color
	POP			HL
	PUSH		HL
	LD			DE,4*5*2				;creature1
	ADD			HL,DE
	DEREF_HL
	LD			A,H
	CP			B
	JR			NZ,_END
	LD			A,L
	CP			C
	JR			NZ,_END
	POP			HL
	POP			BC
	LD			E,4*5
	LD			A,1
	LD			(CREATURE_TRANS+1),A
	CALL		?SET_COLOR_PALETTE_RAM	;set arena color in creature1's third palette
	RET
	
_END	
	POP			HL
	POP			BC
	RET
		
;********************************
	END
;********************************	