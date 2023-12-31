;Size:721
;********************************
; SPR_AGRAM.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?AGRAM_STAND_RIGHT
	DB	$E0,	$04,	$3A,	$07
	DB	$E0,	$FC,	$39,	$07
	DB	$E0,	$F4,	$38,	$07
	DB	$E8,	$04,	$3D,	$07
	DB	$E8,	$FC,	$3C,	$07
	DB	$E8,	$F4,	$3B,	$07
	DB	$F0,	$FC,	$3F,	$07
	DB	$F0,	$F4,	$3E,	$07
	DB	$F0,	$04,	$40,	$07
	DB	$F8,	$04,	$43,	$07
	DB	$F8,	$FC,	$42,	$07
	DB	$F8,	$F4,	$41,	$07
	DB	$00,	$04,	$46,	$07
	DB	$00,	$FC,	$45,	$07
	DB	$00,	$F4,	$44,	$07
	DB	$80

;********************************
?AGRAM_STAND_LEFT
	DB	$E0,	$F4,	$3A,	$27
	DB	$E0,	$FC,	$39,	$27
	DB	$E0,	$04,	$38,	$27
	DB	$E8,	$F4,	$3D,	$27
	DB	$E8,	$FC,	$3C,	$27
	DB	$E8,	$04,	$3B,	$27
	DB	$F0,	$FC,	$3F,	$27
	DB	$F0,	$04,	$3E,	$27
	DB	$F0,	$F4,	$40,	$27
	DB	$F8,	$F4,	$43,	$27
	DB	$F8,	$FC,	$42,	$27
	DB	$F8,	$04,	$41,	$27
	DB	$00,	$F4,	$46,	$27
	DB	$00,	$FC,	$45,	$27
	DB	$00,	$04,	$44,	$27
	DB	$80

;********************************
?AGRAM_WALK01_FRONT
	DB	$00,	$04,	$12,	$07
	DB	$00,	$FC,	$11,	$07
	DB	$00,	$F4,	$10,	$00
	DB	$F8,	$04,	$0F,	$07
	DB	$F8,	$FC,	$0E,	$07
	DB	$F8,	$F4,	$0D,	$07
	DB	$F0,	$04,	$0C,	$07
	DB	$F0,	$FC,	$0B,	$07
	DB	$F0,	$F4,	$0A,	$07
	DB	$E9,	$04,	$02,	$27
	DB	$E9,	$FC,	$03,	$07
	DB	$E9,	$F4,	$02,	$07
	DB	$E1,	$04,	$00,	$27
	DB	$E1,	$FC,	$01,	$07
	DB	$E1,	$F4,	$00,	$07
	DB	$80

;********************************
?AGRAM_WALK02_FRONT
	DB	$00,	$04,	$08,	$27
	DB	$00,	$FC,	$09,	$07
	DB	$00,	$F4,	$08,	$07
	DB	$F8,	$04,	$06,	$27
	DB	$F8,	$FC,	$07,	$07
	DB	$F8,	$F4,	$06,	$07
	DB	$F0,	$04,	$04,	$27
	DB	$F0,	$FC,	$05,	$07
	DB	$F0,	$F4,	$04,	$07
	DB	$E8,	$04,	$02,	$27
	DB	$E8,	$FC,	$03,	$07
	DB	$E8,	$F4,	$02,	$07
	DB	$E0,	$04,	$00,	$27
	DB	$E0,	$FC,	$01,	$07
	DB	$E0,	$F4,	$00,	$07
	DB	$80

;********************************
?AGRAM_WALK03_FRONT
	DB	$00,	$F4,	$12,	$27
	DB	$00,	$FC,	$11,	$27
	DB	$00,	$04,	$10,	$20
	DB	$F8,	$F4,	$0F,	$27
	DB	$F8,	$FC,	$0E,	$27
	DB	$F8,	$04,	$0D,	$27
	DB	$F0,	$F4,	$0C,	$27
	DB	$F0,	$FC,	$0B,	$27
	DB	$F0,	$04,	$0A,	$27
	DB	$E9,	$04,	$02,	$27
	DB	$E9,	$FC,	$03,	$07
	DB	$E9,	$F4,	$02,	$07
	DB	$E1,	$04,	$00,	$27
	DB	$E1,	$FC,	$01,	$07
	DB	$E1,	$F4,	$00,	$07
	DB	$80

;********************************
?AGRAM_WALK01_BACK
	DB	$00,	$04,	$21,	$07
	DB	$00,	$FC,	$20,	$07
	DB	$00,	$F4,	$1F,	$07
	DB	$F8,	$FC,	$18,	$07
	DB	$F8,	$04,	$19,	$27
	DB	$F8,	$F4,	$19,	$07
	DB	$F1,	$04,	$17,	$27
	DB	$F1,	$FC,	$18,	$07
	DB	$F1,	$F4,	$17,	$07
	DB	$E9,	$04,	$15,	$27
	DB	$E9,	$FC,	$16,	$07
	DB	$E9,	$F4,	$15,	$07
	DB	$E1,	$04,	$13,	$27
	DB	$E1,	$FC,	$14,	$07
	DB	$E1,	$F4,	$13,	$07
	DB	$80

