;********************************
; SPR_CORE01.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?CORE01_STAND_RIGHT
	DB	$F0,	$F8,	$00,	$07
	DB	$F0,	$00,	$01,	$07
	DB	$F8,	$F8,	$08,	$07
	DB	$F8,	$00,	$09,	$07
	DB	$00,	$F8,	$11,	$02
	DB	$00,	$00,	$12,	$02
	DB	$80

;********************************
?CORE01_STAND_LEFT
	DB	$F0,	$00,	$00,	$27
	DB	$F0,	$F8,	$01,	$27
	DB	$F8,	$00,	$08,	$27
	DB	$F8,	$F8,	$09,	$27
	DB	$00,	$00,	$11,	$22
	DB	$00,	$F8,	$12,	$22
	DB	$80

;********************************
?CORE01_STAND_BACKRIGHT
	DB	$F0,	$F8,	$06,	$07
	DB	$F0,	$00,	$07,	$07
	DB	$F8,	$FE,	$0C,	$07
	DB	$00,	$FE,	$15,	$02
	DB	$80

;********************************
?CORE01_STAND_BACKLEFT
	DB	$F0,	$01,	$06,	$27
	DB	$F0,	$F9,	$07,	$27
	DB	$F8,	$FB,	$0C,	$27
	DB	$00,	$FB,	$15,	$22
	DB	$80

;********************************
?CORE01_WALK01_FRONT
	DB	$F1,	$F8,	$02,	$07
	DB	$F1,	$00,	$03,	$07
	DB	$F8,	$F8,	$0D,	$07
	DB	$F8,	$00,	$0E,	$07
	DB	$00,	$FC,	$16,	$02
	DB	$80

;********************************
?CORE01_WALK02_FRONT
	DB	$F0,	$F8,	$02,	$07
	DB	$F0,	$00,	$03,	$07
	DB	$F8,	$F8,	$0A,	$07
	DB	$F8,	$00,	$0A,	$27
	DB	$00,	$F9,	$13,	$22
	DB	$00,	$00,	$13,	$02
	DB	$80

;********************************
?CORE01_WALK03_FRONT
	DB	$F1,	$F8,	$02,	$07
	DB	$F1,	$00,	$03,	$07
	DB	$F8,	$00,	$0D,	$27
	DB	$F8,	$F8,	$0E,	$27
	DB	$00,	$FC,	$16,	$22
	DB	$80

;********************************
?CORE01_WALK01_BACK
	DB	$F1,	$F8,	$04,	$07
	DB	$F1,	$00,	$05,	$07
	DB	$F8,	$F8,	$0F,	$07
	DB	$F8,	$00,	$10,	$07
	DB	$00,	$FC,	$17,	$02
	DB	$80

;********************************
?CORE01_WALK02_BACK
	DB	$F0,	$F8,	$04,	$07
	DB	$F0,	$00,	$05,	$07
	DB	$F8,	$F8,	$0B,	$07
	DB	$F8,	$00,	$0B,	$27
	DB	$00,	$F9,	$14,	$22
	DB	$00,	$00,	$14,	$02
	DB	$80

;********************************
?CORE01_WALK03_BACK
	DB	$F1,	$F8,	$04,	$07
	DB	$F1,	$00,	$05,	$07
	DB	$F8,	$00,	$0F,	$27
	DB	$F8,	$F8,	$10,	$27
	DB	$00,	$FC,	$17,	$22
	DB	$80

;********************************
?CORE01_WALK01_RIGHT
	DB	$F1,	$F8,	$18,	$07
	DB	$F1,	$00,	$19,	$07
	DB	$F8,	$F8,	$1A,	$07
	DB	$F8,	$00,	$1B,	$07
	DB	$00,	$F8,	$1F,	$02
	DB	$00,	$00,	$20,	$02
	DB	$80

;********************************
?CORE01_WALK02_RIGHT
	DB	$F0,	$F8,	$18,	$07
	DB	$F0,	$00,	$19,	$07
	DB	$F8,	$FD,	$1C,	$07
	DB	$00,	$FC,	$21,	$02
	DB	$80

;********************************
?CORE01_WALK03_RIGHT
	DB	$F1,	$F8,	$18,	$07
	DB	$F1,	$00,	$19,	$07
	DB	$F8,	$F8,	$1D,	$07
	DB	$F8,	$00,	$1E,	$07
	DB	$00,	$F8,	$22,	$02
	DB	$00,	$00,	$23,	$02
	DB	$80

;********************************
?CORE01_WALK01_LEFT
	DB	$F1,	$00,	$18,	$27
	DB	$F1,	$F8,	$19,	$27
	DB	$F8,	$00,	$1A,	$27
	DB	$F8,	$F8,	$1B,	$27
	DB	$00,	$00,	$1F,	$22
	DB	$00,	$F8,	$20,	$22
	DB	$80

;********************************
?CORE01_WALK02_LEFT
	DB	$F0,	$00,	$18,	$27
	DB	$F0,	$F8,	$19,	$27
	DB	$F8,	$FB,	$1C,	$27
	DB	$00,	$FC,	$21,	$22
	DB	$80

;********************************
?CORE01_WALK03_LEFT
	DB	$F1,	$00,	$18,	$27
	DB	$F1,	$F8,	$19,	$27
	DB	$F8,	$00,	$1D,	$27
	DB	$F8,	$F8,	$1E,	$27
	DB	$00,	$00,	$22,	$22
	DB	$00,	$F8,	$23,	$22
	DB	$80

;********************************
	END
;********************************