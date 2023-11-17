;Size:4775
                     
;********************************
; C:\Users\vimegar\Documents\Dev\MagiNationSource\SCRIPTS\REGIONS\ARDERIAL\PALACE\MAP01\ARDPALACE01.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDPALACE01_DR_1
	DB	CMD_HEROTODOOR
		DB	$04
		DB	$06
		DB	$15
		DB	$01

	DB	CMD_JUMP
		DB	:?_ARDGARDEN03
		DW	(?_ARDGARDEN03&$FFFF)

;********************************
?_ARDPALACE01_TR_1
	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_SCROLLMAP
		DB	$50
		DB	$00
		DB	$FF
		DB	$00

	DB	CMD_DELAY
		DB	$50

	DB	CMD_SCROLLMAP
		DB	$50
		DB	$00
		DB	$01
		DB	$00


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$08),(?AL+$02),(?AL+$04),?SPCE,(?AL+$15),(?AL+$08),(?AL+$04),(?AL+$16),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_END

;********************************
?_ARDPALACE01_TXT_1

	DB	CMD_TEXTICON
		DW	ICON_SHIMMER

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$11),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$09),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$18),?COMM,?HURRY
		DB	(?AU+$10),(?AL+$14),(?AL+$04),(?AL+$04),(?AL+$0D),?SPCE,(?AU+$09),(?AL+$00),(?AL+$04),(?AL+$0B),(?AL+$00),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_ARDPALACE01_TXT_2

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$0A),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AU+$0E),(?AL+$11),(?AL+$00),?COMM,?HURRY
		DB	(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$16),(?AL+$04),?SPCE,(?AL+$12),(?AL+$07),(?AL+$00),(?AL+$0B),(?AL+$0B),?WAIT
		DB	(?AL+$03),(?AL+$08),(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$0C),(?AL+$00),(?AL+$0B),(?AL+$08),(?AL+$13),(?AL+$08),(?AL+$04),(?AL+$12),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?WAIT
		DB	(?AL+$0D),(?AL+$0E),(?AL+$16),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
?_ARDPALACE01_TXT_3

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$0A),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$0E),(?AL+$03),(?AL+$0D),(?AL+$04),(?AL+$12),(?AL+$12),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$00),(?AL+$0C),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$0D),(?AL+$0E),(?AL+$11),(?AL+$04),(?AL+$03),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$0C),(?AL+$04),(?AL+$04),(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?COMM,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$0C),(?AL+$00),(?AL+$09),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),(?AL+$16),(?AL+$08),(?AL+$12),(?AL+$04),?COMM,?HURRY
		DB	(?AU+$06),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),?SPCE,(?AU+$0C),(?AL+$00),(?AL+$06),(?AL+$14),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$16),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$00),(?AL+$02),(?AL+$13),?HURRY
		DB	(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$02),(?AL+$0A),(?AL+$0B),(?AL+$18),?COMM,?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$04),(?AL+$15),(?AL+$08),(?AL+$0B),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AL+$06),(?AL+$11),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$0C),(?AL+$0E),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$05),(?AL+$14),(?AL+$0B),?SPCE,(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?HURRY
		DB	(?AL+$04),(?AL+$00),(?AL+$02),(?AL+$07),?SPCE,(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$00),(?AL+$02),(?AL+$0A),?PERD,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$00),(?AL+$01),(?AL+$08),(?AL+$0B),(?AL+$08),(?AL+$13),(?AL+$18),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$0F),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$12),(?AL+$07),(?AL+$00),(?AL+$03),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AU+$06),(?AL+$04),(?AL+$18),(?AL+$12),(?AL+$04),(?AL+$11),?COMM,?SPCE,(?AL+$12),(?AL+$0E),?WAIT
		DB	(?AL+$0F),(?AL+$0B),(?AL+$04),(?AL+$00),(?AL+$12),(?AL+$04),?SPCE,(?AL+$07),(?AL+$04),(?AL+$0B),(?AL+$0F),?SPCE,(?AL+$14),(?AL+$12),?EXCL,?WAIT
		DB	(?AU+$12),(?AL+$08),(?AL+$0D),(?AL+$02),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$03),(?AL+$0E),?HURRY
		DB	(?AL+$0D),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0D),(?AL+$06),(?AL+$12),?COMM,?WAIT
		DB	(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE


	DB	CMD_SONGSTART
		DB	SONGID_end

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$13),?HURRY
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$04),(?AL+$18),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$12),(?AL+$13),(?AL+$0E),(?AL+$11),(?AL+$0C),?EXCL
		DB	?EOF

	DB	CMD_DELAY
		DB	$B4

	DB	CMD_DELAY
		DB	$B4

	DB	CMD_DELAY
		DB	$B4

	DB	CMD_TEXTCLOSE


	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$05),(?AL+$0B),(?AL+$18),?PERD,?WAIT
		DB	(?AU+$08),(?AL+$05),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$04),(?AL+$0B),(?AL+$12),(?AL+$04),?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$03),(?AL+$0E),?DASH,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE


	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_SONGSTART
		DB	SONGID_morag

	DB	CMD_TEXTWRITE
		DB	(?AU+$0F),(?AL+$08),(?AL+$13),(?AL+$08),(?AL+$05),(?AL+$14),(?AL+$0B),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$03

	DB	CMD_END

;********************************
?_ARDPALACE01_TXT_3A

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AL+$04),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$14),(?AL+$12),?PERD,?HURRY
		DB	(?AU+$0E),(?AL+$11),(?AL+$00),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_SHIMMER

	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$14),(?AL+$13),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$0E),(?AL+$16),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_SHIMMER

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$04),(?AL+$12),?COMM,?SPCE,(?AL+$0C),(?AL+$18),?SPCE,(?AU+$10),(?AL+$14),(?AL+$04),(?AL+$04),(?AL+$0D),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$14

	DB	CMD_END

