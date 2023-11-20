;Size:277
;********************************
; SPR_CORE02BATTLE.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?CORE02_STANDRIGHT
	DB	$00,	$00,	$18,	$02
	DB	$00,	$F8,	$17,	$02
	DB	$F8,	$00,	$16,	$07
	DB	$F8,	$F8,	$15,	$07
	DB	$F0,	$00,	$14,	$07
	DB	$F0,	$F8,	$13,	$07
	DB	$80

;********************************
?CORE02_STANDLEFT
	DB	$00,	$F8,	$18,	$22
	DB	$00,	$00,	$17,	$22
	DB	$F8,	$F8,	$16,	$27
	DB	$F8,	$00,	$15,	$27
	DB	$F0,	$F8,	$14,	$27
	DB	$F0,	$00,	$13,	$27
	DB	$80

;********************************
?CORE02_WIN
	DB	$00,	$F9,	$0B,	$22
	DB	$00,	$00,	$0B,	$02
	DB	$F8,	$F8,	$0A,	$27
	DB	$F8,	$00,	$0A,	$07
	DB	$F0,	$00,	$09,	$07
	DB	$F0,	$F8,	$08,	$07
	DB	$80

;********************************
?CORE02_LOSE
	DB	$00,	$00,	$12,	$02
	DB	$00,	$F8,	$11,	$02
	DB	$F0,	$F8,	$0D,	$00
	DB	$F0,	$F0,	$0C,	$00
	DB	$F8,	$00,	$10,	$07
	DB	$F8,	$F8,	$0F,	$07
	DB	$F8,	$F0,	$0E,	$07
	DB	$80

;********************************
?CORE02_TAUNT01
	DB	$00,	$F9,	$0B,	$22
	DB	$00,	$00,	$0B,	$02
	DB	$F8,	$F8,	$1B,	$27
	DB	$F8,	$00,	$1B,	$07
	DB	$F0,	$00,	$1A,	$07
	DB	$F0,	$F8,	$19,	$07
	DB	$80

;********************************
?CORE02_TAUNT02
	DB	$F8,	$F8,	$23,	$07
	DB	$F0,	$F8,	$1C,	$07
	DB	$F8,	$00,	$1E,	$07
	DB	$F0,	$00,	$1D,	$07
	DB	$00,	$F9,	$0B,	$22
	DB	$00,	$00,	$0B,	$02
	DB	$80

;********************************
?CORE02_TAUNT03
	DB	$F8,	$F8,	$23,	$07
	DB	$F0,	$F8,	$1C,	$07
	DB	$F8,	$00,	$20,	$07
	DB	$F0,	$00,	$1F,	$07
	DB	$00,	$F9,	$0B,	$22
	DB	$00,	$00,	$0B,	$02
	DB	$80

;********************************
?CORE02_TAUNT04
	DB	$F8,	$F8,	$23,	$07
	DB	$F0,	$F8,	$1C,	$07
	DB	$F0,	$00,	$21,	$07
	DB	$F8,	$00,	$22,	$07
	DB	$00,	$F9,	$0B,	$22
	DB	$00,	$00,	$0B,	$02
	DB	$80

;********************************
?CORE02_SUMMON01
	DB	$00,	$00,	$07,	$02
	DB	$00,	$F8,	$06,	$02
	DB	$F0,	$00,	$03,	$07
	DB	$F0,	$F8,	$02,	$07
	DB	$F8,	$00,	$01,	$07
	DB	$F8,	$F8,	$00,	$07
	DB	$80

;********************************
?CORE02_SUMMON02
	DB	$F8,	$00,	$04,	$00
	DB	$00,	$00,	$07,	$02
	DB	$00,	$F8,	$06,	$02
	DB	$F0,	$00,	$03,	$07
	DB	$F0,	$F8,	$02,	$07
	DB	$F8,	$00,	$01,	$07
	DB	$F8,	$F8,	$00,	$07
	DB	$80

;********************************
?CORE02_SUMMON03
	DB	$F7,	$06,	$05,	$00
	DB	$00,	$00,	$07,	$02
	DB	$00,	$F8,	$06,	$02
	DB	$F0,	$00,	$03,	$07
	DB	$F0,	$F8,	$02,	$07
	DB	$F8,	$00,	$01,	$07
	DB	$F8,	$F8,	$00,	$07
	DB	$80

;********************************
	END
;********************************
