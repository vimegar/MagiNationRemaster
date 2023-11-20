;********************************
; SPR_CORE08.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?CORE08_STAND_RIGHT
	DB	$F0,	$F8,	$00,	$07
	DB	$F0,	$00,	$01,	$07
	DB	$F8,	$F8,	$06,	$07
	DB	$F8,	$00,	$07,	$07
	DB	$00,	$F8,	$10,	$07
	DB	$00,	$00,	$11,	$07
	DB	$80

;********************************
?CORE08_STAND_LEFT
	DB	$F0,	$00,	$00,	$27
	DB	$F0,	$F8,	$01,	$27
	DB	$F8,	$00,	$06,	$27
	DB	$F8,	$F8,	$07,	$27
	DB	$00,	$00,	$10,	$27
	DB	$00,	$F8,	$11,	$27
	DB	$80

;********************************
?CORE08_STAND_BACKRIGHT
	DB	$F0,	$F8,	$04,	$07
	DB	$F0,	$00,	$05,	$07
	DB	$F8,	$F8,	$0A,	$07
	DB	$F8,	$00,	$0B,	$07
	DB	$00,	$F8,	$14,	$00
	DB	$00,	$00,	$15,	$07
	DB	$80

;********************************
?CORE08_STAND_BACKLEFT
	DB	$F0,	$00,	$04,	$27
	DB	$F0,	$F8,	$05,	$27
	DB	$F8,	$00,	$0A,	$27
	DB	$F8,	$F8,	$0B,	$27
	DB	$00,	$00,	$14,	$20
	DB	$00,	$F8,	$15,	$27
	DB	$80

;********************************
?CORE08_WALK01_FRONT
	DB	$F1,	$F8,	$02,	$27
	DB	$F1,	$00,	$02,	$07
	DB	$F8,	$F8,	$0C,	$07
	DB	$F8,	$00,	$0D,	$07
	DB	$00,	$F8,	$16,	$07
	DB	$00,	$00,	$17,	$07
	DB	$80

;********************************
?CORE08_WALK02_FRONT
	DB	$F0,	$F8,	$02,	$27
	DB	$F0,	$00,	$02,	$07
	DB	$F8,	$F8,	$08,	$27
	DB	$F8,	$00,	$08,	$07
	DB	$00,	$F8,	$12,	$27
	DB	$00,	$00,	$12,	$07
	DB	$80

;********************************
?CORE08_WALK03_FRONT
	DB	$F1,	$F8,	$02,	$27
	DB	$F1,	$00,	$02,	$07
	DB	$F8,	$00,	$0C,	$27
	DB	$F8,	$F8,	$0D,	$27
	DB	$00,	$00,	$16,	$27
	DB	$00,	$F8,	$17,	$27
	DB	$80

;********************************
?CORE08_WALK01_BACK
	DB	$F1,	$F8,	$03,	$27
	DB	$F1,	$00,	$03,	$07
	DB	$F8,	$F8,	$0E,	$07
	DB	$F8,	$00,	$0F,	$07
	DB	$00,	$F8,	$18,	$07
	DB	$00,	$00,	$19,	$00
	DB	$80

;********************************
?CORE08_WALK02_BACK
	DB	$F0,	$F8,	$03,	$27
	DB	$F0,	$00,	$03,	$07
	DB	$F8,	$F8,	$09,	$27
	DB	$F8,	$00,	$09,	$07
	DB	$00,	$F8,	$13,	$27
	DB	$00,	$00,	$13,	$07
	DB	$80

;********************************
?CORE08_WALK03_BACK
	DB	$F1,	$F8,	$03,	$27
	DB	$F1,	$00,	$03,	$07
	DB	$F8,	$00,	$0E,	$27
	DB	$F8,	$F8,	$0F,	$27
	DB	$00,	$00,	$18,	$27
	DB	$00,	$F8,	$19,	$20
	DB	$80

;********************************
?CORE08_WALK01_RIGHT
	DB	$F1,	$F8,	$1A,	$07
	DB	$F1,	$00,	$1B,	$07
	DB	$F8,	$F8,	$1C,	$07
	DB	$F8,	$00,	$1D,	$07
	DB	$00,	$F8,	$22,	$07
	DB	$00,	$00,	$23,	$07
	DB	$80

;********************************
?CORE08_WALK02_RIGHT
	DB	$F0,	$F8,	$1A,	$07
	DB	$F0,	$00,	$1B,	$07
	DB	$F8,	$F8,	$1E,	$07
	DB	$F8,	$00,	$1F,	$07
	DB	$00,	$F8,	$24,	$07
	DB	$00,	$00,	$25,	$07
	DB	$80

;********************************
?CORE08_WALK03_RIGHT
	DB	$F1,	$F8,	$1A,	$07
	DB	$F1,	$00,	$1B,	$07
	DB	$F8,	$F8,	$20,	$07
	DB	$F8,	$00,	$21,	$07
	DB	$00,	$F8,	$26,	$07
	DB	$00,	$00,	$27,	$07
	DB	$80

;********************************
?CORE08_WALK01_LEFT
	DB	$F1,	$00,	$1A,	$27
	DB	$F1,	$F8,	$1B,	$27
	DB	$F8,	$00,	$1C,	$27
	DB	$F8,	$F8,	$1D,	$27
	DB	$00,	$00,	$22,	$27
	DB	$00,	$F8,	$23,	$27
	DB	$80

;********************************
?CORE08_WALK02_LEFT
	DB	$F0,	$00,	$1A,	$27
	DB	$F0,	$F8,	$1B,	$27
	DB	$F8,	$00,	$1E,	$27
	DB	$F8,	$F8,	$1F,	$27
	DB	$00,	$00,	$24,	$27
	DB	$00,	$F8,	$25,	$27
	DB	$80

;********************************
?CORE08_WALK03_LEFT
	DB	$F1,	$00,	$1A,	$27
	DB	$F1,	$F8,	$1B,	$27
	DB	$F8,	$00,	$20,	$27
	DB	$F8,	$F8,	$21,	$27
	DB	$00,	$00,	$26,	$27
	DB	$00,	$F8,	$27,	$27
	DB	$80

;********************************
	END
;********************************
