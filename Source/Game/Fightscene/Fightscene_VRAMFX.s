;********************************
; FIGHTSCENE_VRAMFX.S
;********************************
;	Author:	Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved
;  
;********************************	
	
;*****************************************************	
;	HL == pointer table base
;   D  == 0
?APPLY_DESTROY_TILE_DATA	
	;get the offset hl is at base table
	LD		E,(HL)
	INC		HL			;advance pointer to mask data
	PUSH	HL
	
	FGET16	H,L,TILEFX_DESTROY_DEST	
	ADD		HL,DE		;D is assumed to be 0, E was set at beginning of func()
	LD		B,H
	LD		C,L
	;BC == Tile destination(4 pixels)
	POP		HL
	LD		E,(HL) 		;get mask
	LD		A,(BC)  	;get actual Bitmap 
	AND		E			;apply the mask -- zero out pixels
	LD		(BC),A		;store the new pixel data
	INC		HL
	RET
	
;******************************************************
;	(TILEFX_DESTROY_ITERATION)	what iteration to apply the pixel erase(index into table)
; 								I assume table iteration won't be greater than 127
;	(TILEFX_DESTROY_DEST)			what tile to destroy
?DO_DESTROY_TILE	
	PUSH	HL
	PUSH	BC
	PUSH	DE
	
	LD		A,(TILEFX_DESTROY_DEST_BANK)
	LD		(VBK),A
		
	FGET16	H,L,TILEFX_DESTROY_TABLE_PTR
	LD		A,(TILEFX_DESTROY_ITERATION)
	ADD		A,A
	LD		D,0
	LD		E,A
	ADD		HL,DE
	; get the pointer
	LD		A,(HLI)
	LD		H,(HL)
	LD		L,A	

	CALL	?APPLY_DESTROY_TILE_DATA	
	CALL	?APPLY_DESTROY_TILE_DATA	

	POP		DE
	POP		BC
	POP		HL
	RET
	

;****************************************
?HBLANKFX_CREATURE_DISSOLVE_TILE
	LD		A,(TILEFX_DESTROY_COUNT)		;NUMBER OF TILES
	AND		A
	RET		Z
	
	; increment the iteration
	LD		A,(TILEFX_DESTROY_ITERATION)
	INC		A
	LD		(TILEFX_DESTROY_ITERATION),A
	
	; if the iteration is at max we progress to next tile 
	LD		A,(TILEFX_DESTROY_ITERATION_MAX)
	LD		L,A
	LD		A,(TILEFX_DESTROY_ITERATION)
	CP		L
	JR		NZ,_DESTROY_TILE
	
	LD		A,(TILEFX_DESTROY_COUNT)
	DEC		A
	LD		(TILEFX_DESTROY_COUNT),A
	
	LD		A,$FF						;(INC TO ZERO)
	LD		(TILEFX_DESTROY_ITERATION),A
		
	; ADVANCE TO NEXT BLOCK
	LD		A,(TILEFX_DESTROY_DEST)
	ADD		A,$10
	LD		(TILEFX_DESTROY_DEST),A
	LD		A,(TILEFX_DESTROY_DEST+1)
	ADC		A,$00
	CP		$98
	JR		NZ,_SKIP_RESET_BOUNDARY
	LD		A,$90		
_SKIP_RESET_BOUNDARY	
	LD		(TILEFX_DESTROY_DEST+1),A	
	RET
	
_DESTROY_TILE	
	CALL	?DO_DESTROY_TILE
	RET
	
;****************************************
?HBLANKFX_CREATURE_DISSOLVE_EVEN

	LD		A,(TILEFX_DESTROY_ITERATION_MAX)
	LD		L,A
	LD		A,(TILEFX_DESTROY_ITERATION)
	CP		L
	RET		Z
	
	; CHECK IF WE ADVANCE TO NEXT ITERATION
	LD		A,(TILEFX_DESTROY_COUNT)
	DEC		A
	LD		(TILEFX_DESTROY_COUNT),A
	JR		NZ,_SKIP_ADVANCE
	LD		A,128						; NUMBER OF TILES
	LD		(TILEFX_DESTROY_COUNT),A
	
	; ADVANCE TO NEXT ITERATION
	LD		A,(TILEFX_DESTROY_ITERATION)
	INC		A
	LD		(TILEFX_DESTROY_ITERATION),A
	CP		L
	RET		Z
_SKIP_ADVANCE	
	CALL	?DO_DESTROY_TILE
	
	LD		A,(TILEFX_DESTROY_DEST)
	ADD		A,$10
	LD		(TILEFX_DESTROY_DEST),A
	LD		A,(TILEFX_DESTROY_DEST+1)
	ADC		A,$00
	CP		$98
	JR		NZ,_SKIP_RESET_BOUNDARY
	LD		A,$90		
_SKIP_RESET_BOUNDARY	
	LD		(TILEFX_DESTROY_DEST+1),A			
	RET

;********************************	
?HBLANKFX_IDLE
	RET		

;********************************	
; this sets the remaining parameters and sets the move creature to sink
; func() ASSUMES :										
;	(TILEFX_DESTROY_ITERATION_MAX) + (TILEFX_DESTROY_TABLE_PTR) have been set
;	
?TILEFX_SETUP
	LD			A,$FF
	LD			(TILEFX_DESTROY_ITERATION),A
	LD			A,$7A
	LD			(TILEFX_DESTROY_COUNT),A
	MOVADDR		TILEFX_DESTROY_BLANK_FUNC,?HBLANKFX_CREATURE_DISSOLVE_EVEN
	MOVADDR		TILEFX_DESTROY_DEST,$9000
	CALL_FOREIGN ?BTL_SETCREATURE1_ARENACOLOR
	LD			A,1
	LD			(TILEFX_DESTROY_DEST_BANK),A
	
	;SET UP VARS FOR MOVING CREATURE1 -- SINK THE CREATURE
	MOVADDR		MOVE_TABLE_PTR,FIGHTFX_SINK			
	LD			A,56*3								
	LD			(MOVE_DELTA_MAXINDEX),A
	XOR			A
	LD			(MOVE_DELTA_INDEX),A
	LD			(MOVE_DELAY_COUNT),A
	RET			
;********************************
	END
;********************************	