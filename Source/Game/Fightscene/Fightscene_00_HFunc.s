;********************************
; FIGHTSCENE_00_HFUNC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?FIGHTSCN_HFUNC0

	; SHOW WINDOW
	;--------------------------------
	LD		A,(FIGHTSCN_WX)
	LDFF_A	WX

	; SET SCX AND SCY
	;--------------------------------
	LD		A,(FIGHTSCN_SCX)
	LDFF_A	SCX
	LD		A,(FIGHTSCN_SCY)
	LDFF_A	SCY

	; SET LY TO FIGHTSCN_LYC1
	;--------------------------------
	LD		A,FIGHTSCN_LYC1
	LDFF_A	LYC
		
	; SET HFUNC TO ?FIGHTSCN_HFUNC1
	;--------------------------------
	LD		A,?FIGHTSCN_HFUNC1&$00FF
	LDFF_A	HFUNC
	LD		A,(?FIGHTSCN_HFUNC1>>$08)&$00FF
	LDFF_A	HFUNC+$01

	; THIS IS FUNC_PTR IS SET WHEN WE DISSOLVE A CREATURE (its is idle otherwise) 
	PUSH_ROM_BANK
	SWITCH_ROM_BANK		:TILEFX_DESTROY_TABLE_DEFAULT	
	FGET16	H,L,TILEFX_DESTROY_BLANK_FUNC
	CALL_HL
	POP_ROM_BANK
	
	POP		HL
	POP		AF
	RETI

;********************************
?FIGHTSCN_HFUNC1

	; HIDE WINDOW
	;--------------------------------
	LD			A,$A7
	LDFF_A		WX

	; SET BORDER1 X AND Y
	;--------------------------------
	LD		A,(FIGHTSCN_BORDX1)
	LDFF_A	SCX
	LD		A,FIGHTSCN_BORDY1
	LDFF_A	SCY

	POP		HL
	POP		AF
	RETI

;********************************
	END
;********************************