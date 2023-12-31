;********************************
; SPR_GIRL04.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?GIRL04_STAND_RIGHT
	DB	$F0,	$F8,	$00,	$00
	DB	$F0,	$00,	$01,	$00
	DB	$F8,	$F8,	$04,	$00
	DB	$F8,	$00,	$05,	$00
	DB	$00,	$F8,	$08,	$06
	DB	$00,	$00,	$09,	$06
	DB	$80

;********************************
?GIRL04_STAND_LEFT
	DB	$F0,	$00,	$00,	$20
	DB	$F0,	$F8,	$01,	$20
	DB	$F8,	$00,	$04,	$20
	DB	$F8,	$F8,	$05,	$20
	DB	$00,	$00,	$08,	$26
	DB	$00,	$F8,	$09,	$26
	DB	$80

;********************************
?GIRL04_STAND_BACKRIGHT
	DB	$F0,	$F8,	$0D,	$00
	DB	$F0,	$00,	$0E,	$00
	DB	$F8,	$F8,	$10,	$00
	DB	$F8,	$00,	$11,	$00
	DB	$00,	$FE,	$13,	$06
	DB	$80

;********************************
?GIRL04_STAND_BACKLEFT
	DB	$F0,	$00,	$0D,	$20
	DB	$F0,	$F8,	$0E,	$20
	DB	$F8,	$00,	$10,	$20
	DB	$F8,	$F8,	$11,	$20
	DB	$00,	$FA,	$13,	$26
	DB	$80

;********************************
?GIRL04_WALK01_FRONT
	DB	$F1,	$F8,	$02,	$00
	DB	$F1,	$00,	$03,	$00
	DB	$F8,	$F8,	$14,	$00
	DB	$F8,	$00,	$15,	$00
	DB	$00,	$FC,	$16,	$06
	DB	$80

;********************************
?GIRL04_WALK02_FRONT
	DB	$F8,	$F8,	$06,	$00
	DB	$F8,	$00,	$07,	$00
	DB	$00,	$00,	$0A,	$06
	DB	$00,	$F9,	$0A,	$26
	DB	$F0,	$F8,	$02,	$00
	DB	$F0,	$00,	$03,	$00
	DB	$80

;********************************
?GIRL04_WALK03_FRONT
	DB	$F1,	$F8,	$02,	$00
	DB	$F1,	$00,	$03,	$00
	DB	$00,	$FC,	$16,	$26
	DB	$F8,	$F8,	$2E,	$00
	DB	$F8,	$00,	$2F,	$00
	DB	$80

;********************************
?GIRL04_WALK01_BACK
	DB	$F1,	$F8,	$0B,	$00
	DB	$F1,	$00,	$0C,	$00
	DB	$F8,	$F8,	$19,	$00
	DB	$F8,	$00,	$1A,	$00
	DB	$00,	$FC,	$1B,	$06
	DB	$80

;********************************
?GIRL04_WALK02_BACK
	DB	$00,	$00,	$12,	$06
	DB	$00,	$F9,	$12,	$26
	DB	$F0,	$F8,	$0B,	$00
	DB	$F0,	$00,	$0C,	$00
	DB	$F8,	$00,	$2D,	$00
	DB	$F8,	$F8,	$0F,	$00
	DB	$80

;********************************
?GIRL04_WALK03_BACK
	DB	$F8,	$F8,	$1E,	$00
	DB	$F8,	$00,	$1F,	$00
	DB	$F0,	$F8,	$17,	$00
	DB	$F0,	$00,	$18,	$00
	DB	$00,	$FC,	$1B,	$26
	DB	$80

;********************************
?GIRL04_WALK01_RIGHT
	DB	$F1,	$F8,	$20,	$00
	DB	$F1,	$00,	$21,	$00
	DB	$F8,	$F8,	$22,	$00
	DB	$F8,	$00,	$23,	$00
	DB	$00,	$F8,	$28,	$06
	DB	$00,	$00,	$29,	$06
	DB	$80

;********************************
?GIRL04_WALK02_RIGHT
	DB	$F8,	$F8,	$24,	$00
	DB	$F8,	$00,	$25,	$00
	DB	$00,	$FC,	$2A,	$06
	DB	$F0,	$F8,	$20,	$00
	DB	$F0,	$00,	$21,	$00
	DB	$80

;********************************
?GIRL04_WALK03_RIGHT
	DB	$F1,	$F8,	$20,	$00
	DB	$F1,	$00,	$21,	$00
	DB	$F8,	$F8,	$26,	$00
	DB	$F8,	$00,	$27,	$00
	DB	$00,	$F8,	$2B,	$06
	DB	$00,	$00,	$2C,	$06
	DB	$80

;********************************
?GIRL04_WALK01_LEFT
	DB	$F1,	$00,	$20,	$20
	DB	$F1,	$F8,	$21,	$20
	DB	$F8,	$00,	$22,	$20
	DB	$F8,	$F8,	$23,	$20
	DB	$00,	$00,	$28,	$26
	DB	$00,	$F8,	$29,	$26
	DB	$80

;********************************
?GIRL04_WALK02_LEFT
	DB	$F8,	$00,	$24,	$20
	DB	$F8,	$F8,	$25,	$20
	DB	$00,	$FC,	$2A,	$26
	DB	$F0,	$00,	$20,	$20
	DB	$F0,	$F8,	$21,	$20
	DB	$80

;********************************
?GIRL04_WALK03_LEFT
	DB	$F1,	$00,	$20,	$20
	DB	$F1,	$F8,	$21,	$20
	DB	$F8,	$00,	$26,	$20
	DB	$F8,	$F8,	$27,	$20
	DB	$00,	$00,	$2B,	$26
	DB	$00,	$F8,	$2C,	$26
	DB	$80

;********************************
	END
;********************************
