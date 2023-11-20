;********************************
; SPR_ULK.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?ULK_STAND_RIGHT
	DB	$F0,	$F8,	$00,	$06
	DB	$F0,	$00,	$01,	$06
	DB	$F8,	$F8,	$08,	$06
	DB	$F8,	$00,	$09,	$06
	DB	$00,	$F8,	$14,	$06
	DB	$00,	$00,	$15,	$06
	DB	$80

;********************************
?ULK_STAND_LEFT
	DB	$F0,	$00,	$00,	$26
	DB	$F0,	$F8,	$01,	$26
	DB	$F8,	$00,	$08,	$26
	DB	$F8,	$F8,	$09,	$26
	DB	$00,	$00,	$14,	$26
	DB	$00,	$F8,	$15,	$26
	DB	$80

;********************************
?ULK_STAND_BACKRIGHT
	DB	$F0,	$F8,	$06,	$06
	DB	$F0,	$00,	$07,	$06
	DB	$F8,	$F8,	$0E,	$06
	DB	$F8,	$00,	$0F,	$06
	DB	$00,	$FE,	$1A,	$06
	DB	$80

;********************************
?ULK_STAND_BACKLEFT
	DB	$F8,	$00,	$0E,	$26
	DB	$F8,	$F8,	$0F,	$26
	DB	$00,	$FA,	$1A,	$26
	DB	$F0,	$00,	$06,	$26
	DB	$F0,	$F8,	$07,	$26
	DB	$80

;********************************
?ULK_WALK01_FRONT
	DB	$F8,	$F8,	$10,	$06
	DB	$F8,	$00,	$11,	$06
	DB	$00,	$FC,	$1B,	$06
	DB	$F1,	$F8,	$02,	$06
	DB	$F1,	$00,	$03,	$06
	DB	$80

;********************************
?ULK_WALK02_FRONT
	DB	$F8,	$F8,	$0A,	$06
	DB	$F8,	$00,	$0B,	$06
	DB	$00,	$F8,	$16,	$06
	DB	$00,	$00,	$17,	$06
	DB	$F0,	$F8,	$02,	$06
	DB	$F0,	$00,	$03,	$06
	DB	$80

;********************************
?ULK_WALK03_FRONT
	DB	$F8,	$F8,	$2A,	$06
	DB	$F8,	$00,	$2B,	$06
	DB	$00,	$F8,	$2C,	$06
	DB	$00,	$00,	$2D,	$06
	DB	$F1,	$F8,	$02,	$06
	DB	$F1,	$00,	$03,	$06
	DB	$80

;********************************
?ULK_WALK01_BACK
	DB	$F1,	$F8,	$02,	$06
	DB	$F1,	$00,	$03,	$06
	DB	$00,	$FC,	$1C,	$06
	DB	$F8,	$F8,	$12,	$06
	DB	$F8,	$00,	$13,	$06
	DB	$80

;********************************
?ULK_WALK02_BACK
	DB	$F0,	$F8,	$02,	$06
	DB	$F0,	$00,	$03,	$06
	DB	$F8,	$F8,	$0C,	$06
	DB	$F8,	$00,	$0D,	$06
	DB	$00,	$F8,	$18,	$06
	DB	$00,	$00,	$19,	$06
	DB	$80

;********************************
?ULK_WALK03_BACK
	DB	$F1,	$F8,	$02,	$06
	DB	$F1,	$00,	$03,	$06
	DB	$00,	$FC,	$1C,	$26
	DB	$F8,	$F8,	$2E,	$06
	DB	$F8,	$00,	$2F,	$06
	DB	$80

;********************************
?ULK_WALK01_RIGHT
	DB	$F1,	$F8,	$1D,	$06
	DB	$F1,	$00,	$1E,	$06
	DB	$F8,	$F8,	$1F,	$06
	DB	$F8,	$00,	$20,	$06
	DB	$00,	$F8,	$25,	$06
	DB	$00,	$00,	$26,	$06
	DB	$80

;********************************
?ULK_WALK02_RIGHT
	DB	$F0,	$F8,	$1D,	$06
	DB	$F0,	$00,	$1E,	$06
	DB	$F8,	$F8,	$21,	$06
	DB	$F8,	$00,	$22,	$06
	DB	$00,	$FD,	$27,	$06
	DB	$80

;********************************
?ULK_WALK03_RIGHT
	DB	$F1,	$F8,	$1D,	$06
	DB	$F1,	$00,	$1E,	$06
	DB	$F8,	$F8,	$23,	$06
	DB	$F8,	$00,	$24,	$06
	DB	$00,	$F8,	$28,	$06
	DB	$00,	$00,	$29,	$06
	DB	$80

;********************************
?ULK_WALK01_LEFT
	DB	$F1,	$00,	$1D,	$26
	DB	$F1,	$F8,	$1E,	$26
	DB	$F8,	$00,	$1F,	$26
	DB	$F8,	$F8,	$20,	$26
	DB	$00,	$00,	$25,	$26
	DB	$00,	$F8,	$26,	$26
	DB	$80

;********************************
?ULK_WALK02_LEFT
	DB	$F0,	$00,	$1D,	$26
	DB	$F0,	$F8,	$1E,	$26
	DB	$F8,	$00,	$21,	$26
	DB	$F8,	$F8,	$22,	$26
	DB	$00,	$FB,	$27,	$26
	DB	$80

;********************************
?ULK_WALK03_LEFT
	DB	$F1,	$00,	$1D,	$26
	DB	$F1,	$F8,	$1E,	$26
	DB	$F8,	$00,	$23,	$26
	DB	$F8,	$F8,	$24,	$26
	DB	$00,	$00,	$28,	$26
	DB	$00,	$F8,	$29,	$26
	DB	$80

;********************************
	END
;********************************