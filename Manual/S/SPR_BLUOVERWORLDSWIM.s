;Size:129
;********************************
; SPR_BLUOVERWORLDSWIM.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?BLU_OVERSWIM01_FRONT
	DB	$08,	$FC,	$02,	$00
	DB	$00,	$FC,	$01,	$00
	DB	$F8,	$FC,	$00,	$06
	DB	$80

;********************************
?BLU_OVERSWIM02_FRONT
	DB	$08,	$FC,	$03,	$00
	DB	$00,	$FC,	$01,	$00
	DB	$F8,	$FC,	$00,	$06
	DB	$80

;********************************
?BLU_OVERSWIM01_BACK
	DB	$08,	$FC,	$02,	$00
	DB	$00,	$FC,	$05,	$06
	DB	$F8,	$FC,	$04,	$06
	DB	$80

;********************************
?BLU_OVERSWIM02_BACK
	DB	$08,	$FC,	$03,	$00
	DB	$00,	$FC,	$05,	$06
	DB	$F8,	$FC,	$04,	$06
	DB	$80

;********************************
?BLU_OVERSWIM01_RIGHT
	DB	$08,	$00,	$0A,	$00
	DB	$08,	$F8,	$09,	$00
	DB	$00,	$00,	$08,	$00
	DB	$00,	$F8,	$07,	$00
	DB	$F8,	$00,	$06,	$06
	DB	$80

;********************************
?BLU_OVERSWIM02_RIGHT
	DB	$00,	$F8,	$0B,	$00
	DB	$08,	$F8,	$0C,	$00
	DB	$08,	$00,	$0A,	$00
	DB	$00,	$00,	$08,	$00
	DB	$F8,	$00,	$06,	$06
	DB	$80

;********************************
?BLU_OVERSWIM01_LEFT
	DB	$F8,	$F8,	$0D,	$06
	DB	$08,	$F8,	$0A,	$20
	DB	$08,	$00,	$09,	$20
	DB	$00,	$F8,	$08,	$20
	DB	$00,	$00,	$07,	$20
	DB	$80

;********************************
?BLU_OVERSWIM02_LEFT
	DB	$F8,	$F8,	$0D,	$06
	DB	$00,	$00,	$0B,	$20
	DB	$08,	$00,	$0C,	$20
	DB	$08,	$F8,	$0A,	$20
	DB	$00,	$F8,	$08,	$20
	DB	$80

;********************************
	END
;********************************
