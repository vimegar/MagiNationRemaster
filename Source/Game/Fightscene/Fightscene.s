;********************************
; FIGHTSCENE.S
;********************************
;	Author:	Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\GAME\FIGHTSCENE\FIGHTSCENE_VRAMFX.S

;********************************
	LIB		SOURCE\GAME\FIGHTSCENE\TABLES\FTSMOVE_TABLE.S
	LIB		SOURCE\GAME\FIGHTSCENE\TABLES\FTSDISSOLVE_TABLE.S
	LIB		SOURCE\GAME\FIGHTSCENE\TABLES\FTSARENA_TABLE.S

;********************************
?BTL_CLEAR_CREATURE0_BG_BANK0	
	;Init the BG CHR Data to BLANK				        
	MEM_SET		FIGHTSCN_CLEAR0BG,32*24,$80 			 
	MEM_SET		FIGHTSCN_POSTER0BG,32*10,$80      ;32 RIGHT -- 10 DOWN
	RET

;********************************
?BTL_CLEAR_CREATURE0_BG_BANK1	
	;Init the BG CHR Data to BLANK				        
	MEM_SET		FIGHTSCN_CLEAR0BG,32*24,$08 			 
	MEM_SET		FIGHTSCN_POSTER0BG,32*10,$08      ;32 RIGHT -- 10 DOWN
	RET

;********************************	
?BTL_CLEAR_CREATURE1_BG_BANK1
	;clear BG ATTRB for creature and scrollable area
	MEM_SET		FIGHTSCN_CLEAR1BG,32*32,$28          
	MEM_SET		FIGHTSCN_POSTER1BG,32*10,$00 
	
	; fix the settings corrupted from menu attributes 
	MEM_SET	FIGHTSCN_CLEARFIX1BG,32*10,$28
	
	RET

;********************************	
?BTL_CLEAR_CREATURE1_BG_BANK0
	;Init the BG CHR Data to BLANK	
	MEM_SET		FIGHTSCN_CLEAR1BG,32*32,$80             ;Uses the FIRST tile in OBJ_ZONE
	RET
	
;********************************
; input:
; 			(ARENA_INDEX)	:  which arena to load
; output:
; 			(TEMP_MISC5)	:  pointer to arena_gfx rom data
; 				HL			:  pointer to arena_gfx rom data
; 			
?BTL_GET_ARENA_DATA_POINTER
	LD			HL,ARENA_TABLE
	LD			A,(ARENA_INDEX)
	LD			D,0
	LD			E,A
	SLA			E
	RL 			D
	ADD			HL,DE
	;now get the base pointer .:. HL = (HL)
	LD			A,(HLI)
	LD			H,(HL)
	LD			L,A	
	;store arena_gfx pointer
	MOV16_REG	H,L,TEMP_MISC5
	RET
	
;********************************
;  ?BTL_GET_ARENA_GFX_STRUCT
;  loads the arena_gfx data into the GFX_STRUCT (RAM)
;  Input:
; (TEMP_MISC5)	:  base pointer for gfx  
;
?BTL_GET_ARENA_GFX_STRUCT
	;get base pointer assignment
	FGET16		H,L, TEMP_MISC5
	PUSH		DE
	LD			DE,ARENA_GFX_OFFSET
	ADD			HL,DE
	POP			DE
	;----------------------------------------------
	; Top Parallax Bitmap address low-high
	LD		A,(HLI)		
	LD		(TEMP_BIT),A
	LD		A,(HLI)		
	LD		(TEMP_BIT+1),A
	; Top Parallax Bitmap bank		
	LD		A,(HLI)
	LD		(TEMP_BIT_BANK),A
	; Top Parallax BG address
	LD		A,(HLI)		
	LD		(TEMP_BG),A
	LD		A,(HLI)
	LD		(TEMP_BG+1),A
	; Top Parallax BG bank
	LD		A,(HLI)		
	LD		(TEMP_BG_BANK),A
	;----------------------------------------------
	; Bottom Parallax Bitmap address low-high
	LD		A,(HLI)		
	LD		(TEMP_MISC3),A
	LD		A,(HLI)		
	LD		(TEMP_MISC3+1),A
	; Bottom Parallax Bitmap bank		
	LD		A,(HLI)
	LD		(TEMP_MISC1),A
	; Bottom Parallax BG address
	LD		A,(HLI)		
	LD		(TEMP_MISC4),A
	LD		A,(HLI)
	LD		(TEMP_MISC4+1),A
	; Bottom Parallax BG bank
	LD		A,(HLI)		
	LD		(TEMP_MISC2),A
	;----------------------------------------------
	; Top Paralax Speed
	LD		A,(HLI)		
	LD		(FIGHTSCN_BORDSPD0),A
	; Bottom Paralax Speed
	LD		A,(HLI)		
	LD		(FIGHTSCN_BORDSPD1),A
	;----------------------------------------------
	; Palette address low-high
	LD		A,(HLI)		
	LD		(TEMP_PALETTE),A
	LD		A,(HLI)		
	LD		(TEMP_PALETTE+1),A
	; Palette bank
	LD		A,(HLI)		
	LD		(TEMP_PAL_BANK),A
	RET

