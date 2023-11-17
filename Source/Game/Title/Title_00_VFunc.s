;********************************
; TITLE_00_VFUNC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?VBLANK_HANDLER_TITLESCENE

	LDA_FF			VBLANK_CONTROL
	BIT				$00,A
	JR				Z,_SKIP_GFX

	LD				A,%11100011
	LD				(LCDC),A
	CALL			DMASUB				; DMA transfer
	
	; HIDE WINDOW
	;--------------------------------
	LD			A,$A7   
	LDFF_A		WX
	
	; SET SCX AND SCY
	;--------------------------------
	XOR		A
	LDFF_A	SCX
	LD		A,TITLE_SCY					;mAGI nATION OFFSET
	LDFF_A	SCY

	; SET LY TO TITLE_LYC1				;wait till next 10 tiles down
	;--------------------------------
	LD		A,TITLE_LYC1
	LDFF_A	LYC
	
_SKIP_GFX
	LDA_FF			VBLANK_CONTROL
	BIT				$01,A
	JR				Z,_SKIP_VFUNC

	LD				A,(VBLANK_BANK)
	LD				(ROMB0),A
	GET16			H,L,VBLANK_FUNC		; FX VBlank for Palettes and GFX
	CALL_HL
_SKIP_VFUNC

	SOUND_VBLANK
		
	; SET HFUNC TO ?FIGHTSCN_HFUNC0
	;--------------------------------
	LD			A,?TITLE_HFUNC1&$00FF 
	LDFF_A		HFUNC
	LD			A,(?TITLE_HFUNC1>>$08)&$00FF
	LDFF_A		HFUNC+$01

	RET


;********************************
	END
;********************************