;********************************
; SPR_LASADARING.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?LASADA_RING01
	DB	$F0,	$F8,	$00,	$06
	DB	$F0,	$00,	$01,	$06
	DB	$F8,	$00,	$02,	$06
	DB	$F8,	$F8,	$02,	$26
	DB	$00,	$00,	$08,	$04
	DB	$00,	$F9,	$08,	$24
	DB	$80

;********************************
?LASADA_RING02
	DB	$F0,	$F8,	$00,	$06
	DB	$F0,	$00,	$01,	$06
	DB	$00,	$F9,	$08,	$24
	DB	$00,	$00,	$08,	$04
	DB	$F8,	$00,	$03,	$06
	DB	$F8,	$F8,	$03,	$26
	DB	$80

;********************************
?LASADA_RING03
	DB	$F0,	$F8,	$00,	$06
	DB	$F0,	$00,	$01,	$06
	DB	$00,	$F9,	$08,	$24
	DB	$00,	$00,	$08,	$04
	DB	$F8,	$00,	$04,	$06
	DB	$F8,	$F8,	$04,	$26
	DB	$80

;********************************
?LASADA_RING04
	DB	$F0,	$F8,	$00,	$06
	DB	$F0,	$00,	$01,	$06
	DB	$00,	$F9,	$08,	$24
	DB	$00,	$00,	$08,	$04
	DB	$F8,	$F8,	$05,	$26
	DB	$F8,	$00,	$05,	$06
	DB	$80

;********************************
?LASADA_RING05
	DB	$F0,	$F8,	$00,	$06
	DB	$F0,	$00,	$01,	$06
	DB	$00,	$F9,	$08,	$24
	DB	$00,	$00,	$08,	$04
	DB	$F8,	$F8,	$06,	$06
	DB	$F8,	$00,	$07,	$06
	DB	$80

;********************************
?LASADA_RING06
	DB	$F0,	$F8,	$00,	$06
	DB	$F0,	$00,	$01,	$06
	DB	$00,	$F9,	$08,	$24
	DB	$00,	$00,	$08,	$04
	DB	$F8,	$00,	$06,	$26
	DB	$F8,	$F8,	$07,	$26
	DB	$80

;********************************
?LASADA_RING07
	DB	$F0,	$F8,	$09,	$06
	DB	$F0,	$00,	$0A,	$06
	DB	$F8,	$00,	$0B,	$06
	DB	$00,	$00,	$08,	$04
	DB	$00,	$F9,	$08,	$24
	DB	$F8,	$F8,	$02,	$26
	DB	$80

;********************************
	END
;********************************