;********************************
; input:
; 			NONE
; output:
; 			(ARENA_COLOR)	
?BTL_GET_CARDSCENE_ARENA_COLOR
	CALL	?BTL_GET_ARENA_DATA_POINTER
	LD		DE,ARENA_COLOR_OFFSET
	ADD		HL,DE
	DEREF_HL
	SET16	H,L,ARENA_COLOR
	RET
					
;********************************
; input:
; 			(TEMP_MISC1)	:  which creature to load
; output:
; 			(TEMP_MISC4)	:  pointer to basestats rom data
; 			(TEMP_MISC5)	:  pointer to   gfx rom data
?BTL_GET_CREATURE_BASE_POINTER
	LD		A,(TEMP_MISC1)
	LD		C,A
	LD		B,CREATURE_TEMPLATE_SIZE
	CALL	?MULT
	LD		BC,CREATURE_TEMPLATE_TABLE
	ADD		HL,BC
	
	;store base pointer
	MOV16_REG	H,L,TEMP_MISC4
	
	;get the GFX base pointer and store it
	LD			BC,CREATURE_GFX_OFFSET
	ADD			HL,BC	
	MOV16_REG	H,L,TEMP_MISC5
	RET

;********************************
; (ARENA_INDEX)	:  which ARENA to load
?BTL_LOAD_ARENA	
	; look up hl pointer based on index
	CALL		?BTL_GET_ARENA_DATA_POINTER
	CALL		?BTL_GET_ARENA_GFX_STRUCT
	CALL		?BTL_DRAW_ARENA					;bank zero func
	RET

;**************************************
; (TEMP_MISC1)	:  which creature to load
; (TEMP_MISC2)	:  what creature side:  0 left, 1 right (i.e. XFLIP)   
?BTL_LOAD_CREATURE
	CALL		?BTL_GET_CREATURE_BASE_POINTER		;STORES IN (TEMP_MISC4) & GFX_POINTER IN (TEMP_MISC5)
	CALL		?BTL_GET_CREATURE_GFX_STRUCT
	LD			A,(TEMP_MISC2)
	AND			A
	JR			NZ,_BTL_DRAW_C1
_BTL_DRAW_C0
	CALL		?BTL_DRAW_CREATURE0
	RET
_BTL_DRAW_C1
	CALL		?BTL_DRAW_CREATURE1
	RET
	
;********************************
;  ?BTL_GET_CREATURE_GFX_STRUCT
;  loads the data into the GFX_STRUCT (RAM)
;  Input:
; (TEMP_MISC5)	:  base pointer for gfx  
?BTL_GET_CREATURE_GFX_STRUCT
	
	;get base pointer assignment
	GET16		H,L, TEMP_MISC5
		
	; Bitmap address low-high
	LD		A,(HLI)		
	LD		(TEMP_BIT),A
	LD		A,(HLI)		
	LD		(TEMP_BIT+1),A
	; Bitmap bank		
	LD		A,(HLI)
	LD		(TEMP_BIT_BANK),A
	; BG address
	LD		A,(HLI)		
	LD		(TEMP_BG),A
	LD		A,(HLI)
	LD		(TEMP_BG+1),A
	; BG bank
	LD		A,(HLI)		
	LD		(TEMP_BG_BANK),A
	; BG width
	LD		A,(HLI)		
	LD		(TEMP_WIDTH),A
	; BG height
	LD		A,(HLI)		
	LD		(TEMP_HEIGHT),A
	
	
	; Palette address low-high
	LD		A,(HLI)		
	LD		(TEMP_PALETTE),A
	LD		A,(HLI)		
	LD		(TEMP_PALETTE+1),A
	; Palette bank
	LD		A,(HLI)		
	LD		(TEMP_PAL_BANK),A
	RET
			
