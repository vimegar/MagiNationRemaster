;********************************
; SCRIPT_00_PALFX.S
;********************************
;	Author:	Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************	
?GET_DELAY_FRAMECOUNT
	; save the cursor 
	SET16	B,C,SCRIPT_WFRAME	
	; get delay_framecount
	CALL	?GET_FRAMECOUNT	
	CALL	?GET_FRAMEDELAY
	DEC		BC   						;RESET THE CURSOR BACK
	RET
	
;********************************	
?GET_FRAMECOUNT	
	;note "?GET_FRAMECOUNT" doesn't advance the pointer	
	LD		A,(BC)
	AND		FRAMECOUNT_MASK
	LDFF_A	SCRIPT_WCOUNT+$01			; this represents the number of times to the delay
	RET	
;********************************	
?GET_FRAMEDELAY
	; get delay
	LD		A,(BC)
	AND		DELAY_MASK
	SWAP	A
	RRA
	RRA		
	INC		A							; we dec to start so zero becomes(1-1=0 "delay")
	LDFF_A	SCRIPT_WCOUNT   			; upper 2bits equal the delay
	INC		BC
	RET

;********************************	
?GET_COLOR_VALUE
	; store color 
	LD		A,(BC)
	INC		BC
	LD		(TEMP_MISC3),A
	LD		A,(BC)
	INC		BC
	LD		(TEMP_MISC3+1),A
	; CHECK HI BIT IF SO USE ARENA_COLOR
	BIT		7,A
	RET		Z
	LD		A,(ARENA_COLOR)
	LD		(TEMP_MISC3),A
	LD		A,(ARENA_COLOR+1)
	LD		(TEMP_MISC3+1),A
	RET
	
;********************************	
?GET_PALETTE_BASE_AND_COUNT
	LD		A,(BC)
	LD		(TEMP_MISC1),A
	INC		BC
	RET
	
;********************************		
?INIT_CMD_CLEAR
	CALL	?GET_PALETTE_BASE_AND_COUNT
	CALL	?GET_COLOR_VALUE
	SET16	B,C,SCRIPT_WFRAME
	RET
	
;********************************	
?UPDATE_VBLANK_AND_SCRIPT_COUNT
	; set the VBLANK to update the palette
	LD		A,:?VBLANK_UPDATE_PALETTES
	LD		(VBLANK_BANK),A
	MOVADDR		VBLANK_FUNC,?VBLANK_UPDATE_PALETTES
	
	; do counter
	LDA_FF	SCRIPT_WCOUNT+$01
	DEC		A
	JR		Z,_DONE
	LDFF_A	SCRIPT_WCOUNT+$01
	RET
_DONE
	TEXTBOX_RESUME
	SET16	B,C,SCRIPT_WFRAME
	MOVADDR	SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET

;********************************
; we fade the arena's anim pal to a color
?CMD_PALARENAFADEANIM       ;delay+framecount 1 byte, 2byte color
	; set this script's state to return to this function's loop label
	MOVADDR	SCRIPT_WSTATE,_LOOP
	; init the counters
	CALL	?GET_DELAY_FRAMECOUNT
	
_LOOP
	; check the delay
	LDA_FF	SCRIPT_WCOUNT
	DEC		A
	LDFF_A	SCRIPT_WCOUNT
	RET		NZ
	
	;restore the delay into "SCRIPT_WCOUNT"
	CALL	?GET_FRAMEDELAY

	; store color 
	CALL	?GET_COLOR_VALUE
	
	; set speed
	LD		A,1
	LD		(TEMP_MISC4),A
	PUSH	BC
	XCALL	?BTL_FADE_ARENA_ANIM_PAL
	POP		BC
	JP		?UPDATE_VBLANK_AND_SCRIPT_COUNT
	
;********************************
; we fade the arena to its base -- this is anim pal
?CMD_PALARENAFADEBASE       ;delay+framecount 1 byte
	; set this script's state to return to this function's loop label
	MOVADDR	SCRIPT_WSTATE,_LOOP
	; init the counters
	CALL	?GET_DELAY_FRAMECOUNT
	
