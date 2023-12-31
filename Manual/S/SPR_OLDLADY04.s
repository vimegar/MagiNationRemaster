;********************************
; SPR_OLDLADY04.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?OLDLADY04_STAND_RIGHT
	DB	$F0,	$F8,	$00,	$04
	DB	$F0,	$00,	$01,	$04
	DB	$F8,	$F8,	$04,	$04
	DB	$F8,	$00,	$05,	$04
	DB	$00,	$F8,	$08,	$04
	DB	$00,	$00,	$09,	$04
	DB	$80

;********************************
?OLDLADY04_STAND_LEFT
	DB	$F0,	$00,	$00,	$24
	DB	$F0,	$F8,	$01,	$24
	DB	$F8,	$00,	$04,	$24
	DB	$F8,	$F8,	$05,	$24
	DB	$00,	$00,	$08,	$24
	DB	$00,	$F8,	$09,	$24
	DB	$80

;********************************
?OLDLADY04_STAND_BACKRIGHT
	DB	$F0,	$F8,	$0D,	$04
	DB	$F0,	$00,	$0E,	$04
	DB	$00,	$FE,	$13,	$04
	DB	$F8,	$F8,	$10,	$04
	DB	$F8,	$00,	$11,	$04
	DB	$80

;********************************
?OLDLADY04_STAND_BACKLEFT
	DB	$F0,	$00,	$0D,	$24
	DB	$F0,	$F8,	$0E,	$24
	DB	$00,	$FA,	$13,	$24
	DB	$F8,	$00,	$10,	$24
	DB	$F8,	$F8,	$11,	$24
	DB	$80

;********************************
?OLDLADY04_WALK01_FRONT
	DB	$F1,	$F8,	$02,	$04
	DB	$F1,	$00,	$03,	$04
	DB	$F8,	$F8,	$16,	$04
	DB	$F8,	$00,	$17,	$04
	DB	$00,	$FC,	$18,	$04
	DB	$80

;********************************
?OLDLADY04_WALK02_FRONT
	DB	$00,	$F9,	$0A,	$24
	DB	$00,	$00,	$0A,	$04
	DB	$F0,	$F8,	$02,	$04
	DB	$F0,	$00,	$03,	$04
	DB	$F8,	$F8,	$06,	$04
	DB	$F8,	$00,	$07,	$04
	DB	$80

;********************************
?OLDLADY04_WALK03_FRONT
	DB	$F8,	$F8,	$19,	$04
	DB	$F8,	$00,	$1A,	$04
	DB	$00,	$FC,	$18,	$24
	DB	$F1,	$F8,	$02,	$04
	DB	$F1,	$00,	$03,	$04
	DB	$80

;********************************
?OLDLADY04_WALK01_BACK
	DB	$F1,	$F8,	$0B,	$04
	DB	$F1,	$00,	$0C,	$04
	DB	$F8,	$F8,	$1B,	$04
	DB	$F8,	$00,	$1C,	$04
	DB	$00,	$FC,	$1D,	$04
	DB	$80

;********************************
?OLDLADY04_WALK02_BACK
	DB	$F0,	$F8,	$0B,	$04
	DB	$F0,	$00,	$0C,	$04
	DB	$F8,	$F8,	$0F,	$24
	DB	$F8,	$00,	$0F,	$04
	DB	$00,	$00,	$12,	$04
	DB	$00,	$F9,	$12,	$24
	DB	$80

;********************************
?OLDLADY04_WALK03_BACK
	DB	$F1,	$F8,	$0B,	$04
	DB	$F1,	$00,	$0C,	$04
	DB	$F8,	$00,	$1B,	$24
	DB	$F8,	$F8,	$1C,	$24
	DB	$00,	$FC,	$1D,	$24
	DB	$80

;********************************
?OLDLADY04_WALK01_RIGHT
	DB	$F1,	$F8,	$1E,	$04
	DB	$F1,	$00,	$1F,	$04
	DB	$F8,	$F8,	$20,	$04
	DB	$F8,	$00,	$21,	$04
	DB	$00,	$F8,	$25,	$04
	DB	$00,	$00,	$26,	$04
	DB	$80

;********************************
?OLDLADY04_WALK02_RIGHT
	DB	$F0,	$F8,	$1E,	$04
	DB	$F0,	$00,	$1F,	$04
	DB	$F8,	$FC,	$22,	$04
	DB	$00,	$FC,	$27,	$04
	DB	$80

;********************************
?OLDLADY04_WALK03_RIGHT
	DB	$F1,	$F8,	$1E,	$04
	DB	$F1,	$00,	$1F,	$04
	DB	$F8,	$F8,	$23,	$04
	DB	$F8,	$00,	$24,	$04
	DB	$00,	$F8,	$28,	$04
	DB	$00,	$00,	$29,	$04
	DB	$80

;********************************
?OLDLADY04_WALK01_LEFT
	DB	$F1,	$00,	$1E,	$24
	DB	$F1,	$F8,	$1F,	$24
	DB	$F8,	$00,	$20,	$24
	DB	$F8,	$F8,	$21,	$24
	DB	$00,	$00,	$25,	$24
	DB	$00,	$F8,	$26,	$24
	DB	$80

;********************************
?OLDLADY04_WALK02_LEFT
	DB	$F0,	$00,	$1E,	$24
	DB	$F0,	$F8,	$1F,	$24
	DB	$F8,	$FC,	$22,	$24
	DB	$00,	$FC,	$27,	$24
	DB	$80

;********************************
?OLDLADY04_WALK03_LEFT
	DB	$F1,	$00,	$1E,	$24
	DB	$F1,	$F8,	$1F,	$24
	DB	$F8,	$00,	$23,	$24
	DB	$F8,	$F8,	$24,	$24
	DB	$00,	$00,	$28,	$24
	DB	$00,	$F8,	$29,	$24
	DB	$80

;********************************
	END
;********************************
