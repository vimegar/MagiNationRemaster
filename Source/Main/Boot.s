;********************************
; BOOT.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	GLOBAL	?_MAIN

;********************************
?HARD_RESET

	AND				A				; $01:DMG(SGB),$FF:MGB(SGB2),$11:CGB
	CP				$11
	LD				A,$00			; Not CGB(0) (XOR A impossible since Zero-Flag changes.)
	JR				NZ,_NOT_CGB		; Jump on non-zero
	INC				A				; CGB(1)

_NOT_CGB 
	LD				(CGBFLAG),A		; Don't clear at SoftReset.

;********************************
?SOFT_RESET 
	STACK_INIT
	SCREEN_HIDE
	
	; CHECK IF SYSTEM IS CGB
	;--------------------------------
	LD				A,(CGBFLAG)
	AND				A
	JP				Z,?NOTCGB_MESSAGE

	; INIT REGISTERS
	;--------------------------------
	XOR				A
	LD				(RP),A
	LD				(RAMG),A
	LD				(ROMB1),A

	; INIT TIMER
	;--------------------------------
	LD				A,$BF			; 256-191=65 cycles
	LD				(TMA),A
	LD				A,$04
	LD				(TAC),A
	
	; SYSTEM SPEED AND DMA
	;--------------------------------
	XCALL			?SET_DOUBLE_SPEED
	XCALL			?DMASET
	
	JP				?GAME_INIT

;********************************
?GAME_INIT
	MEM_SET				$C000,STACK-$C000,$00
	SOUND_INIT
	SYSTEM_INIT
	
	XCALL		?LOAD_GAME
	
	MOVADDR_FF	SCRIPT_WSTATE,?SCRIPT_START
	LD			A,:?_MAIN
	LDFF_A		SCRIPT_WBANK
	MOVADDR		SCRIPT_WFRAME,?_MAIN
	
	JP			?CMD_SCENENEW

;********************************
	END
;********************************