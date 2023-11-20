;********************************
; SPR_AGOVESMOKE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?SMOKE_01
	DB	$F9,	$FB,	$02,	$40
	DB	$E9,	$FB,	$02,	$00
	DB	$F1,	$03,	$00,	$20
	DB	$F1,	$FB,	$01,	$00
	DB	$F1,	$F3,	$00,	$00
	DB	$80

;********************************
?SMOKE_02
	DB	$F1,	$FB,	$03,	$00
	DB	$80

;********************************
?SMOKE_03
	DB	$F4,	$FF,	$04,	$60
	DB	$EC,	$FF,	$04,	$20
	DB	$F4,	$F7,	$04,	$40
	DB	$EC,	$F7,	$04,	$00
	DB	$80

;********************************
?SMOKE_04
	DB	$F1,	$F8,	$08,	$00
	DB	$F1,	$08,	$07,	$20
	DB	$F1,	$F0,	$07,	$00
	DB	$F1,	$00,	$08,	$00
	DB	$F9,	$00,	$06,	$60
	DB	$F9,	$08,	$05,	$60
	DB	$F9,	$F8,	$06,	$40
	DB	$F9,	$F0,	$05,	$40
	DB	$E9,	$00,	$06,	$20
	DB	$E9,	$08,	$05,	$20
	DB	$E9,	$F8,	$06,	$00
	DB	$E9,	$F0,	$05,	$00
	DB	$80

;********************************
?SMOKE_05
	DB	$F9,	$FC,	$0B,	$00
	DB	$E9,	$FC,	$0B,	$00
	DB	$F1,	$03,	$0B,	$20
	DB	$F9,	$03,	$09,	$60
	DB	$F9,	$F6,	$09,	$40
	DB	$E9,	$04,	$09,	$20
	DB	$F1,	$F6,	$0B,	$00
	DB	$F1,	$FD,	$0B,	$40
	DB	$F1,	$0B,	$0A,	$20
	DB	$F1,	$EE,	$0A,	$00
	DB	$E9,	$F4,	$09,	$00
	DB	$80

;********************************
?SMOKE_06
	DB	$F1,	$04,	$0F,	$40
	DB	$F9,	$FC,	$0D,	$40
	DB	$E9,	$FC,	$0D,	$00
	DB	$F9,	$04,	$10,	$20
	DB	$E9,	$04,	$10,	$60
	DB	$E9,	$F4,	$10,	$40
	DB	$F9,	$F4,	$10,	$00
	DB	$F1,	$0C,	$0E,	$20
	DB	$F1,	$EC,	$0E,	$00
	DB	$F1,	$FC,	$0F,	$00
	DB	$F1,	$F4,	$0F,	$00
	DB	$80

;********************************
?SMOKE_07
	DB	$F1,	$03,	$13,	$20
	DB	$E9,	$04,	$14,	$60
	DB	$E9,	$FC,	$14,	$60
	DB	$E9,	$F4,	$14,	$40
	DB	$F9,	$04,	$14,	$00
	DB	$F9,	$FC,	$14,	$20
	DB	$F9,	$F4,	$14,	$00
	DB	$F1,	$FC,	$13,	$40
	DB	$F1,	$F4,	$13,	$00
	DB	$F1,	$0C,	$12,	$20
	DB	$F1,	$EC,	$12,	$00
	DB	$80

;********************************
?SMOKE_08
	DB	$F9,	$F8,	$17,	$00
	DB	$F1,	$08,	$17,	$00
	DB	$F1,	$F0,	$17,	$00
	DB	$F1,	$00,	$17,	$00
	DB	$F1,	$F8,	$16,	$00
	DB	$E9,	$00,	$16,	$00
	DB	$F9,	$00,	$15,	$00
	DB	$E9,	$F8,	$15,	$00
	DB	$80

;********************************
?SMOKE_09
	DB	$FB,	$F8,	$17,	$00
	DB	$F3,	$00,	$17,	$00
	DB	$F3,	$F8,	$16,	$00
	DB	$FB,	$00,	$15,	$00
	DB	$EB,	$F8,	$15,	$00
	DB	$80

;********************************
	END
;********************************