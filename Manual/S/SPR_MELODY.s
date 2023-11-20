;Size:57
;********************************
; SPR_MELODY.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?MELODY_8TH
	DB	$04,	$F8,	$03,	$01
	DB	$FC,	$F8,	$02,	$01
	DB	$F4,	$00,	$01,	$01
	DB	$F4,	$F8,	$00,	$01
	DB	$80

;********************************
?MELODY_SHARP
	DB	$04,	$00,	$09,	$01
	DB	$04,	$F8,	$08,	$01
	DB	$FC,	$00,	$07,	$01
	DB	$FC,	$F8,	$06,	$01
	DB	$F4,	$00,	$05,	$01
	DB	$F4,	$F8,	$04,	$01
	DB	$80

;********************************
?MELODY_WHOLE
	DB	$00,	$00,	$0D,	$01
	DB	$00,	$F8,	$0C,	$01
	DB	$F8,	$00,	$0B,	$01
	DB	$F8,	$F8,	$0A,	$01
	DB	$80

;********************************
	END
;********************************