;********************************
?_ARDPALACE01_TXT_4

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$04),(?AL+$04),(?AL+$13),?SPCE,(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),?COMM,?HURRY
		DB	(?AU+$0A),(?AL+$18),(?AL+$11),(?AL+$0E),(?AL+$12),?EXCL,?SPCE,(?AU+$08),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AL+$00),(?AL+$03),(?AL+$0C),(?AL+$08),(?AL+$13),?COMM,?SPCE,(?AU+$08),?SPCE,(?AL+$00),(?AL+$0C),?HURRY
		DB	(?AL+$08),(?AL+$0C),(?AL+$0F),(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$12),(?AL+$04),(?AL+$03),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$00),(?AL+$01),(?AL+$0B),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$03),(?AL+$08),(?AL+$12),(?AL+$0F),(?AL+$0E),(?AL+$12),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AU+$19),(?AL+$04),(?AL+$13),?COMM,?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$11),(?AL+$04),(?AL+$0B),(?AL+$08),(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$03),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$00),(?AL+$01),(?AL+$0B),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$11),(?AL+$08),(?AL+$03),?SPCE,(?AL+$0C),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AU+$0A),(?AL+$0E),(?AL+$11),(?AL+$06),?PERD,?SPCE,(?AU+$08),(?AL+$13),?SPCE,(?AL+$12),(?AL+$04),(?AL+$04),(?AL+$0C),(?AL+$12),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?COMM,?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$04),(?AL+$0D),(?AL+$03),?COMM,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$01),(?AL+$04),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$13),(?AL+$04),?SPCE,(?AL+$00),?WAIT
		DB	(?AL+$07),(?AL+$04),(?AL+$0B),(?AL+$0F),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$0C),(?AL+$04),?HURRY
		DB	(?AL+$00),(?AL+$05),(?AL+$13),(?AL+$04),(?AL+$11),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AU+$09),(?AL+$00),(?AL+$04),(?AL+$0B),(?AL+$00),?EXCL,?SPCE,(?AU+$07),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AL+$03),(?AL+$0E),(?AL+$04),(?AL+$12),?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$05),(?AL+$04),(?AL+$04),(?AL+$0B),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$01),(?AL+$04),?SPCE,(?AL+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$0B),(?AL+$04),(?AL+$12),(?AL+$12),?HURRY
		DB	(?AL+$11),(?AL+$0E),(?AL+$18),(?AL+$00),(?AL+$0B),(?AL+$13),(?AL+$18),?QUST,?SPCE,(?AU+$14),(?AL+$0D),(?AL+$00),(?AL+$01),(?AL+$0B),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$03),(?AL+$0E),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$18),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$16),(?AL+$07),(?AL+$08),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$12),(?AL+$14),(?AL+$01),(?AL+$09),(?AL+$04),(?AL+$02),(?AL+$13),(?AL+$12),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$14),(?AL+$05),(?AL+$05),(?AL+$04),(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$12),(?AL+$00),(?AL+$18),?QUST,?WAIT
		DB	(?AU+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$00),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$13),?WAIT
		DB	(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$0C),(?AL+$08),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$11),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$16),?PERD,?WAIT
		DB	(?AU+$16),(?AL+$07),(?AL+$18),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$00),(?AL+$12),(?AL+$0A),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?SPCE,(?AL+$11),(?AL+$04),(?AL+$06),(?AL+$08),(?AL+$0E),(?AL+$0D),(?AL+$12),?HURRY
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$07),(?AL+$04),(?AL+$0B),(?AL+$0F),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AL+$0E),(?AL+$0C),(?AL+$04),?COMM,?SPCE,(?AU+$09),(?AL+$00),(?AL+$04),(?AL+$0B),(?AL+$00),?COMM,?HURRY
		DB	(?AL+$12),(?AL+$00),(?AL+$18),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?EXCL,?WAIT
		DB	(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AL+$03),(?AL+$18),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$07),(?AL+$04),(?AL+$00),(?AL+$11),?SPCE,(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$0E),(?AL+$0D),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$0C),(?AL+$08),(?AL+$0D),(?AL+$03),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$03),(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?QUST,?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$07),(?AL+$04),(?AL+$00),(?AL+$11),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$05),(?AL+$08),(?AL+$0B),(?AL+$13),(?AL+$07),?COMM,?WAIT
		DB	(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$0D),(?AL+$03),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$01),(?AL+$04),(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$04),?SPCE,(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?WAIT
		DB	(?AL+$12),(?AL+$14),(?AL+$02),(?AL+$07),?SPCE,(?AL+$01),(?AL+$0B),(?AL+$00),(?AL+$13),(?AL+$00),(?AL+$0D),(?AL+$13),?HURRY
		DB	(?AL+$03),(?AL+$08),(?AL+$12),(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$02),(?AL+$13),?PERD,?WAIT
		DB	(?AU+$0D),(?AL+$04),(?AL+$04),(?AL+$03),?SPCE,(?AU+$08),?SPCE,(?AL+$11),(?AL+$04),(?AL+$0C),(?AL+$08),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$0D),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$00),?EXCL,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$0E),(?AL+$0B),?COMM,?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$00),(?AL+$0C),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$02),(?AL+$07),?SPCE,(?AL+$0C),(?AL+$0E),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$05),(?AL+$14),(?AL+$0B),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$0D),?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$16),(?AL+$00),(?AL+$12),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$0D),?PERD,?WAIT
		DB	(?AU+$0E),(?AL+$01),(?AL+$12),(?AL+$04),(?AL+$11),(?AL+$15),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$04

	DB	CMD_END

;********************************
?_ARDPALACE01_TXT_5

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?QUST,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$12),(?AL+$0E),?HURRY
		DB	(?AL+$0C),(?AL+$14),(?AL+$02),(?AL+$07),?SPCE,(?AL+$0C),(?AL+$0E),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$05),(?AL+$14),(?AL+$0B),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AL+$16),(?AL+$04),?SPCE,(?AL+$16),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$0D),?PERD,?SPCE,(?AU+$16),(?AL+$04),?SPCE,(?AL+$12),(?AL+$07),(?AL+$00),(?AL+$0D),?APST,(?AL+$13),?HURRY
		DB	(?AL+$01),(?AL+$04),?SPCE,(?AL+$01),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$01),(?AL+$18),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),(?AL+$12),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$05

	DB	CMD_END

;********************************
?_ARDPALACE01_TXT_6

	DB	CMD_TEXTICON
		DW	ICON_MORAG

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$08),(?AL+$0C),(?AL+$0F),(?AL+$0E),(?AL+$12),(?AL+$12),(?AL+$08),(?AL+$01),(?AL+$0B),(?AL+$04),?EXCL,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),?WAIT
		DB	(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$01),(?AL+$04),(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$18),?DASH,?DASH,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_AGRAM

	DB	CMD_FADEOUTSONG
		DB	$10

	DB	CMD_TEXTWRITE
		DB	(?AU+$04),(?AU+$0D),(?AU+$0E),(?AU+$14),(?AU+$06),(?AU+$07),?COMM,?SPCE,(?AU+$0C),(?AU+$0E),(?AU+$11),(?AU+$00),(?AU+$06),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$06

	DB	CMD_END

;********************************
?_ARDPALACE01_TXT_7

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AU+$06),(?AU+$11),(?AU+$00),(?AU+$0C),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_AGRAM

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$13),(?AL+$0E),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$08),(?AL+$13),?HURRY
		DB	(?AL+$16),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$0A),?PERD,?WAIT
		DB	(?AU+$0D),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$06),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$04),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$06),(?AL+$04),(?AL+$18),(?AL+$12),(?AL+$04),(?AL+$11),?COMM,?WAIT
		DB	(?AU+$0C),(?AL+$0E),(?AL+$11),(?AL+$00),(?AL+$06),?COMM,?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$12),(?AL+$07),(?AL+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$03),(?AL+$0B),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$0C),(?AL+$18),(?AL+$12),(?AL+$04),(?AL+$0B),(?AL+$05),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$07

	DB	CMD_END

;********************************
?_ARDPALACE01_TXT_8

	DB	CMD_TEXTICON
		DW	ICON_WYLOCE

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$07),(?AL+$07),(?AL+$07),(?AL+$07),(?AL+$07),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$08

	DB	CMD_END

