;Size:557
;********************************
; SPR_TONYJONESBATTLE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?TONY_STANDFRONT
	DB	$F0,	$00,	$19,	$08
	DB	$F0,	$F8,	$18,	$08
	DB	$00,	$F9,	$1B,	$2A
	DB	$00,	$00,	$1B,	$0A
	DB	$F8,	$F8,	$1A,	$29
	DB	$F8,	$00,	$1A,	$09
	DB	$80

;********************************
?TONY_WIN
	DB	$F8,	$F8,	$1E,	$29
	DB	$F8,	$00,	$1E,	$09
	DB	$F0,	$00,	$1D,	$08
	DB	$F0,	$F8,	$1C,	$08
	DB	$00,	$F9,	$1B,	$2A
	DB	$00,	$00,	$1B,	$0A
	DB	$80

;********************************
?TONY_STANDBACK
	DB	$00,	$F9,	$17,	$2A
	DB	$00,	$00,	$17,	$0A
	DB	$F8,	$F8,	$16,	$29
	DB	$F8,	$00,	$16,	$09
	DB	$F0,	$00,	$15,	$08
	DB	$F0,	$F8,	$14,	$08
	DB	$80

;********************************
?TONY_SUMMON01
	DB	$00,	$00,	$0E,	$0A
	DB	$00,	$F8,	$0D,	$0A
	DB	$F0,	$00,	$0A,	$08
	DB	$F0,	$F8,	$09,	$08
	DB	$F8,	$00,	$0C,	$09
	DB	$F8,	$F8,	$0B,	$09
	DB	$80

;********************************
?TONY_SUMMON02
	DB	$F8,	$00,	$0F,	$09
	DB	$00,	$00,	$0E,	$0A
	DB	$00,	$F8,	$0D,	$0A
	DB	$F0,	$00,	$0A,	$08
	DB	$F0,	$F8,	$09,	$08
	DB	$F8,	$F8,	$0B,	$09
	DB	$80

;********************************
?TONY_SUMMON03
	DB	$FA,	$06,	$12,	$08
	DB	$F8,	$00,	$0F,	$09
	DB	$00,	$00,	$0E,	$0A
	DB	$00,	$F8,	$0D,	$0A
	DB	$F0,	$00,	$0A,	$08
	DB	$F0,	$F8,	$09,	$08
	DB	$F8,	$F8,	$0B,	$09
	DB	$80

;********************************
?TONY_SUMMON04
	DB	$F9,	$05,	$13,	$08
	DB	$F8,	$00,	$0F,	$09
	DB	$00,	$00,	$0E,	$0A
	DB	$00,	$F8,	$0D,	$0A
	DB	$F0,	$00,	$0A,	$08
	DB	$F0,	$F8,	$09,	$08
	DB	$F8,	$F8,	$0B,	$09
	DB	$80

;********************************
?TONY_LOSE
	DB	$03,	$FC,	$08,	$09
	DB	$03,	$FB,	$07,	$0A
	DB	$02,	$F3,	$06,	$0A
	DB	$FB,	$FD,	$05,	$09
	DB	$FB,	$F5,	$04,	$09
	DB	$FB,	$FE,	$03,	$08
	DB	$FB,	$F6,	$02,	$08
	DB	$F3,	$FE,	$01,	$08
	DB	$F3,	$F6,	$00,	$08
	DB	$80

;********************************
?TONY_STAND_BACKLEFT
	DB	$00,	$F8,	$0E,	$2A
	DB	$00,	$00,	$0D,	$2A
	DB	$F0,	$F8,	$0A,	$28
	DB	$F0,	$00,	$09,	$28
	DB	$F8,	$F8,	$0C,	$29
	DB	$F8,	$00,	$0B,	$29
	DB	$80

;********************************
?TONY_TAUNT
	DB	$00,	$F9,	$17,	$2A
	DB	$00,	$00,	$17,	$0A
	DB	$F8,	$F1,	$2B,	$28
	DB	$F8,	$08,	$2B,	$08
	DB	$F8,	$00,	$2A,	$09
	DB	$F8,	$F8,	$29,	$09
	DB	$F0,	$00,	$0A,	$08
	DB	$F0,	$F8,	$09,	$08
	DB	$80

