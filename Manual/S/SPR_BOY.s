;********************************
; SPR_BOY.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?BOY_STAND_RIGHT
	DB	$F0,	$F8,	$00,	$00
	DB	$F0,	$00,	$01,	$00
	DB	$F8,	$F8,	$08,	$00
	DB	$F8,	$00,	$09,	$00
	DB	$00,	$F8,	$14,	$02
	DB	$00,	$00,	$15,	$02
	DB	$80

;********************************
?BOY_STAND_LEFT
	DB	$F0,	$00,	$00,	$20
	DB	$F0,	$F8,	$01,	$20
	DB	$F8,	$00,	$08,	$20
	DB	$F8,	$F8,	$09,	$20
	DB	$00,	$00,	$14,	$22
	DB	$00,	$F8,	$15,	$22
	DB	$80

;********************************
?BOY_STAND_BACKRIGHT
	DB	$F0,	$F8,	$06,	$00
	DB	$F0,	$00,	$07,	$00
	DB	$F8,	$F8,	$0E,	$00
	DB	$F8,	$00,	$0F,	$00
	DB	$00,	$F8,	$18,	$02
	DB	$00,	$00,	$19,	$02
	DB	$80

;********************************
?BOY_STAND_BACKLEFT
	DB	$F0,	$00,	$06,	$20
	DB	$F0,	$F8,	$07,	$20
	DB	$F8,	$00,	$0E,	$20
	DB	$F8,	$F8,	$0F,	$20
	DB	$00,	$00,	$18,	$22
	DB	$00,	$F8,	$19,	$22
	DB	$80

;********************************
?BOY_WALK01_FRONT
	DB	$F1,	$F8,	$02,	$00
	DB	$F1,	$00,	$03,	$00
	DB	$F8,	$F8,	$10,	$00
	DB	$F8,	$00,	$11,	$00
	DB	$00,	$F8,	$1A,	$02
	DB	$00,	$00,	$1B,	$02
	DB	$80

;********************************
?BOY_WALK02_FRONT
	DB	$F0,	$F8,	$02,	$00
	DB	$F0,	$00,	$03,	$00
	DB	$F8,	$F8,	$0A,	$00
	DB	$F8,	$00,	$0B,	$00
	DB	$00,	$00,	$16,	$02
	DB	$00,	$F9,	$16,	$22
	DB	$80

;********************************
?BOY_WALK03_FRONT
	DB	$F1,	$F8,	$02,	$00
	DB	$F1,	$00,	$03,	$00
	DB	$F8,	$F8,	$2C,	$00
	DB	$F8,	$00,	$2D,	$00
	DB	$00,	$00,	$1A,	$22
	DB	$00,	$F8,	$1B,	$22
	DB	$80

;********************************
?BOY_WALK01_BACK
	DB	$F1,	$F8,	$04,	$00
	DB	$F1,	$00,	$05,	$00
	DB	$F8,	$F8,	$12,	$00
	DB	$F8,	$00,	$13,	$00
	DB	$00,	$F8,	$1C,	$02
	DB	$00,	$00,	$1D,	$02
	DB	$80

;********************************
?BOY_WALK02_BACK
	DB	$F0,	$F8,	$04,	$00
	DB	$F0,	$00,	$05,	$00
	DB	$F8,	$F8,	$0C,	$00
	DB	$F8,	$00,	$0D,	$00
	DB	$00,	$00,	$17,	$02
	DB	$00,	$F9,	$17,	$22
	DB	$80

;********************************
?BOY_WALK03_BACK
	DB	$F1,	$F8,	$04,	$00
	DB	$F1,	$00,	$05,	$00
	DB	$F8,	$F8,	$2E,	$00
	DB	$F8,	$00,	$2F,	$00
	DB	$00,	$01,	$1C,	$22
	DB	$00,	$F9,	$1D,	$22
	DB	$80

;********************************
?BOY_WALK01_RIGHT
	DB	$F1,	$F8,	$1E,	$00
	DB	$F1,	$00,	$1F,	$00
	DB	$F8,	$F8,	$20,	$00
	DB	$F8,	$00,	$21,	$00
	DB	$00,	$F8,	$26,	$02
	DB	$00,	$00,	$27,	$02
	DB	$80

;********************************
?BOY_WALK02_RIGHT
	DB	$F0,	$F8,	$1E,	$00
	DB	$F0,	$00,	$1F,	$00
	DB	$F8,	$F8,	$22,	$00
	DB	$F8,	$00,	$23,	$00
	DB	$00,	$F8,	$28,	$02
	DB	$00,	$00,	$29,	$02
	DB	$80

;********************************
?BOY_WALK03_RIGHT
	DB	$F1,	$F8,	$1E,	$00
	DB	$F1,	$00,	$1F,	$00
	DB	$F8,	$F8,	$24,	$00
	DB	$F8,	$00,	$25,	$00
	DB	$00,	$F8,	$2A,	$02
	DB	$00,	$00,	$2B,	$02
	DB	$80

;********************************
?BOY_WALK01_LEFT
	DB	$F1,	$00,	$1E,	$20
	DB	$F1,	$F8,	$1F,	$20
	DB	$F8,	$00,	$20,	$20
	DB	$F8,	$F8,	$21,	$20
	DB	$00,	$00,	$26,	$22
	DB	$00,	$F8,	$27,	$22
	DB	$80

;********************************
?BOY_WALK02_LEFT
	DB	$F0,	$00,	$1E,	$20
	DB	$F0,	$F8,	$1F,	$20
	DB	$F8,	$00,	$22,	$20
	DB	$F8,	$F8,	$23,	$20
	DB	$00,	$00,	$28,	$22
	DB	$00,	$F8,	$29,	$22
	DB	$80

;********************************
?BOY_WALK03_LEFT
	DB	$F1,	$00,	$1E,	$20
	DB	$F1,	$F8,	$1F,	$20
	DB	$F8,	$00,	$24,	$20
	DB	$F8,	$F8,	$25,	$20
	DB	$00,	$00,	$2A,	$22
	DB	$00,	$F8,	$2B,	$22
	DB	$80

;********************************
	END
;********************************