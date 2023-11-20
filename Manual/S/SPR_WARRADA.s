;Size:353
;********************************
; SPR_WARRADA.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?WARRADA_STAND_RIGHT
	DB	$00,	$00,	$15,	$07
	DB	$00,	$F8,	$14,	$07
	DB	$F8,	$00,	$09,	$07
	DB	$F8,	$F8,	$08,	$07
	DB	$F0,	$00,	$01,	$07
	DB	$F0,	$F8,	$00,	$07
	DB	$80

;********************************
?WARRADA_STAND_LEFT
	DB	$00,	$F8,	$15,	$27
	DB	$00,	$00,	$14,	$27
	DB	$F8,	$F8,	$09,	$27
	DB	$F8,	$00,	$08,	$27
	DB	$F0,	$F8,	$01,	$27
	DB	$F0,	$00,	$00,	$27
	DB	$80

;********************************
?WARRADA_STAND_BACKRIGHT
	DB	$00,	$FE,	$18,	$07
	DB	$F8,	$00,	$0F,	$07
	DB	$F8,	$F8,	$0E,	$07
	DB	$F0,	$00,	$07,	$07
	DB	$F0,	$F8,	$06,	$07
	DB	$80

;********************************
?WARRADA_STAND_BACKLEFT
	DB	$00,	$FB,	$18,	$27
	DB	$F8,	$F9,	$0F,	$27
	DB	$F8,	$01,	$0E,	$27
	DB	$F0,	$F9,	$07,	$27
	DB	$F0,	$01,	$06,	$27
	DB	$80

;********************************
?WARRADA_WALK01_FRONT
	DB	$00,	$FC,	$19,	$07
	DB	$F8,	$00,	$11,	$07
	DB	$F8,	$F8,	$10,	$07
	DB	$F1,	$00,	$03,	$07
	DB	$F1,	$F8,	$02,	$07
	DB	$80

;********************************
?WARRADA_WALK02_FRONT
	DB	$00,	$00,	$16,	$07
	DB	$00,	$F9,	$16,	$27
	DB	$F8,	$00,	$0B,	$07
	DB	$F8,	$F8,	$0A,	$07
	DB	$F0,	$00,	$03,	$07
	DB	$F0,	$F8,	$02,	$07
	DB	$80

;********************************
?WARRADA_WALK03_FRONT
	DB	$F8,	$00,	$29,	$07
	DB	$F8,	$F8,	$28,	$07
	DB	$00,	$FC,	$19,	$27
	DB	$F1,	$00,	$03,	$07
	DB	$F1,	$F8,	$02,	$07
	DB	$80

;********************************
?WARRADA_WALK01_BACK
	DB	$00,	$FC,	$1A,	$07
	DB	$F8,	$00,	$13,	$07
	DB	$F8,	$F8,	$12,	$07
	DB	$F1,	$00,	$05,	$07
	DB	$F1,	$F8,	$04,	$07
	DB	$80

;********************************
?WARRADA_WALK02_BACK
	DB	$00,	$00,	$17,	$07
	DB	$00,	$F9,	$17,	$27
	DB	$F8,	$00,	$0D,	$07
	DB	$F8,	$F8,	$0C,	$07
	DB	$F0,	$00,	$05,	$07
	DB	$F0,	$F8,	$04,	$07
	DB	$80

;********************************
?WARRADA_WALK03_BACK
	DB	$00,	$FC,	$1A,	$27
	DB	$F8,	$F8,	$13,	$27
	DB	$F8,	$00,	$12,	$27
	DB	$F1,	$F8,	$05,	$27
	DB	$F1,	$00,	$04,	$27
	DB	$80

;********************************
?WARRADA_WALK01_RIGHT
	DB	$00,	$00,	$24,	$07
	DB	$00,	$F8,	$23,	$07
	DB	$F8,	$00,	$1E,	$07
	DB	$F8,	$F8,	$1D,	$07
	DB	$F1,	$00,	$1C,	$07
	DB	$F1,	$F8,	$1B,	$07
	DB	$80

;********************************
?WARRADA_WALK02_RIGHT
	DB	$00,	$FD,	$25,	$07
	DB	$F8,	$00,	$20,	$07
	DB	$F8,	$F8,	$1F,	$07
	DB	$F0,	$00,	$1C,	$07
	DB	$F0,	$F8,	$1B,	$07
	DB	$80

;********************************
?WARRADA_WALK03_RIGHT
	DB	$F8,	$00,	$22,	$07
	DB	$F8,	$F8,	$21,	$07
	DB	$00,	$00,	$27,	$07
	DB	$00,	$F8,	$26,	$07
	DB	$F1,	$00,	$1C,	$07
	DB	$F1,	$F8,	$1B,	$07
	DB	$80

;********************************
?WARRADA_WALK01_LEFT
	DB	$00,	$F8,	$24,	$27
	DB	$00,	$00,	$23,	$27
	DB	$F8,	$F8,	$1E,	$27
	DB	$F8,	$00,	$1D,	$27
	DB	$F1,	$F8,	$1C,	$27
	DB	$F1,	$00,	$1B,	$27
	DB	$80

;********************************
?WARRADA_WALK02_LEFT
	DB	$00,	$FB,	$25,	$27
	DB	$F8,	$F8,	$20,	$27
	DB	$F8,	$00,	$1F,	$27
	DB	$F0,	$F8,	$1C,	$27
	DB	$F0,	$00,	$1B,	$27
	DB	$80

;********************************
?WARRADA_WALK03_LEFT
	DB	$F8,	$F8,	$22,	$27
	DB	$F8,	$00,	$21,	$27
	DB	$00,	$F8,	$27,	$27
	DB	$00,	$00,	$26,	$27
	DB	$F1,	$F8,	$1C,	$27
	DB	$F1,	$00,	$1B,	$27
	DB	$80

;********************************
	END
;********************************
