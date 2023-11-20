;Size:633
;********************************
; SPR_LAVAARBOL.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?ARBOL_FLOAT01_RIGHT
	DB	$F7,	$EB,	$0C,	$60
	DB	$00,	$F1,	$0C,	$00
	DB	$F9,	$01,	$0C,	$00
	DB	$F1,	$00,	$0B,	$00
	DB	$F1,	$F8,	$0A,	$00
	DB	$FA,	$F0,	$09,	$00
	DB	$F2,	$F0,	$08,	$00
	DB	$EB,	$F4,	$07,	$00
	DB	$F1,	$F6,	$00,	$01
	DB	$F9,	$00,	$03,	$01
	DB	$F9,	$F8,	$02,	$01
	DB	$F9,	$F0,	$01,	$01
	DB	$01,	$00,	$06,	$01
	DB	$01,	$F8,	$05,	$01
	DB	$01,	$F0,	$04,	$01
	DB	$80

;********************************
?ARBOL_FLOAT02_RIGHT
	DB	$00,	$F1,	$0C,	$00
	DB	$F2,	$00,	$13,	$00
	DB	$EB,	$00,	$12,	$00
	DB	$F1,	$F8,	$11,	$00
	DB	$E9,	$F8,	$10,	$00
	DB	$F9,	$F0,	$0F,	$00
	DB	$F1,	$F0,	$0E,	$00
	DB	$E9,	$F0,	$0D,	$00
	DB	$F1,	$F6,	$00,	$01
	DB	$F9,	$00,	$03,	$01
	DB	$F9,	$F8,	$02,	$01
	DB	$F9,	$F0,	$01,	$01
	DB	$01,	$00,	$06,	$01
	DB	$01,	$F8,	$05,	$01
	DB	$01,	$F0,	$04,	$01
	DB	$80

;********************************
?ARBOL_FLOAT03_RIGHT
	DB	$F6,	$F1,	$0C,	$40
	DB	$00,	$F1,	$0C,	$00
	DB	$01,	$F0,	$04,	$01
	DB	$F9,	$01,	$0C,	$00
	DB	$F1,	$00,	$1A,	$00
	DB	$E9,	$FF,	$19,	$00
	DB	$F1,	$F8,	$18,	$00
	DB	$E9,	$F8,	$17,	$00
	DB	$F9,	$F0,	$16,	$00
	DB	$F1,	$F0,	$15,	$00
	DB	$E9,	$F0,	$14,	$00
	DB	$F1,	$F6,	$00,	$01
	DB	$F9,	$00,	$03,	$01
	DB	$F9,	$F8,	$02,	$01
	DB	$F9,	$F0,	$01,	$01
	DB	$01,	$00,	$06,	$01
	DB	$01,	$F8,	$05,	$01
	DB	$80

;********************************
?ARBOL_FLOAT01_LEFT
	DB	$ED,	$FD,	$0C,	$40
	DB	$FF,	$07,	$0C,	$20
	DB	$F8,	$F7,	$0C,	$20
	DB	$F1,	$F9,	$0B,	$20
	DB	$F0,	$00,	$0A,	$20
	DB	$F9,	$08,	$09,	$20
	DB	$F1,	$08,	$08,	$20
	DB	$EA,	$05,	$07,	$20
	DB	$F0,	$02,	$00,	$21
	DB	$F8,	$F8,	$03,	$21
	DB	$F8,	$00,	$02,	$21
	DB	$F8,	$08,	$01,	$21
	DB	$00,	$F8,	$06,	$21
	DB	$00,	$00,	$05,	$21
	DB	$00,	$08,	$04,	$21
	DB	$80

;********************************
?ARBOL_FLOAT02_LEFT
	DB	$FF,	$07,	$0C,	$20
	DB	$F2,	$F8,	$13,	$20
	DB	$EA,	$F8,	$12,	$20
	DB	$F0,	$00,	$11,	$20
	DB	$E8,	$00,	$10,	$20
	DB	$F8,	$08,	$0F,	$20
	DB	$F0,	$08,	$0E,	$20
	DB	$E8,	$08,	$0D,	$20
	DB	$F0,	$02,	$00,	$21
	DB	$F8,	$F8,	$03,	$21
	DB	$F8,	$00,	$02,	$21
	DB	$F8,	$08,	$01,	$21
	DB	$00,	$F8,	$06,	$21
	DB	$00,	$00,	$05,	$21
	DB	$00,	$08,	$04,	$21
	DB	$80

