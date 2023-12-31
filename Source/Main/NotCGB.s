;********************************
; NOTCGB.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved
;********************************


NCGB_STR1	DB	?MU,?AL,?GL,?IL,?DASH,?NU,?AL,?TL,?IL,?OL,?NL,?SPCE,?IL,?SL,?SPCE,?SPCE,?SPCE,?SU,?PL,?EL,?CL,?IL,?AL,?LL,?LL,?YL,?SPCE,?DU,?EL,?SL,?IL,?GL,?NL,?EL,?DL,?SPCE
			DB	?FL,?OL,?RL,?SPCE,?GU,?AL,?ML,?EL,?SPCE,?BU,?OL,?YL,?SPCE,?CU,?OL,?LL,?OL,?RL,?PERD
			DB	?PU,?LL,?EL,?AL,?SL,?EL,?SPCE,?UL,?SL,?EL,?SPCE,?AL,?SPCE,?GU,?AL,?ML,?EL,?SPCE,?BU,?OL,?YL,?SPCE,?CU,?OL,?LL,?OL,?RL
			DB	?SPCE,?TU,?OL,?SPCE,?SPCE,?PU,?LL,?AL,?YL,?SPCE,?TU,?HL,?IL,?SL,?SPCE,?GU,?AL,?ML,?EL,?PERD,?SPCE,?SPCE,?SPCE


NCGB1		EQU		16
NCGB2		EQU		18
NCGB3		EQU		20
NCGB4		EQU		13
NCGB5		EQU		19
NCGB6		EQU		18

NCGB_VRAM1	EQU		$86
NCGB_VRAM2	EQU		$97
NCGB_VRAM3	EQU		$A9
NCGB_VRAM4	EQU		$BD
NCGB_VRAM5	EQU		$C9
NCGB_VRAM6	EQU		$DC

NCGB_BG1	EQU		$9C22
NCGB_BG2	EQU		$9C81
NCGB_BG3	EQU		$9CE0
NCGB_BG4	EQU		$9D44
NCGB_BG5	EQU		$9DA1
NCGB_BG6	EQU		$9E01

?NOTCGB_MESSAGE
	CALL	?NCGMB_TEST

_FOREVER
	JP		_FOREVER
	
	
?NCGMB_TEST
;//EXO
;	LD		HL,$9C00
;	LD		DE,$233
;	
;	
;_EXO_CLEAR_LOOP
;	XOR		A
;	LD		(HLI),A
;	DEC16_LOOP	D,E,_EXO_CLEAR_LOOP
;	
;//EXOEND

	LD		A,$06
	SWITCH_ROM_BANK		A
	LD		A,$00
	LD		HL,$8860
_LOOP
	PUSH	AF
	PUSH	HL
	
	LD		HL,NCGB_STR1
	LD		C,A
	LD		B,$00
	ADD		HL,BC
	LD		C,(HL)	
	LD		B,$10
	CALL	?MULT
	LD		A,1
	LD		(VBLANK_VBK),A
	LD		BC,BIT_FONT
	ADD		HL,BC
	SET16	H,L,VBLANK_SOURCE
	POP		DE
	SET16	D,E,VBLANK_DEST
	PUSH	DE
	LD		E,MENU_GRAPHICS_BANK
	LD		HL,?VBLANK_COPY_TILE
	CALL	?CALL_FOREIGN

	POP		HL
	LD		BC,$10
	ADD		HL,BC
	POP		AF
	INC		A
	CP		$6B
	JR		NZ,_LOOP	

	LD		B,NCGB1
	LD		A,NCGB_VRAM1
	LD		HL,NCGB_BG1	
	CALL	?NCGB_PLACE_BG
	
	LD		B,NCGB2
	LD		A,NCGB_VRAM2
	LD		HL,NCGB_BG2	
	CALL	?NCGB_PLACE_BG

	LD		B,NCGB3
	LD		A,NCGB_VRAM3
	LD		HL,NCGB_BG3
	CALL	?NCGB_PLACE_BG
	
	LD		B,NCGB4
	LD		A,NCGB_VRAM4
	LD		HL,NCGB_BG4
	CALL	?NCGB_PLACE_BG
	
	LD		B,NCGB5
	LD		A,NCGB_VRAM5
	LD		HL,NCGB_BG5
	CALL	?NCGB_PLACE_BG
	
	LD		B,NCGB6
	LD		A,NCGB_VRAM6
	LD		HL,NCGB_BG6
	CALL	?NCGB_PLACE_BG

	XOR		A
	LD		(IF),A
	LD		(VBLANK_CONTROL),A
	LD		A,%00000011	; Enable hblank, vblank
	LD		(IE),A
;	LD		A,%11100011
	LD		A,%11100001
	LD		(LCDC),A		
	
;//EXO
	XOR		A
	LD		(IE),A
;//EXOEND
	
			
	RET

?NCGB_PLACE_BG
	LD		(HLI),A
	INC		A
	DEC		B
	JR		NZ,?NCGB_PLACE_BG
	RET

;********************************
	END
;********************************