;********************************
?_ARDPALACE01_TXT_9

	DB	CMD_TEXTICON
		DW	ICON_AGRAM

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$0E),?SPCE,(?AL+$04),(?AL+$05),(?AL+$05),(?AL+$04),(?AL+$02),(?AL+$13),?QUST,?SPCE,(?AU+$07),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AL+$08),(?AL+$0D),(?AL+$13),(?AL+$04),(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$09

	DB	CMD_END

;********************************
?_ARDPALACE01_TXT_10

	DB	CMD_TEXTICON
		DW	ICON_AGRAM

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?COMM,?SPCE,(?AL+$08),(?AL+$13),?HURRY
		DB	(?AL+$0C),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$04),(?AL+$11),(?AL+$12),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$0A

	DB	CMD_END

;********************************
?_ARDPALACE01_TXT_11

	DB	CMD_TEXTICON
		DW	ICON_AGRAM

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$13),(?AL+$11),(?AL+$14),(?AL+$04),?COMM,?SPCE,(?AL+$01),(?AL+$0E),(?AL+$18),?PERD,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$0D),(?AL+$06),(?AL+$04),?SPCE,(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?WAIT
		DB	(?AL+$00),(?AL+$01),(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?PERD,?WAIT
		DB	(?AU+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$05),(?AL+$00),(?AL+$11),?HURRY
		DB	(?AL+$13),(?AL+$0E),(?AL+$0E),?SPCE,(?AL+$04),(?AL+$00),(?AL+$11),(?AL+$0B),(?AL+$18),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$01),(?AL+$04),?SPCE,(?AL+$12),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AU+$06),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),?SPCE,(?AU+$0C),(?AL+$00),(?AL+$06),(?AL+$14),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$63

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$13),(?AL+$11),(?AL+$18),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$14),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$0D),(?AL+$03),?PERD,?WAIT
		DB	(?AU+$0C),(?AL+$0E),(?AL+$11),(?AL+$00),(?AL+$06),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$0C),(?AL+$04),(?AL+$00),(?AL+$0D),(?AL+$12),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$00),(?AL+$0D),?WAIT
		DB	(?AL+$04),(?AL+$0D),(?AL+$03),?PERD,?WAIT
		DB	(?AU+$16),(?AL+$07),(?AL+$04),(?AL+$0D),?SPCE,(?AU+$00),(?AL+$06),(?AL+$00),(?AL+$03),(?AL+$0E),(?AL+$0D),?HURRY
		DB	(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$16),(?AL+$08),(?AL+$12),(?AL+$03),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AU+$00),(?AL+$0D),(?AL+$02),(?AL+$08),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$12),?COMM,?SPCE,(?AL+$08),(?AL+$13),?WAIT
		DB	(?AL+$16),(?AL+$00),(?AL+$12),?SPCE,(?AL+$0C),(?AL+$18),?SPCE,(?AL+$03),(?AL+$14),(?AL+$13),(?AL+$18),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$11),(?AL+$04),(?AL+$02),(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),?SPCE,(?AL+$13),(?AL+$07),(?AL+$0E),(?AL+$12),(?AL+$04),?WAIT
		DB	(?AL+$12),(?AL+$04),(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$13),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?COMM,?HURRY
		DB	(?AL+$0C),(?AL+$18),?SPCE,(?AL+$0C),(?AL+$08),(?AL+$12),(?AL+$06),(?AL+$14),(?AL+$08),(?AL+$03),(?AL+$04),(?AL+$03),?WAIT
		DB	(?AL+$01),(?AL+$11),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$11),(?AL+$04),(?AL+$0D),?DASH,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AU+$07),(?AU+$14),(?AU+$13),?SPCE,(?AU+$14),(?AU+$0F),?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_AGRAM

	DB	CMD_TEXTWRITE
		DB	?QUST,?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$07),(?AL+$04),(?AL+$00),(?AL+$11),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$0B),(?AL+$08),(?AL+$04),(?AL+$12),?EXCL,?WAIT
		DB	(?AU+$18),(?AU+$0E),(?AU+$14),?APST,(?AU+$11),(?AU+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?HURRY
		DB	(?AL+$16),(?AL+$07),(?AL+$0E),?APST,(?AL+$12),?SPCE,(?AL+$01),(?AL+$04),(?AL+$04),(?AL+$0D),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AU+$12),(?AL+$07),(?AL+$00),(?AL+$03),(?AL+$0E),(?AL+$16),?SPCE,(?AU+$06),(?AL+$04),(?AL+$18),(?AL+$12),(?AL+$04),(?AL+$11),(?AL+$12),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_AGRAM

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$08),(?AL+$13),(?AL+$07),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$07),(?AL+$04),(?AL+$0B),(?AL+$0F),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AU+$00),(?AU+$00),(?AU+$11),(?AU+$06),(?AU+$07),?EXCL,?WAIT
		DB	(?AU+$08),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?APST,(?AL+$13),?HURRY
		DB	(?AL+$01),(?AL+$04),(?AL+$0B),(?AL+$08),(?AL+$04),(?AL+$15),(?AL+$04),?SPCE,(?AL+$08),(?AL+$13),?EXCL,?WAIT
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$00),?SPCE,(?AU+$09),(?AU+$0E),(?AU+$0A),(?AU+$04),?EXCL,?WAIT
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$03),(?AL+$00),(?AL+$18),(?AL+$12),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$0D),(?AL+$14),(?AL+$0C),(?AL+$01),(?AL+$04),(?AL+$11),(?AL+$04),(?AL+$03),?COMM,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?WAIT
		DB	(?AL+$06),(?AL+$08),(?AL+$06),(?AL+$00),(?AL+$0D),(?AL+$13),(?AL+$08),(?AL+$02),?COMM,?HURRY
		DB	(?AL+$01),(?AL+$00),(?AL+$0B),(?AL+$03),?DASH,(?AL+$07),(?AL+$04),(?AL+$00),(?AL+$03),(?AL+$04),(?AL+$03),?COMM,?WAIT
		DB	(?AL+$02),(?AL+$0B),(?AL+$0E),(?AL+$06),?DASH,(?AL+$16),(?AL+$04),(?AL+$00),(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AU+$05),(?AU+$11),(?AU+$04),(?AU+$00),(?AU+$0A),?EXCL,?WAIT
		DB	(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$02),(?AL+$00),(?AL+$11),(?AL+$15),(?AL+$04),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$02),(?AL+$14),(?AL+$11),(?AL+$12),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$13),(?AL+$0E),(?AL+$0C),(?AL+$01),(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$0D),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_AGRAM

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$00),(?AL+$07),(?AL+$00),?EXCL,?WAIT
		DB	(?AU+$12),(?AL+$0F),(?AL+$04),(?AL+$02),(?AL+$13),(?AL+$00),(?AL+$02),(?AL+$14),(?AL+$0B),(?AL+$00),(?AL+$11),?EXCL,?WAIT
		DB	(?AU+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$06),(?AL+$04),(?AL+$13),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$05),(?AL+$04),(?AL+$04),(?AL+$0B),(?AL+$08),(?AL+$0D),(?AL+$06),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$0E),(?AL+$18),?PERD,?WAIT
		DB	(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$05),(?AL+$04),(?AL+$0B),(?AL+$13),?SPCE,(?AL+$16),(?AL+$07),(?AL+$04),(?AL+$0D),?WAIT
		DB	(?AL+$0C),(?AL+$18),?SPCE,(?AL+$0E),(?AL+$16),(?AL+$0D),?SPCE,(?AL+$01),(?AL+$11),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),(?AL+$04),(?AL+$03),?SPCE,(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$13),?WAIT
		DB	(?AL+$0C),(?AL+$04),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$0C),(?AL+$18),?SPCE,(?AL+$03),(?AL+$14),(?AL+$13),(?AL+$18),?PERD,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$11),(?AL+$00),(?AL+$06),(?AL+$04),?SPCE,(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$16),(?AL+$07),(?AL+$08),(?AL+$02),(?AL+$07),?WAIT
		DB	(?AU+$0A),(?AL+$08),(?AL+$0D),(?AL+$06),(?AL+$12),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$01),(?AL+$0E),(?AL+$11),(?AL+$0D),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$11),(?AL+$11),(?AL+$11),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$0C),(?AU+$0E),(?AU+$0D),(?AU+$12),(?AU+$13),(?AU+$04),(?AU+$11),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_AGRAM

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?APST,(?AL+$15),(?AL+$04),?SPCE,(?AL+$04),(?AL+$0D),(?AL+$09),(?AL+$0E),(?AL+$18),(?AL+$04),(?AL+$03),?HURRY
		DB	(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$0E),(?AL+$06),(?AL+$04),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$16),?WAIT
		DB	(?AL+$11),(?AL+$04),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AU+$02),(?AL+$0E),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$01),(?AL+$18),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$02),(?AL+$07),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AU+$00),(?AL+$11),(?AL+$03),(?AL+$04),(?AL+$11),(?AL+$08),(?AL+$00),(?AL+$0B),?SPCE,(?AL+$06),(?AL+$04),(?AL+$18),(?AL+$12),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?WAIT
		DB	(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$04),(?AL+$00),(?AL+$11),(?AL+$04),(?AL+$03),?HURRY
		DB	(?AL+$08),(?AL+$0D),?SPCE,(?AU+$0F),(?AL+$00),(?AL+$11),(?AL+$00),(?AL+$03),(?AL+$16),(?AL+$18),(?AL+$0D),?COMM,?WAIT
		DB	(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$13),(?AL+$16),(?AL+$0E),?SPCE,(?AL+$0C),(?AL+$0E),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$08),(?AL+$0D),?SPCE,(?AU+$03),?APST,(?AU+$11),(?AL+$04),(?AL+$12),(?AL+$07),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_DELAY
		DB	$10


	DB	CMD_TEXTICON
		DW	ICON_AGRAM

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$13),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$18),?SPCE,(?AL+$01),(?AL+$04),?HURRY
		DB	(?AU+$0C),(?AL+$0E),(?AL+$11),(?AL+$00),(?AL+$06),?APST,(?AL+$12),?SPCE,(?AL+$05),(?AL+$00),(?AL+$13),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$0F),(?AL+$04),(?AL+$11),(?AL+$08),(?AL+$12),(?AL+$07),?SPCE,(?AL+$01),(?AL+$18),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$07),(?AL+$00),(?AL+$0D),(?AL+$03),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$08),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$12),(?AL+$14),(?AL+$11),(?AL+$15),(?AL+$08),(?AL+$15),(?AL+$04),?COMM,?HURRY
		DB	(?AL+$11),(?AL+$04),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AU+$02),(?AL+$0E),(?AL+$11),(?AL+$04),?SPCE,(?AU+$04),(?AL+$0D),(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$0D),(?AL+$02),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$05),(?AL+$08),(?AL+$15),(?AL+$04),?SPCE,(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$0E),(?AL+$0F),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$06),(?AL+$00),(?AL+$13),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$01),(?AL+$04),?SPCE,(?AL+$16),(?AL+$00),(?AL+$08),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$0F),(?AL+$04),(?AL+$11),(?AL+$07),(?AL+$00),(?AL+$0F),(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$0D),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$01),(?AL+$04),?SPCE,(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$03),(?AL+$18),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$05),(?AL+$00),(?AL+$02),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$11),(?AL+$14),(?AL+$13),(?AL+$07),?PERD,?WAIT
		DB	?EOF

	DB	CMD_SETEVENTTEXT
		DB	$0B

	DB	CMD_END

