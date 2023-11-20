;********************************
; SPR_OLDLADY03.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?OLDLADY03_STAND_RIGHT
	DB	$F0,	$F8,	$00,	$03
	DB	$F0,	$00,	$01,	$03
	DB	$F8,	$F8,	$04,	$03
	DB	$F8,	$00,	$05,	$03
	DB	$00,	$F8,	$08,	$03
	DB	$00,	$00,	$09,	$03
	DB	$80

;********************************
?OLDLADY03_STAND_LEFT
	DB	$F0,	$00,	$00,	$23
	DB	$F0,	$F8,	$01,	$23
	DB	$F8,	$00,	$04,	$23
	DB	$F8,	$F8,	$05,	$23
	DB	$00,	$00,	$08,	$23
	DB	$00,	$F8,	$09,	$23
	DB	$80

;********************************
?OLDLADY03_STAND_BACKRIGHT
	DB	$F0,	$F8,	$0C,	$03
	DB	$F0,	$00,	$0D,	$03
	DB	$F8,	$00,	$10,	$03
	DB	$F8,	$F8,	$0F,	$03
	DB	$00,	$FE,	$12,	$03
	DB	$80

;********************************
?OLDLADY03_STAND_BACKLEFT
	DB	$F0,	$00,	$0C,	$23
	DB	$F0,	$F8,	$0D,	$23
	DB	$F8,	$F8,	$10,	$23
	DB	$F8,	$00,	$0F,	$23
	DB	$00,	$FA,	$12,	$23
	DB	$80

;********************************
?OLDLADY03_WALK01_FRONT
	DB	$F1,	$F8,	$02,	$03
	DB	$F1,	$00,	$03,	$03
	DB	$F8,	$F8,	$15,	$03
	DB	$F8,	$00,	$16,	$03
	DB	$00,	$FC,	$17,	$03
	DB	$80

;********************************
?OLDLADY03_WALK02_FRONT
	DB	$F8,	$F8,	$06,	$03
	DB	$F8,	$00,	$07,	$03
	DB	$00,	$F9,	$0A,	$23
	DB	$00,	$00,	$0A,	$03
	DB	$F0,	$F8,	$02,	$03
	DB	$F0,	$00,	$03,	$03
	DB	$80

;********************************
?OLDLADY03_WALK03_FRONT
	DB	$F1,	$F8,	$02,	$03
	DB	$F1,	$00,	$03,	$03
	DB	$00,	$FC,	$17,	$23
	DB	$F8,	$F8,	$15,	$03
	DB	$F8,	$00,	$16,	$03
	DB	$80

;********************************
?OLDLADY03_WALK01_BACK
	DB	$F1,	$F8,	$0B,	$23
	DB	$F1,	$00,	$0B,	$03
	DB	$00,	$FC,	$1A,	$03
	DB	$F8,	$F8,	$18,	$03
	DB	$F8,	$00,	$19,	$03
	DB	$80

;********************************
?OLDLADY03_WALK02_BACK
	DB	$F0,	$F8,	$0B,	$23
	DB	$F0,	$00,	$0B,	$03
	DB	$F8,	$F8,	$0E,	$23
	DB	$F8,	$00,	$0E,	$03
	DB	$00,	$F8,	$11,	$23
	DB	$00,	$00,	$11,	$03
	DB	$80

;********************************
?OLDLADY03_WALK03_BACK
	DB	$F1,	$F8,	$0B,	$23
	DB	$F1,	$00,	$0B,	$03
	DB	$00,	$FC,	$1A,	$23
	DB	$F8,	$00,	$18,	$23
	DB	$F8,	$F8,	$19,	$23
	DB	$80

;********************************
?OLDLADY03_WALK01_RIGHT
	DB	$F1,	$F8,	$1B,	$03
	DB	$F1,	$00,	$1C,	$03
	DB	$F8,	$F8,	$1D,	$03
	DB	$F8,	$00,	$1E,	$03
	DB	$00,	$F8,	$22,	$03
	DB	$00,	$00,	$23,	$03
	DB	$80

;********************************
?OLDLADY03_WALK02_RIGHT
	DB	$F0,	$F8,	$1B,	$03
	DB	$F0,	$00,	$1C,	$03
	DB	$F8,	$FD,	$1F,	$03
	DB	$00,	$F8,	$24,	$03
	DB	$00,	$00,	$25,	$03
	DB	$80

;********************************
?OLDLADY03_WALK03_RIGHT
	DB	$F1,	$F8,	$1B,	$03
	DB	$F1,	$00,	$1C,	$03
	DB	$F8,	$F8,	$20,	$03
	DB	$F8,	$00,	$21,	$03
	DB	$00,	$F8,	$26,	$03
	DB	$00,	$00,	$27,	$03
	DB	$80

;********************************
?OLDLADY03_WALK01_LEFT
	DB	$F1,	$00,	$1B,	$23
	DB	$F1,	$F8,	$1C,	$23
	DB	$F8,	$00,	$1D,	$23
	DB	$F8,	$F8,	$1E,	$23
	DB	$00,	$00,	$22,	$23
	DB	$00,	$F8,	$23,	$23
	DB	$80

;********************************
?OLDLADY03_WALK02_LEFT
	DB	$F0,	$00,	$1B,	$23
	DB	$F0,	$F8,	$1C,	$23
	DB	$F8,	$FB,	$1F,	$23
	DB	$00,	$00,	$24,	$23
	DB	$00,	$F8,	$25,	$23
	DB	$80

;********************************
?OLDLADY03_WALK03_LEFT
	DB	$F1,	$00,	$1B,	$23
	DB	$F1,	$F8,	$1C,	$23
	DB	$F8,	$00,	$20,	$23
	DB	$F8,	$F8,	$21,	$23
	DB	$00,	$00,	$26,	$23
	DB	$00,	$F8,	$27,	$23
	DB	$80

;********************************
	END
;********************************
