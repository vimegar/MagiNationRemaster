;********************************
; SPR_CORE06.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?CORE06_STAND_RIGHT
	DB	$00,	$00,	$13,	$02
	DB	$00,	$F8,	$12,	$02
	DB	$F8,	$00,	$09,	$07
	DB	$F8,	$F8,	$08,	$07
	DB	$F0,	$00,	$01,	$07
	DB	$F0,	$F8,	$00,	$07
	DB	$80

;********************************
?CORE06_STAND_LEFT
	DB	$00,	$F8,	$13,	$22
	DB	$00,	$00,	$12,	$22
	DB	$F8,	$F8,	$09,	$27
	DB	$F8,	$00,	$08,	$27
	DB	$F0,	$F8,	$01,	$27
	DB	$F0,	$00,	$00,	$27
	DB	$80

;********************************
?CORE06_STAND_BACKRIGHT
	DB	$00,	$00,	$17,	$02
	DB	$00,	$F8,	$16,	$02
	DB	$F8,	$00,	$0D,	$07
	DB	$F8,	$F8,	$0C,	$07
	DB	$F0,	$00,	$07,	$07
	DB	$F0,	$F8,	$06,	$07
	DB	$80

;********************************
?CORE06_STAND_BACKLEFT
	DB	$00,	$F8,	$17,	$22
	DB	$00,	$00,	$16,	$22
	DB	$F8,	$F8,	$0D,	$27
	DB	$F8,	$00,	$0C,	$27
	DB	$F0,	$F8,	$07,	$27
	DB	$F0,	$00,	$06,	$27
	DB	$80

;********************************
?CORE06_WALK01_FRONT
	DB	$00,	$FC,	$18,	$02
	DB	$F8,	$00,	$0F,	$07
	DB	$F8,	$F8,	$0E,	$07
	DB	$F1,	$00,	$03,	$07
	DB	$F1,	$F8,	$02,	$07
	DB	$80

;********************************
?CORE06_WALK02_FRONT
	DB	$00,	$00,	$14,	$02
	DB	$00,	$F8,	$14,	$22
	DB	$F8,	$00,	$0A,	$07
	DB	$F8,	$F8,	$0A,	$27
	DB	$F0,	$00,	$03,	$07
	DB	$F0,	$F8,	$02,	$07
	DB	$80

;********************************
?CORE06_WALK03_FRONT
	DB	$00,	$FC,	$18,	$22
	DB	$F8,	$F8,	$0F,	$27
	DB	$F8,	$00,	$0E,	$27
	DB	$F1,	$00,	$03,	$07
	DB	$F1,	$F8,	$02,	$07
	DB	$80

;********************************
?CORE06_WALK01_BACK
	DB	$00,	$00,	$1A,	$02
	DB	$00,	$F8,	$19,	$02
	DB	$F8,	$00,	$11,	$07
	DB	$F8,	$F8,	$10,	$07
	DB	$F1,	$00,	$05,	$07
	DB	$F1,	$F8,	$04,	$07
	DB	$80

;********************************
?CORE06_WALK02_BACK
	DB	$00,	$00,	$15,	$02
	DB	$00,	$F8,	$15,	$22
	DB	$F8,	$00,	$0B,	$07
	DB	$F8,	$F8,	$0B,	$27
	DB	$F0,	$00,	$05,	$07
	DB	$F0,	$F8,	$04,	$07
	DB	$80

;********************************
?CORE06_WALK03_BACK
	DB	$00,	$F8,	$1A,	$22
	DB	$00,	$00,	$19,	$22
	DB	$F8,	$F8,	$11,	$27
	DB	$F8,	$00,	$10,	$27
	DB	$F1,	$00,	$05,	$07
	DB	$F1,	$F8,	$04,	$07
	DB	$80

;********************************
?CORE06_WALK01_RIGHT
	DB	$00,	$00,	$23,	$02
	DB	$00,	$F8,	$22,	$02
	DB	$F8,	$00,	$1E,	$07
	DB	$F8,	$F8,	$1D,	$07
	DB	$F1,	$00,	$1C,	$07
	DB	$F1,	$F8,	$1B,	$07
	DB	$80

;********************************
?CORE06_WALK02_RIGHT
	DB	$F8,	$FC,	$1F,	$07
	DB	$00,	$00,	$25,	$02
	DB	$00,	$F8,	$24,	$02
	DB	$F0,	$00,	$1C,	$07
	DB	$F0,	$F8,	$1B,	$07
	DB	$80

;********************************
?CORE06_WALK03_RIGHT
	DB	$F8,	$00,	$21,	$07
	DB	$F8,	$F8,	$20,	$07
	DB	$00,	$00,	$27,	$02
	DB	$00,	$F8,	$26,	$02
	DB	$F1,	$00,	$1C,	$07
	DB	$F1,	$F8,	$1B,	$07
	DB	$80

;********************************
?CORE06_WALK01_LEFT
	DB	$00,	$F8,	$23,	$22
	DB	$00,	$00,	$22,	$22
	DB	$F8,	$F8,	$1E,	$27
	DB	$F8,	$00,	$1D,	$27
	DB	$F1,	$F8,	$1C,	$27
	DB	$F1,	$00,	$1B,	$27
	DB	$80

;********************************
?CORE06_WALK02_LEFT
	DB	$F8,	$FC,	$1F,	$27
	DB	$00,	$F8,	$25,	$22
	DB	$00,	$00,	$24,	$22
	DB	$F0,	$F8,	$1C,	$27
	DB	$F0,	$00,	$1B,	$27
	DB	$80

;********************************
?CORE06_WALK03_LEFT
	DB	$F8,	$F8,	$21,	$27
	DB	$F8,	$00,	$20,	$27
	DB	$00,	$F8,	$27,	$22
	DB	$00,	$00,	$26,	$22
	DB	$F1,	$F8,	$1C,	$27
	DB	$F1,	$00,	$1B,	$27
	DB	$80

;********************************
	END
;********************************
