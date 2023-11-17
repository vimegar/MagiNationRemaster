;********************************
; GAMELOOP.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\MAIN\NOTCGB.S

;********************************
?GAME_LOOP_INIT
?GAME_LOOP

	;XCALL		?SOUND_TEST

	LDA_FF	TICKER
	INC		A
	LDFF_A	TICKER

	LD			A,(CNTDOWN)
	BIT			BitStart,A
	JR			Z,_CONT
	XCALL		?MAIN_MENU_OPEN
	
	
_CONT
	CALL	?SYSTEM_UPDATE_GAME
	JP		?GAME_LOOP

;********************************
	END
;********************************