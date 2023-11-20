;********************************
; SPR_WOMAN.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?WOMAN_STAND_RIGHT
	DB	$F0,	$F8,	$00,	$03
	DB	$F0,	$00,	$01,	$03
	DB	$F8,	$F8,	$07,	$03
	DB	$F8,	$00,	$08,	$03
	DB	$00,	$F8,	$11,	$05
	DB	$00,	$00,	$12,	$05
	DB	$80

;********************************
?WOMAN_STAND_LEFT
	DB	$F0,	$00,	$00,	$23
	DB	$F0,	$F8,	$01,	$23
	DB	$F8,	$00,	$07,	$23
	DB	$F8,	$F8,	$08,	$23
	DB	$00,	$00,	$11,	$25
	DB	$00,	$F8,	$12,	$25
	DB	$80

;********************************
?WOMAN_STAND_BACKRIGHT
	DB	$F0,	$F8,	$05,	$03
	DB	$F0,	$00,	$06,	$03
	DB	$F8,	$F8,	$0B,	$03
	DB	$F8,	$00,	$0C,	$03
	DB	$00,	$FE,	$15,	$05
	DB	$80

;********************************
?WOMAN_STAND_BACKLEFT
	DB	$F0,	$01,	$05,	$23
	DB	$F0,	$F9,	$06,	$23
	DB	$F8,	$01,	$0B,	$23
	DB	$F8,	$F9,	$0C,	$23
	DB	$00,	$FB,	$15,	$25
	DB	$80

;********************************
?WOMAN_WALK01_FRONT
	DB	$F1,	$F8,	$02,	$03
	DB	$F1,	$00,	$03,	$03
	DB	$F8,	$F8,	$0D,	$03
	DB	$F8,	$00,	$0E,	$03
	DB	$00,	$FC,	$16,	$05
	DB	$80

;********************************
?WOMAN_WALK02_FRONT
	DB	$F0,	$F8,	$02,	$03
	DB	$F0,	$00,	$03,	$03
	DB	$F8,	$F8,	$09,	$03
	DB	$F8,	$00,	$09,	$23
	DB	$00,	$F9,	$13,	$25
	DB	$00,	$00,	$13,	$05
	DB	$80

;********************************
?WOMAN_WALK03_FRONT
	DB	$F1,	$F8,	$02,	$03
	DB	$F1,	$00,	$03,	$03
	DB	$F8,	$00,	$0D,	$23
	DB	$F8,	$F8,	$0E,	$23
	DB	$00,	$FC,	$16,	$25
	DB	$80

;********************************
?WOMAN_WALK01_BACK
	DB	$F1,	$F8,	$04,	$03
	DB	$F1,	$00,	$04,	$23
	DB	$F8,	$F8,	$0F,	$03
	DB	$F8,	$00,	$10,	$03
	DB	$00,	$FD,	$17,	$05
	DB	$80

;********************************
?WOMAN_WALK02_BACK
	DB	$F0,	$F8,	$04,	$03
	DB	$F0,	$00,	$04,	$23
	DB	$F8,	$F8,	$0A,	$03
	DB	$F8,	$00,	$0A,	$23
	DB	$00,	$F9,	$14,	$25
	DB	$00,	$00,	$14,	$05
	DB	$80

;********************************
?WOMAN_WALK03_BACK
	DB	$F1,	$F8,	$04,	$03
	DB	$F1,	$00,	$04,	$23
	DB	$F8,	$00,	$0F,	$23
	DB	$F8,	$F8,	$10,	$23
	DB	$00,	$FB,	$17,	$25
	DB	$80

;********************************
?WOMAN_WALK01_RIGHT
	DB	$F1,	$F8,	$18,	$03
	DB	$F1,	$00,	$19,	$03
	DB	$F8,	$F8,	$1A,	$03
	DB	$F8,	$00,	$1B,	$03
	DB	$00,	$F8,	$20,	$05
	DB	$00,	$00,	$21,	$05
	DB	$80

;********************************
?WOMAN_WALK02_RIGHT
	DB	$F0,	$F8,	$18,	$03
	DB	$F0,	$00,	$19,	$03
	DB	$F8,	$F8,	$1C,	$03
	DB	$F8,	$00,	$1D,	$03
	DB	$00,	$FC,	$22,	$05
	DB	$80

;********************************
?WOMAN_WALK03_RIGHT
	DB	$F1,	$F8,	$18,	$03
	DB	$F1,	$00,	$19,	$03
	DB	$F8,	$F8,	$1E,	$03
	DB	$F8,	$00,	$1F,	$03
	DB	$00,	$F8,	$23,	$05
	DB	$00,	$00,	$24,	$05
	DB	$80

;********************************
?WOMAN_WALK01_LEFT
	DB	$F1,	$00,	$18,	$23
	DB	$F1,	$F8,	$19,	$23
	DB	$F8,	$00,	$1A,	$23
	DB	$F8,	$F8,	$1B,	$23
	DB	$00,	$00,	$20,	$25
	DB	$00,	$F8,	$21,	$25
	DB	$80

;********************************
?WOMAN_WALK02_LEFT
	DB	$F0,	$00,	$18,	$23
	DB	$F0,	$F8,	$19,	$23
	DB	$F8,	$00,	$1C,	$23
	DB	$F8,	$F8,	$1D,	$23
	DB	$00,	$FC,	$22,	$25
	DB	$80

;********************************
?WOMAN_WALK03_LEFT
	DB	$F1,	$00,	$18,	$23
	DB	$F1,	$F8,	$19,	$23
	DB	$F8,	$00,	$1E,	$23
	DB	$F8,	$F8,	$1F,	$23
	DB	$00,	$00,	$23,	$25
	DB	$00,	$F8,	$24,	$25
	DB	$80

;********************************
	END
;********************************
