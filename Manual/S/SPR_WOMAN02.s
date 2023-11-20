;********************************
; SPR_WOMAN02.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?WOMAN02_STAND_RIGHT
	DB	$F0,	$F8,	$00,	$03
	DB	$F0,	$00,	$01,	$03
	DB	$F8,	$F8,	$04,	$03
	DB	$F8,	$00,	$05,	$03
	DB	$00,	$F8,	$07,	$05
	DB	$00,	$00,	$08,	$05
	DB	$80

;********************************
?WOMAN02_STAND_LEFT
	DB	$F0,	$00,	$00,	$23
	DB	$F0,	$F8,	$01,	$23
	DB	$F8,	$00,	$04,	$23
	DB	$F8,	$F8,	$05,	$23
	DB	$00,	$00,	$07,	$25
	DB	$00,	$F8,	$08,	$25
	DB	$80

;********************************
?WOMAN02_STAND_BACKRIGHT
	DB	$F0,	$F8,	$0C,	$03
	DB	$F0,	$00,	$0D,	$03
	DB	$F8,	$FD,	$0F,	$03
	DB	$00,	$FE,	$11,	$05
	DB	$80

;********************************
?WOMAN02_STAND_BACKLEFT
	DB	$F0,	$00,	$0C,	$23
	DB	$F0,	$F8,	$0D,	$23
	DB	$F8,	$FB,	$0F,	$23
	DB	$00,	$FA,	$11,	$25
	DB	$80

;********************************
?WOMAN02_WALK01_FRONT
	DB	$F1,	$F8,	$02,	$03
	DB	$F1,	$00,	$03,	$03
	DB	$F8,	$F8,	$12,	$03
	DB	$F8,	$00,	$13,	$03
	DB	$00,	$FC,	$14,	$05
	DB	$80

;********************************
?WOMAN02_WALK02_FRONT
	DB	$F0,	$F8,	$02,	$03
	DB	$F0,	$00,	$03,	$03
	DB	$00,	$F9,	$09,	$25
	DB	$00,	$00,	$09,	$05
	DB	$F8,	$F8,	$06,	$23
	DB	$F8,	$00,	$06,	$03
	DB	$80

;********************************
?WOMAN02_WALK03_FRONT
	DB	$F1,	$F8,	$02,	$03
	DB	$F1,	$00,	$03,	$03
	DB	$F8,	$00,	$12,	$23
	DB	$F8,	$F8,	$13,	$23
	DB	$00,	$FC,	$14,	$25
	DB	$80

;********************************
?WOMAN02_WALK01_BACK
	DB	$F1,	$F8,	$0A,	$03
	DB	$F1,	$00,	$0B,	$03
	DB	$F8,	$F8,	$15,	$03
	DB	$F8,	$00,	$16,	$03
	DB	$00,	$FC,	$17,	$05
	DB	$80

;********************************
?WOMAN02_WALK02_BACK
	DB	$F0,	$F8,	$0A,	$03
	DB	$F0,	$00,	$0B,	$03
	DB	$F8,	$00,	$0E,	$03
	DB	$F8,	$F8,	$0E,	$23
	DB	$00,	$00,	$10,	$05
	DB	$00,	$F9,	$10,	$25
	DB	$80

;********************************
?WOMAN02_WALK03_BACK
	DB	$F1,	$F8,	$0A,	$03
	DB	$F1,	$00,	$0B,	$03
	DB	$F8,	$00,	$15,	$23
	DB	$F8,	$F8,	$16,	$23
	DB	$00,	$FC,	$17,	$25
	DB	$80

;********************************
?WOMAN02_WALK01_RIGHT
	DB	$F1,	$F8,	$18,	$03
	DB	$F1,	$00,	$19,	$03
	DB	$F8,	$F8,	$1A,	$03
	DB	$F8,	$00,	$1B,	$03
	DB	$00,	$F8,	$1F,	$05
	DB	$00,	$00,	$20,	$05
	DB	$80

;********************************
?WOMAN02_WALK02_RIGHT
	DB	$F0,	$F8,	$18,	$03
	DB	$F0,	$00,	$19,	$03
	DB	$F8,	$00,	$1C,	$03
	DB	$00,	$FC,	$21,	$05
	DB	$F8,	$F8,	$24,	$03
	DB	$80

;********************************
?WOMAN02_WALK03_RIGHT
	DB	$F1,	$F8,	$18,	$03
	DB	$F1,	$00,	$19,	$03
	DB	$F8,	$F8,	$1D,	$03
	DB	$F8,	$00,	$1E,	$03
	DB	$00,	$F8,	$22,	$05
	DB	$00,	$00,	$23,	$05
	DB	$80

;********************************
?WOMAN02_WALK01_LEFT
	DB	$F1,	$00,	$18,	$23
	DB	$F1,	$F8,	$19,	$23
	DB	$F8,	$00,	$1A,	$23
	DB	$F8,	$F8,	$1B,	$23
	DB	$00,	$00,	$1F,	$25
	DB	$00,	$F8,	$20,	$25
	DB	$80

;********************************
?WOMAN02_WALK02_LEFT
	DB	$F0,	$00,	$18,	$23
	DB	$F0,	$F8,	$19,	$23
	DB	$F8,	$F8,	$1C,	$23
	DB	$00,	$FC,	$21,	$25
	DB	$F8,	$00,	$24,	$23
	DB	$80

;********************************
?WOMAN02_WALK03_LEFT
	DB	$F1,	$00,	$18,	$23
	DB	$F1,	$F8,	$19,	$23
	DB	$F8,	$00,	$1D,	$23
	DB	$F8,	$F8,	$1E,	$23
	DB	$00,	$00,	$22,	$25
	DB	$00,	$F8,	$23,	$25
	DB	$80

;********************************
	END
;********************************