;********************************
; BATTLE_VBLANK.S
;********************************
;	Author:	Dylan "CRUSH!" Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?BATTLE_COPY_TILE

	PUSH_ROM_BANK
	SWITCH_ROM_BANK	MENU_GRAPHICS_BANK
	
	CALL	?VBLANK_COPY_TILE	
	
	POP_ROM_BANK	

	RET
	
;********************************	
?BATTLE_TOGGLE_VBLANK

	LD		HL,$9C05
	LD		D,7
	LD		B,$80
	
_LOOP
	LD		A,B
	ADD		A,(HL)
	LD		(HLI),A
	DEC		D
	JR		NZ,_LOOP

	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE
	RET
	

;********************************	
?BATTLE_PGLR_VBLANK

	XOR		A
	LD		(VBK),A
	
	PUSH_RAM_BANK
	SWITCH_RAM_BANK	WRAM_BATTLE

	LD		A,(BTL_MENU_VALID_SLOTS+5)
	AND		A
	JR		Z,_NO_LEFT
	LD		A,$0D
	JR		_LEFT_CONT
	
_NO_LEFT
	LD		A,$80
	
_LEFT_CONT
	LD		HL,$9C60
	LD		(HL),A
	LD		A,1
	LD		(VBK),A
	LD		A,%01001111
	LD		(HL),A
	
	XOR		A
	LD		(VBK),A

	LD		A,(BTL_MENU_VALID_SLOTS+6)
	AND		A
	JR		Z,_NO_RIGHT
	LD		A,$0D
	JR		_RIGHT_CONT
	
_NO_RIGHT
	LD		A,$80
	
_RIGHT_CONT
	LD		HL,$9C73
	LD		(HL),A	
	
	POP_RAM_BANK

	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE
	RET
	
;********************************	
BTL_DEFEND_STR		DB		"Defend",?HTRI,?VTRI

;********************************
	END
;********************************