_LOOP
	; check the delay
	LDA_FF	SCRIPT_WCOUNT
	DEC		A
	LDFF_A	SCRIPT_WCOUNT
	RET		NZ
	
	;restore the delay into "SCRIPT_WCOUNT"
	CALL	?GET_FRAMEDELAY
	
	; set speed
	LD		A,1
	LD		(TEMP_MISC4),A
	PUSH	BC
	XCALL	?BTL_FADE_ARENA_BASE_PAL
	POP		BC
	JP		?UPDATE_VBLANK_AND_SCRIPT_COUNT
				
;********************************
; we set base to a color
; base always, palette number(0..15),how many palette(0..15) = 1byte, 2byte = color to set
?CMD_PALCLEARBASE
	CALL	?INIT_CMD_CLEAR
	XCALL	?PALFX_CLEAR_BASEBUFFER
	MOVADDR	SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET
	
;********************************
; we set base to a color
; anim always, palette number(0..15),how many palette(0..15) = 1byte, 2byte = color to set
?CMD_PALCLEARANIM
	CALL	?INIT_CMD_CLEAR
	XCALL	?PALFX_CLEAR_ANIMBUFFER
	; set the VBLANK to update the palette
	LD		A,:?VBLANK_UPDATE_PALETTES
	LD		(VBLANK_BANK),A
	MOVADDR	VBLANK_FUNC,?VBLANK_UPDATE_PALETTES
	MOVADDR	SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET

		
;********************************
; we cycle the creatures palette -- this is anim pal
?CMD_PALCREATURECYCLE     ;delay+framecount 1 byte, creature side
	; set this script's state to return to this function's loop label
	MOVADDR	SCRIPT_WSTATE,_LOOP
	; init the counters
	CALL	?GET_DELAY_FRAMECOUNT
	
_LOOP
	; check the delay
	LDA_FF	SCRIPT_WCOUNT
	DEC		A
	LDFF_A	SCRIPT_WCOUNT
	RET		NZ
	
	;restore the delay into "SCRIPT_WCOUNT"
	CALL	?GET_FRAMEDELAY

	; get creature side
	LD		A,(BC)
	INC		BC
	LD		(TEMP_MISC2),A
	
	PUSH	BC
	XCALL	?BTL_CYCLE_CREATURE_PAL	
	POP		BC
	JP		?UPDATE_VBLANK_AND_SCRIPT_COUNT
	
;********************************
; we fade a creature to a color -- this is anim pal
?CMD_PALCREATUREFADE       ;delay+framecount 1 byte, color 2byte, creature01 1 byte
	; set this script's state to return to this function's loop label
	MOVADDR	SCRIPT_WSTATE,_LOOP
	; init the counters
	CALL	?GET_DELAY_FRAMECOUNT
	
_LOOP
	; check the delay
	LDA_FF	SCRIPT_WCOUNT
	DEC		A
	LDFF_A	SCRIPT_WCOUNT
	RET		NZ
	
	;restore the delay into "SCRIPT_WCOUNT"
	CALL	?GET_FRAMEDELAY

	; store color 
	CALL	?GET_COLOR_VALUE
	; store creature
	LD		A,(BC)
	INC		BC
	LD		(TEMP_MISC2),A
	; set speed
	LD		A,1
	LD		(TEMP_MISC4),A
	PUSH	BC
	XCALL	?BTL_FADE_CREATURE_PAL
	POP		BC
	JP		?UPDATE_VBLANK_AND_SCRIPT_COUNT
		
;********************************
; we fade a creature to its base -- this is anim pal
?CMD_PALCREATUREFADEBASE       ;delay+framecount 1 byte, creature01 1 byte
	; set this script's state to return to this function's loop label
	MOVADDR	SCRIPT_WSTATE,_LOOP
	; init the counters
	CALL	?GET_DELAY_FRAMECOUNT
	
_LOOP
	; check the delay
	LDA_FF	SCRIPT_WCOUNT
	DEC		A
	LDFF_A	SCRIPT_WCOUNT
	RET		NZ
	
	;restore the delay into "SCRIPT_WCOUNT"
	CALL	?GET_FRAMEDELAY

	; store creature
	LD		A,(BC)
	INC		BC
	LD		(TEMP_MISC2),A
	; set speed
	LD		A,1
	LD		(TEMP_MISC4),A
	PUSH	BC
	XCALL	?BTL_FADE_CREATURE_BASE_PAL
	POP		BC
	JP		?UPDATE_VBLANK_AND_SCRIPT_COUNT
		
	