;**************************************
; (MOVE_DELTA_MAXINDEX) total number of deltas
; (MOVE_DELTA_INDEX) 	current delta cursor
; (MOVE_DELAY_MAXCOUNT) total number of iterations to wait until we get next delta
; (MOVE_DELAY_COUNT)	current delay counter
; (FIGHTSCN_WX_DELTA)   as parallax affects the X-axis i store the ongoing deltas here
?BTL_MOVE_CREATURE1

	; CHECK IS DELTA_INDEX == MAX_INDEX (if so return)
	LD		A,(MOVE_DELTA_MAXINDEX)
	LD		C,A
	LD		A,(MOVE_DELTA_INDEX)
	CP		C
	RET		Z
 
	; CHECK IF DELAY_COUNT HAS BEEN REACHED TO GET THE NEXT SET OF DELTAS
	LD		A,(MOVE_DELAY_MAXCOUNT)
	LD		C,A
	LD		A,(MOVE_DELAY_COUNT)
	CP		C 
	JR		Z,START_MOVE
	INC		A
	LD		(MOVE_DELAY_COUNT),A
	RET		
		
		
START_MOVE	
	; RESET THE DELAY COUNTER		
	XOR		A
	LD		(MOVE_DELAY_COUNT),A			
	; GET	X
	FGET16	H,L,MOVE_TABLE_PTR
	LD		B,0
	LD		A,(MOVE_DELTA_INDEX)
	LD		C,A
	ADD		HL,BC
	LD		A,(HLI)
	LD		D,A
	; GET	Y
	LD		A,(HLI)
	LD		E,A
	; GET	DELAY
	LD		A,(HLI)
	LD		(MOVE_DELAY_MAXCOUNT),A

_CHECK_LOOP
	;DB		$00,$00,$00
	;DB		$00,$00, $00
	;DB		$18,$01
	;step1. check if reached a loop marker of 3 zeros
	AND		A
	JR		NZ,DO_MOVE
	CP		E
	JR		NZ,DO_MOVE
	CP		D
	JR		NZ,DO_MOVE
	;all 3 are 0's -- delta_index is next, then loop_count but first check step 2
	
	;step2. are we already in a loop? (MOVE_DELTA_LOOPCOUNT!=0)
	LD		A,(MOVE_DELTA_LOOPCOUNT)			
	AND		A
	JR		NZ,_LOOP_TRUE
_LOOP_FALSE
	; read in (MOVE_DELTA_INDEX)
	; read in (MOVE_DELTA_LOOPCOUNT)
	
	; set	MOVE_DELTA_INDEX
	LD		A,(HLI)
	LD		(MOVE_DELTA_INDEX),A
	; set	MOVE_DELTA_LOOPCOUNT
	LD		A,(HLI)
	LD		(MOVE_DELTA_LOOPCOUNT),A
	RET
_LOOP_TRUE		
	; decrement at MOVE_DELTA_LOOPCOUNT	
	; (if zero advance the index past the loop, and ret)
	; else ...
	;          read in (MOVE_DELTA_INDEX) and ret          
	LD		A,(MOVE_DELTA_LOOPCOUNT)
	DEC		A
	LD		(MOVE_DELTA_LOOPCOUNT),A
	AND		A
	JR		Z,_EOL
_NOT_EOL	
	; set	MOVE_DELTA_INDEX
	LD		A,(HLI)
	LD		(MOVE_DELTA_INDEX),A
	RET
