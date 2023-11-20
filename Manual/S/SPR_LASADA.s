;********************************
; SPR_LASADA.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?LASADA_STAND_RIGHT
	DB	$F0,	$F8,	$00,	$06
	DB	$F0,	$00,	$01,	$06
	DB	$F8,	$F8,	$08,	$06
	DB	$F8,	$00,	$09,	$06
	DB	$00,	$F8,	$0F,	$04
	DB	$00,	$00,	$10,	$04
	DB	$80

;********************************
?LASADA_STAND_LEFT
	DB	$F0,	$00,	$00,	$26
	DB	$F0,	$F8,	$01,	$26
	DB	$F8,	$00,	$08,	$26
	DB	$F8,	$F8,	$09,	$26
	DB	$00,	$00,	$0F,	$24
	DB	$00,	$F8,	$10,	$24
	DB	$80

;********************************
?LASADA_STAND_BACKRIGHT
	DB	$F0,	$F8,	$06,	$06
	DB	$F0,	$00,	$07,	$06
	DB	$F8,	$F8,	$0D,	$06
	DB	$F8,	$00,	$0E,	$06
	DB	$00,	$F8,	$13,	$04
	DB	$00,	$00,	$14,	$04
	DB	$80

;********************************
?LASADA_STAND_BACKLEFT
	DB	$F0,	$00,	$06,	$26
	DB	$F0,	$F8,	$07,	$26
	DB	$F8,	$00,	$0D,	$26
	DB	$F8,	$F8,	$0E,	$26
	DB	$00,	$00,	$13,	$24
	DB	$00,	$F8,	$14,	$24
	DB	$80

;********************************
?LASADA_WALK01_FRONT
	DB	$F1,	$F8,	$02,	$06
	DB	$F1,	$00,	$03,	$06
	DB	$F8,	$F8,	$15,	$06
	DB	$F8,	$00,	$16,	$06
	DB	$00,	$FC,	$17,	$04
	DB	$80

;********************************
?LASADA_WALK02_FRONT
	DB	$F0,	$F8,	$02,	$06
	DB	$F0,	$00,	$03,	$06
	DB	$00,	$00,	$11,	$04
	DB	$00,	$F9,	$11,	$24
	DB	$F8,	$00,	$0A,	$06
	DB	$F8,	$F8,	$0A,	$26
	DB	$80

;********************************
?LASADA_WALK03_FRONT
	DB	$F1,	$F8,	$02,	$06
	DB	$F1,	$00,	$03,	$06
	DB	$F8,	$00,	$15,	$26
	DB	$F8,	$F8,	$16,	$26
	DB	$00,	$FC,	$17,	$24
	DB	$80

;********************************
?LASADA_WALK01_BACK
	DB	$F1,	$F8,	$04,	$06
	DB	$F1,	$00,	$05,	$06
	DB	$F8,	$F8,	$18,	$06
	DB	$F8,	$00,	$19,	$06
	DB	$00,	$F8,	$1A,	$04
	DB	$00,	$00,	$1B,	$04
	DB	$80

;********************************
?LASADA_WALK02_BACK
	DB	$F0,	$F8,	$04,	$06
	DB	$F0,	$00,	$05,	$06
	DB	$F8,	$F8,	$0B,	$06
	DB	$F8,	$00,	$0C,	$06
	DB	$00,	$00,	$12,	$04
	DB	$00,	$F9,	$12,	$24
	DB	$80

;********************************
?LASADA_WALK03_BACK
	DB	$F1,	$F8,	$04,	$06
	DB	$F1,	$00,	$05,	$06
	DB	$00,	$00,	$1A,	$24
	DB	$00,	$F8,	$1B,	$24
	DB	$F8,	$F8,	$2A,	$06
	DB	$F8,	$00,	$2B,	$06
	DB	$80

;********************************
?LASADA_WALK01_RIGHT
	DB	$F1,	$F8,	$1C,	$06
	DB	$F1,	$00,	$1D,	$06
	DB	$F8,	$F8,	$1E,	$06
	DB	$F8,	$00,	$1F,	$06
	DB	$00,	$F8,	$24,	$04
	DB	$00,	$00,	$25,	$04
	DB	$80

;********************************
?LASADA_WALK02_RIGHT
	DB	$00,	$F8,	$26,	$04
	DB	$00,	$00,	$27,	$04
	DB	$F0,	$F8,	$1C,	$06
	DB	$F0,	$00,	$1D,	$06
	DB	$F8,	$F8,	$20,	$06
	DB	$F8,	$00,	$21,	$00
	DB	$80

;********************************
?LASADA_WALK03_RIGHT
	DB	$F1,	$F8,	$1C,	$06
	DB	$F1,	$00,	$1D,	$06
	DB	$00,	$F8,	$28,	$04
	DB	$00,	$00,	$29,	$04
	DB	$F8,	$F8,	$22,	$06
	DB	$F8,	$00,	$23,	$06
	DB	$80

;********************************
?LASADA_WALK01_LEFT
	DB	$F1,	$00,	$1C,	$26
	DB	$F1,	$F8,	$1D,	$26
	DB	$F8,	$00,	$1E,	$26
	DB	$F8,	$F8,	$1F,	$26
	DB	$00,	$00,	$24,	$24
	DB	$00,	$F8,	$25,	$24
	DB	$80

;********************************
?LASADA_WALK02_LEFT
	DB	$00,	$00,	$26,	$24
	DB	$00,	$F8,	$27,	$24
	DB	$F0,	$00,	$1C,	$26
	DB	$F0,	$F8,	$1D,	$26
	DB	$F8,	$00,	$20,	$26
	DB	$F8,	$F8,	$21,	$20
	DB	$80

;********************************
?LASADA_WALK03_LEFT
	DB	$F1,	$00,	$1C,	$26
	DB	$F1,	$F8,	$1D,	$26
	DB	$00,	$00,	$28,	$24
	DB	$00,	$F8,	$29,	$24
	DB	$F8,	$00,	$22,	$26
	DB	$F8,	$F8,	$23,	$26
	DB	$80

;********************************
	END
;********************************