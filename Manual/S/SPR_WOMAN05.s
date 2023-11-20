;********************************
; SPR_WOMAN05.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?WOMAN05_STAND_RIGHT
	DB	$F0,	$F8,	$00,	$06
	DB	$F0,	$00,	$01,	$06
	DB	$F8,	$F8,	$04,	$06
	DB	$F8,	$00,	$05,	$06
	DB	$00,	$F8,	$07,	$06
	DB	$00,	$00,	$08,	$06
	DB	$80

;********************************
?WOMAN05_STAND_LEFT
	DB	$F0,	$00,	$00,	$26
	DB	$F0,	$F8,	$01,	$26
	DB	$F8,	$00,	$04,	$26
	DB	$F8,	$F8,	$05,	$26
	DB	$00,	$00,	$07,	$26
	DB	$00,	$F8,	$08,	$26
	DB	$80

;********************************
?WOMAN05_STAND_BACKRIGHT
	DB	$F0,	$F8,	$0C,	$06
	DB	$F0,	$00,	$0D,	$06
	DB	$F8,	$00,	$0F,	$06
	DB	$00,	$FE,	$11,	$06
	DB	$F8,	$F8,	$24,	$06
	DB	$80

;********************************
?WOMAN05_STAND_BACKLEFT
	DB	$F0,	$00,	$0C,	$26
	DB	$F0,	$F8,	$0D,	$26
	DB	$F8,	$F8,	$0F,	$26
	DB	$00,	$FA,	$11,	$26
	DB	$F8,	$00,	$24,	$26
	DB	$80

;********************************
?WOMAN05_WALK01_FRONT
	DB	$F1,	$F8,	$02,	$06
	DB	$F1,	$00,	$03,	$06
	DB	$F8,	$F8,	$12,	$06
	DB	$F8,	$00,	$13,	$06
	DB	$00,	$FC,	$14,	$06
	DB	$80

;********************************
?WOMAN05_WALK02_FRONT
	DB	$F0,	$F8,	$02,	$06
	DB	$F0,	$00,	$03,	$06
	DB	$00,	$F9,	$09,	$26
	DB	$00,	$00,	$09,	$06
	DB	$F8,	$F8,	$06,	$26
	DB	$F8,	$00,	$06,	$06
	DB	$80

;********************************
?WOMAN05_WALK03_FRONT
	DB	$F1,	$F8,	$02,	$06
	DB	$F1,	$00,	$03,	$06
	DB	$F8,	$00,	$12,	$26
	DB	$F8,	$F8,	$13,	$26
	DB	$00,	$FC,	$14,	$26
	DB	$80

;********************************
?WOMAN05_WALK01_BACK
	DB	$F1,	$00,	$0A,	$26
	DB	$F1,	$F8,	$0B,	$26
	DB	$F8,	$F8,	$15,	$06
	DB	$F8,	$00,	$16,	$06
	DB	$00,	$FC,	$17,	$06
	DB	$80

;********************************
?WOMAN05_WALK02_BACK
	DB	$F0,	$F8,	$0A,	$06
	DB	$F0,	$00,	$0B,	$06
	DB	$F8,	$00,	$0E,	$06
	DB	$F8,	$F8,	$0E,	$26
	DB	$00,	$00,	$10,	$06
	DB	$00,	$F9,	$10,	$26
	DB	$80

;********************************
?WOMAN05_WALK03_BACK
	DB	$F1,	$F8,	$0A,	$06
	DB	$F1,	$00,	$0B,	$06
	DB	$F8,	$00,	$15,	$26
	DB	$F8,	$F8,	$16,	$26
	DB	$00,	$FC,	$17,	$26
	DB	$80

;********************************
?WOMAN05_WALK01_RIGHT
	DB	$F1,	$F8,	$18,	$06
	DB	$F1,	$00,	$19,	$06
	DB	$F8,	$F9,	$1A,	$06
	DB	$F8,	$01,	$1B,	$06
	DB	$00,	$F9,	$1F,	$06
	DB	$00,	$01,	$20,	$06
	DB	$80

;********************************
?WOMAN05_WALK02_RIGHT
	DB	$F0,	$F8,	$18,	$06
	DB	$F0,	$00,	$19,	$06
	DB	$F8,	$FD,	$1C,	$06
	DB	$00,	$FC,	$21,	$06
	DB	$80

;********************************
?WOMAN05_WALK03_RIGHT
	DB	$F1,	$F8,	$18,	$06
	DB	$F1,	$00,	$19,	$06
	DB	$F8,	$F9,	$1D,	$06
	DB	$F8,	$01,	$1E,	$06
	DB	$00,	$F9,	$22,	$06
	DB	$00,	$01,	$23,	$06
	DB	$80

;********************************
?WOMAN05_WALK01_LEFT
	DB	$F1,	$00,	$18,	$26
	DB	$F1,	$F8,	$19,	$26
	DB	$F8,	$FF,	$1A,	$26
	DB	$F8,	$F7,	$1B,	$26
	DB	$00,	$FF,	$1F,	$26
	DB	$00,	$F7,	$20,	$26
	DB	$80

;********************************
?WOMAN05_WALK02_LEFT
	DB	$F0,	$00,	$18,	$26
	DB	$F0,	$F8,	$19,	$26
	DB	$F8,	$FB,	$1C,	$26
	DB	$00,	$FC,	$21,	$26
	DB	$80

;********************************
?WOMAN05_WALK03_LEFT
	DB	$F1,	$00,	$18,	$26
	DB	$F1,	$F8,	$19,	$26
	DB	$F8,	$FF,	$1D,	$26
	DB	$F8,	$F7,	$1E,	$26
	DB	$00,	$FF,	$22,	$26
	DB	$00,	$F7,	$23,	$26
	DB	$80

;********************************
	END
;********************************