_EOL
	LD		A,(MOVE_DELTA_INDEX)
	ADD		A,$05                 ;5 ELEMENTS ~ X,Y,DELAY,LOOP_OFFSET,LOOP_COUNT
	LD		(MOVE_DELTA_INDEX),A
	RET
	
DO_MOVE	
	LD		A,(FIGHTSCN_WX_DELTA)
	ADD		A,D
	LD		(FIGHTSCN_WX_DELTA),A
		
	LD		A,(FIGHTSCN_WY)
	ADD		A,E
	CP		$71
	JR		C,_SKIP_BOUNDSY
	LD		A,$71
_SKIP_BOUNDSY	
	LD		(FIGHTSCN_WY),A
	;ADVANCE THE DELTA POINTER
	LD		A,(MOVE_DELTA_INDEX)
	;ADD 3 ELEMENTS ~ X,Y,DELAY
	ADD		A,$03 
	LD		(MOVE_DELTA_INDEX),A
	RET
	
;********************************
; SCRIPT_WCOUNT:			Current index into pan table
; SCRIPT_WCOUNT + $01:		Number of times to apply delta
; (SCROLL_TABLE_PTR):		Pan table
?BTL_PAN_SCENE
	;--------------------------------
	; HL = TABLE + (SCRIPT_WCOUNT * $02)
	;--------------------------------
	FGET16		H,L,SCROLL_TABLE_PTR
	LDA_FF		SCRIPT_WCOUNT
	SLA			A
	LD			E,A
	LD			D,$00
	ADD			HL,DE
	;--------------------------------
	; NEXT DELTA?
	;--------------------------------
	LDA_FF		SCRIPT_WCOUNT+$01
	AND			A
	JR			NZ,_HOLD
	LDA_FF		SCRIPT_WCOUNT
	INC			A
	LDFF_A		SCRIPT_WCOUNT
	INC			HL
	INC			HL

_CHECK_END_OF_PAN
	LD			A,(HL)
	AND			A
	JR			NZ,_NEXT
	SET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET
	
_NEXT	
	LDFF_A		SCRIPT_WCOUNT+$01
_HOLD
	;--------------------------------
	; COUNTDOWN
	;--------------------------------
	DEC			A
	LDFF_A		SCRIPT_WCOUNT+$01
	INC			HL
	LD			A,(HL)
	;LOAD DELTA 
	LD			(SCROLL_DELTA),A
	CALL		?BTL_SCROLL_SCENE
	RET

;**************************************
; (SCROLL_DIRECTION):   scroll to the:  0 left, 1 right
; (SCROLL_DELTA)	:   speed to scroll it at offset in pixels
?BTL_SCROLL_SCENE
	LD			A,(SCROLL_DIRECTION)
	AND			A
	JR			NZ,_SCROLL_RIGHT
_SCROLL_LEFT	
	; scroll x left
	LD			A,(FIGHTSCN_SCX)
	AND			A
	RET			Z  					 ;BOUNDS CHECK
	
	PUSH		BC	
	LD			C,A
	LD			A,(SCROLL_DELTA)
	CPL			
	INC			A
	ADD			A,C
	JR			C,_NO_OUT_BOUNDS
	XOR			A	
	JP			_NO_OUT_BOUNDS	
_SCROLL_RIGHT
	; scroll x right
	LD			A,(FIGHTSCN_SCX)
	CP			96
	RET			Z
	
	PUSH		BC	
	LD			C,A
	LD			A,(SCROLL_DELTA)
	ADD			A,C
	CP			96
	JR			C,_NO_OUT_BOUNDS
	LD			A,96	
	
_NO_OUT_BOUNDS	
	LD		(FIGHTSCN_SCX),A
	POP			BC
	RET

;********************************	
?BTL_SET_CREATURE1_XFLIP
	; AFTER UNPACKING THE DATA - XFLIP THE ATTRIBUTES
	MEM_XOR		FIGHTSCN_POSTER1BG,32*10,$28          
	; ADD THE PALETTE OFFSET
	MEM_ADD		FIGHTSCN_POSTER1BG,32*10,$03,$FF
	RET
;-------------------------------------------------------------------------------------

;********************************
?FIGHTSCENE_CONTROLS
;---------------------------------
	if 1
