;********************************
; MENU_RINGUP_LEVEL_COSTS.S
;********************************
;	Author:	Erik Hutchinson
;	(c)2000	Interactive Imagination
;	All rights reserved
;********************************

;********************************
?MENU_RINGUP_GET_COSTS
	
	FGET16	B,C,INV_ADDR
	FGET16	H,L,INV_OBJ_PTR
		
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI
	
	
	RET
	
	



MENU_RINGUP_LEVEL_COSTS
	DW	(00/2)	;Level 0 ....dummy
	DB	00 	;Level 0 ....dummy

	DW	(10/2)	;Level 1 animite cost	
	DB	3	;Level 1 infused animite cost

	DW	(20/2)	;Level 2 animite cost	
	DB	3	;Level 2 infused animite cost

	DW	(30/2)	;Level 3 animite cost	
	DB	3	;Level 3 infused animite cost

	DW	(40/2)	;Level 4 animite cost	
	DB	3	;Level 4 infused animite cost

	DW	(50/2)	;Level 5 animite cost	
	DB	3	;Level 5 infused animite cost

	DW	(60/2)	;Level 6 animite cost	
	DB	3	;Level 6 infused animite cost

	DW	(70/2)	;Level 7 animite cost	
	DB	3	;Level 7 infused animite cost

	DW	(80/2)	;Level 8 animite cost	
	DB	3	;Level 8 infused animite cost

	DW	(90/2)	;Level 9 animite cost	
	DB	3	;Level 9 infused animite cost

	DW	(100/2)	;Level 10 animite cost	
	DB	3	;Level 10 infused animite cost

	DW	(110/2)	;Level 11 animite cost	
	DB	3	;Level 11 infused animite cost

	DW	(120/2)	;Level 12 animite cost	
	DB	3	;Level 12 infused animite cost

	DW	(130/2)	;Level 13 animite cost	
	DB	3	;Level 13 infused animite cost

	DW	(140/2)	;Level 14 animite cost	
	DB	3	;Level 14 infused animite cost

	DW	(150/2)	;Level 15 animite cost	
	DB	3	;Level 15 infused animite cost
	
	DW	(160/2)	;Level 16 animite cost	
	DB	3	;Level 16 infused animite cost
	
	DW	(170/2)	;Level 17 animite cost	
	DB	3	;Level 17 infused animite cost
	
	DW	(180/2)	;Level 18 animite cost	
	DB	3	;Level 18 infused animite cost
	
	DW	(190/2)	;Level 19 animite cost	
	DB	4	;Level 19 infused animite cost
	
	DW	(200/2)	;Level 20 animite cost	
	DB	4	;Level 20 infused animite cost
	
	DW	(210/2)	;Level 21 animite cost	
	DB	4	;Level 21 infused animite cost
	
	DW	(220/2)	;Level 22 animite cost	
	DB	4	;Level 22 infused animite cost
	
	DW	(230/2)	;Level 23 animite cost	
	DB	4	;Level 23 infused animite cost
	
	DW	(240/2)	;Level 24 animite cost	
	DB	4	;Level 24 infused animite cost
	
	DW	(250/2)	;Level 25 animite cost	
	DB	4	;Level 25 infused animite cost
	
	DW	(260/2)	;Level 26 animite cost	
	DB	4	;Level 26 infused animite cost
	
	DW	(270/2)	;Level 27 animite cost	
	DB	4	;Level 27 infused animite cost
	
	DW	(280/2)	;Level 28 animite cost	
	DB	4	;Level 28 infused animite cost
	
	DW	(290/2)	;Level 29 animite cost	
	DB	4	;Level 29 infused animite cost
	
	DW	(300/2)	;Level 30 animite cost	
	DB	4	;Level 30 infused animite cost
	
	DW	(310/2)	;Level 31 animite cost	
	DB	4	;Level 31 infused animite cost
	
	DW	(320/2)	;Level 32 animite cost	
	DB	4	;Level 32 infused animite cost
	
	DW	(330/2)	;Level 33 animite cost	
	DB	4	;Level 33 infused animite cost
	
	DW	(340/2)	;Level 34 animite cost	
	DB	4	;Level 34 infused animite cost
	
	DW	(350/2)	;Level 35 animite cost	
	DB	4	;Level 35 infused animite cost
	
	DW	(360/2)	;Level 36 animite cost	
	DB	4	;Level 36 infused animite cost
	
	DW	(370/2)	;Level 37 animite cost	
	DB	4	;Level 37 infused animite cost
	
	DW	(380/2)	;Level 38 animite cost	
	DB	4	;Level 38 infused animite cost
	
	DW	(390/2)	;Level 39 animite cost	
	DB	5	;Level 39 infused animite cost
	
	DW	(400/2)	;Level 40 animite cost	
	DB	5	;Level 40 infused animite cost
	
	DW	(410/2)	;Level 41 animite cost	
	DB	5	;Level 41 infused animite cost
	
	DW	(420/2)	;Level 42 animite cost	
	DB	5	;Level 42 infused animite cost
	
	DW	(430/2)	;Level 43 animite cost	
	DB	5	;Level 43 infused animite cost
	
	DW	(440/2)	;Level 44 animite cost	
	DB	5	;Level 44 infused animite cost
	
	DW	(450/2)	;Level 45 animite cost	
	DB	5	;Level 45 infused animite cost
	
	DW	(460/2)	;Level 46 animite cost	
	DB	5	;Level 46 infused animite cost
	
	DW	(470/2)	;Level 47 animite cost	
	DB	5	;Level 47 infused animite cost
	
	DW	(480/2)	;Level 48 animite cost	
	DB	5	;Level 48 infused animite cost
	
	DW	(490/2)	;Level 49 animite cost	
	DB	5	;Level 49 infused animite cost
	
	DW	(500/2)	;Level 50 animite cost	
	DB	5	;Level 50 infused animite cost
	
	DW	(510/2)	;Level 51 animite cost	
	DB	5	;Level 51 infused animite cost
	
	DW	(520/2)	;Level 52 animite cost	
	DB	5	;Level 52 infused animite cost
	
	DW	(530/2)	;Level 53 animite cost	
	DB	5	;Level 53 infused animite cost
	
	DW	(540/2)	;Level 54 animite cost	
	DB	5	;Level 54 infused animite cost
	
	DW	(550/2)	;Level 55 animite cost	
	DB	5	;Level 55 infused animite cost
	
	DW	(560/2)	;Level 56 animite cost	
	DB	5	;Level 56 infused animite cost
	
	DW	(570/2)	;Level 57 animite cost	
	DB	5	;Level 57 infused animite cost
	
	DW	(580/2)	;Level 58 animite cost	
	DB	5	;Level 58 infused animite cost
	
	DW	(590/2)	;Level 59 animite cost	
	DB	6	;Level 59 infused animite cost
	
	DW	(600/2)	;Level 60 animite cost	
	DB	6	;Level 60 infused animite cost
	
	DW	(610/2)	;Level 61 animite cost	
	DB	6	;Level 61 infused animite cost
	
	DW	(620/2)	;Level 62 animite cost	
	DB	6	;Level 62 infused animite cost
	
	DW	(630/2)	;Level 63 animite cost	
	DB	6	;Level 63 infused animite cost
	
	DW	(640/2)	;Level 64 animite cost	
	DB	6	;Level 64 infused animite cost
	
	DW	(650/2)	;Level 65 animite cost	
	DB	6	;Level 65 infused animite cost
	
	DW	(660/2)	;Level 66 animite cost	
	DB	6	;Level 66 infused animite cost
	
	DW	(670/2)	;Level 67 animite cost	
	DB	6	;Level 67 infused animite cost
	
	DW	(680/2)	;Level 68 animite cost	
	DB	6	;Level 68 infused animite cost
	
	DW	(690/2)	;Level 69 animite cost	
	DB	6	;Level 69 infused animite cost
	
	DW	(700/2)	;Level 70 animite cost	
	DB	6	;Level 70 infused animite cost
	
	DW	(710/2)	;Level 71 animite cost	
	DB	6	;Level 71 infused animite cost
	
	DW	(720/2)	;Level 72 animite cost	
	DB	6	;Level 72 infused animite cost
	
	DW	(730/2)	;Level 73 animite cost	
	DB	6	;Level 73 infused animite cost
	
	DW	(740/2)	;Level 74 animite cost	
	DB	6	;Level 74 infused animite cost
	
	DW	(750/2)	;Level 75 animite cost	
	DB	6	;Level 75 infused animite cost
	
	DW	(760/2)	;Level 76 animite cost	
	DB	6	;Level 76 infused animite cost
	
	DW	(770/2)	;Level 77 animite cost	
	DB	6	;Level 77 infused animite cost
	
	DW	(780/2)	;Level 78 animite cost	
	DB	6	;Level 78 infused animite cost
	
	DW	(790/2)	;Level 79 animite cost	
	DB	7	;Level 79 infused animite cost
	
	DW	(800/2)	;Level 80 animite cost	
	DB	7	;Level 80 infused animite cost
	
	DW	(810/2)	;Level 81 animite cost	
	DB	7	;Level 81 infused animite cost
	
	DW	(820/2)	;Level 82 animite cost	
	DB	7	;Level 82 infused animite cost
	
	DW	(830/2)	;Level 83 animite cost	
	DB	7	;Level 83 infused animite cost
	
	DW	(840/2)	;Level 84 animite cost	
	DB	7	;Level 84 infused animite cost
	
	DW	(850/2)	;Level 85 animite cost	
	DB	7	;Level 85 infused animite cost
	
	DW	(860/2)	;Level 86 animite cost	
	DB	7	;Level 86 infused animite cost
	
	DW	(870/2)	;Level 87 animite cost	
	DB	7	;Level 87 infused animite cost
	
	DW	(880/2)	;Level 88 animite cost	
	DB	7	;Level 88 infused animite cost
	
	DW	(890/2)	;Level 89 animite cost	
	DB	7	;Level 89 infused animite cost
	
	DW	(900/2)	;Level 90 animite cost	
	DB	7	;Level 90 infused animite cost
	
	DW	(910/2)	;Level 91 animite cost	
	DB	7	;Level 91 infused animite cost
	
	DW	(920/2)	;Level 92 animite cost	
	DB	7	;Level 92 infused animite cost
	
	DW	(930/2)	;Level 93 animite cost	
	DB	7	;Level 93 infused animite cost
	
	DW	(940/2)	;Level 94 animite cost	
	DB	7	;Level 94 infused animite cost
	
	DW	(950/2)	;Level 95 animite cost	
	DB	7	;Level 95 infused animite cost
	
	DW	(960/2)	;Level 96 animite cost	
	DB	7	;Level 96 infused animite cost
	
	DW	(970/2)	;Level 97 animite cost	
	DB	7	;Level 97 infused animite cost
	
	DW	(980/2)	;Level 98 animite cost	
	DB	7	;Level 98 infused animite cost

