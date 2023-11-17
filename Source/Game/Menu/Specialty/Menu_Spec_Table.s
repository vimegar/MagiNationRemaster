;********************************
; MENU_SPEC_TABLE.S
;********************************
;	Author:	ExoByte
;	(c)2000	Interactive Imagination
;	All rights reserved

;*************************************
;X,Y,R,L,U,D,A,B

SPECIALITY_4_CHOICE_TABLE
	DB	05,14,02,02,03,01,MENU_A_SELECT,MENU_B_SELECT
	DB	05,16,03,03,00,02,MENU_A_SELECT,MENU_B_SELECT
	DB	12,14,00,00,01,03,MENU_A_SELECT,MENU_B_SELECT
	DB	12,16,01,01,02,00,MENU_A_SELECT,MENU_B_SELECT
	
RINGSMITH_CHOICE_TBL
	DB	08,01,01,04,04,01,MENU_A_SELECT,MENU_B_SELECT
	DB	01,02,02,00,00,02,MENU_A_SELECT,MENU_B_SELECT
	DB	01,05,03,01,01,03,MENU_A_SELECT,MENU_B_SELECT
	DB	01,08,04,02,02,04,MENU_A_SELECT,MENU_B_SELECT
	DB	08,11,00,03,03,00,MENU_A_SELECT,MENU_B_SELECT
;YES/NO
	DB	01,16,06,06,06,06,MENU_A_SELECT,MENU_B_SELECT
	DB	06,16,05,05,05,05,MENU_A_SELECT,MENU_B_SELECT
	
RINGBANK_CHOICE_TBL
	DB	08,01,01,08,08,01,MENU_A_SELECT,MENU_B_SELECT
	DB	01,03,02,00,00,02,MENU_A_SELECT,MENU_B_SELECT
	DB	01,04,03,01,01,03,MENU_A_SELECT,MENU_B_SELECT
	DB	01,05,04,02,02,04,MENU_A_SELECT,MENU_B_SELECT
	DB	01,06,05,03,03,05,MENU_A_SELECT,MENU_B_SELECT
;5
	DB	01,07,06,04,04,06,MENU_A_SELECT,MENU_B_SELECT
	DB	01,08,07,05,05,07,MENU_A_SELECT,MENU_B_SELECT
	DB	01,09,08,06,06,08,MENU_A_SELECT,MENU_B_SELECT
	DB	08,11,00,07,07,00,MENU_A_SELECT,MENU_B_SELECT	
;EQUIP/DESTROY  9/10
	DB	01,14,10,10,10,10,MENU_A_SELECT,MENU_B_SELECT	
	DB	11,14,09,09,09,09,MENU_A_SELECT,MENU_B_SELECT	
;DESTROY/CANCEL  11/12
	DB	01,16,12,12,12,12,MENU_A_SELECT,MENU_B_SELECT	
	DB	10,16,11,11,11,11,MENU_A_SELECT,MENU_B_SELECT	

;X,Y,R,L,U,D,A,B

MENU_SHOP_SEL_TBL

	DB	01,14,01,02,02,01,MENU_A_SELECT,MENU_B_SELECT	;LOWER MENU >SELL/ITEMS
	DB	01,15,02,00,00,02,MENU_A_SELECT,MENU_B_SELECT	;LOWER MENU >BUY/SPELLS
	DB	01,16,00,01,01,00,MENU_A_SELECT,MENU_B_SELECT	;LOWER MENU >DONE/RELICS

	DB	00,03,04,11,11,04,MENU_A_SELECT,MENU_B_SELECT	;ITEM #1
	DB	00,04,05,03,03,05,MENU_A_SELECT,MENU_B_SELECT	;ITEM #2
	DB	00,05,06,04,04,06,MENU_A_SELECT,MENU_B_SELECT	;ITEM #3
	DB	00,06,07,05,05,07,MENU_A_SELECT,MENU_B_SELECT	;ITEM #4
	DB	00,07,08,06,06,08,MENU_A_SELECT,MENU_B_SELECT	;ITEM #5
	DB	00,08,09,07,07,09,MENU_A_SELECT,MENU_B_SELECT	;ITEM #6
	DB	00,09,10,08,08,10,MENU_A_SELECT,MENU_B_SELECT	;ITEM #7
	DB	00,10,12,09,09,12,MENU_A_SELECT,MENU_B_SELECT	;ITEM #8


	DB	08,01,03,10,12,03,MENU_A_SELECT,MENU_B_SELECT	;GO LEFT
	DB	08,12,11,03,10,11,MENU_A_SELECT,MENU_B_SELECT	;GO RIGHT
	
	

;X,Y,R,L,U,D,A,B
MENU_HISTORIAN_SEL_TBL
MENU_MUSIC_SEL_TBL
MENU_RINGUP_SEL_TBL

	DB	01,14,13,13,02,01,MENU_A_SELECT,MENU_B_SELECT	;LOWER MENU >SELL/ITEMS
	DB	01,15,13,13,00,02,MENU_A_SELECT,MENU_B_SELECT	;LOWER MENU >BUY/SPELLS
	DB	01,16,13,13,01,00,MENU_A_SELECT,MENU_B_SELECT	;LOWER MENU >DONE/RELICS

	DB	01,03,04,11,11,04,MENU_A_SELECT,MENU_B_SELECT	;ITEM #1
	DB	01,04,05,03,03,05,MENU_A_SELECT,MENU_B_SELECT	;ITEM #2
	DB	01,05,06,04,04,06,MENU_A_SELECT,MENU_B_SELECT	;ITEM #3
	DB	01,06,07,05,05,07,MENU_A_SELECT,MENU_B_SELECT	;ITEM #4
	DB	01,07,08,06,06,08,MENU_A_SELECT,MENU_B_SELECT	;ITEM #5
	DB	01,08,09,07,07,09,MENU_A_SELECT,MENU_B_SELECT	;ITEM #6
	DB	01,09,10,08,08,10,MENU_A_SELECT,MENU_B_SELECT	;ITEM #7
	DB	01,10,12,09,09,12,MENU_A_SELECT,MENU_B_SELECT	;ITEM #8


	DB	08,01,03,10,12,03,MENU_A_SELECT,MENU_B_SELECT	;GO LEFT
	DB	08,12,11,03,10,11,MENU_A_SELECT,MENU_B_SELECT	;GO RIGHT
	
	DB	13,15,01,01,00,02,MENU_A_SELECT,MENU_B_SELECT	;LOWER MENU >DONE
	END
;********************************