; ACTUAL GAME FUNCTION CONTROLS	
; if we are doing a cutscene or dont want to skip/PAUSE... set FIGHTSCENE_DONE == 0
	LD			A,(FIGHTSCN_DONE)
	AND			A
	RET			Z	
	
; if you press (B)  we skip the scene
	LD			A,(CNTDOWN)
	BIT			1,A
	JR    		Z,_CHECK_PRESSED_START
_PRESSED_B	
	CALL		?FIGHTSCENE_CLOSE
	RET
	
_CHECK_PRESSED_START
; if you press (start)  we pause
	LD			A,(CNTDOWN) 
	BIT			3,A
	RET    		Z
_PRESSED_START	
	LD			A,(FIGHTSCN_PAUSE)
	CP			0
	JR			NZ,_UNPAUSE
	LD			A,1
	LD			(FIGHTSCN_PAUSE),A
	RET	

_UNPAUSE	
	XOR			A
	LD			(FIGHTSCN_PAUSE),A
	RET

;---------------------------------
	else	
; DEBUG GAME FUNCTION CONTROLS	
;---------------------------------
_TEST_SELECT
	; if you press (select) enable the other keys
	;LD			A,(CNT1)
	;BIT			2,A
	;RET			Z
				
_TEST_A	
	; if you press (A) 
	LD			A,(CNTDOWN)
	BIT			0,A
	JP     		Z,_TEST_B
_PRESSED_A	
	LD			A,(CNT1)
	BIT			2,A			;TEST_SELECT AS WELL
	JP     		Z,_TEST_B
	; reload creature (RIGHT)
	LD			A,(CREATURE_INDEX+1)
	INC			A
	CP			CREATURE_TOTAL
	JR			C,_STORE_CREATURE_INDEX
	XOR 		A
_STORE_CREATURE_INDEX
	LD			(CREATURE_INDEX+1),A	
	LD			A,1
	LD			(FIGHTSCN_OPTIONS),A
	RET
	
_TEST_B	
	; if you press (B) 
	LD			A,(CNTDOWN)
	BIT			1,A
	JP     		Z,_TEST_DPAD_RIGHT
_PRESSED_B	
	LD			A,(CNT1)
	BIT			2,A			;TEST_SELECT AS WELL
	JP     		Z,_TEST_DPAD_RIGHT
	; reload creature (LEFT)			
	LD			A,(CREATURE_INDEX)
	INC			A
	CP			CREATURE_TOTAL
	JR			C,_STORE_CREATURE2_INDEX
	XOR 		A
_STORE_CREATURE2_INDEX
	
	LD			(CREATURE_INDEX),A	
	LD			A,1
	LD			(FIGHTSCN_OPTIONS),A
	RET
	
_TEST_DPAD_RIGHT
	LD			A,(CNT1)
	BIT			4,A
	JP    		Z,_TEST_DPAD_LEFT
_PRESSED_DPAD_RIGHT
	BTL_SCROLL_SCENE	FTS_RIGHT,3
	RET

_TEST_DPAD_LEFT	
	LD			A,(CNT1)
	BIT			5,A
	JP    		Z,_TEST_DPAD_UP
_PRESSED_DPAD_LEFT
	BTL_SCROLL_SCENE	FTS_LEFT,3
	RET

_TEST_DPAD_UP	
	LD			A,(CNTDOWN)
	BIT			6,A
	JP    		Z,_TEST_DPAD_DOWN
;*************
	;LD	A,$07
	;LD	(TEMP_MISC1),A
	;CALL_FOREIGN	?PALFX_XOR_PALETTE
	
	LD	A,$00
	LD	(TEMP_MISC2),A
	CALL_FOREIGN	?BTL_XOR_CREATURE_PALETTE
	RET
;*************
_PRESSED_DPAD_UP
	; reload creature (LEFT)			
	LD			A,(CREATURE_INDEX)
	INC			A
	CP			CREATURE_TOTAL
	JR			C,_STORE_CREATURE2_INDEX
	XOR 		A
_STORE_CREATURE2_INDEX
	LD			(CREATURE_INDEX),A	
	LD			A,1
	LD			(FIGHTSCN_OPTIONS),A
	XOR			A
	LD			(FIRE_EFFECT_STATE),A
	RET