;********************************
?ARBOL_FLOAT03_LEFT
	DB	$F4,	$06,	$0C,	$60
	DB	$F7,	$F8,	$0C,	$20
	DB	$00,	$08,	$04,	$21
	DB	$FF,	$07,	$0C,	$20
	DB	$F0,	$F8,	$1A,	$20
	DB	$E8,	$F8,	$19,	$20
	DB	$F0,	$00,	$18,	$20
	DB	$E8,	$00,	$17,	$20
	DB	$F8,	$08,	$16,	$20
	DB	$F0,	$08,	$15,	$20
	DB	$E8,	$08,	$14,	$20
	DB	$F0,	$02,	$00,	$21
	DB	$F8,	$F8,	$03,	$21
	DB	$F8,	$00,	$02,	$21
	DB	$F8,	$08,	$01,	$21
	DB	$00,	$F8,	$06,	$21
	DB	$00,	$00,	$05,	$21
	DB	$80

;********************************
?ARBOL_FLY01_RIGHT
	DB	$F8,	$F0,	$1E,	$00
	DB	$F8,	$E8,	$1D,	$00
	DB	$F0,	$F0,	$1C,	$00
	DB	$F0,	$E8,	$1B,	$00
	DB	$F0,	$F6,	$00,	$01
	DB	$00,	$00,	$06,	$01
	DB	$00,	$F8,	$05,	$01
	DB	$00,	$F0,	$04,	$01
	DB	$F8,	$00,	$03,	$01
	DB	$F8,	$F8,	$02,	$01
	DB	$F8,	$F0,	$01,	$01
	DB	$80

;********************************
?ARBOL_FLY02_RIGHT
	DB	$F8,	$E8,	$21,	$00
	DB	$F0,	$F0,	$20,	$00
	DB	$F8,	$F0,	$1E,	$00
	DB	$F0,	$F6,	$00,	$01
	DB	$00,	$00,	$06,	$01
	DB	$00,	$F8,	$05,	$01
	DB	$00,	$F0,	$04,	$01
	DB	$F8,	$00,	$03,	$01
	DB	$F8,	$F8,	$02,	$01
	DB	$F8,	$F0,	$01,	$01
	DB	$80

;********************************
?ARBOL_FLY03_RIGHT
	DB	$F8,	$E8,	$24,	$00
	DB	$F0,	$F0,	$23,	$00
	DB	$F0,	$E8,	$22,	$00
	DB	$F8,	$F0,	$1E,	$00
	DB	$F0,	$F6,	$00,	$01
	DB	$00,	$00,	$06,	$01
	DB	$00,	$F8,	$05,	$01
	DB	$00,	$F0,	$04,	$01
	DB	$F8,	$00,	$03,	$01
	DB	$F8,	$F8,	$02,	$01
	DB	$F8,	$F0,	$01,	$01
	DB	$80

;********************************
?ARBOL_FLY01_LEFT
	DB	$F8,	$08,	$1E,	$20
	DB	$F8,	$10,	$1D,	$20
	DB	$F0,	$08,	$1C,	$20
	DB	$F0,	$10,	$1B,	$20
	DB	$F0,	$02,	$00,	$21
	DB	$00,	$F8,	$06,	$21
	DB	$00,	$00,	$05,	$21
	DB	$00,	$08,	$04,	$21
	DB	$F8,	$F8,	$03,	$21
	DB	$F8,	$00,	$02,	$21
	DB	$F8,	$08,	$01,	$21
	DB	$80

;********************************
?ARBOL_FLY02_LEFT
	DB	$F7,	$10,	$21,	$20
	DB	$F0,	$08,	$20,	$20
	DB	$F8,	$08,	$1E,	$20
	DB	$F0,	$02,	$00,	$21
	DB	$00,	$F8,	$06,	$21
	DB	$00,	$00,	$05,	$21
	DB	$00,	$08,	$04,	$21
	DB	$F8,	$F8,	$03,	$21
	DB	$F8,	$00,	$02,	$21
	DB	$F8,	$08,	$01,	$21
	DB	$80

;********************************
?ARBOL_FLY03_LEFT
	DB	$F8,	$10,	$24,	$20
	DB	$F0,	$08,	$23,	$20
	DB	$F0,	$10,	$22,	$20
	DB	$F8,	$08,	$1E,	$20
	DB	$F0,	$02,	$00,	$21
	DB	$00,	$F8,	$06,	$21
	DB	$00,	$00,	$05,	$21
	DB	$00,	$08,	$04,	$21
	DB	$F8,	$F8,	$03,	$21
	DB	$F8,	$00,	$02,	$21
	DB	$F8,	$08,	$01,	$21
	DB	$80

;********************************
	END
;********************************