;********************************
?_ARDPALACE01_TXT_12

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$0C

	DB	CMD_END

;********************************
?_ARDPALACE01_TXT_13

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$13),(?AL+$11),(?AL+$14),(?AL+$13),(?AL+$07),?PERD,?PERD,?PERD,?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_DELAY
		DB	$80


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$0D

	DB	CMD_END

;********************************
?_ARDPALACE01_TXT_17

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$02),(?AL+$00),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AU+$00),(?AL+$06),(?AL+$11),(?AL+$00),(?AL+$0C),?WAIT
		DB	(?AL+$06),(?AL+$14),(?AL+$18),?SPCE,(?AL+$12),(?AL+$00),(?AL+$18),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$12),(?AL+$04),?SPCE,(?AL+$0F),(?AL+$04),(?AL+$0E),(?AL+$0F),(?AL+$0B),(?AL+$04),?HURRY
		DB	(?AL+$00),(?AL+$12),(?AL+$0A),(?AL+$04),(?AL+$03),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$0C),(?AL+$18),?WAIT
		DB	(?AL+$07),(?AL+$04),(?AL+$0B),(?AL+$0F),?COMM,?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$18),?APST,(?AL+$11),(?AL+$04),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$08),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_DELAY
		DB	$10


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$18),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$16),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AL+$0C),(?AL+$18),?HURRY
		DB	(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$0D),(?AL+$12),(?AL+$0B),(?AL+$00),(?AL+$13),(?AL+$08),(?AL+$0E),(?AL+$0D),?WAIT
		DB	(?AL+$01),(?AL+$11),(?AL+$00),(?AL+$02),(?AL+$04),(?AL+$0B),(?AL+$04),(?AL+$13),?PERD,?PERD,?PERD,?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$11

	DB	CMD_END

;********************************
?_ARDPALACE01_TXT_18

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$08),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$08),(?AL+$13),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$05),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$0E),(?AL+$05),(?AL+$05),?WAIT
		DB	(?AL+$16),(?AL+$07),(?AL+$04),(?AL+$0D),?SPCE,(?AU+$00),(?AL+$06),(?AL+$11),(?AL+$00),(?AL+$0C),?HURRY
		DB	(?AL+$19),(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$04),(?AL+$03),?SPCE,(?AL+$0C),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$00),(?AL+$01),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$14),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$07),(?AL+$08),(?AL+$0C),?QUST,?WAIT
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$12

	DB	CMD_END