_TEST_DPAD_DOWN	
	LD			A,(CNTDOWN)
	BIT			7,A
	JP    		Z,_TEST_START
_PRESSED_DPAD_DOWN
	; reload creature (LEFT)			
	LD			A,(CREATURE_INDEX)
	AND			A
	JR			Z,_RESTORE
	DEC			A
	JR			_STORE_CREATURE2_INDEX
_RESTORE
	LD 			A,CREATURE_TOTAL-1
	JR			_STORE_CREATURE2_INDEX
	
_TEST_START
	; if you press (start) 
	LD			A,(CNTDOWN) 
	BIT			3,A
	RET    		Z
_PRESSED_START	
	LD			A,1
	LD			(FIGHTSCN_OPTIONS),A
	LD			A,(ARENA_INDEX)
	INC			A
	CP			6
	JR			C,_SET_ARENA
	XOR			A
_SET_ARENA
	LD			(ARENA_INDEX),A
	RET
	
	endif

;********************************
?FIGHTSCENE_CLOSE
	CALL			?FIGHTSCENE_FADEOUT	
	MOVADDR			VBLANK_HANDLER_FUNC,?VBLANK_HANDLER_STD
	MOVADDR			MASTER_SCRIPT_STATE,?CMD_END
	XOR				A
	LD				(MASTER_SCRIPT_FRAME+$01),A
	LD				(FIGHTSCN_DONE),A
	RET

;********************************
	if 1
?FIGHTSCENE_DO
	MOVADDR			VBLANK_FUNC,?VBLANK_IDLE

	SCREEN_HIDE
	TIMER_START

	CALL			?FIGHTSCENE_INIT

	SCRIPT_SET_VAR	MASTER_SCRIPT,FIGHTSCN_SCRIPT,FIGHTSCN_SCRIPT_BANK
	INTERPRETER_REINIT
	CALL			?SCRIPT_SCENE_INIT
	SCREEN_SHOW

_FIGHTSCENE_LOOP1
	CALL			?FIGHTSCENE_CONTROLS	; <-- control pad testing
	CALL			?FIGHTSCENE_UPDATE		; <-- graphical updates for scrolling+scripting goes here
		
	
	LD				A,(MASTER_SCRIPT_FRAME+$01)
	AND				A
	JR				NZ,_FIGHTSCENE_LOOP1

	CALL			?FIGHTSCENE_CLOSE		; <-- called when finally leaving the fightscene
	RET
	endif

;********************************
; (ARENA_INDEX)  	 : the ARENA    Parallax Index
; (CREATURE_INDEX)	 : the ATTACKER Creature Index
; (CREATURE_INDEX+1) : the DEFENDER Creature Index
;	
?FIGHTSCENE_INIT
	
	CALL_FOREIGN	?ACTORLIST_INIT
	FRAME_INIT
	
	XOR			A
	LD			(FIGHTSCN_START),A
	LD			(FIGHTSCN_OPTIONS),A
	LD			(PALETTE_SAFE),A
	
	CALL		?FIGHTSCENE_SCX_INIT
	
	XOR			A
	LD			(PALETTE_TEMP),A
	LD			(PALETTE_TEMP+1),A
	
	; *-*-*-*-* OUTLINE COLOR *-*-*-*-*
	LD			A,$00
	LD			(PALETTE_SET_COLOR),A
	LD			A,$24
	LD			(PALETTE_SET_COLOR+1),A
	
	BTL_LOAD_ARENA		(ARENA_INDEX)
	BTL_LOAD_CREATURE	(CREATURE_INDEX), 0
	BTL_LOAD_CREATURE	(CREATURE_INDEX+1), 1
	
	; set the anim fx bg buffer to white
	LD		A,$07
	LD		(TEMP_MISC1),A
	LD		DE,$7FFF
	SET16	D,E,TEMP_MISC3	
	CALL_FOREIGN			?PALFX_CLEAR_ANIMBUFFER		
	CALL_FOREIGN			?VBLANK_UPDATE_PALETTES
	RET

