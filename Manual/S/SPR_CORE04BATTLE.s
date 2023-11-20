;Size:209
;********************************
; SPR_CORE04BATTLE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?CORE04_WIN
	DB	$00,	$00,	$0D,	$23
	DB	$00,	$F8,	$0D,	$03
	DB	$F8,	$00,	$0E,	$27
	DB	$F8,	$F8,	$0E,	$07
	DB	$F0,	$00,	$0C,	$07
	DB	$F0,	$F8,	$0B,	$07
	DB	$80

;********************************
?CORE04_LOSE
	DB	$03,	$F6,	$14,	$07
	DB	$03,	$00,	$16,	$03
	DB	$03,	$F8,	$15,	$03
	DB	$F3,	$F8,	$0F,	$07
	DB	$F3,	$00,	$10,	$07
	DB	$FB,	$00,	$13,	$07
	DB	$FB,	$F8,	$12,	$07
	DB	$FB,	$F0,	$11,	$07
	DB	$80

;********************************
?CORE04_TAUNT01
	DB	$00,	$00,	$0D,	$23
	DB	$00,	$F8,	$0D,	$03
	DB	$F8,	$00,	$1A,	$07
	DB	$F8,	$F8,	$19,	$07
	DB	$F0,	$00,	$18,	$07
	DB	$F0,	$F8,	$17,	$07
	DB	$80

;********************************
?CORE04_TAUNT02
	DB	$00,	$00,	$0D,	$23
	DB	$00,	$F8,	$0D,	$03
	DB	$F8,	$00,	$0A,	$27
	DB	$F8,	$F8,	$0A,	$07
	DB	$F0,	$00,	$09,	$07
	DB	$F0,	$F8,	$08,	$07
	DB	$80

;********************************
?CORE04_TAUNT03
	DB	$00,	$00,	$0D,	$23
	DB	$00,	$F8,	$0D,	$03
	DB	$F8,	$F8,	$1A,	$27
	DB	$F8,	$00,	$19,	$27
	DB	$F0,	$F8,	$18,	$27
	DB	$F0,	$00,	$17,	$27
	DB	$80

;********************************
?CORE04_SUMMON01
	DB	$00,	$00,	$05,	$03
	DB	$00,	$F8,	$04,	$03
	DB	$F8,	$00,	$03,	$07
	DB	$F8,	$F8,	$02,	$07
	DB	$F0,	$00,	$01,	$07
	DB	$F0,	$F8,	$00,	$07
	DB	$80

;********************************
?CORE04_SUMMON02
	DB	$F9,	$06,	$06,	$00
	DB	$00,	$00,	$05,	$03
	DB	$00,	$F8,	$04,	$03
	DB	$F8,	$00,	$03,	$07
	DB	$F8,	$F8,	$02,	$07
	DB	$F0,	$00,	$01,	$07
	DB	$F0,	$F8,	$00,	$07
	DB	$80

;********************************
?CORE04_SUMMON03
	DB	$F7,	$06,	$07,	$00
	DB	$00,	$00,	$05,	$03
	DB	$00,	$F8,	$04,	$03
	DB	$F8,	$00,	$03,	$07
	DB	$F8,	$F8,	$02,	$07
	DB	$F0,	$00,	$01,	$07
	DB	$F0,	$F8,	$00,	$07
	DB	$80

;********************************
	END
;********************************