;********************************
; we load a palette into creature (base)
?CMD_PALCREATURELOAD      ; palette file bank, palette file address, creature
	; store file address 
	LD		A,(BC)
	INC		BC
	LD		(TEMP_PALETTE),A
	LD		A,(BC)
	INC		BC
	LD		(TEMP_PALETTE+1),A
	; store bank
	LD		A,(BC)
	INC		BC
	LD		(TEMP_PAL_BANK),A
	; store creature
	LD		A,(BC)
	INC		BC
	LD		(TEMP_MISC2),A
	SET16	B,C,SCRIPT_WFRAME
	XCALL	?BTL_SET_CREATURE_PAL
	MOVADDR	SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET

;********************************
; we swap the creatures RGB components
?CMD_PALCREATUREFLASH     ;delay+framecount, combo_swap, creature
	
	; set this script's state to return to this function's loop label
	MOVADDR	SCRIPT_WSTATE,_LOOP
	; init the counters
	CALL	?GET_DELAY_FRAMECOUNT
	
_LOOP
	; check the delay
	LDA_FF	SCRIPT_WCOUNT
	DEC		A
	LDFF_A	SCRIPT_WCOUNT
	RET		NZ
	
	;restore the delay into "SCRIPT_WCOUNT"
	CALL	?GET_FRAMEDELAY

	; store comboswap
	LD		A,(BC)
	INC		BC
	LD		(TEMP_MISC1),A
	; store creature
	LD		A,(BC)
	INC		BC
	LD		(TEMP_MISC2),A
	PUSH	BC
	XCALL	?BTL_SWAP_CREATURE_PALETTE
	POP		BC
	JP		?UPDATE_VBLANK_AND_SCRIPT_COUNT
	

;********************************
; XOR'S THE CREATURE'S COLORS .. LIKE USING SET COLOR . INSTANT
?CMD_PALCREATUREXOR	    ; creature
	
	; get which creature
	LD		A,(BC)
	LD		(TEMP_MISC2),A
	INC		BC
	SET16	B,C,SCRIPT_WFRAME
	
	XCALL	?BTL_XOR_CREATURE_PALETTE
	
	; set the VBLANK to update the palette
	LD		A,:?VBLANK_UPDATE_PALETTES
	LD		(VBLANK_BANK),A
	MOVADDR	VBLANK_FUNC,?VBLANK_UPDATE_PALETTES
	MOVADDR	SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET
	
;********************************
; we cycle the anim palette 
?CMD_PALCYCLE     ;delay+framecount 1 byte, palette pack, palette pack, cycle type
	TEXTBOX_HALT
	
	; set this script's state to return to this function's loop label
	MOVADDR	SCRIPT_WSTATE,_LOOP
	; init the counters
	CALL	?GET_DELAY_FRAMECOUNT
	
_LOOP
	; check the delay
	LDA_FF	SCRIPT_WCOUNT
	DEC		A
	LDFF_A	SCRIPT_WCOUNT
	RET		NZ
	
	;restore the delay into "SCRIPT_WCOUNT"
	CALL	?GET_FRAMEDELAY
	; store PALETTE OFFSET AND CYCLE TYPE 
	CALL	?GET_PALETTE_BASE_AND_COUNT
	; store the cycle type
	LD		A,(BC)
	LD		(TEMP_MISC2),A
	INC		BC
	PUSH	BC
	XCALL	?PALFX_CYCLE_PALETTE
	POP		BC
	JP		?UPDATE_VBLANK_AND_SCRIPT_COUNT
	
	
;********************************
; we can fade to a buffer 
			  ;delay+framecount, palette_reference
?CMD_PALFADE  ;anim -> base always, palette number(0..15),how many palette(0..15) = 1byte
	TEXTBOX_HALT

	; set this script's state to return to this function's loop label
	MOVADDR	SCRIPT_WSTATE,_LOOP
	; init the counters
	CALL	?GET_DELAY_FRAMECOUNT	