;********************************
?FIGHTSCENE_FADEOUT
	
	LD				A,$08
	LD				(TEMP_MISC5),A			; 8 iterations of fade out
	LD				A,$07					; fade all bg palettes
	LD				(TEMP_MISC1),A
	MOVADDR			TEMP_MISC3,$7FFF		; CLEAR TO white color
	CALL_FOREIGN	?PALFX_CLEAR_BASEBUFFER
	
	; set to 4 x speed -- other parameters are the same
	LD				A,4
	LD				(TEMP_MISC4),A

_LOOP	
	CALL_FOREIGN	?PALFX_FADE_ANIM_TO_BASE
	
	CALL			?FIGHTSCENE_UPDATE		; <-- graphical updates for scrolling+scripting goes here
	CALL			?SYSTEM_UPDATE_GAME		; <-- total system update (sfx+graphics/animation+gamestates)
	LD				A,(TEMP_MISC5)
	DEC				A
	LD				(TEMP_MISC5),A
	JR				NZ,_LOOP
	RET

;********************************
?FIGHTSCENE_SCX_INIT

	;------------------------------------
	XOR			A
	LD			(FIGHTSCN_SCX),A
	LD			(FIGHTSCN_WX),A
	LD			(FIGHTSCN_WX_DELTA),A
	LD			(FIGHTSCN_BORDX0),A
	LD			(FIGHTSCN_BORDX1),A
	LD			(FIGHTSCN_PAUSE),A
	;------------------------------------	
	LD			(MOVE_DELTA_MAXINDEX),A
	LD			(MOVE_DELTA_INDEX),A
	LD			(MOVE_DELAY_MAXCOUNT),A
	LD			(MOVE_DELAY_COUNT),A		
	;------------------------------------
	LD			(TILEFX_DESTROY_COUNT),A
	LD			(TILEFX_DESTROY_ITERATION_MAX),A
	LD			(TILEFX_DESTROY_ITERATION),A
	
	;------------------------------------	
	LD			A,FIGHTSCN_SCY_INIT
	LD			(FIGHTSCN_SCY),A
	LD			A,FIGHTSCN_WY_INIT
	LD			(FIGHTSCN_WY),A
	
	
	MOVADDR		MOVE_TABLE_PTR,FIGHTFX_SHAKE 				;DEFAULT_TABLE			
	MOVADDR		TILEFX_DESTROY_BLANK_FUNC,?HBLANKFX_IDLE
	MOVADDR		TILEFX_DESTROY_TABLE_PTR,TILEFX_DESTROY_TABLE_DEFAULT
	MOVADDR		TILEFX_DESTROY_DEST,$9000
	LD			A,:TILEFX_DESTROY_TABLE_DEFAULT
	LD			(TILEFX_DESTROY_DEST_BANK),A
	RET

;********************************
?FIGHTSCENE_UPDATE	
	
	; SET THE VBLANK FUNCTION 
	;--------------------------------
	MOVADDR			VBLANK_HANDLER_FUNC,?VBLANK_HANDLER_FIGHTSCENE
	CALL_FOREIGN	?DETERMINE_UPDATE_PALETTE_VFUNC	
		
	; SET THE TOP BORDER X
	;--------------------------------
	LD			A,(FIGHTSCN_SCX)
	AND			$7F
	LD			(FIGHTSCN_SCX),A
	LD			E,A
	
	LD			A,(FIGHTSCN_BORDSPD0)
	LD			D,A
	XOR			A
	CALL		?SET_PARALLAX_SCX	
	
	
	; SET THE BOTTOM BORDER X
	;--------------------------------
	LD			A,(FIGHTSCN_BORDSPD1)
	LD			D,A
	LD			A,1
	CALL		?SET_PARALLAX_SCX	
	
	
	; SET THE WINDOW X
	;--------------------------------
	PUSH		DE
	CALL		?BTL_MOVE_CREATURE1   
	POP			DE
	
	LD			A,$87
	SUB			E
	LD			E,A
	LD			A,(FIGHTSCN_WX_DELTA)
	ADD			A,E
	LD			(FIGHTSCN_WX),A
	
	; SET THE OAM'S WINDOW FRAME
	;--------------------------------
	LD			A,(FIGHTSCN_SCX)
	LD			(SCXW),A	

	; UPDATE THE SYSTEM (check for pause)
	;---------------------------------
	LD				A,(FIGHTSCN_PAUSE)
	CP				1
	JR				Z,_PAUSE_UPDATE
	CALL			?SYSTEM_UPDATE_GAME		; <-- total system update (sfx+graphics/animation+gamestates)
	RET
	
