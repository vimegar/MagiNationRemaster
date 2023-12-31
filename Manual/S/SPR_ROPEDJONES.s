;********************************
; SPR_ROPEDJONES.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?TONY_STRUGGLE01_RIGHT
	DB	$00,	$00,	$13,	$02
	DB	$00,	$F8,	$12,	$02
	DB	$F8,	$00,	$09,	$03
	DB	$F8,	$F8,	$08,	$03
	DB	$F0,	$00,	$03,	$00
	DB	$F0,	$F8,	$02,	$00
	DB	$80

;********************************
?TONY_STRUGGLE02_RIGHT
	DB	$00,	$00,	$15,	$02
	DB	$00,	$F8,	$14,	$02
	DB	$F8,	$00,	$0B,	$03
	DB	$F8,	$F8,	$0A,	$03
	DB	$F0,	$00,	$03,	$00
	DB	$F0,	$F8,	$02,	$00
	DB	$80

;********************************
?TONY_STRUGGLE03_RIGHT
	DB	$F0,	$00,	$03,	$00
	DB	$F0,	$F8,	$02,	$00
	DB	$00,	$00,	$17,	$02
	DB	$00,	$F8,	$16,	$02
	DB	$F8,	$00,	$0D,	$03
	DB	$F8,	$F8,	$0C,	$03
	DB	$80

;********************************
?TONY_STRUGGLE01_LEFT
	DB	$00,	$F8,	$13,	$22
	DB	$00,	$00,	$12,	$22
	DB	$F8,	$F8,	$09,	$23
	DB	$F8,	$00,	$08,	$23
	DB	$F0,	$F8,	$03,	$20
	DB	$F0,	$00,	$02,	$20
	DB	$80

;********************************
?TONY_STRUGGLE02_LEFT
	DB	$00,	$F8,	$15,	$22
	DB	$00,	$00,	$14,	$22
	DB	$F8,	$F8,	$0B,	$23
	DB	$F8,	$00,	$0A,	$23
	DB	$F0,	$F8,	$03,	$20
	DB	$F0,	$00,	$02,	$20
	DB	$80

;********************************
?TONY_STRUGGLE03_LEFT
	DB	$F0,	$F8,	$03,	$20
	DB	$F0,	$00,	$02,	$20
	DB	$00,	$F8,	$17,	$22
	DB	$00,	$00,	$16,	$22
	DB	$F8,	$F8,	$0D,	$23
	DB	$F8,	$00,	$0C,	$23
	DB	$80

;********************************
?TONY_STRUGGLE01_FRONT
	DB	$00,	$00,	$11,	$02
	DB	$00,	$F8,	$10,	$02
	DB	$F8,	$00,	$07,	$03
	DB	$F8,	$F8,	$06,	$03
	DB	$F0,	$00,	$01,	$00
	DB	$F0,	$F8,	$00,	$00
	DB	$80

;********************************
?TONY_STRUGGLE02_FRONT
	DB	$00,	$00,	$0F,	$02
	DB	$00,	$F8,	$0E,	$02
	DB	$F8,	$00,	$05,	$03
	DB	$F8,	$F8,	$04,	$03
	DB	$F0,	$00,	$01,	$00
	DB	$F0,	$F8,	$00,	$00
	DB	$80

;********************************
?TONY_STRUGGLE03_FRONT
	DB	$00,	$00,	$25,	$02
	DB	$00,	$F8,	$24,	$02
	DB	$F8,	$00,	$27,	$03
	DB	$F8,	$F8,	$26,	$03
	DB	$F0,	$00,	$01,	$00
	DB	$F0,	$F8,	$00,	$00
	DB	$80

;********************************
?TONY_BREAKFREE01
	DB	$00,	$00,	$1F,	$02
	DB	$00,	$F8,	$1E,	$02
	DB	$F8,	$00,	$1B,	$01
	DB	$F8,	$F8,	$1A,	$03
	DB	$F0,	$00,	$03,	$00
	DB	$F0,	$F8,	$02,	$00
	DB	$80

;********************************
?TONY_BREAKFREE02
	DB	$00,	$00,	$21,	$02
	DB	$00,	$F8,	$20,	$02
	DB	$F8,	$00,	$1D,	$01
	DB	$F8,	$F8,	$1C,	$01
	DB	$F0,	$00,	$03,	$00
	DB	$F0,	$F8,	$02,	$00
	DB	$80

;********************************
?TONY_BREAKFREE03
	DB	$00,	$00,	$23,	$02
	DB	$00,	$F8,	$22,	$02
	DB	$80

;********************************
?TONY_OUCH01_RIGHT
	DB	$00,	$00,	$19,	$02
	DB	$00,	$F8,	$18,	$02
	DB	$F8,	$00,	$03,	$00
	DB	$F8,	$F8,	$02,	$00
	DB	$80

;********************************
?TONY_OUCH02_RIGHT
	DB	$FF,	$00,	$19,	$02
	DB	$FF,	$F8,	$18,	$02
	DB	$F7,	$00,	$03,	$00
	DB	$F7,	$F8,	$02,	$00
	DB	$80

;********************************
?TONY_OUCH03_RIGHT
	DB	$FE,	$00,	$19,	$02
	DB	$FE,	$F8,	$18,	$02
	DB	$F6,	$00,	$03,	$00
	DB	$F6,	$F8,	$02,	$00
	DB	$80

;********************************
?TONY_OUCH01_LEFT
	DB	$00,	$F8,	$19,	$22
	DB	$00,	$00,	$18,	$22
	DB	$F8,	$F8,	$03,	$20
	DB	$F8,	$00,	$02,	$20
	DB	$80

;********************************
?TONY_OUCH02_LEFT
	DB	$FF,	$F8,	$19,	$22
	DB	$FF,	$00,	$18,	$22
	DB	$F7,	$F8,	$03,	$20
	DB	$F7,	$00,	$02,	$20
	DB	$80

;********************************
?TONY_OUCH03_LEFT
	DB	$FE,	$F8,	$19,	$22
	DB	$FE,	$00,	$18,	$22
	DB	$F6,	$F8,	$03,	$20
	DB	$F6,	$00,	$02,	$20
	DB	$80

;********************************
	END
;********************************
