;Size:125
;********************************
; SPR_MAUL.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?MAUL_1
	DB	$E8,	$F0,	$01,	$02
	DB	$E8,	$E8,	$00,	$02
	DB	$80

;********************************
?MAUL_2
	DB	$E8,	$F8,	$07,	$02
	DB	$E8,	$F0,	$06,	$02
	DB	$E8,	$E8,	$05,	$02
	DB	$E0,	$F8,	$04,	$02
	DB	$E0,	$F0,	$03,	$02
	DB	$E0,	$E8,	$02,	$02
	DB	$80

;********************************
?MAUL_3
	DB	$F8,	$F8,	$14,	$02
	DB	$F8,	$F0,	$13,	$02
	DB	$F8,	$E8,	$12,	$02
	DB	$F0,	$00,	$11,	$02
	DB	$F0,	$F8,	$10,	$02
	DB	$E8,	$00,	$0F,	$02
	DB	$E8,	$F8,	$0E,	$02
	DB	$E8,	$F0,	$0D,	$02
	DB	$E8,	$E8,	$0C,	$02
	DB	$E0,	$00,	$0B,	$02
	DB	$E0,	$F8,	$0A,	$02
	DB	$E0,	$F0,	$09,	$02
	DB	$E0,	$E8,	$08,	$02
	DB	$80

;********************************
?MAUL_4
	DB	$F8,	$F0,	$1E,	$02
	DB	$F8,	$E8,	$1D,	$02
	DB	$F0,	$00,	$1C,	$02
	DB	$F0,	$F8,	$1B,	$02
	DB	$E8,	$08,	$1A,	$02
	DB	$E8,	$00,	$19,	$02
	DB	$E0,	$08,	$18,	$02
	DB	$D8,	$08,	$17,	$02
	DB	$D8,	$00,	$16,	$02
	DB	$D0,	$F8,	$15,	$02
	DB	$80

;********************************
?MAUL_DUMMY
	DB	$80

;********************************
	END
;********************************