;********************************
?TONY_IMPATIENT01
	DB	$00,	$00,	$20,	$0A
	DB	$00,	$F8,	$1F,	$0A
	DB	$F8,	$00,	$36,	$09
	DB	$F8,	$F8,	$35,	$09
	DB	$F0,	$00,	$34,	$08
	DB	$F0,	$F8,	$33,	$08
	DB	$80

;********************************
?TONY_IMPATIENT02
	DB	$00,	$00,	$37,	$0A
	DB	$00,	$F8,	$1F,	$0A
	DB	$F8,	$00,	$36,	$09
	DB	$F8,	$F8,	$35,	$09
	DB	$F0,	$00,	$34,	$08
	DB	$F0,	$F8,	$33,	$08
	DB	$80

;********************************
?TONY_FOCUS01
	DB	$F0,	$00,	$19,	$08
	DB	$F0,	$F8,	$18,	$08
	DB	$F8,	$00,	$22,	$09
	DB	$F8,	$F8,	$21,	$09
	DB	$00,	$00,	$20,	$0A
	DB	$00,	$F8,	$1F,	$0A
	DB	$80

;********************************
?TONY_FOCUS02
	DB	$00,	$FC,	$32,	$08
	DB	$00,	$04,	$2D,	$28
	DB	$00,	$F4,	$2D,	$08
	DB	$F0,	$00,	$19,	$08
	DB	$F0,	$F8,	$18,	$08
	DB	$F8,	$00,	$22,	$09
	DB	$F8,	$F8,	$21,	$09
	DB	$00,	$00,	$20,	$0A
	DB	$00,	$F8,	$1F,	$0A
	DB	$80

;********************************
?TONY_FOCUS03
	DB	$FC,	$FC,	$32,	$08
	DB	$FC,	$04,	$2D,	$28
	DB	$FC,	$F4,	$2D,	$08
	DB	$F0,	$00,	$19,	$08
	DB	$F0,	$F8,	$18,	$08
	DB	$F8,	$00,	$22,	$09
	DB	$F8,	$F8,	$21,	$09
	DB	$00,	$00,	$20,	$0A
	DB	$00,	$F8,	$1F,	$0A
	DB	$80

;********************************
?TONY_FOCUS04
	DB	$F8,	$04,	$2E,	$28
	DB	$F8,	$F4,	$2E,	$08
	DB	$F8,	$FC,	$31,	$08
	DB	$F8,	$00,	$24,	$09
	DB	$F8,	$F8,	$23,	$09
	DB	$F0,	$00,	$19,	$08
	DB	$F0,	$F8,	$18,	$08
	DB	$00,	$00,	$20,	$0A
	DB	$00,	$F8,	$1F,	$0A
	DB	$80

;********************************
?TONY_FOCUS05
	DB	$F4,	$04,	$2E,	$28
	DB	$F4,	$F4,	$2E,	$08
	DB	$F4,	$FC,	$31,	$08
	DB	$F8,	$00,	$24,	$09
	DB	$F8,	$F8,	$23,	$09
	DB	$F0,	$00,	$19,	$08
	DB	$F0,	$F8,	$18,	$08
	DB	$00,	$00,	$20,	$0A
	DB	$00,	$F8,	$1F,	$0A
	DB	$80

;********************************
?TONY_FOCUS06
	DB	$F0,	$FC,	$30,	$08
	DB	$F0,	$04,	$2F,	$28
	DB	$F0,	$F4,	$2F,	$08
	DB	$F8,	$00,	$2C,	$09
	DB	$F8,	$F8,	$25,	$09
	DB	$F0,	$00,	$1D,	$08
	DB	$F0,	$F8,	$1C,	$08
	DB	$00,	$00,	$20,	$0A
	DB	$00,	$F8,	$1F,	$0A
	DB	$80

;********************************
?TONY_FOCUS07
	DB	$EC,	$FC,	$30,	$08
	DB	$EC,	$04,	$2F,	$28
	DB	$EC,	$F4,	$2F,	$08
	DB	$F8,	$00,	$2C,	$09
	DB	$F8,	$F8,	$25,	$09
	DB	$F0,	$00,	$1D,	$08
	DB	$F0,	$F8,	$1C,	$08
	DB	$00,	$00,	$20,	$0A
	DB	$00,	$F8,	$1F,	$0A
	DB	$80

;********************************
	END
;********************************