;********************************
?_ARDPALACE_RNDBAT
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$00
		DB	$00
		DB	$00

	DB	CMD_SCREENWIPE
		DW	(?DO_SCREENFX_SWIRL&$FFFF)
		DB	SONGID_lavavents

	DB	CMD_JUMPRANDOM
		DB	$07
		DB	:_BTL9
		DW	(_BTL9&$FFFF)
		DB	:_BTL2
		DW	(_BTL2&$FFFF)
		DB	:_BTL3
		DW	(_BTL3&$FFFF)
		DB	:_BTL4
		DW	(_BTL4&$FFFF)
		DB	:_BTL6
		DW	(_BTL6&$FFFF)
		DB	:_BTL7
		DW	(_BTL7&$FFFF)
		DB	:_BTL8
		DW	(_BTL8&$FFFF)

;********************************
_BTL1
	DB	CMD_BTLNEW
		DB	ARDERIAL_ARENA1
		DB	MAGI_RND1
		DB	$43
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	ORATHAN_F
		DB	$43
		DB	$5C
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL2
	DB	CMD_BTLNEW
		DB	ARDERIAL_ARENA1
		DB	MAGI_RND1
		DB	$40
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	ALABAN
		DB	$3D
		DB	$55
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	EPIK
		DB	$3F
		DB	$58
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL3
	DB	CMD_BTLNEW
		DB	ARDERIAL_ARENA1
		DB	MAGI_RND1
		DB	$4A
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	THUNDRHYRN
		DB	$4A
		DB	$6E
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL4
	DB	CMD_BTLNEW
		DB	ARDERIAL_ARENA1
		DB	MAGI_RND1
		DB	$46
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	ORISH
		DB	$45
		DB	$58
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL5
	DB	CMD_BTLNEW
		DB	ARDERIAL_ARENA1
		DB	MAGI_RND1
		DB	$44
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	ORATHAN_F
		DB	$43
		DB	$5C
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	ALABAN
		DB	$3D
		DB	$55
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL6
	DB	CMD_BTLNEW
		DB	ARDERIAL_ARENA1
		DB	MAGI_RND1
		DB	$44
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	EPIK
		DB	$3F
		DB	$58
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	EPIK
		DB	$3F
		DB	$58
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	ORISH
		DB	$45
		DB	$58
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL7
	DB	CMD_BTLNEW
		DB	ARDERIAL_ARENA1
		DB	MAGI_RND1
		DB	$50
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	THUNDRHYRN
		DB	$4A
		DB	$6E
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	THUNDRHYRN
		DB	$4A
		DB	$6E
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	THUNDRHYRN
		DB	$4A
		DB	$6E
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	THUNDRHYRN
		DB	$4A
		DB	$6E
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL8
	DB	CMD_BTLNEW
		DB	ARDERIAL_ARENA1
		DB	MAGI_RND1
		DB	$40
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	ORISH
		DB	$45
		DB	$58
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	EPIK
		DB	$3F
		DB	$58
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	ALABAN
		DB	$3D
		DB	$55
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	ORATHAN_F
		DB	$43
		DB	$5C
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL9
	DB	CMD_BTLNEW
		DB	ARDERIAL_ARENA1
		DB	MAGI_RND1
		DB	$40
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	XYX
		DB	$3C
		DB	$50
		DB	$01

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	BOLT_HYREN
		DB	$46
		DB	$64
		DB	$03

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	XYX
		DB	$3C
		DB	$50
		DB	$01

	DB	CMD_BTLAUTO

