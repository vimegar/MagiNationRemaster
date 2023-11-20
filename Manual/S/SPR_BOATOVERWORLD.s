;Size:409
;********************************
; SPR_BOATOVERWORLD.S
;********************************
;	Author:	Mr. Yuk
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?OVERBOAT_RIGHT01
	DB	$00,	$EC,	$0E,	$48
	DB	$F8,	$EC,	$0E,	$08
	DB	$00,	$04,	$05,	$09
	DB	$00,	$FC,	$04,	$09
	DB	$00,	$F4,	$03,	$09
	DB	$F8,	$04,	$02,	$09
	DB	$F8,	$FC,	$01,	$09
	DB	$F8,	$F4,	$00,	$09
	DB	$80

;********************************
?OVERBOAT_RIGHT02
	DB	$FF,	$EB,	$0E,	$48
	DB	$F9,	$EB,	$0E,	$08
	DB	$00,	$04,	$05,	$09
	DB	$00,	$FC,	$04,	$09
	DB	$00,	$F4,	$03,	$09
	DB	$F8,	$04,	$02,	$09
	DB	$F8,	$FC,	$01,	$09
	DB	$F8,	$F4,	$00,	$09
	DB	$80

;********************************
?OVERBOAT_RIGHT03
	DB	$FE,	$EA,	$0E,	$48
	DB	$FA,	$EA,	$0E,	$08
	DB	$00,	$04,	$05,	$09
	DB	$00,	$FC,	$04,	$09
	DB	$00,	$F4,	$03,	$09
	DB	$F8,	$04,	$02,	$09
	DB	$F8,	$FC,	$01,	$09
	DB	$F8,	$F4,	$00,	$09
	DB	$80

;********************************
?OVERBOAT_LEFT01
	DB	$00,	$0D,	$0E,	$68
	DB	$F8,	$0D,	$0E,	$28
	DB	$00,	$F5,	$05,	$29
	DB	$00,	$FD,	$04,	$29
	DB	$00,	$05,	$03,	$29
	DB	$F8,	$F5,	$02,	$29
	DB	$F8,	$FD,	$01,	$29
	DB	$F8,	$05,	$00,	$29
	DB	$80

;********************************
?OVERBOAT_LEFT02
	DB	$FF,	$0E,	$0E,	$68
	DB	$F9,	$0E,	$0E,	$28
	DB	$00,	$F5,	$05,	$29
	DB	$00,	$FD,	$04,	$29
	DB	$00,	$05,	$03,	$29
	DB	$F8,	$F5,	$02,	$29
	DB	$F8,	$FD,	$01,	$29
	DB	$F8,	$05,	$00,	$29
	DB	$80

;********************************
?OVERBOAT_LEFT03
	DB	$FE,	$0F,	$0E,	$68
	DB	$FA,	$0F,	$0E,	$28
	DB	$00,	$F5,	$05,	$29
	DB	$00,	$FD,	$04,	$29
	DB	$00,	$05,	$03,	$29
	DB	$F8,	$F5,	$02,	$29
	DB	$F8,	$FD,	$01,	$29
	DB	$F8,	$05,	$00,	$29
	DB	$80

;********************************
?OVERBOAT_FRONT01
	DB	$EC,	$F8,	$0D,	$48
	DB	$EB,	$F8,	$06,	$09
	DB	$EC,	$00,	$0D,	$68
	DB	$03,	$00,	$09,	$29
	DB	$03,	$F8,	$09,	$09
	DB	$FB,	$00,	$08,	$29
	DB	$FB,	$F8,	$08,	$09
	DB	$F3,	$00,	$07,	$29
	DB	$F3,	$F8,	$07,	$09
	DB	$EB,	$00,	$06,	$29
	DB	$80

;********************************
?OVERBOAT_FRONT02
	DB	$EB,	$F9,	$0D,	$48
	DB	$EB,	$F8,	$06,	$09
	DB	$EB,	$FF,	$0D,	$68
	DB	$03,	$00,	$09,	$29
	DB	$03,	$F8,	$09,	$09
	DB	$FB,	$00,	$08,	$29
	DB	$FB,	$F8,	$08,	$09
	DB	$F3,	$00,	$07,	$29
	DB	$F3,	$F8,	$07,	$09
	DB	$EB,	$00,	$06,	$29
	DB	$80

;********************************
?OVERBOAT_FRONT03
	DB	$EA,	$FA,	$0D,	$48
	DB	$EB,	$F8,	$06,	$09
	DB	$EA,	$FE,	$0D,	$68
	DB	$03,	$00,	$09,	$29
	DB	$03,	$F8,	$09,	$09
	DB	$FB,	$00,	$08,	$29
	DB	$FB,	$F8,	$08,	$09
	DB	$F3,	$00,	$07,	$29
	DB	$F3,	$F8,	$07,	$09
	DB	$EB,	$00,	$06,	$29
	DB	$80

;********************************
?OVERBOAT_BACK01
	DB	$0F,	$00,	$0D,	$28
	DB	$0F,	$F8,	$0D,	$08
	DB	$08,	$00,	$0C,	$29
	DB	$08,	$F8,	$0C,	$09
	DB	$00,	$00,	$0B,	$29
	DB	$00,	$F8,	$0B,	$09
	DB	$F8,	$00,	$0A,	$29
	DB	$F8,	$F8,	$0A,	$09
	DB	$80

;********************************
?OVERBOAT_BACK02
	DB	$10,	$FF,	$0D,	$28
	DB	$10,	$F9,	$0D,	$08
	DB	$08,	$00,	$0C,	$29
	DB	$08,	$F8,	$0C,	$09
	DB	$00,	$00,	$0B,	$29
	DB	$00,	$F8,	$0B,	$09
	DB	$F8,	$00,	$0A,	$29
	DB	$F8,	$F8,	$0A,	$09
	DB	$80

;********************************
?OVERBOAT_BACK03
	DB	$11,	$FE,	$0D,	$28
	DB	$11,	$FA,	$0D,	$08
	DB	$08,	$00,	$0C,	$29
	DB	$08,	$F8,	$0C,	$09
	DB	$00,	$00,	$0B,	$29
	DB	$00,	$F8,	$0B,	$09
	DB	$F8,	$00,	$0A,	$29
	DB	$F8,	$F8,	$0A,	$09
	DB	$80

;********************************
	END
;********************************