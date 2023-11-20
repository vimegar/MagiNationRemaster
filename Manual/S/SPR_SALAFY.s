;********************************
; SPR_SALAFY.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?SALAFY_STAND_RIGHT
	DB	$F0,	$F8,	$00,	$00
	DB	$F0,	$00,	$01,	$00
	DB	$F8,	$F8,	$0A,	$00
	DB	$F8,	$00,	$0B,	$00
	DB	$00,	$F8,	$14,	$07
	DB	$00,	$00,	$15,	$07
	DB	$80

;********************************
?SALAFY_STAND_LEFT
	DB	$F0,	$00,	$00,	$20
	DB	$F0,	$F8,	$01,	$20
	DB	$F8,	$00,	$0A,	$20
	DB	$F8,	$F8,	$0B,	$20
	DB	$00,	$00,	$14,	$27
	DB	$00,	$F8,	$15,	$27
	DB	$80

;********************************
?SALAFY_STAND_BACKRIGHT
	DB	$F0,	$F8,	$06,	$00
	DB	$F0,	$00,	$07,	$00
	DB	$F8,	$F7,	$0E,	$00
	DB	$F8,	$FF,	$0F,	$00
	DB	$00,	$FD,	$18,	$07
	DB	$80

;********************************
?SALAFY_STAND_BACKLEFT
	DB	$F0,	$00,	$06,	$20
	DB	$F0,	$F8,	$07,	$20
	DB	$F8,	$00,	$0E,	$20
	DB	$F8,	$F8,	$0F,	$20
	DB	$00,	$FA,	$18,	$27
	DB	$80

;********************************
?SALAFY_WALK01_FRONT
	DB	$F1,	$F8,	$02,	$00
	DB	$F1,	$00,	$03,	$00
	DB	$F8,	$F8,	$10,	$00
	DB	$F8,	$00,	$11,	$00
	DB	$00,	$FC,	$19,	$07
	DB	$80

;********************************
?SALAFY_WALK02_FRONT
	DB	$F0,	$F8,	$02,	$00
	DB	$F0,	$00,	$03,	$00
	DB	$F8,	$F8,	$0C,	$00
	DB	$F8,	$00,	$0C,	$20
	DB	$00,	$F9,	$16,	$27
	DB	$00,	$00,	$16,	$07
	DB	$80

;********************************
?SALAFY_WALK03_FRONT
	DB	$F1,	$F8,	$02,	$00
	DB	$F1,	$00,	$03,	$00
	DB	$F8,	$00,	$10,	$20
	DB	$F8,	$F8,	$11,	$20
	DB	$00,	$FC,	$19,	$27
	DB	$80

;********************************
?SALAFY_WALK01_BACK
	DB	$F1,	$F8,	$04,	$00
	DB	$F1,	$00,	$05,	$00
	DB	$F8,	$F8,	$12,	$00
	DB	$F8,	$00,	$13,	$00
	DB	$00,	$FC,	$1A,	$07
	DB	$80

;********************************
?SALAFY_WALK02_BACK
	DB	$F0,	$F8,	$04,	$00
	DB	$F0,	$00,	$05,	$00
	DB	$F8,	$F8,	$0D,	$00
	DB	$F8,	$00,	$0D,	$20
	DB	$00,	$F9,	$17,	$27
	DB	$00,	$00,	$17,	$07
	DB	$80

;********************************
?SALAFY_WALK03_BACK
	DB	$F1,	$F8,	$04,	$00
	DB	$F1,	$00,	$05,	$00
	DB	$F8,	$00,	$12,	$20
	DB	$F8,	$F8,	$13,	$20
	DB	$00,	$FC,	$1A,	$27
	DB	$80

;********************************
?SALAFY_WALK01_RIGHT
	DB	$F1,	$F7,	$08,	$00
	DB	$F1,	$FF,	$09,	$00
	DB	$F8,	$F8,	$1B,	$00
	DB	$F8,	$00,	$1C,	$00
	DB	$00,	$F8,	$20,	$07
	DB	$00,	$00,	$21,	$07
	DB	$80

;********************************
?SALAFY_WALK02_RIGHT
	DB	$F0,	$F7,	$08,	$00
	DB	$F0,	$FF,	$09,	$00
	DB	$F8,	$FC,	$1D,	$00
	DB	$00,	$FC,	$22,	$07
	DB	$80

;********************************
?SALAFY_WALK03_RIGHT
	DB	$F1,	$F7,	$08,	$00
	DB	$F1,	$FF,	$09,	$00
	DB	$F8,	$F8,	$1E,	$00
	DB	$F8,	$00,	$1F,	$00
	DB	$00,	$F8,	$23,	$07
	DB	$00,	$00,	$24,	$07
	DB	$80

;********************************
?SALAFY_WALK01_LEFT
	DB	$F1,	$01,	$08,	$20
	DB	$F1,	$F9,	$09,	$20
	DB	$F8,	$00,	$1B,	$20
	DB	$F8,	$F8,	$1C,	$20
	DB	$00,	$00,	$20,	$27
	DB	$00,	$F8,	$21,	$27
	DB	$80

;********************************
?SALAFY_WALK02_LEFT
	DB	$F0,	$01,	$08,	$20
	DB	$F0,	$F9,	$09,	$20
	DB	$F8,	$FC,	$1D,	$20
	DB	$00,	$FC,	$22,	$27
	DB	$80

;********************************
?SALAFY_WALK03_LEFT
	DB	$F1,	$01,	$08,	$20
	DB	$F1,	$F9,	$09,	$20
	DB	$F8,	$00,	$1E,	$20
	DB	$F8,	$F8,	$1F,	$20
	DB	$00,	$00,	$23,	$27
	DB	$00,	$F8,	$24,	$27
	DB	$80

;********************************
	END
;********************************
