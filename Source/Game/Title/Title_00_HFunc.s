;********************************
; TITLE_00_HFUNC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
?TITLE_HFUNC1

	; SET BORDER1 X AND Y
	;--------------------------------
	LD			A,(FIGHTSCN_BORDSPD0)
	LD			E,A
	;INC			E
	LD			A,(FIGHTSCN_BORDX0)
	ADD			A,E
	LD			(FIGHTSCN_BORDX0),A
	LDFF_A	SCX
	LD		A,TITLE_BORDY1					;go to top of screen
	LDFF_A	SCY


	; SET LY TO FIGHTSCN_LYC2
	;--------------------------------
	LD		A,TITLE_LYC2
	LDFF_A	LYC
		
	; SET HFUNC TO ?TITLE_HFUNC2
	;--------------------------------
	LD		A,?TITLE_HFUNC2&$00FF
	LDFF_A	HFUNC
	LD		A,(?TITLE_HFUNC2>>$08)&$00FF
	LDFF_A	HFUNC+$01
	
	POP		HL
	POP		AF
	RETI
	
;********************************
?TITLE_HFUNC2

	; SET BORDER1 X AND Y
	;--------------------------------
	LD			A,(FIGHTSCN_BORDSPD1)
	LD			E,A
	;INC			E
	LD			A,(FIGHTSCN_BORDX1)
	ADD			A,E
	LD			(FIGHTSCN_BORDX1),A
	LDFF_A	SCX
	LD		A,TITLE_BORDY1
	LDFF_A	SCY

	POP		HL
	POP		AF
	RETI

;********************************
	END
;********************************