_PAUSE_UPDATE
	; FREEZE THE GAME + WAIT FOR VBLANK
	LD				A,%10000111
	LDFF_A			VBLANK_CONTROL
	CALL_FOREIGN	?SOUND_DETERMINE_SFUNC
	CALL			?SYSTEM_WAIT_VBLANK
	RET


;**************************************
; input:
; A = TOP/BOTTOM (0/1)
; D = SPEED
; E = FIGHTSCN_SCX
; output:
;(FIGHTSCN_BORDX0)
;(FIGHTSCN_BORDX1)
?SET_PARALLAX_SCX
	; based on the speed values 
	; the distance traveled will be SCX = SCX +/- (SCX/4 * speed) 	
	AND			A
	JR			NZ,?_SPS_BOTTOM

?_SPS_TOP	
	CALL		?PARALLAX_SCX_SHIFT			
	CALL		?PARALLAX_SCX_CALC
	LD			A,E
	ADD			A,L
	LD			(FIGHTSCN_BORDX0),A
	RET
	
?_SPS_BOTTOM
	CALL		?PARALLAX_SCX_SHIFT			
	CALL		?PARALLAX_SCX_CALC
	LD			A,E
	ADD			A,L
	LD			(FIGHTSCN_BORDX1),A
	RET



;*****************************************
;   input:
;   D	  ABS | speed |
;   C     base (i.e.: +/- (SCX/4)
;   output: HL
?PARALLAX_SCX_CALC
	LD		B,0
	LD		H,B
	LD		L,B
_LOOP	
	LD		A,D
	AND		A
	RET		Z
	ADD		HL,BC
	DEC		D
	JR		_LOOP

;*****************************************
;   input:
;   D	   speed
;   E      base SCX
;   output: 
;	C      base (i.e.: SCX/4) made pos/neg based on speed
;   D      ABS | speed |
?PARALLAX_SCX_SHIFT	
	;step 1 do we add /sub
	LD		A,D
	CP		0
	JR		C,_SHIFT_SUB
	LD		C,E
	SRA		C
	SRA		C
	RET
_SHIFT_SUB
	; make D positive now
	CPL		
	INC		A
	LD		D,A
	LD		A,E
	SRA		A
	SRA		A
	;make C negative
	CPL
	INC		A
	LD		C,A		
	RET
		
;--------------------------------------------------------------------------		
?TEST
	if 0
	;SET UP VARS FOR TILE DESTROY
	LD			A,8									;16 ;DEFAULT
	LD			(TILEFX_DESTROY_ITERATION_MAX),A
	LD			A,$FF
	LD			(TILEFX_DESTROY_ITERATION),A
	LD			A,$7A
	LD			(TILEFX_DESTROY_COUNT),A
	
	MOVADDR		TILEFX_DESTROY_BLANK_FUNC,?HBLANKFX_CREATURE_DISSOLVE_EVEN
	MOVADDR		TILEFX_DESTROY_TABLE_PTR,TILEFX_DESTROY_TABLE_FAST
	MOVADDR		TILEFX_DESTROY_DEST,$9000
	CALL_FOREIGN ?BTL_SETCREATURE1_ARENACOLOR
	LD			A,1
	LD			(TILEFX_DESTROY_DEST_BANK),A
	
	else
	
	;SET UP VARS FOR MOVING CREATURE1
	MOVADDR		MOVE_TABLE_PTR,FIGHTFX_RECOIL	;SINK
	LD			A,16*3								;48*3
	LD			(MOVE_DELTA_MAXINDEX),A
	XOR			A
	LD			(MOVE_DELTA_INDEX),A
	LD			(MOVE_DELAY_COUNT),A
	
	endif
	RET
;--------------------------------------------------------------------------	
			
;********************************
	END
;********************************