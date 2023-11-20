;Size:137
;********************************
; SPR_BLUSWIM.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?BLU_SWIM01_FRONT
	DB	$F8,	$00,	$07,	$06
	DB	$F8,	$F8,	$06,	$06
	DB	$F0,	$00,	$01,	$06
	DB	$F0,	$F8,	$00,	$06
	DB	$80

;********************************
?BLU_SWIM02_FRONT
	DB	$F8,	$00,	$09,	$06
	DB	$F8,	$F8,	$08,	$06
	DB	$F1,	$00,	$01,	$06
	DB	$F1,	$F8,	$00,	$06
	DB	$80

;********************************
?BLU_SWIM01_BACK
	DB	$F8,	$00,	$0B,	$06
	DB	$F8,	$F8,	$0A,	$06
	DB	$F0,	$F8,	$02,	$26
	DB	$F0,	$00,	$02,	$06
	DB	$80

;********************************
?BLU_SWIM02_BACK
	DB	$00,	$00,	$16,	$25
	DB	$00,	$F8,	$16,	$05
	DB	$F8,	$00,	$0D,	$06
	DB	$F8,	$F8,	$0C,	$06
	DB	$F0,	$F8,	$03,	$26
	DB	$F0,	$00,	$03,	$06
	DB	$80

;********************************
?BLU_SWIM01_RIGHT
	DB	$F8,	$08,	$0F,	$06
	DB	$F8,	$00,	$0E,	$00
	DB	$F0,	$08,	$05,	$06
	DB	$F0,	$00,	$04,	$06
	DB	$80

;********************************
?BLU_SWIM02_RIGHT
	DB	$F8,	$08,	$11,	$00
	DB	$F8,	$00,	$10,	$06
	DB	$F1,	$08,	$05,	$06
	DB	$F1,	$00,	$04,	$06
	DB	$80

;********************************
?BLU_SWIM01_LEFT
	DB	$F0,	$F0,	$13,	$06
	DB	$F8,	$F0,	$0F,	$26
	DB	$F8,	$F8,	$0E,	$20
	DB	$F0,	$F8,	$04,	$26
	DB	$80

;********************************
?BLU_SWIM02_LEFT
	DB	$F1,	$F0,	$13,	$06
	DB	$F8,	$F0,	$11,	$20
	DB	$F8,	$F8,	$10,	$26
	DB	$F1,	$F8,	$04,	$26
	DB	$80

;********************************
	END
;********************************