_LOOP
	; check the delay
	LDA_FF	SCRIPT_WCOUNT
	DEC		A
	LDFF_A	SCRIPT_WCOUNT
	RET		NZ
	
	;restore the delay into "SCRIPT_WCOUNT"
	CALL	?GET_FRAMEDELAY
	; store PALETTE BASE 
	CALL	?GET_PALETTE_BASE_AND_COUNT
	; set speed
	LD		A,1
	LD		(TEMP_MISC4),A
	PUSH	BC
	XCALL	?PALFX_FADE_ANIM_TO_BASE	
	POP		BC
	JP		?UPDATE_VBLANK_AND_SCRIPT_COUNT
	

;********************************
; we can fade to a color (base is unaffected) 
			  ;delay+framecount, palette_reference
?CMD_PALFADEANIM  ;anim ->COLOR, palette number(0..15),how many palette(0..15) = 1byte
	TEXTBOX_HALT

	; set this script's state to return to this function's loop label
	MOVADDR	SCRIPT_WSTATE,_LOOP
	; init the counters
	CALL	?GET_DELAY_FRAMECOUNT	
_LOOP
	; check the delay
	LDA_FF	SCRIPT_WCOUNT
	DEC		A
	LDFF_A	SCRIPT_WCOUNT
	RET		NZ
	
	;restore the delay into "SCRIPT_WCOUNT"
	CALL	?GET_FRAMEDELAY
	; store PALETTE BASE 
	CALL	?GET_PALETTE_BASE_AND_COUNT
	; store color 
	CALL	?GET_COLOR_VALUE
	; set speed
	LD		A,1
	LD		(TEMP_MISC4),A
	PUSH	BC
	XCALL	?PALFX_FADE_ANIM_TO_COLOR	
	POP		BC
	JP		?UPDATE_VBLANK_AND_SCRIPT_COUNT
	
		
	
;********************************
; loads the palette file to a buffer you specify
; base always, palette number(0..15),how many palette(0..15) = 1byte
?CMD_PALLOAD   ; palette file bank, palette file address, basepal
	; store file address 
	LD		A,(BC)
	INC		BC
	LD		(TEMP_PALETTE),A
	LD		A,(BC)
	INC		BC
	LD		(TEMP_PALETTE+1),A
	
	; store bank
	LD		A,(BC)
	INC		BC
	LD		(TEMP_PAL_BANK),A
	CALL	?GET_PALETTE_BASE_AND_COUNT
	SET16	B,C,SCRIPT_WFRAME
	
	;********************************
	; do the file load right here
	;********************************
	; HL:	RAM buffer base address 
	; BC:   ROM data   base address
	;  E: 	"color" offset in RAM!   
	;  A:   number of colors to copy
	;********************************
		
	XCALL	?DECODE_PALNIBBLE
	; switch the rom bank
	PUSH_ROM_BANK
	SWITCH_ROM_BANK	(TEMP_PAL_BANK)
	GET16	H,L,TEMP_MISC3
	GET16	B,C,TEMP_PALETTE
	LD		E,0
	LD		A,(TEMP_MISC2)
	CALL	?UNPACK_PALETTE_RAM
	POP_ROM_BANK	
	MOVADDR	SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET
	
;********************************
; copies the base to the anim 
?CMD_PALREFRESH ;base 2 anim always, palette number(0..15),how many palette(0..15) = 1byte
	CALL	?GET_PALETTE_BASE_AND_COUNT
	SET16	B,C,SCRIPT_WFRAME
	
	XCALL	?PALFX_REFRESH_ANIMBUFFER
	; set the VBLANK to update the palette
	LD		A,:?VBLANK_UPDATE_PALETTES
	LD		(VBLANK_BANK),A
	MOVADDR	VBLANK_FUNC,?VBLANK_UPDATE_PALETTES
	MOVADDR	SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET
	
;********************************
; we XOR to get negative palette
; anim always, palette number(0..15),how many palette(0..15) = 1byte
?CMD_PALXOR
	CALL	?GET_PALETTE_BASE_AND_COUNT
	SET16	B,C,SCRIPT_WFRAME
	
	XCALL	?PALFX_XOR_PALETTE
	; set the VBLANK to update the palette
	LD		A,:?VBLANK_UPDATE_PALETTES
	LD		(VBLANK_BANK),A
	MOVADDR	VBLANK_FUNC,?VBLANK_UPDATE_PALETTES
	MOVADDR	SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET
	
;********************************
	END
;********************************