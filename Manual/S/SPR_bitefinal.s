;Size:281
;********************************
; SPR_BITEFINAL.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?BITE_1
	DB	$F0,	$14,	$03,	$60
	DB	$F0,	$1C,	$02,	$60
	DB	$E4,	$0C,	$03,	$60
	DB	$E4,	$14,	$02,	$60
	DB	$E0,	$00,	$03,	$60
	DB	$E0,	$08,	$02,	$60
	DB	$E0,	$F4,	$03,	$60
	DB	$E0,	$FC,	$02,	$60
	DB	$F8,	$14,	$01,	$60
	DB	$F8,	$1C,	$00,	$60
	DB	$EC,	$0C,	$01,	$60
	DB	$EC,	$14,	$00,	$60
	DB	$E8,	$00,	$01,	$60
	DB	$E8,	$08,	$00,	$60
	DB	$E8,	$F4,	$01,	$60
	DB	$E8,	$FC,	$00,	$60
	DB	$04,	$E4,	$03,	$00
	DB	$04,	$DC,	$02,	$00
	DB	$FC,	$E4,	$01,	$00
	DB	$FC,	$DC,	$00,	$00
	DB	$10,	$EC,	$03,	$00
	DB	$10,	$E4,	$02,	$00
	DB	$08,	$EC,	$01,	$00
	DB	$08,	$E4,	$00,	$00
	DB	$14,	$04,	$03,	$00
	DB	$14,	$FC,	$02,	$00
	DB	$0C,	$04,	$01,	$00
	DB	$0C,	$FC,	$00,	$00
	DB	$14,	$F8,	$03,	$00
	DB	$14,	$F0,	$02,	$00
	DB	$0C,	$F8,	$01,	$00
	DB	$0C,	$F0,	$00,	$00
	DB	$80

;********************************
?BITE_2
	DB	$F8,	$14,	$04,	$60
	DB	$EC,	$0C,	$04,	$60
	DB	$E8,	$00,	$04,	$60
	DB	$E8,	$F4,	$04,	$60
	DB	$00,	$0C,	$05,	$60
	DB	$F4,	$04,	$05,	$60
	DB	$F0,	$F8,	$05,	$60
	DB	$F0,	$EC,	$05,	$60
	DB	$00,	$E0,	$04,	$00
	DB	$F8,	$E8,	$05,	$00
	DB	$0C,	$E8,	$04,	$00
	DB	$04,	$F0,	$05,	$00
	DB	$10,	$00,	$04,	$00
	DB	$08,	$08,	$05,	$00
	DB	$10,	$F4,	$04,	$00
	DB	$08,	$FC,	$05,	$00
	DB	$80

;********************************
?BITE_3
	DB	$F8,	$14,	$06,	$60
	DB	$F0,	$08,	$06,	$60
	DB	$EC,	$FC,	$06,	$60
	DB	$EC,	$F0,	$06,	$60
	DB	$00,	$0C,	$07,	$60
	DB	$F8,	$00,	$07,	$60
	DB	$F4,	$F4,	$07,	$60
	DB	$F4,	$E8,	$07,	$60
	DB	$00,	$E0,	$06,	$00
	DB	$F8,	$E8,	$07,	$00
	DB	$08,	$EC,	$06,	$00
	DB	$00,	$F4,	$07,	$00
	DB	$0C,	$04,	$06,	$00
	DB	$04,	$0C,	$07,	$00
	DB	$0C,	$F8,	$06,	$00
	DB	$04,	$00,	$07,	$00
	DB	$80

;********************************
?BITE_4
	DB	$04,	$08,	$08,	$60
	DB	$FC,	$FC,	$08,	$60
	DB	$F8,	$F0,	$08,	$60
	DB	$F4,	$EC,	$08,	$00
	DB	$FC,	$F8,	$08,	$00
	DB	$00,	$04,	$08,	$00
	DB	$80

;********************************
	END
;********************************