;********************************
?AGRAM_WALK02_BACK
	DB	$F8,	$FC,	$18,	$07
	DB	$F8,	$04,	$19,	$27
	DB	$F8,	$F4,	$19,	$07
	DB	$00,	$04,	$1A,	$27
	DB	$00,	$FC,	$1B,	$07
	DB	$00,	$F4,	$1A,	$07
	DB	$F0,	$04,	$17,	$27
	DB	$F0,	$FC,	$18,	$07
	DB	$F0,	$F4,	$17,	$07
	DB	$E8,	$04,	$15,	$27
	DB	$E8,	$FC,	$16,	$07
	DB	$E8,	$F4,	$15,	$07
	DB	$E0,	$04,	$13,	$27
	DB	$E0,	$FC,	$14,	$07
	DB	$E0,	$F4,	$13,	$07
	DB	$80

;********************************
?AGRAM_WALK03_BACK
	DB	$00,	$F4,	$21,	$27
	DB	$00,	$FC,	$20,	$27
	DB	$00,	$04,	$1F,	$27
	DB	$F8,	$FC,	$18,	$27
	DB	$F8,	$F4,	$19,	$07
	DB	$F8,	$04,	$19,	$27
	DB	$F1,	$04,	$17,	$27
	DB	$F1,	$FC,	$18,	$07
	DB	$F1,	$F4,	$17,	$07
	DB	$E9,	$04,	$15,	$27
	DB	$E9,	$FC,	$16,	$07
	DB	$E9,	$F4,	$15,	$07
	DB	$E1,	$04,	$13,	$27
	DB	$E1,	$FC,	$14,	$07
	DB	$E1,	$F4,	$13,	$07
	DB	$80

;********************************
?AGRAM_WALK01_RIGHT
	DB	$F0,	$00,	$23,	$07
	DB	$F0,	$F8,	$22,	$07
	DB	$F8,	$00,	$25,	$07
	DB	$F8,	$F8,	$24,	$07
	DB	$00,	$00,	$27,	$07
	DB	$00,	$F8,	$26,	$07
	DB	$E9,	$00,	$2B,	$07
	DB	$E9,	$F8,	$2A,	$07
	DB	$E1,	$00,	$29,	$07
	DB	$E1,	$F8,	$28,	$07
	DB	$80

;********************************
?AGRAM_WALK02_RIGHT
	DB	$00,	$00,	$31,	$07
	DB	$00,	$F8,	$30,	$07
	DB	$F8,	$00,	$2F,	$07
	DB	$F8,	$F8,	$2E,	$07
	DB	$F0,	$00,	$2D,	$07
	DB	$F0,	$F8,	$2C,	$07
	DB	$E8,	$00,	$2B,	$07
	DB	$E8,	$F8,	$2A,	$07
	DB	$E0,	$00,	$29,	$07
	DB	$E0,	$F8,	$28,	$07
	DB	$80

;********************************
?AGRAM_WALK03_RIGHT
	DB	$00,	$00,	$37,	$07
	DB	$00,	$F8,	$36,	$07
	DB	$F8,	$00,	$35,	$07
	DB	$F8,	$F8,	$34,	$07
	DB	$F0,	$00,	$33,	$07
	DB	$F0,	$F8,	$32,	$07
	DB	$E9,	$00,	$2B,	$07
	DB	$E9,	$F8,	$2A,	$07
	DB	$E1,	$00,	$29,	$07
	DB	$E1,	$F8,	$28,	$07
	DB	$80

;********************************
?AGRAM_WALK01_LEFT
	DB	$F0,	$F9,	$23,	$27
	DB	$F0,	$01,	$22,	$27
	DB	$F8,	$F9,	$25,	$27
	DB	$F8,	$01,	$24,	$27
	DB	$00,	$F9,	$27,	$27
	DB	$00,	$01,	$26,	$27
	DB	$E9,	$F9,	$2B,	$27
	DB	$E9,	$01,	$2A,	$27
	DB	$E1,	$F9,	$29,	$27
	DB	$E1,	$01,	$28,	$27
	DB	$80

;********************************
?AGRAM_WALK02_LEFT
	DB	$00,	$F9,	$31,	$27
	DB	$00,	$01,	$30,	$27
	DB	$F8,	$F9,	$2F,	$27
	DB	$F8,	$01,	$2E,	$27
	DB	$F0,	$F9,	$2D,	$27
	DB	$F0,	$01,	$2C,	$27
	DB	$E8,	$F9,	$2B,	$27
	DB	$E8,	$01,	$2A,	$27
	DB	$E0,	$F9,	$29,	$27
	DB	$E0,	$01,	$28,	$27
	DB	$80

;********************************
?AGRAM_WALK03_LEFT
	DB	$00,	$F9,	$37,	$27
	DB	$00,	$01,	$36,	$27
	DB	$F8,	$F9,	$35,	$27
	DB	$F8,	$01,	$34,	$27
	DB	$F0,	$F9,	$33,	$27
	DB	$F0,	$01,	$32,	$27
	DB	$E9,	$F9,	$2B,	$27
	DB	$E9,	$01,	$2A,	$27
	DB	$E1,	$F9,	$29,	$27
	DB	$E1,	$01,	$28,	$27
	DB	$80

;********************************
	END
;********************************