;********************************
?_ARDPALACE01
	DB	CMD_FADEOUTSONG
		DB	$50

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$01

	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$16
		DB	:?_ARDPALACE01_ATTACK
		DW	(?_ARDPALACE01_ATTACK&$FFFF)

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDPALACE01&$FFFF)
		DB	:MAP_ARDPALACE01

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDPALACE01&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_ARDPALACE01&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D03C
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1E-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D172
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_ARDPALACE_RNDBAT
		DW	(?_ARDPALACE_RNDBAT&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR1D-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?RAINDROP_AI&$FFFF)
		DB	$0A
		DB	$09
		DW	$D172
		DB	$00
		DB	:?_RAINER
		DW	(?_RAINER&$FFFF)
		DB	:?_ARDPALACE_RNDBAT
		DW	(?_ARDPALACE_RNDBAT&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR1E-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR1D-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$34
		DB	:BIT_SPARKLE
		DW	(BIT_SPARKLE&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_SETBTLRETURN
		DB	:?_ARDPALACE01
		DW	(?_ARDPALACE01&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_ARDPALACE01_ATTACK
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$01

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_HERO_ABILITY+$0000)
		DB	$05

	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_ARDPALACE01&$FFFF)
		DB	:MAP_ARDPALACE01

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDPALACE01&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_ARDPALACE01&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$05
		DB	$15
		DW	$D0EC
		DB	$00
		DB	:?_ARDPALACE01_TONY
		DW	(?_ARDPALACE01_TONY&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$05
		DB	$11
		DW	$D0C0
		DB	$00
		DB	:?_ARDPALACE01_MAIDEN
		DW	(?_ARDPALACE01_MAIDEN&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$05
		DB	$07
		DW	$D052
		DB	$47
		DB	:?_ARDPALACE01_WYLOCE
		DW	(?_ARDPALACE01_WYLOCE&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$05
		DB	$15
		DW	$D0EC
		DB	$79
		DB	:?_ARDPALACE01_MORAG
		DW	(?_ARDPALACE01_MORAG&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$05
		DB	$0F
		DW	$D0AA
		DB	$B0
		DB	:?_ARDPALACE01_BLAST_1
		DW	(?_ARDPALACE01_BLAST_1&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$05
		DB	$0F
		DW	$D0AA
		DB	$B0
		DB	:?_ARDPALACE01_BLAST_2
		DW	(?_ARDPALACE01_BLAST_2&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR07-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$05
		DB	$0C
		DW	$D089
		DB	$B4
		DB	:?_STAR_SPARKLE_ANIM
		DW	(?_STAR_SPARKLE_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$21
		DB	:BIT_MAIDEN
		DW	(BIT_MAIDEN&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$32
		DB	:BIT_WYLOCE
		DW	(BIT_WYLOCE&$FFFF)
		DW	$8470
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$29
		DB	:BIT_MORAG
		DW	(BIT_MORAG&$FFFF)
		DW	$8790
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$07
		DB	:BIT_MORAGHURT
		DW	(BIT_MORAGHURT&$FFFF)
		DW	$8A90
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$04
		DB	:BIT_BLAST
		DW	(BIT_BLAST&$FFFF)
		DW	$8B00
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$04
		DB	:BIT_STARSPARKLE
		DW	(BIT_STARSPARKLE&$FFFF)
		DW	$8B40
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_SETGAMECOUNT
		DW	$0017

	DB	CMD_WAITEVENTMASTER
		DB	$03

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_END

;********************************
?_ARDPALACE01_TONY
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_UP_ANIM
		DW	(?_HERO_WALK_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$28
		DB	$00

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_HERO_WALK_UP_ANIM
		DW	(?_HERO_WALK_UP_ANIM&$FFFF)
		DB	$48
		DB	$00
		DB	$FF
		DB	$00

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_UP_ANIM
		DW	(?_HERO_WALK_UP_ANIM&$FFFF)
		DB	$58
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$03

	DB	CMD_DELAY
		DB	$40

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)
		DB	$18
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_DELAY
		DB	$04

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_SLOSHED_LEFT
		DW	(?_HERO_SLOSHED_LEFT&$FFFF)
		DB	$40
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_WAITEVENTMASTER
		DB	$02

	DB	CMD_SETTEXT
		DB	:?_ARDPALACE01_TXT_12
		DW	(?_ARDPALACE01_TXT_12&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$0C

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_ARDPALACE01_TXT_13
		DW	(?_ARDPALACE01_TXT_13&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$0D

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_RIGHT_ANIM
		DW	(?_HERO_WALK_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_WALK_LEFT_ANIM
		DW	(?_HERO_WALK_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_DELAY
		DB	$3C

	DB	CMD_SETTEXT
		DB	:?_ARDPALACE01_TXT_17
		DW	(?_ARDPALACE01_TXT_17&$FFFF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_LEFT_ANIM
		DW	(?_HERO_WALK_LEFT_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)
		DB	$20
		DB	$00
		DB	$01
		DB	:?_HERO_WALK_RIGHT_ANIM
		DW	(?_HERO_WALK_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	$00
		DB	$01
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$11

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_STAND_DR_ANIM
		DW	(?_HERO_STAND_DR_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_DL_ANIM
		DW	(?_HERO_STAND_DL_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_DR_ANIM
		DW	(?_HERO_STAND_DR_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_DL_ANIM
		DW	(?_HERO_STAND_DL_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_DR_ANIM
		DW	(?_HERO_STAND_DR_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_WALK_RIGHT_ANIM
		DW	(?_HERO_WALK_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_STAND_DR_ANIM
		DW	(?_HERO_STAND_DR_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_SLOSHED_RIGHT
		DW	(?_HERO_SLOSHED_RIGHT&$FFFF)
		DB	$04
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_ARDPALACE01_TXT_18
		DW	(?_ARDPALACE01_TXT_18&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$12

	DB	CMD_SETEVENTMASTER
		DB	$03

	DB	CMD_END

;********************************
?_ARDPALACE01_MAIDEN
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAIDEN_STAND_DL_ANIM
		DW	(?_MAIDEN_STAND_DL_ANIM&$FFFF)
		DB	$50
		DB	:?_MAIDEN_WALK_UP_ANIM
		DW	(?_MAIDEN_WALK_UP_ANIM&$FFFF)
		DB	$40
		DB	:?_MAIDEN_WALK_RIGHT_ANIM
		DW	(?_MAIDEN_WALK_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_MAIDEN_STAND_UP_ANIM
		DW	(?_MAIDEN_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_ARDPALACE01_TXT_1
		DW	(?_ARDPALACE01_TXT_1&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$03

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAIDEN_STAND_DOWN_ANIM
		DW	(?_MAIDEN_STAND_DOWN_ANIM&$FFFF)
		DB	$98
		DB	:?_MAIDEN_STAND_UL_ANIM
		DW	(?_MAIDEN_STAND_UL_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$14

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MAIDEN_RUN_RIGHT_ANIM
		DW	(?_MAIDEN_RUN_RIGHT_ANIM&$FFFF)
		DB	$08
		DB	:?_MAIDEN_RUN_UP_ANIM
		DW	(?_MAIDEN_RUN_UP_ANIM&$FFFF)
		DB	$08
		DB	:?_MAIDEN_RUN_RIGHT_ANIM
		DW	(?_MAIDEN_RUN_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_MAIDEN_RUN_DOWN_ANIM
		DW	(?_MAIDEN_RUN_DOWN_ANIM&$FFFF)
		DB	$48
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_ARDPALACE01_WYLOCE
	DB	CMD_THISACTORSETANIM
		DB	:?_WYLOCE_STAND_DOWN_ANIM
		DW	(?_WYLOCE_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_CAMERASEEK
		DB	$05
		DB	$08
		DB	$03

	DB	CMD_DELAY
		DB	$60

	DB	CMD_SETTEXT
		DB	:?_ARDPALACE01_TXT_2
		DW	(?_ARDPALACE01_TXT_2&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WYLOCE_WALK_DOWN_ANIM
		DW	(?_WYLOCE_WALK_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_WYLOCE_STAND_DOWN_ANIM
		DW	(?_WYLOCE_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_ARDPALACE01_TXT_3
		DW	(?_ARDPALACE01_TXT_3&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$03

	DB	CMD_THATACTORSTART
		DB	(((ACTOR03-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_DELAY
		DB	$20

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WYLOCE_WALK_DOWN_ANIM
		DW	(?_WYLOCE_WALK_DOWN_ANIM&$FFFF)
		DB	$40
		DB	:?_WYLOCE_STAND_DOWN_ANIM
		DW	(?_WYLOCE_STAND_DOWN_ANIM&$FFFF)
		DB	$20
		DB	:?_WYLOCE_STAND_DR_ANIM
		DW	(?_WYLOCE_STAND_DR_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_ARDPALACE01_TXT_3A
		DW	(?_ARDPALACE01_TXT_3A&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$14

	DB	CMD_DELAY
		DB	$10

	DB	CMD_THISACTORSETANIM
		DB	:?_WYLOCE_STAND_DOWN_ANIM
		DW	(?_WYLOCE_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$04

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WYLOCE_STAND_DOWN_ANIM
		DW	(?_WYLOCE_STAND_DOWN_ANIM&$FFFF)
		DB	$46
		DB	:?_WYLOCE_STAND_DL_ANIM
		DW	(?_WYLOCE_STAND_DL_ANIM&$FFFF)
		DB	$20
		DB	:?_WYLOCE_STAND_DOWN_ANIM
		DW	(?_WYLOCE_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$05

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WYLOCE_STAND_DOWN_ANIM
		DW	(?_WYLOCE_STAND_DOWN_ANIM&$FFFF)
		DB	$13
		DB	:?_WYLOCE_STAND_DL_ANIM
		DW	(?_WYLOCE_STAND_DL_ANIM&$FFFF)
		DB	$04
		DB	:?_WYLOCE_STAND_DR_ANIM
		DW	(?_WYLOCE_STAND_DR_ANIM&$FFFF)
		DB	$04
		DB	:?_WYLOCE_STAND_DOWN_ANIM
		DW	(?_WYLOCE_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTMASTER
		DB	$07

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WYLOCE_RUN_DOWN_ANIM
		DW	(?_WYLOCE_RUN_DOWN_ANIM&$FFFF)
		DB	$04
		DB	:?_WYLOCE_STAND_DOWN_ANIM
		DW	(?_WYLOCE_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$07

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WYLOCE_STAND_DR_ANIM
		DW	(?_WYLOCE_STAND_DR_ANIM&$FFFF)
		DB	$18
		DB	:?_WYLOCE_STAND_DL_ANIM
		DW	(?_WYLOCE_STAND_DL_ANIM&$FFFF)
		DB	$18
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_ARDPALACE01_TXT_8
		DW	(?_ARDPALACE01_TXT_8&$FFFF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WYLOCE_STAND_DR_ANIM
		DW	(?_WYLOCE_STAND_DR_ANIM&$FFFF)
		DB	$18
		DB	:?_WYLOCE_STAND_DL_ANIM
		DW	(?_WYLOCE_STAND_DL_ANIM&$FFFF)
		DB	$18
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$08

	DB	CMD_DELAY
		DB	$08

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WYLOCE_BLINK_ANIM
		DW	(?_WYLOCE_BLINK_ANIM&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_ARDPALACE01_MORAG
	DB	CMD_THISACTORSETANIM
		DB	:?_MORAG_HOVER_UP_ANIM
		DW	(?_MORAG_HOVER_UP_ANIM&$FFFF)

	DB	CMD_CAMERASEEK
		DB	$05
		DB	$12
		DB	$03

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MORAG_HOVER_UP_ANIM
		DW	(?_MORAG_HOVER_UP_ANIM&$FFFF)
		DB	$40
		DB	:?_MORAG_FLOAT_UP_ANIM
		DW	(?_MORAG_FLOAT_UP_ANIM&$FFFF)
		DB	$48
		DB	$00

	DB	CMD_CAMERASEEK
		DB	$05
		DB	$0D
		DB	$02

	DB	CMD_THISACTORSETANIM
		DB	:?_MORAG_HOVER_UP_ANIM
		DW	(?_MORAG_HOVER_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$14

	DB	CMD_SETTEXT
		DB	:?_ARDPALACE01_TXT_4
		DW	(?_ARDPALACE01_TXT_4&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$04

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_MORAG_FLOAT_DOWN_ANIM
		DW	(?_MORAG_FLOAT_DOWN_ANIM&$FFFF)
		DB	$20
		DB	$00
		DB	$01
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MORAG_HOVER_UP_ANIM
		DW	(?_MORAG_HOVER_UP_ANIM&$FFFF)
		DB	$18
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR05-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MORAG_HOVER_UP_ANIM
		DW	(?_MORAG_HOVER_UP_ANIM&$FFFF)
		DB	$40
		DB	:?_MORAG_HURTING_LEFT
		DW	(?_MORAG_HURTING_LEFT&$FFFF)
		DB	$20
		DB	:?_MORAG_HOVER_UL_ANIM
		DW	(?_MORAG_HOVER_UL_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_UR_ANIM
		DW	(?_MORAG_HOVER_UR_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_UL_ANIM
		DW	(?_MORAG_HOVER_UL_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_UR_ANIM
		DW	(?_MORAG_HOVER_UR_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_UL_ANIM
		DW	(?_MORAG_HOVER_UL_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_UR_ANIM
		DW	(?_MORAG_HOVER_UR_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_UL_ANIM
		DW	(?_MORAG_HOVER_UL_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_UR_ANIM
		DW	(?_MORAG_HOVER_UR_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_UP_ANIM
		DW	(?_MORAG_HOVER_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_ARDPALACE01_TXT_5
		DW	(?_ARDPALACE01_TXT_5&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$05

	DB	CMD_THATACTORSTART
		DB	(((ACTOR06-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MORAG_HOVER_UP_ANIM
		DW	(?_MORAG_HOVER_UP_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_SFX
		DB	SFXID_PHYSICAL_ATTACK

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MORAG_HURTING_RIGHT
		DW	(?_MORAG_HURTING_RIGHT&$FFFF)
		DB	$38
		DB	:?_MORAG_HOVER_UL_ANIM
		DW	(?_MORAG_HOVER_UL_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_UR_ANIM
		DW	(?_MORAG_HOVER_UR_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_UL_ANIM
		DW	(?_MORAG_HOVER_UL_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_UR_ANIM
		DW	(?_MORAG_HOVER_UR_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_UL_ANIM
		DW	(?_MORAG_HOVER_UL_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_UR_ANIM
		DW	(?_MORAG_HOVER_UR_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_UL_ANIM
		DW	(?_MORAG_HOVER_UL_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_UR_ANIM
		DW	(?_MORAG_HOVER_UR_ANIM&$FFFF)
		DB	$04
		DB	:?_MORAG_HOVER_UP_ANIM
		DW	(?_MORAG_HOVER_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_ARDPALACE01_TXT_6
		DW	(?_ARDPALACE01_TXT_6&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$06

	DB	CMD_THISACTORSETANIM
		DB	:?_MORAG_HOVER_DOWN_ANIM
		DW	(?_MORAG_HOVER_DOWN_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$18

	DB	CMD_FADEOUTSONG
		DB	$50

	DB	CMD_THATACTORINIT
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$05
		DB	$14
		DW	$D0E1
		DB	$00
		DB	:?_ARDPALACE01_AGRAM
		DW	(?_ARDPALACE01_AGRAM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$47
		DB	:BIT_AGRAM
		DW	(BIT_AGRAM&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR04-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_DELAY
		DB	$18

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MORAG_FLOAT_RIGHT_ANIM
		DW	(?_MORAG_FLOAT_RIGHT_ANIM&$FFFF)
		DB	$18
		DB	:?_MORAG_FLOAT_UP_ANIM
		DW	(?_MORAG_FLOAT_UP_ANIM&$FFFF)
		DB	$20
		DB	:?_MORAG_HOVER_UL_ANIM
		DW	(?_MORAG_HOVER_UL_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$07

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_MORAG_FLOAT_DOWN_ANIM
		DW	(?_MORAG_FLOAT_DOWN_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_ARDPALACE01_BLAST_1
	DB	CMD_SFX
		DB	SFXID_DIG

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_BLAST_UP_ANIM
		DW	(?_BLAST_UP_ANIM&$FFFF)
		DB	$1B
		DB	$00

	DB	CMD_SFX
		DB	SFXID_ENEMY_HIT

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_BLAST_LEFT_ANIM
		DW	(?_BLAST_LEFT_ANIM&$FFFF)
		DB	$18
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_ARDPALACE01_BLAST_2
	DB	CMD_SFX
		DB	SFXID_DIG

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_BLAST_UP_ANIM
		DW	(?_BLAST_UP_ANIM&$FFFF)
		DB	$1C
		DB	$00

	DB	CMD_SFX
		DB	SFXID_ENEMY_HIT

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_BLAST_DOWN_ANIM
		DW	(?_BLAST_DOWN_ANIM&$FFFF)
		DB	$1C
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_ARDPALACE01_AGRAM
	DB	CMD_SONGSTART
		DB	SONGID_agramtheme

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_AGRAM_WALK_UP_ANIM
		DW	(?_AGRAM_WALK_UP_ANIM&$FFFF)
		DB	$38
		DB	$00

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_AGRAM_WALK_UP_ANIM
		DW	(?_AGRAM_WALK_UP_ANIM&$FFFF)
		DB	$18
		DB	$00
		DB	$FF
		DB	$00

	DB	CMD_THISACTORSETANIM
		DB	:?_AGRAM_STAND_UP_ANIM
		DW	(?_AGRAM_STAND_UP_ANIM&$FFFF)

	DB	CMD_SETEVENTMASTER
		DB	$07

	DB	CMD_DELAY
		DB	$04

	DB	CMD_SETTEXT
		DB	:?_ARDPALACE01_TXT_7
		DW	(?_ARDPALACE01_TXT_7&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$07

	DB	CMD_DELAY
		DB	$18

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_AGRAM_WALK_UP_ANIM
		DW	(?_AGRAM_WALK_UP_ANIM&$FFFF)
		DB	$08
		DB	$00
		DB	$FF
		DB	$00

	DB	CMD_THISACTORSETANIM
		DB	:?_AGRAM_STAND_UP_ANIM
		DW	(?_AGRAM_STAND_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$08

	DB	CMD_SFX
		DB	SFXID_ENEMY_DIE

	DB	CMD_PALCLEARANIM
		DB	$0F
		DW	$001F

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_DELAY
		DB	$30

	DB	CMD_SCROLLMAP
		DB	$10
		DB	$00
		DB	$FF
		DB	$00

	DB	CMD_SETEVENTMASTER
		DB	$01

	DB	CMD_SFX
		DB	SFXID_ENEMY_DIE

	DB	CMD_PALCLEARANIM
		DB	$0F
		DW	$001F

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_DELAY
		DB	$50

	DB	CMD_SETTEXT
		DB	:?_ARDPALACE01_TXT_9
		DW	(?_ARDPALACE01_TXT_9&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$09

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_AGRAM_WALK_UP_ANIM
		DW	(?_AGRAM_WALK_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_AGRAM_STAND_UP_ANIM
		DW	(?_AGRAM_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_ARDPALACE01_TXT_10
		DW	(?_ARDPALACE01_TXT_10&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$0A

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_AGRAM_WALK_DOWN_ANIM
		DW	(?_AGRAM_WALK_DOWN_ANIM&$FFFF)
		DB	$18
		DB	$00
		DB	$01
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_AGRAM_STAND_DOWN_ANIM
		DW	(?_AGRAM_STAND_DOWN_ANIM&$FFFF)
		DB	$20
		DB	:?_AGRAM_STAND_DL_ANIM
		DW	(?_AGRAM_STAND_DL_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:?_ARDPALACE01_TXT_11
		DW	(?_ARDPALACE01_TXT_11&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$63

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_AGRAM_STAND_LEFT_ANIM
		DW	(?_AGRAM_STAND_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_AGRAM_STAND_UP_ANIM
		DW	(?_AGRAM_STAND_UP_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITEVENTTEXT
		DB	$0B

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_AGRAM_STAND_LEFT_ANIM
		DW	(?_AGRAM_STAND_LEFT_ANIM&$FFFF)
		DB	$08
		DB	:?_AGRAM_STAND_DOWN_ANIM
		DW	(?_AGRAM_STAND_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_AGRAM_WALK_DOWN_ANIM
		DW	(?_AGRAM_WALK_DOWN_ANIM&$FFFF)
		DB	$30
		DB	$00

	DB	CMD_SETEVENTMASTER
		DB	$02

	DB	CMD_FADEOUTSONG
		DB	$50

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_ARDGARDEN03
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?ANIM_AI
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	?HERO_AI
	GLOBAL	?DO_SCREENFX_SWIRL
	GLOBAL	?_BATTLE_FADE_IN
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	MAP_ARDPALACE01
	GLOBAL	HS_ARDPALACE01
	GLOBAL	TR_ARDPALACE01
	GLOBAL	PAL_HERO
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR1E
	GLOBAL	?RAINDROP_AI
	GLOBAL	?_RAINER
	GLOBAL	ACTOR1D
	GLOBAL	BIT_SPARKLE
	GLOBAL	?_BATTLE_LOST
	GLOBAL	XRAM_HERO_ABILITY
	GLOBAL	ACTOR00
	GLOBAL	ACTOR02
	GLOBAL	ACTOR03
	GLOBAL	ACTOR05
	GLOBAL	ACTOR06
	GLOBAL	ACTOR07
	GLOBAL	?_STAR_SPARKLE_ANIM
	GLOBAL	BIT_MAIDEN
	GLOBAL	BIT_WYLOCE
	GLOBAL	BIT_MORAG
	GLOBAL	BIT_MORAGHURT
	GLOBAL	BIT_BLAST
	GLOBAL	BIT_STARSPARKLE
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_HERO_WALK_UP_ANIM
	GLOBAL	?_HERO_WALK_DOWN_ANIM
	GLOBAL	?_HERO_SLOSHED_LEFT
	GLOBAL	?_HERO_WALK_RIGHT_ANIM
	GLOBAL	?_HERO_WALK_LEFT_ANIM
	GLOBAL	?_HERO_STAND_DR_ANIM
	GLOBAL	?_HERO_STAND_DL_ANIM
	GLOBAL	?_HERO_SLOSHED_RIGHT
	GLOBAL	?_MAIDEN_STAND_DL_ANIM
	GLOBAL	?_MAIDEN_WALK_UP_ANIM
	GLOBAL	?_MAIDEN_WALK_RIGHT_ANIM
	GLOBAL	?_MAIDEN_STAND_UP_ANIM
	GLOBAL	?_MAIDEN_STAND_DOWN_ANIM
	GLOBAL	?_MAIDEN_STAND_UL_ANIM
	GLOBAL	?_MAIDEN_RUN_RIGHT_ANIM
	GLOBAL	?_MAIDEN_RUN_UP_ANIM
	GLOBAL	?_MAIDEN_RUN_DOWN_ANIM
	GLOBAL	?_WYLOCE_STAND_DOWN_ANIM
	GLOBAL	?_WYLOCE_WALK_DOWN_ANIM
	GLOBAL	?_WYLOCE_STAND_DR_ANIM
	GLOBAL	?_WYLOCE_STAND_DL_ANIM
	GLOBAL	?_WYLOCE_RUN_DOWN_ANIM
	GLOBAL	?_WYLOCE_BLINK_ANIM
	GLOBAL	?_MORAG_HOVER_UP_ANIM
	GLOBAL	?_MORAG_FLOAT_UP_ANIM
	GLOBAL	?_MORAG_FLOAT_DOWN_ANIM
	GLOBAL	?_MORAG_HURTING_LEFT
	GLOBAL	?_MORAG_HOVER_UL_ANIM
	GLOBAL	?_MORAG_HOVER_UR_ANIM
	GLOBAL	?_MORAG_HURTING_RIGHT
	GLOBAL	?_MORAG_HOVER_DOWN_ANIM
	GLOBAL	ACTOR04
	GLOBAL	BIT_AGRAM
	GLOBAL	?_MORAG_FLOAT_RIGHT_ANIM
	GLOBAL	?_BLAST_UP_ANIM
	GLOBAL	?_BLAST_LEFT_ANIM
	GLOBAL	?_BLAST_DOWN_ANIM
	GLOBAL	?_AGRAM_WALK_UP_ANIM
	GLOBAL	?_AGRAM_STAND_UP_ANIM
	GLOBAL	?_AGRAM_WALK_DOWN_ANIM
	GLOBAL	?_AGRAM_STAND_DOWN_ANIM
	GLOBAL	?_AGRAM_STAND_DL_ANIM
	GLOBAL	?_AGRAM_STAND_LEFT_ANIM

;********************************
	END
;********************************