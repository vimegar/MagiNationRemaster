;Size:8014
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\NAROOM\VASH\MAP13\NRMVASH13.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_NRMVASH13_DR_1
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$0F
		DB	$0C
		DB	$0A

	DB	CMD_JUMP
		DB	:?_NRMGLADE03
		DW	(?_NRMGLADE03&$FFFF)

;********************************
?_NRMVASH13_DR_2
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0080)&$FFFF
		DB	$80
		DB	:_RESET_OTHER
		DW	(_RESET_OTHER&$FFFF)

	DB	CMD_IF
		DB	EXPR_OR
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$18
		DB	EXPR_LESS
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$03
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_EXPRXRAMBYTE
		DW	(XRAM_SAVEVARS+$0090)
		DB	EXPR_ADD
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0090)&$FFFF
		DB	EXPR_BYTECONST,$01

	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0090)&$FFFF
		DB	EXPR_BYTECONST,$05
		DB	:_RESET
		DW	(_RESET&$FFFF)

	DB	CMD_END

;********************************
_RESET
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0090)
		DB	$00

	DB	CMD_END

;********************************
_RESET_OTHER
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0091)
		DB	$00

	DB	CMD_END

;********************************
?_NRMVASH13_DR_3
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0090)
		DB	$00

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0091)
		DB	$00

	DB	CMD_END

;********************************
?_NRMVASH13_DR_4
	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$0F
		DB	:_YAKI_NOT_THERE
		DW	(_YAKI_NOT_THERE&$FFFF)

	DB	CMD_SETMASTER
		DB	:?_NRMVASH13_YAKI_BOOTS_TONY
		DW	(?_NRMVASH13_YAKI_BOOTS_TONY&$FFFF)

	DB	CMD_XRAMBITAND
		DW	(XRAM_SAVEBITS+$0080)
		DB	$7F

	DB	CMD_END

;********************************
_YAKI_NOT_THERE
	DB	CMD_HEROTODOOR
		DB	$14
		DB	$04
		DB	$07
		DB	$0F

	DB	CMD_JUMP
		DB	:?_NRMVASH22
		DW	(?_NRMVASH22&$FFFF)

;********************************
?_NRMVASH13_DR_5
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0080)&$FFFF
		DB	$80
		DB	:_CLOSE_DOOR_COUNT
		DW	(_CLOSE_DOOR_COUNT&$FFFF)

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0090)
		DB	$00

	DB	CMD_END

;********************************
_CLOSE_DOOR_COUNT
	DB	CMD_EXPRXRAMBYTE
		DW	(XRAM_SAVEVARS+$0091)
		DB	EXPR_ADD
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0091)&$FFFF
		DB	EXPR_BYTECONST,$01

	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0091)&$FFFF
		DB	EXPR_BYTECONST,$05
		DB	:_RESET
		DW	(_RESET&$FFFF)

	DB	CMD_END

;********************************
_RESET
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0091)
		DB	$00

	DB	CMD_END

;********************************
?_NRMVASH13_TR_1

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$01),(?AL+$04),?HURRY
		DB	(?AL+$16),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$18),?WAIT
		DB	(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$04),(?AL+$10),(?AL+$14),(?AL+$08),(?AL+$0F),(?AL+$0C),(?AL+$04),(?AL+$0D),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_NRMVASH13_TR_2
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0090)
		DB	$00

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0091)
		DB	$00


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$02),(?AL+$00),(?AL+$11),(?AL+$18),?PERD,?SPCE,(?AU+$00),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$01),(?AL+$08),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_NRMVASH13_TR_3
	DB	CMD_IF
		DB	EXPR_AND
		DB	EXPR_EQU
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0091)&$FFFF
		DB	EXPR_BYTECONST,$05
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0080)&$FFFF
		DB	$80
		DB	:_CLOSE_DOOR
		DW	(_CLOSE_DOOR&$FFFF)

	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0090)&$FFFF
		DB	EXPR_BYTECONST,$05
		DB	:_OPEN_DOOR
		DW	(_OPEN_DOOR&$FFFF)

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0090)
		DB	$00

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0091)
		DB	$00


	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$02),(?AL+$00),(?AL+$11),(?AL+$18),?PERD,?SPCE,(?AU+$00),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$01),(?AL+$08),(?AL+$06),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
_OPEN_DOOR
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0090)
		DB	$00

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0080)
		DB	$80


	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AL+$0B),(?AL+$08),(?AL+$02),(?AL+$0A),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_COPYTILEBLOCK
		DW	$D000
		DB	$02
		DB	$01
		DW	$D092
		DB	$05
		DB	$15

	DB	CMD_COPYTILEBLOCK
		DW	$D000
		DB	$02
		DB	$01
		DW	$D0AB
		DB	$06
		DB	$15

	DB	CMD_COPYTILEBLOCK
		DW	$D019
		DB	$02
		DB	$01
		DW	$D0C4
		DB	$07
		DB	$15

	DB	CMD_END

;********************************
_CLOSE_DOOR
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0091)
		DB	$00

	DB	CMD_XRAMBITAND
		DW	(XRAM_SAVEBITS+$0080)
		DB	$7F


	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AL+$0B),(?AL+$08),(?AL+$02),(?AL+$0A),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_COPYTILEBLOCK
		DW	$D2A3
		DB	$02
		DB	$03
		DW	$D092
		DB	$05
		DB	$15

	DB	CMD_END

;********************************
?_NRMVASH13_DR_BOUNCE
	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:_TONY_BOUNCE
		DW	(_TONY_BOUNCE&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((ACTOR20-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:_EIDON_MOVE
		DW	(_EIDON_MOVE&$FFFF)

	DB	CMD_END

;********************************
_EIDON_MOVE
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_EIDON_WALK_LEFT_ANIM
		DW	(?_EIDON_WALK_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_EIDON_STAND_LEFT_ANIM
		DW	(?_EIDON_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:_TXT_TRAINED_ENOUGH
		DW	(_TXT_TRAINED_ENOUGH&$FFFF)

	DB	CMD_END

;********************************
_TONY_BOUNCE
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_RIGHT_ANIM
		DW	(?_HERO_WALK_RIGHT_ANIM&$FFFF)
		DB	$18
		DB	$00

	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_END

;********************************
_TXT_TRAINED_ENOUGH

	DB	CMD_TEXTICON
		DW	ICON_EIDON

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$12),(?AL+$14),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$15),(?AL+$04),?SPCE,(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$04),(?AL+$03),?WAIT
		DB	(?AL+$04),(?AL+$0D),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?SPCE,(?AU+$0D),(?AL+$0E),?HURRY
		DB	?SPCE,(?AU+$18),(?AL+$04),(?AL+$12)
		DB	?EOF

	DB	CMD_TEXTMENU
		DB	$02
		DB	:_TRAIN_NO2
		DW	(_TRAIN_NO2&$FFFF)
		DB	:_TRAIN_YES2
		DW	(_TRAIN_YES2&$FFFF)

;********************************
_TRAIN_NO2
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0C),(?AL+$00),(?AL+$18),(?AL+$01),(?AL+$04),?SPCE,(?AU+$08),?SPCE,(?AL+$12),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?HURRY
		DB	(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$0D),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$0E),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_EIDON

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$12),(?AL+$04),?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_NRMVASH13_QUAKE
		DW	(?_NRMVASH13_QUAKE&$FFFF)

;********************************
_TRAIN_YES2
	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$04),(?AL+$0F),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_EIDON

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$12),(?AL+$04),?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_NRMVASH13_QUAKE
		DW	(?_NRMVASH13_QUAKE&$FFFF)

;********************************
?_NRMVASH13_TXT_EXPLAIN

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$0A),(?AL+$00),(?AL+$18),?COMM,?SPCE,(?AL+$13),(?AL+$04),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$0C),(?AL+$04),?HURRY
		DB	(?AL+$00),(?AL+$01),(?AL+$0E),(?AL+$14),(?AL+$13),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTWRITE
		DB	?SPCE,(?AU+$01),(?AL+$00),(?AL+$12),(?AL+$08),(?AL+$02),(?AL+$12),?SPCE,(?AU+$00),(?AL+$02),(?AL+$13),(?AL+$08),(?AL+$0E),(?AL+$0D),?HURRY
		DB	?SPCE,(?AU+$13),(?AL+$08),(?AL+$0F),(?AL+$12),?SPCE,?SPCE,?SPCE,(?AU+$07),(?AL+$14),(?AL+$0D),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06)
		DB	?EOF

	DB	CMD_TEXTMENU
		DB	$04
		DB	:_EXPLAIN_BASIC_RULES
		DW	(_EXPLAIN_BASIC_RULES&$FFFF)
		DB	:_EXPLAIN_BATTLE_TIPS
		DW	(_EXPLAIN_BATTLE_TIPS&$FFFF)
		DB	:_EXPLAIN_BATTLE_ACTIONS
		DW	(_EXPLAIN_BATTLE_ACTIONS&$FFFF)
		DB	:_EXPLAIN_SEARCHING_OUT
		DW	(_EXPLAIN_SEARCHING_OUT&$FFFF)

;********************************
_EXPLAIN_BASIC_RULES
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AU+$0E),(?AU+$0E),(?AU+$0E),?EXCL,?SPCE,(?AU+$13),(?AU+$07),(?AU+$00),(?AU+$13),?APST,(?AU+$12),?HURRY
		DB	(?AU+$13),(?AU+$07),(?AU+$04),?SPCE,(?AU+$12),(?AU+$0F),(?AU+$08),(?AU+$11),(?AU+$08),(?AU+$13),?EXCL,?WAIT
		DB	(?AU+$0E),(?AL+$0A),(?AL+$00),(?AL+$18),?COMM,?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$01),(?AL+$00),(?AL+$12),(?AL+$08),(?AL+$02),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$16),(?AL+$0E),?HURRY
		DB	(?AL+$0A),(?AL+$08),(?AL+$0D),(?AL+$03),(?AL+$12),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$08),(?AL+$0D),(?AL+$13),(?AL+$0E),?PERD,?WAIT
		DB	(?AU+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AU+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?COMM,?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AU+$0C),(?AL+$00),(?AL+$06),(?AL+$08),?HURRY
		DB	(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?HURRY
		DB	(?AL+$08),(?AL+$12),?SPCE,(?AL+$16),(?AL+$07),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$05),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AU+$03),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0C),?SPCE,(?AU+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AL+$12),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$0D),(?AL+$00),(?AL+$01),?HURRY
		DB	?APST,(?AL+$04),(?AL+$0C),?EXCL,?SPCE,(?AU+$0C),(?AL+$00),(?AL+$06),(?AL+$08),?WAIT
		DB	(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$03),(?AL+$14),(?AL+$04),(?AL+$0B),?SPCE,(?AL+$01),(?AL+$04),(?AL+$13),(?AL+$16),(?AL+$04),(?AL+$04),(?AL+$0D),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?WAIT
		DB	(?AU+$0C),(?AL+$00),(?AL+$06),(?AL+$08),?EXCL,?WAIT
		DB	(?AU+$00),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?WAIT
		DB	(?AL+$01),(?AL+$18),?SPCE,(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?COMM,?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AU+$0E),(?AU+$0D),(?AU+$04),?SPCE,?DASH,?SPCE,?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$11),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?COMM,?HURRY
		DB	(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AU+$0E),(?AU+$0D),(?AU+$04),?SPCE,?DASH,?SPCE,?WAIT
		DB	(?AL+$00),(?AL+$02),(?AL+$13),(?AL+$08),(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$04),(?AL+$00),(?AL+$02),(?AL+$07),?HURRY
		DB	(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?PERD,?SPCE,(?AU+$04),(?AL+$00),(?AL+$02),(?AL+$07),?WAIT
		DB	(?AL+$00),(?AL+$02),(?AL+$13),(?AL+$08),(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$0F),(?AL+$04),(?AL+$11),(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$0C),?COMM,?SPCE,(?AL+$12),(?AL+$0E),?HURRY
		DB	(?AL+$16),(?AL+$00),(?AL+$13),(?AL+$02),(?AL+$07),?SPCE,(?AL+$08),(?AL+$13),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$03),(?AL+$0E),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$12),(?AL+$0F),(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$03),(?AL+$04),(?AL+$13),(?AL+$00),(?AL+$08),(?AL+$0B),(?AL+$12),?WAIT
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$16),?COMM,?SPCE,(?AL+$01),(?AL+$14),(?AL+$13),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$00),(?AL+$02),(?AL+$13),(?AL+$08),(?AL+$0E),(?AL+$0D),(?AL+$12),?WAIT
		DB	(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AU+$05),(?AU+$0E),(?AU+$02),(?AU+$14),(?AU+$12),?COMM,?HURRY
		DB	(?AU+$12),(?AU+$14),(?AU+$0C),(?AU+$0C),(?AU+$0E),(?AU+$0D),?COMM,?SPCE,(?AU+$12),(?AU+$0F),(?AU+$04),(?AU+$0B),(?AU+$0B),?COMM,?WAIT
		DB	(?AU+$08),(?AU+$13),(?AU+$04),(?AU+$0C),?COMM,?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AU+$11),(?AU+$14),(?AU+$0D),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AU+$08),?SPCE,(?AL+$0A),(?AL+$04),(?AL+$04),(?AL+$0F),?HURRY
		DB	(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$07),(?AL+$08),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AL+$00),(?AL+$12),(?AL+$08),(?AL+$02),(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$18),?COMM,?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?WAIT
		DB	(?AL+$12),(?AL+$14),(?AL+$0C),(?AL+$0C),(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$03),(?AL+$00),(?AL+$0C),(?AL+$00),(?AL+$06),(?AL+$04),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?PERD,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$0B),(?AL+$18),?SPCE,(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),(?AL+$12),(?AL+$04),(?AL+$0B),(?AL+$05),?WAIT
		DB	(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$03),(?AL+$00),(?AL+$0C),(?AL+$00),(?AL+$06),(?AL+$04),?HURRY
		DB	(?AL+$08),(?AL+$12),?SPCE,(?AL+$16),(?AL+$07),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?WAIT
		DB	(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$18),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AL+$12),(?AL+$14),(?AL+$0C),(?AL+$0C),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$03),?COMM,?SPCE,(?AL+$0E),(?AL+$11),?HURRY
		DB	(?AL+$08),(?AL+$05),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$0F),(?AL+$0F),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$0D),(?AL+$13),?WAIT
		DB	(?AL+$07),(?AL+$00),(?AL+$12),?SPCE,(?AL+$00),?SPCE,(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$02),(?AL+$08),(?AL+$00),(?AL+$0B),?HURRY
		DB	(?AL+$00),(?AL+$01),(?AL+$08),(?AL+$0B),(?AL+$08),(?AL+$13),(?AL+$18),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$03),(?AL+$0E),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$03),(?AL+$0E),?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$16),(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$05),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$07),?SPCE,(?AU+$18),(?AU+$04),(?AU+$00),(?AU+$07),(?AU+$07),(?AU+$07),?EXCL,?HURRY
		DB	(?AU+$13),(?AU+$07),(?AU+$00),(?AU+$13),?APST,(?AU+$12),?SPCE,(?AU+$04),(?AU+$00),(?AU+$12),(?AU+$18),?EXCL,?WAIT
		DB	(?AU+$01),(?AL+$04),(?AL+$00),(?AL+$13),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$16),(?AL+$0D),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$0E),(?AL+$12),(?AL+$04),?SPCE,(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AU+$18),(?AU+$0E),(?AU+$14),?SPCE,(?AU+$16),(?AU+$08),(?AU+$0D),?COMM,?HURRY
		DB	(?AU+$01),(?AU+$11),(?AU+$0E),(?AU+$13),(?AU+$07),(?AU+$04),(?AU+$11),?EXCL,?WAIT
		DB	(?AU+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AU+$0C),(?AL+$00),(?AL+$06),(?AL+$08),?HURRY
		DB	(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),(?AL+$12),?PERD,?PERD,?PERD,?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$08),(?AL+$0D),(?AL+$02),(?AL+$0B),(?AL+$14),(?AL+$03),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$06),(?AL+$14),(?AL+$18),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?WAIT
		DB	(?AL+$02),(?AL+$0E),(?AL+$0D),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$0B),(?AL+$0B),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$0E),(?AL+$05),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$14),(?AL+$11),(?AL+$12),(?AL+$04),?COMM,?SPCE,(?AL+$08),(?AL+$05),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$01),(?AL+$04),(?AL+$00),(?AL+$13),?SPCE,(?AL+$14),(?AL+$0F),?COMM,?WAIT
		DB	(?AU+$18),(?AU+$0E),(?AU+$14),?SPCE,(?AU+$0B),(?AU+$0E),(?AU+$12),(?AU+$04),?EXCL,?WAIT
		DB	?PERD,?PERD,?PERD,(?AU+$07),(?AU+$0E),(?AU+$16),(?AU+$04),(?AU+$15),(?AU+$04),(?AU+$11),?EXCL,?EXCL,?EXCL,?HURRY
		DB	(?AU+$00),(?AL+$12),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$00),(?AL+$12),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$12),(?AL+$13),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$00),?SPCE,(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$12),(?AL+$14),(?AL+$0C),(?AL+$0C),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$03),?COMM,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$01),(?AL+$04),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$12),(?AL+$13),?SPCE,(?AL+$12),(?AL+$07),(?AL+$00),(?AL+$0F),(?AL+$04),?HURRY
		DB	(?AL+$0F),(?AL+$0E),(?AL+$12),(?AL+$12),(?AL+$08),(?AL+$01),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?WAIT
		DB	(?AL+$12),(?AL+$13),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0D),?EXCL,?SPCE,(?AU+$12),(?AL+$0E),?HURRY
		DB	(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$06),(?AL+$08),(?AL+$15),(?AL+$04),?SPCE,(?AL+$14),(?AL+$0F),?EXCL,?WAIT
		DB	(?AU+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$16),(?AL+$07),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$05),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),?COMM,?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?APST,?HURRY
		DB	(?AL+$0B),(?AL+$04),(?AL+$05),(?AL+$13),(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),?SPCE,(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?WAIT
		DB	(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$11),(?AL+$04),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?EXCL,?SPCE,(?AU+$16),(?AU+$0E),(?AU+$0E),?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_EXPLAINMORE
		DW	(_EXPLAINMORE&$FFFF)

;********************************
_EXPLAIN_BATTLE_ACTIONS
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTWRITE
		DB	?SPCE,(?AU+$12),(?AL+$14),(?AL+$0C),(?AL+$0C),(?AL+$0E),(?AL+$0D),?SPCE,(?AU+$12),(?AL+$0F),(?AL+$04),(?AL+$0B),(?AL+$0B),?HURRY
		DB	?SPCE,(?AU+$05),(?AL+$0E),(?AL+$02),(?AL+$14),(?AL+$12),?SPCE,?SPCE,(?AU+$08),(?AL+$13),(?AL+$04),(?AL+$0C)
		DB	?EOF

	DB	CMD_TEXTMENU
		DB	$04
		DB	:_EXPLAIN_SUMMON
		DW	(_EXPLAIN_SUMMON&$FFFF)
		DB	:_EXPLAIN_FOCUS
		DW	(_EXPLAIN_FOCUS&$FFFF)
		DB	:_EXPLAIN_SPELL
		DW	(_EXPLAIN_SPELL&$FFFF)
		DB	:_EXPLAIN_ITEM
		DW	(_EXPLAIN_ITEM&$FFFF)

;********************************
_EXPLAIN_SUMMON
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$05),(?AU+$08),(?AU+$11),(?AU+$12),(?AU+$13),?COMM,?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AU+$0C),(?AU+$0E),(?AU+$12),(?AU+$13),?SPCE,(?AU+$08),(?AU+$0C),(?AU+$0F),(?AU+$0E),(?AU+$11),(?AU+$13),(?AU+$00),(?AU+$0D),(?AU+$13),?WAIT
		DB	(?AU+$00),(?AU+$02),(?AU+$13),(?AU+$08),(?AU+$0E),(?AU+$0D),?COMM,?HURRY
		DB	(?AL+$01),(?AL+$11),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?COMM,?SPCE,(?AL+$08),(?AL+$12),?WAIT
		DB	(?AU+$12),(?AU+$14),(?AU+$0C),(?AU+$0C),(?AU+$0E),(?AU+$0D),?EXCL,?EXCL,?HURRY
		DB	(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$07),?SPCE,(?AU+$18),(?AU+$04),(?AU+$00),(?AU+$07),(?AU+$07),(?AU+$07),?EXCL,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$0B),(?AL+$18),?SPCE,(?AL+$12),(?AL+$0E),?HURRY
		DB	(?AL+$0C),(?AL+$14),(?AL+$02),(?AL+$07),?SPCE,(?AL+$00),?SPCE,(?AU+$0C),(?AL+$00),(?AL+$06),(?AL+$08),?WAIT
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$03),(?AL+$0E),?SPCE,(?AL+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$01),(?AL+$18),?HURRY
		DB	(?AL+$07),(?AL+$08),(?AL+$0C),(?AL+$12),(?AL+$04),(?AL+$0B),(?AL+$05),?COMM,?SPCE,(?AL+$12),(?AL+$0E),?WAIT
		DB	(?AU+$12),(?AU+$14),(?AU+$0C),(?AU+$0C),(?AU+$0E),(?AU+$0D),(?AU+$08),(?AU+$0D),(?AU+$06),?HURRY
		DB	(?AU+$02),(?AU+$11),(?AU+$04),(?AU+$00),(?AU+$13),(?AU+$14),(?AU+$11),(?AU+$04),(?AU+$12),?SPCE,(?AL+$08),(?AL+$12),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$01),(?AL+$04),(?AL+$12),(?AL+$13),?SPCE,(?AL+$16),(?AL+$00),(?AL+$18),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$00),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$0E),(?AL+$0F),(?AL+$0F),(?AL+$0E),(?AL+$0D),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$12),?SPCE,(?AU+$00),(?AU+$0D),(?AU+$03),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$01),(?AL+$04),(?AL+$12),(?AL+$13),?SPCE,(?AL+$16),(?AL+$00),(?AL+$18),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$00),(?AL+$06),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$12),(?AL+$13),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$0C),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$0E),?SPCE,(?AL+$16),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AL+$0C),(?AL+$18),?SPCE,(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AL+$03),(?AL+$0E),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$0C),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AU+$0E),(?AU+$13),(?AU+$12),?SPCE,(?AU+$0E),(?AU+$05),?SPCE,(?AU+$12),(?AU+$13),(?AU+$14),(?AU+$05),(?AU+$05),?EXCL,?WAIT
		DB	(?AU+$03),(?AL+$08),(?AL+$05),(?AL+$05),(?AL+$04),(?AL+$11),(?AL+$04),(?AL+$0D),(?AL+$13),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?WAIT
		DB	(?AL+$03),(?AL+$08),(?AL+$05),(?AL+$05),(?AL+$04),(?AL+$11),(?AL+$04),(?AL+$0D),(?AL+$13),?HURRY
		DB	(?AL+$00),(?AL+$02),(?AL+$13),(?AL+$08),(?AL+$0E),(?AL+$0D),(?AL+$12),?COMM,?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?WAIT
		DB	(?AL+$04),(?AL+$00),(?AL+$02),(?AL+$07),?SPCE,(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?COMM,?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$03),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$00),(?AL+$02),(?AL+$13),(?AL+$08),(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$13),(?AL+$04),(?AL+$0B),(?AL+$0B),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$0C),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$03),(?AL+$0E),?PERD,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$18),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?HURRY
		DB	(?AL+$00),(?AL+$02),(?AL+$13),(?AL+$08),(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$0F),(?AL+$04),(?AL+$11),?WAIT
		DB	(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?COMM,?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$12),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),(?AL+$12),?SPCE,(?AL+$14),(?AL+$12),(?AL+$04),(?AL+$05),(?AL+$14),(?AL+$0B),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$01),(?AU+$14),(?AU+$13),?SPCE,(?AU+$11),(?AU+$04),(?AU+$0C),(?AU+$04),(?AU+$0C),(?AU+$01),(?AU+$04),(?AU+$11),?HURRY
		DB	(?AU+$13),(?AU+$07),(?AU+$08),(?AU+$12),?SPCE,(?AU+$0D),(?AU+$04),(?AU+$17),(?AU+$13),?SPCE,(?AU+$0F),(?AU+$00),(?AU+$11),(?AU+$13),?EXCL,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?HURRY
		DB	(?AL+$03),(?AL+$0E),(?AL+$16),(?AL+$0D),(?AL+$12),(?AL+$08),(?AL+$03),(?AL+$04),(?AL+$12),?EXCL,?EXCL,?WAIT
		DB	(?AU+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$04),?COMM,?SPCE,(?AL+$08),(?AL+$13),?HURRY
		DB	(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),(?AL+$12),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?WAIT
		DB	(?AL+$0E),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$0E),(?AL+$16),(?AL+$0D),?HURRY
		DB	(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0B),(?AL+$0B),?WAIT
		DB	(?AL+$0E),(?AL+$0D),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$12),(?AL+$04),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$12),(?AL+$04),(?AL+$02),(?AL+$0E),(?AL+$0D),(?AL+$03),?COMM,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AL+$0E),(?AL+$0D),(?AL+$0B),(?AL+$18),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$13),?WAIT
		DB	(?AU+$05),(?AU+$0E),(?AU+$14),(?AU+$11),?SPCE,(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?HURRY
		DB	(?AL+$00),(?AL+$13),?SPCE,(?AL+$00),?SPCE,(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?EXCL,?WAIT
		DB	(?AU+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$11),(?AL+$03),?COMM,?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?WAIT
		DB	(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$03),(?AL+$0E),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$18),?HURRY
		DB	(?AL+$00),(?AL+$02),(?AL+$13),(?AL+$08),(?AL+$0E),(?AL+$0D),(?AL+$12),?SPCE,(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$0D),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$12),(?AL+$14),(?AL+$0C),(?AL+$0C),(?AL+$0E),(?AL+$0D),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$0C),?EXCL,?EXCL,?SPCE,(?AU+$12),(?AL+$0E),?SPCE,(?AL+$01),(?AL+$04),?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$11),(?AL+$04),(?AL+$05),(?AL+$14),(?AL+$0B),?COMM,?SPCE,(?AL+$03),(?AL+$14),(?AL+$03),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_EXPLAINMORE
		DW	(_EXPLAINMORE&$FFFF)

;********************************
_EXPLAIN_SPELL
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$02),(?AU+$00),(?AU+$12),(?AU+$13),(?AU+$08),(?AU+$0D),(?AU+$06),?SPCE,(?AU+$12),(?AU+$0F),(?AU+$04),(?AU+$0B),(?AU+$0B),(?AU+$12),?EXCL,?WAIT
		DB	(?AU+$03),(?AU+$08),(?AU+$06),?SPCE,(?AU+$08),(?AU+$13),?EXCL,?SPCE,(?AU+$12),(?AL+$0F),(?AL+$04),(?AL+$0B),(?AL+$0B),(?AL+$12),?HURRY
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$03),(?AL+$04),(?AL+$00),(?AL+$0B),?WAIT
		DB	(?AL+$03),(?AL+$00),(?AL+$0C),(?AL+$00),(?AL+$06),(?AL+$04),?COMM,?SPCE,(?AL+$02),(?AL+$14),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$00),(?AL+$08),(?AL+$0B),(?AL+$0C),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$12),?COMM,?SPCE,(?AL+$0E),(?AL+$11),?WAIT
		DB	(?AL+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?SPCE,(?AL+$14),(?AL+$0F),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?PERD,?SPCE,(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$18),?WAIT
		DB	(?AL+$00),(?AL+$0B),(?AL+$12),(?AL+$0E),?SPCE,(?AL+$07),(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$04),(?AL+$0D),?HURRY
		DB	(?AL+$05),(?AL+$00),(?AL+$12),(?AL+$13),(?AL+$04),(?AL+$11),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$0D),?WAIT
		DB	(?AL+$0C),(?AL+$0E),(?AL+$12),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$00),(?AL+$02),(?AL+$13),(?AL+$08),(?AL+$0E),(?AL+$0D),(?AL+$12),?PERD,?SPCE,(?AU+$01),(?AL+$14),(?AL+$13),?WAIT
		DB	(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$0B),(?AL+$0B),(?AL+$12),?SPCE,(?AL+$13),(?AL+$00),(?AL+$0A),(?AL+$04),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$0F),(?AL+$04),(?AL+$11),(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$0C),?COMM,?SPCE,(?AL+$12),(?AL+$0E),?HURRY
		DB	(?AL+$13),(?AL+$11),(?AL+$18),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$03),(?AL+$04),(?AL+$0F),(?AL+$04),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$0C),?HURRY
		DB	(?AL+$13),(?AL+$0E),(?AL+$0E),?SPCE,(?AL+$0C),(?AL+$14),(?AL+$02),(?AL+$07),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_EXPLAINMORE
		DW	(_EXPLAINMORE&$FFFF)

;********************************
_EXPLAIN_ITEM
	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AU+$13),(?AU+$04),(?AU+$0C),(?AU+$12),?EXCL,?SPCE,(?AU+$16),(?AU+$0E),(?AU+$0E),?EXCL,?HURRY
		DB	(?AU+$04),(?AL+$15),(?AL+$04),(?AL+$11),(?AL+$18),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$0D),?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$07),(?AL+$04),(?AL+$0B),(?AL+$0F),(?AL+$12),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$11),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?SPCE,(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?SPCE,(?AL+$00),?WAIT
		DB	(?AU+$01),(?AL+$00),(?AL+$0B),(?AL+$0E),(?AL+$0E),?SPCE,(?AU+$0B),(?AL+$04),(?AL+$00),(?AL+$05),?SPCE,(?AL+$0E),(?AL+$11),?HURRY
		DB	(?AL+$08),(?AL+$0C),(?AL+$0F),(?AL+$11),(?AL+$0E),(?AL+$15),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?HURRY
		DB	(?AL+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?SPCE,(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?SPCE,(?AL+$00),?WAIT
		DB	(?AU+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?SPCE,(?AU+$06),(?AL+$04),(?AL+$0C),?PERD,?HURRY
		DB	(?AU+$08),(?AL+$13),(?AL+$04),(?AL+$0C),(?AL+$12),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),?WAIT
		DB	(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),?EXCL,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$03),?SPCE,?APST,(?AL+$04),(?AL+$0C),?COMM,?SPCE,(?AL+$0E),(?AL+$11),?SPCE,(?AL+$06),(?AL+$0E),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$00),?SPCE,(?AL+$12),(?AL+$07),(?AL+$0E),(?AL+$0F),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$01),(?AL+$14),(?AL+$18),?SPCE,(?AL+$04),(?AL+$0C),?EXCL,?WAIT
		DB	(?AU+$01),(?AL+$14),(?AL+$13),?SPCE,(?AU+$0B),(?AU+$08),(?AU+$12),(?AU+$13),(?AU+$04),(?AU+$0D),?SPCE,(?AU+$14),(?AU+$0F),?EXCL,?HURRY
		DB	(?AU+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$08),(?AL+$13),(?AL+$04),(?AL+$0C),(?AL+$12),?WAIT
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$01),(?AL+$04),?SPCE,(?AL+$01),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),(?AL+$13),?HURRY
		DB	(?AL+$00),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$12),(?AL+$13),(?AL+$0E),(?AL+$11),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$13),(?AL+$07),(?AL+$0E),(?AL+$12),(?AL+$04),?SPCE,(?AL+$08),(?AL+$13),(?AL+$04),(?AL+$0C),(?AL+$12),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$13),(?AL+$13),(?AL+$00),?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),?WAIT
		DB	(?AL+$00),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),?PERD,?SPCE,(?AU+$08),(?AL+$13),?HURRY
		DB	(?AL+$02),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?SPCE,(?AL+$01),(?AL+$04),?SPCE,(?AL+$0B),(?AL+$18),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$00),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$0E),(?AL+$11),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?WAIT
		DB	(?AL+$01),(?AL+$04),?SPCE,(?AL+$0F),(?AL+$11),(?AL+$0E),(?AL+$13),(?AL+$04),(?AL+$02),(?AL+$13),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$08),(?AL+$13),?EXCL,?SPCE,(?AU+$12),(?AL+$0E),?SPCE,(?AL+$04),(?AL+$17),(?AL+$0F),(?AL+$0B),(?AL+$0E),(?AL+$11),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_EXPLAINMORE
		DW	(_EXPLAINMORE&$FFFF)

;********************************
_EXPLAIN_FOCUS
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$03),(?AU+$08),(?AU+$06),?SPCE,(?AU+$08),(?AU+$13),?EXCL,?EXCL,?WAIT
		DB	(?AU+$05),(?AU+$0E),(?AU+$02),(?AU+$14),(?AU+$12),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$01),(?AL+$04),?WAIT
		DB	(?AL+$14),(?AL+$12),(?AL+$04),(?AL+$05),(?AL+$14),(?AL+$0B),?SPCE,(?AL+$08),(?AL+$0D),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?HURRY
		DB	(?AL+$12),(?AL+$08),(?AL+$13),(?AL+$14),(?AL+$00),(?AL+$13),(?AL+$08),(?AL+$0E),(?AL+$0D),(?AL+$12),?PERD,?SPCE,(?AU+$08),(?AL+$13),?WAIT
		DB	(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$06),(?AL+$08),(?AL+$15),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$04),(?AL+$17),(?AL+$13),(?AL+$11),(?AL+$00),?WAIT
		DB	(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0D),(?AL+$04),(?AL+$04),(?AL+$03),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$01),(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$13),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$08),(?AL+$0C),(?AL+$0F),(?AL+$0E),(?AL+$11),(?AL+$13),(?AL+$00),(?AL+$0D),(?AL+$13),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?SPCE,(?AL+$0E),(?AL+$11),?WAIT
		DB	(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$0B),(?AL+$0B),?PERD,?SPCE,(?AU+$08),(?AL+$13),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AL+$00),(?AL+$0B),(?AL+$12),(?AL+$0E),?SPCE,(?AL+$07),(?AL+$04),(?AL+$0B),(?AL+$0F),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?WAIT
		DB	(?AL+$11),(?AL+$04),(?AL+$02),(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),?SPCE,(?AL+$16),(?AL+$07),(?AL+$04),(?AL+$0D),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?HURRY
		DB	(?AL+$14),(?AL+$0D),(?AL+$03),(?AL+$04),(?AL+$11),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$0D),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$0B),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_EXPLAINMORE
		DW	(_EXPLAINMORE&$FFFF)

;********************************
_EXPLAIN_BATTLE_TIPS
	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$0B),(?AL+$16),(?AL+$00),(?AL+$18),(?AL+$12),?SPCE,(?AL+$11),(?AL+$04),(?AL+$0C),(?AL+$04),(?AL+$0C),(?AL+$01),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AU+$16),(?AU+$00),(?AU+$13),(?AU+$02),(?AU+$07),?SPCE,(?AU+$18),(?AU+$0E),(?AU+$14),(?AU+$11),?WAIT
		DB	(?AU+$04),(?AU+$0D),(?AU+$04),(?AU+$11),(?AU+$06),(?AU+$18),?EXCL,?SPCE,(?AU+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?HURRY
		DB	(?AL+$03),(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$0D),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),(?AL+$12),(?AL+$04),(?AL+$0B),(?AL+$05),?WAIT
		DB	(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?SPCE,(?AL+$12),(?AL+$0F),(?AL+$04),(?AL+$0B),(?AL+$0B),(?AL+$12),?SPCE,(?AL+$08),(?AL+$05),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?WAIT
		DB	(?AL+$00),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$0E),(?AL+$03),?SPCE,(?AL+$03),(?AL+$04),(?AL+$05),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),?PERD,?HURRY
		DB	?APST,(?AU+$02),(?AL+$00),(?AL+$14),(?AL+$12),(?AL+$04),?SPCE,(?AL+$08),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?WAIT
		DB	(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?SPCE,(?AL+$11),(?AL+$14),(?AL+$0D),?WAIT
		DB	(?AL+$0E),(?AL+$14),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$05),?SPCE,(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?COMM,?HURRY
		DB	(?AL+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AU+$00),(?AU+$0B),(?AU+$0B),?SPCE,(?AU+$0E),(?AU+$15),(?AU+$04),(?AU+$11),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$0D),(?AL+$18),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$04),(?AL+$0B),(?AL+$12),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$01),(?AL+$04),?SPCE,(?AL+$00),(?AL+$05),(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$03),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AU+$11),(?AU+$14),(?AU+$0D),?SPCE,(?AL+$08),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?WAIT
		DB	(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?EXCL,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$18),?WAIT
		DB	(?AL+$11),(?AL+$04),(?AL+$16),(?AL+$00),(?AL+$11),(?AL+$03),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?HURRY
		DB	(?AL+$11),(?AL+$14),(?AL+$0D),(?AL+$0D),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$00),(?AL+$16),(?AL+$00),(?AL+$18),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$16),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),?SPCE,(?AL+$00),(?AL+$15),(?AL+$0E),(?AL+$08),(?AL+$03),(?AL+$08),(?AL+$0D),(?AL+$06),?WAIT
		DB	(?AL+$00),?SPCE,(?AL+$07),(?AL+$14),(?AL+$06),(?AL+$04),?SPCE,(?AL+$01),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$03),(?AL+$0E),(?AL+$16),(?AL+$0D),?HURRY
		DB	(?AL+$08),(?AL+$12),?SPCE,(?AL+$04),(?AL+$0D),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?WAIT
		DB	(?AL+$0C),(?AL+$0E),(?AL+$12),(?AL+$13),?SPCE,(?AL+$0F),(?AL+$04),(?AL+$0E),(?AL+$0F),(?AL+$0B),(?AL+$04),?EXCL,?WAIT
		DB	(?AU+$14),(?AL+$0D),(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$13),(?AL+$14),(?AL+$0D),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$0B),(?AL+$18),?COMM,?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$0E),(?AL+$0D),(?AL+$0B),(?AL+$18),?WAIT
		DB	(?AL+$11),(?AL+$14),(?AL+$0D),?SPCE,(?AL+$00),(?AL+$16),(?AL+$00),(?AL+$18),?SPCE,(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?HURRY
		DB	(?AU+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),(?AL+$12),?PERD,?HURRY
		DB	(?AU+$0C),(?AL+$00),(?AL+$06),(?AL+$08),?SPCE,(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),(?AL+$12),?WAIT
		DB	(?AL+$00),(?AL+$11),(?AL+$04),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$0D),(?AL+$0E),(?AL+$11),(?AL+$00),(?AL+$01),(?AL+$0B),(?AL+$04),?HURRY
		DB	(?AL+$03),(?AL+$14),(?AL+$04),(?AL+$0B),(?AL+$12),?SPCE,(?AL+$12),(?AL+$0E),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?WAIT
		DB	(?AL+$03),(?AL+$0E),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$18),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),?APST,?HURRY
		DB	(?AL+$02),(?AL+$0E),(?AL+$16),(?AL+$00),(?AL+$11),(?AL+$03),(?AL+$0B),(?AL+$18),?SPCE,(?AL+$0E),(?AL+$11),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$01),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$03),(?AL+$04),?HURRY
		DB	(?AL+$05),(?AL+$14),(?AL+$0D),?SPCE,(?AL+$0E),(?AL+$05),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_EXPLAINMORE
		DW	(_EXPLAINMORE&$FFFF)

;********************************
_EXPLAIN_SEARCHING_OUT
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),?SPCE,(?AU+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?SPCE,(?AL+$04),(?AL+$00),(?AL+$12),(?AL+$18),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$08),(?AL+$0D),(?AL+$13),(?AL+$0E),?EXCL,?HURRY
		DB	(?AU+$16),(?AL+$07),(?AL+$04),(?AL+$0D),(?AL+$04),(?AL+$15),(?AL+$04),(?AL+$11),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?WAIT
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$0D),(?AL+$04),(?AL+$00),(?AL+$11),(?AL+$01),(?AL+$18),?COMM,?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$0B),(?AL+$0B),?WAIT
		DB	(?AL+$12),(?AL+$04),(?AL+$04),?SPCE,(?AL+$00),?SPCE,(?AL+$01),(?AL+$14),(?AL+$11),(?AL+$12),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AU+$03),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0C),?SPCE,(?AU+$04),(?AL+$0D),(?AL+$04),(?AL+$11),(?AL+$06),(?AL+$18),?EXCL,?WAIT
		DB	(?AU+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$11),(?AL+$14),(?AL+$0D),?SPCE,(?AL+$11),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?HURRY
		DB	(?AL+$08),(?AL+$0D),(?AL+$13),(?AL+$0E),?SPCE,(?AL+$08),(?AL+$13),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?EXCL,?WAIT
		DB	(?AU+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?COMM,?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0D),?SPCE,(?AL+$03),(?AL+$0E),?WAIT
		DB	(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$13),(?AL+$11),(?AL+$18),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$0D),(?AL+$00),(?AL+$01),?SPCE,?APST,(?AL+$04),(?AL+$0C),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:_EXPLAINMORE
		DW	(_EXPLAINMORE&$FFFF)

;********************************
_EXPLAINMORE

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$18),(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$04),(?AL+$0B),(?AL+$12),(?AL+$04),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$11),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?SPCE,(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$07),?SPCE,(?AU+$18),(?AU+$04),(?AU+$00),(?AU+$07),(?AU+$07),?EXCL,?EXCL,?HURRY
		DB	?SPCE,(?AU+$14),(?AL+$07),?PERD,?PERD,?PERD,?SPCE,(?AL+$0D),(?AL+$0E),?PERD
		DB	?EOF

	DB	CMD_TEXTMENU
		DB	$02
		DB	:?_NRMVASH13_TXT_EXPLAIN
		DW	(?_NRMVASH13_TXT_EXPLAIN&$FFFF)
		DB	:_ENOUGH
		DW	(_ENOUGH&$FFFF)

;********************************
_ENOUGH
	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$07),?SPCE,(?AU+$18),(?AU+$04),(?AU+$00),(?AU+$07),(?AU+$07),(?AU+$07),?EXCL,?WAIT
		DB	(?AU+$03),(?AU+$08),(?AU+$06),?SPCE,(?AU+$08),(?AU+$13),?EXCL,?SPCE,(?AU+$16),(?AU+$0E),(?AU+$0E),(?AU+$0E),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),?SPCE,(?AU+$08),?APST,(?AL+$15),(?AL+$04),?HURRY
		DB	(?AL+$07),(?AL+$00),(?AL+$03),?SPCE,(?AL+$04),(?AL+$0D),(?AL+$0E),(?AL+$14),(?AL+$06),(?AL+$07),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?SPCE,(?AL+$06),(?AL+$14),(?AL+$18),?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THISACTORRESTORESTATE

;********************************
?_NRMVASH13_FUNERAL
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_NRMVASH13&$FFFF)
		DB	:MAP_NRMVASH13

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMVASH13&$FFFF)

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMVASH13&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$0C
		DB	$0C
		DW	$D138
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_giahut

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_NRMVASH13_PARTY
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_NRMVASH13&$FFFF)
		DB	:MAP_NRMVASH13

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMVASH13&$FFFF)

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMVASH13&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$0C
		DB	$0C
		DW	$D138
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0E
		DB	$08
		DW	$D0D6
		DB	$00
		DB	:?_NRMVASH13_PARTY_YAKI
		DW	(?_NRMVASH13_PARTY_YAKI&$FFFF)
		DB	:?_NRMVASH13_PARTY_YAKI_TALK
		DW	(?_NRMVASH13_PARTY_YAKI_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_YAKI
		DW	(BIT_YAKI&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SONGSTART
		DB	SONGID_oroisland

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_NRMVASH13_PARTY_YAKI
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_YAKI_WALK_LEFT_ANIM
		DW	(?_YAKI_WALK_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_YAKI_RUN_LEFT_ANIM
		DW	(?_YAKI_RUN_LEFT_ANIM&$FFFF)
		DB	$28
		DB	:?_YAKI_WALK_LEFT_ANIM
		DW	(?_YAKI_WALK_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_YAKI_STAND_UL_ANIM
		DW	(?_YAKI_STAND_UL_ANIM&$FFFF)
		DB	$08
		DB	:?_YAKI_WALK_UP_ANIM
		DW	(?_YAKI_WALK_UP_ANIM&$FFFF)
		DB	$08
		DB	:?_YAKI_RUN_UP_ANIM
		DW	(?_YAKI_RUN_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_YAKI_WALK_UP_ANIM
		DW	(?_YAKI_WALK_UP_ANIM&$FFFF)
		DB	$08
		DB	:?_YAKI_STAND_UR_ANIM
		DW	(?_YAKI_STAND_UR_ANIM&$FFFF)
		DB	$08
		DB	:?_YAKI_WALK_RIGHT_ANIM
		DW	(?_YAKI_WALK_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_YAKI_RUN_RIGHT_ANIM
		DW	(?_YAKI_RUN_RIGHT_ANIM&$FFFF)
		DB	$28
		DB	:?_YAKI_WALK_RIGHT_ANIM
		DW	(?_YAKI_WALK_RIGHT_ANIM&$FFFF)
		DB	$10
		DB	:?_YAKI_STAND_DR_ANIM
		DW	(?_YAKI_STAND_DR_ANIM&$FFFF)
		DB	$08
		DB	:?_YAKI_WALK_DOWN_ANIM
		DW	(?_YAKI_WALK_DOWN_ANIM&$FFFF)
		DB	$08
		DB	:?_YAKI_RUN_DOWN_ANIM
		DW	(?_YAKI_RUN_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_YAKI_WALK_DOWN_ANIM
		DW	(?_YAKI_WALK_DOWN_ANIM&$FFFF)
		DB	$08
		DB	:?_YAKI_STAND_DL_ANIM
		DW	(?_YAKI_STAND_DL_ANIM&$FFFF)
		DB	$08
		DB	$00

	DB	CMD_JUMP
		DB	:?_NRMVASH13_PARTY_YAKI
		DW	(?_NRMVASH13_PARTY_YAKI&$FFFF)

;********************************
?_NRMVASH13_PARTY_YAKI_TALK
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0001)&$FFFF
		DB	$08
		DB	:_TEXT2
		DW	(_TEXT2&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_NRMVASH13_PARTY_YAKI_TXT1
		DW	(?_NRMVASH13_PARTY_YAKI_TXT1&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_YAKI
		DW	(?_FACE_YAKI&$FFFF)

;********************************
_TEXT2
	DB	CMD_SETTEXT
		DB	:?_NRMVASH13_PARTY_YAKI_TXT2
		DW	(?_NRMVASH13_PARTY_YAKI_TXT2&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_YAKI
		DW	(?_FACE_YAKI&$FFFF)

;********************************
?_NRMVASH13_PARTY_YAKI_TXT1

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$07),(?AU+$07),(?AU+$07),(?AU+$07),?SPCE,(?AU+$18),(?AU+$04),(?AU+$00),(?AU+$07),?EXCL,?HURRY
		DB	(?AU+$06),(?AL+$0E),(?AL+$13),(?AL+$13),(?AL+$00),?SPCE,(?AL+$11),(?AL+$14),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$0E),(?AL+$12),(?AL+$04),?WAIT
		DB	(?AL+$0B),(?AL+$00),(?AL+$0F),(?AL+$12),?EXCL,?SPCE,(?AU+$06),(?AL+$0E),(?AL+$13),(?AL+$13),(?AL+$00),?SPCE,(?AL+$01),(?AL+$04),?HURRY
		DB	(?AL+$05),(?AL+$08),(?AL+$13),?EXCL,?SPCE,(?AU+$16),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_DELAY
		DB	$20


	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,(?AU+$18),(?AU+$0E),(?AU+$14),?EXCL,?WAIT
		DB	(?AU+$13),(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$08),(?AL+$12),?HURRY
		DB	(?AL+$06),(?AL+$0E),(?AL+$0E),(?AL+$03),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?EXCL,?WAIT
		DB	(?AU+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$05),(?AL+$0E),(?AL+$11),(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?COMM,?WAIT
		DB	(?AL+$01),(?AL+$11),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?EXCL,?WAIT
		DB	(?AU+$11),(?AL+$04),(?AL+$0F),(?AL+$04),(?AL+$00),(?AL+$13),?SPCE,(?AL+$00),(?AL+$05),(?AL+$13),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$0C),(?AL+$04),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$08),(?AU+$13),?APST,(?AU+$12),?SPCE,(?AU+$06),(?AU+$0E),(?AU+$0E),(?AU+$03),?SPCE,(?AU+$05),(?AU+$0E),(?AU+$11),?HURRY
		DB	(?AU+$18),(?AU+$0E),(?AU+$14),?EXCL,?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$14),(?AL+$07),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$0E),(?AL+$03),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$0B),(?AU+$0E),(?AU+$14),(?AU+$03),(?AU+$04),(?AU+$11),?EXCL,?EXCL,?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AU+$13),?APST,(?AU+$12),?SPCE,(?AU+$06),(?AU+$0E),(?AU+$0E),(?AU+$03),?SPCE,(?AU+$05),(?AU+$0E),(?AU+$11),?HURRY
		DB	(?AU+$18),(?AU+$0E),(?AU+$14),?EXCL,?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$0E),(?AL+$0E),(?AL+$03),?PERD,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0F),(?AL+$00),(?AL+$12),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$0C),(?AL+$18),?HURRY
		DB	(?AL+$16),(?AL+$0E),(?AL+$11),(?AL+$0A),(?AL+$0E),(?AL+$14),(?AL+$13),?EXCL,?WAIT
		DB	(?AU+$16),(?AU+$0E),(?AU+$0E),?EXCL,?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0001)
		DB	$08

	DB	CMD_END

;********************************
?_NRMVASH13_PARTY_YAKI_TXT2

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$07),(?AU+$07),(?AU+$07),(?AU+$07),?SPCE,(?AU+$18),(?AU+$04),(?AU+$00),(?AU+$07),?EXCL,?WAIT
		DB	(?AU+$03),(?AU+$08),(?AU+$06),?SPCE,(?AU+$08),(?AU+$13),?EXCL,?EXCL,?EXCL,?WAIT
		DB	(?AU+$0D),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$13),(?AL+$00),(?AL+$0B),(?AL+$0A),?COMM,?SPCE,(?AL+$01),(?AL+$11),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?COMM,?WAIT
		DB	(?AL+$06),(?AL+$0E),(?AL+$13),(?AL+$13),(?AL+$00),?SPCE,(?AL+$11),(?AL+$14),(?AL+$0D),?EXCL,?WAIT
		DB	(?AU+$06),(?AL+$0E),(?AL+$13),(?AL+$13),(?AL+$00),?SPCE,(?AL+$11),(?AL+$14),(?AL+$0D),?SPCE,(?AL+$05),(?AL+$00),(?AL+$12),(?AL+$13),?EXCL,?WAIT
		DB	(?AU+$16),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_NRMVASH13
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$01

	DB	CMD_SWITCH
		DB	EXPR_GAMECOUNT
		DB	:?_NRMVASH13_FUNERAL
		DW	$0019
		DW	(?_NRMVASH13_FUNERAL&$FFFF)
		DB	:?_NRMVASH13_PARTY
		DW	$001A
		DW	(?_NRMVASH13_PARTY&$FFFF)
		DB	:_DONT_RESET_DOOR
		DW	$0018
		DW	(_DONT_RESET_DOOR&$FFFF)
		DB	$FF

	DB	CMD_IF
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$0F
		DB	:_DONT_RESET_DOOR
		DW	(_DONT_RESET_DOOR&$FFFF)

	DB	CMD_XRAMBITAND
		DW	(XRAM_SAVEBITS+$0080)
		DB	$7F

;********************************
_DONT_RESET_DOOR
	DB	CMD_IF
		DB	EXPR_OR
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$0F
		DB	EXPR_EQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$18
		DB	:_YAKI_NOT_THERE
		DW	(_YAKI_NOT_THERE&$FFFF)

	DB	CMD_SCENENEW

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$0C
		DB	$0C
		DW	$D138
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR20-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0D
		DB	$07
		DW	$D0BC
		DB	$00
		DB	:_YAKI
		DW	(_YAKI&$FFFF)
		DB	:_YAKI_TALK
		DW	(_YAKI_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR21-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$10
		DB	$09
		DW	$D0F1
		DB	$29
		DB	:_SALAFY
		DW	(_SALAFY&$FFFF)
		DB	:_SALAFY_TALK
		DW	(_SALAFY_TALK&$FFFF)

;********************************
_BATTLE_RESET
	DB	CMD_THATACTORSETAI
		DB	(((ACTOR21-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)

	DB	CMD_LOADMAP
		DW	(MAP_NRMVASH13&$FFFF)
		DB	:MAP_NRMVASH13

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMVASH13&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMVASH13&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$29
		DB	:BIT_YAKI
		DW	(BIT_YAKI&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$25
		DB	:BIT_SALAFY
		DW	(BIT_SALAFY&$FFFF)
		DW	$8290
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR20-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR21-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SETBTLRETURN
		DB	:_RETURN_WIN
		DW	(_RETURN_WIN&$FFFF)
		DB	:_RETURN_LOSE
		DW	(_RETURN_LOSE&$FFFF)

	DB	CMD_SONGSTART
		DB	SONGID_lesson

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
_YAKI_NOT_THERE
	DB	CMD_SCENENEW

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$0C
		DB	$0C
		DW	$D138
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR20-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0D
		DB	$07
		DW	$D0BC
		DB	$00
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR21-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$10
		DB	$09
		DW	$D0F1
		DB	$29
		DB	:_SALAFY
		DW	(_SALAFY&$FFFF)
		DB	:_SALAFY_TALK
		DW	(_SALAFY_TALK&$FFFF)

	DB	CMD_THATACTORSETAI
		DB	(((ACTOR21-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)

	DB	CMD_LOADMAP
		DW	(MAP_NRMVASH13&$FFFF)
		DB	:MAP_NRMVASH13

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMVASH13&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMVASH13&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$25
		DB	:BIT_SALAFY
		DW	(BIT_SALAFY&$FFFF)
		DW	$8290
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR21-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_SETBTLRETURN
		DB	:_RETURN_WIN
		DW	(_RETURN_WIN&$FFFF)
		DB	:_RETURN_LOSE
		DW	(_RETURN_LOSE&$FFFF)

	DB	CMD_SONGSTART
		DB	SONGID_lesson

	DB	CMD_IF
		DB	EXPR_NOT
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0080)&$FFFF
		DB	$80
		DB	:_SKIP_OPENING_THE_DOOR
		DW	(_SKIP_OPENING_THE_DOOR&$FFFF)

	DB	CMD_COPYTILEBLOCK
		DW	$D000
		DB	$02
		DB	$01
		DW	$D092
		DB	$05
		DB	$15

	DB	CMD_COPYTILEBLOCK
		DW	$D000
		DB	$02
		DB	$01
		DW	$D0AB
		DB	$06
		DB	$15

	DB	CMD_COPYTILEBLOCK
		DW	$D019
		DB	$02
		DB	$01
		DW	$D0C4
		DB	$07
		DB	$15

;********************************
_SKIP_OPENING_THE_DOOR
	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
_RETURN_WIN
	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_HERO_ENERGY
		DB	INV_TYPE_HERO_ENERGY
		DB	$C8

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_HERO_ENERGY
		DB	INV_TYPE_HERO_ENERGY
		DB	$C8

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_HERO_ENERGY
		DB	INV_TYPE_HERO_ENERGY
		DB	$C8

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_HERO_ENERGY
		DB	INV_TYPE_HERO_ENERGY
		DB	$C8

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_HERO_ENERGY
		DB	INV_TYPE_HERO_ENERGY
		DB	$C8

	DB	CMD_SCENENEW

	DB	CMD_SETSCROLL
		DB	:_TONY_WIN
		DW	(_TONY_WIN&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(_BATTLE_RESET&$FFFF)

;********************************
_TONY_WIN
	DB	CMD_SETTEXT
		DB	:_TXT_WIN
		DW	(_TXT_WIN&$FFFF)

	DB	CMD_WAITANYEVENTTEXT

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_END

;********************************
_RETURN_LOSE
	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_HERO_ENERGY
		DB	INV_TYPE_HERO_ENERGY
		DB	$C8

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_HERO_ENERGY
		DB	INV_TYPE_HERO_ENERGY
		DB	$C8

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_HERO_ENERGY
		DB	INV_TYPE_HERO_ENERGY
		DB	$C8

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_HERO_ENERGY
		DB	INV_TYPE_HERO_ENERGY
		DB	$C8

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_HERO_ENERGY
		DB	INV_TYPE_HERO_ENERGY
		DB	$C8

	DB	CMD_SCENENEW

	DB	CMD_SETSCROLL
		DB	:_TONY_LOSE
		DW	(_TONY_LOSE&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(_BATTLE_RESET&$FFFF)

;********************************
_TONY_LOSE
	DB	CMD_SETTEXT
		DB	:_TXT_LOSE
		DW	(_TXT_LOSE&$FFFF)

	DB	CMD_WAITANYEVENTTEXT

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_END

;********************************
_YAKI
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_YAKI_STAND_DR_ANIM
		DW	(?_YAKI_STAND_DR_ANIM&$FFFF)
		DB	$3C
		DB	:?_YAKI_RUN_LEFT_ANIM
		DW	(?_YAKI_RUN_LEFT_ANIM&$FFFF)
		DB	$28
		DB	:?_YAKI_STAND_DL_ANIM
		DW	(?_YAKI_STAND_DL_ANIM&$FFFF)
		DB	$3C
		DB	:?_YAKI_RUN_RIGHT_ANIM
		DW	(?_YAKI_RUN_RIGHT_ANIM&$FFFF)
		DB	$28
		DB	$00

	DB	CMD_JUMP
		DB	:_YAKI
		DW	(_YAKI&$FFFF)

;********************************
_YAKI_TALK
	DB	CMD_SETTEXT
		DB	:_TXT_YAKI_EXPLAIN
		DW	(_TXT_YAKI_EXPLAIN&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_YAKI
		DW	(?_FACE_YAKI&$FFFF)

;********************************
_SALAFY
	DB	CMD_THISACTORSETANIM
		DB	:?_SALAFY_STAND_LEFT_ANIM
		DW	(?_SALAFY_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_END

;********************************
_SALAFY_TALK
	DB	CMD_SETTEXT
		DB	:_TXT_SALAFY_TRAIN
		DW	(_TXT_SALAFY_TRAIN&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_SALAFY
		DW	(?_FACE_SALAFY&$FFFF)

;********************************
_TXT_LOSE

	DB	CMD_TEXTICON
		DW	ICON_SALAFY

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$0C),(?AL+$0C),(?AL+$0C),?PERD,?PERD,?PERD,?SPCE,(?AL+$0B),(?AL+$0E),(?AL+$0E),(?AL+$0A),(?AL+$12),?HURRY
		DB	(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$0D),(?AL+$04),(?AL+$04),(?AL+$03),?WAIT
		DB	(?AL+$0C),(?AL+$0E),(?AL+$11),(?AL+$04),?SPCE,(?AL+$0F),(?AL+$11),(?AL+$00),(?AL+$02),(?AL+$13),(?AL+$08),(?AL+$02),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_END

;********************************
_TXT_WIN

	DB	CMD_TEXTICON
		DW	ICON_SALAFY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$0E),(?AL+$16),?EXCL,?SPCE,(?AU+$06),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),?SPCE,(?AL+$09),(?AL+$0E),(?AL+$01),?COMM,?HURRY
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_RANGESWITCH
		DB	EXPR_GAMECOUNT
		DB	:_COME_BACK_AGAIN
		DW	$0000
		DW	$0006
		DW	(_COME_BACK_AGAIN&$FFFF)
		DB	:_COME_BACK_AGAIN
		DW	$0007
		DW	$000A
		DW	(_COME_BACK_AGAIN&$FFFF)
		DB	:_COME_BACK_AGAIN
		DW	$000B
		DW	$0015
		DW	(_COME_BACK_AGAIN&$FFFF)
		DB	:_END
		DW	$0016
		DW	$0064
		DW	(_END&$FFFF)
		DB	$FF

;********************************
_COME_BACK_AGAIN
	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$05),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$0C),(?AL+$04),?HURRY
		DB	(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$0B),(?AL+$00),(?AL+$13),(?AL+$04),(?AL+$11),?SPCE,(?AU+$08),?WAIT
		DB	(?AL+$0C),(?AL+$08),(?AL+$06),(?AL+$07),(?AL+$13),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?HURRY
		DB	(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?SPCE,(?AL+$13),(?AL+$11),(?AL+$08),(?AL+$02),(?AL+$0A),(?AL+$12),?PERD,?WAIT
		DB	?EOF

;********************************
_END
	DB	CMD_TEXTCLOSE

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_END

;********************************
_TXT_YAKI_EXPLAIN

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$07),?SPCE,(?AU+$18),(?AU+$04),(?AU+$00),(?AU+$00),(?AU+$07),(?AU+$07),?EXCL,?EXCL,?HURRY
		DB	(?AU+$03),(?AL+$08),(?AL+$06),?SPCE,(?AL+$08),(?AL+$13),?EXCL,?SPCE,(?AU+$16),(?AU+$0E),(?AU+$0E),(?AU+$0E),?EXCL,?EXCL,?WAIT
		DB	(?AU+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$02),(?AL+$00),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$03),(?AL+$0E),?SPCE,(?AL+$12),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$0C),(?AL+$0E),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$08),(?AL+$0D),?APST,?COMM,?SPCE,(?AL+$04),(?AL+$07),?QUST,?HURRY
		DB	(?AU+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$11),(?AL+$04),(?AL+$05),(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$07),?WAIT
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),(?AL+$11),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),(?AL+$0B),(?AL+$04),(?AL+$03),(?AL+$06),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?SPCE,(?AU+$0D),(?AL+$0E),?HURRY
		DB	?SPCE,(?AU+$18),(?AL+$04),(?AL+$12)
		DB	?EOF

	DB	CMD_TEXTMENU
		DB	$02
		DB	:_EXPLAIN_NO
		DW	(_EXPLAIN_NO&$FFFF)
		DB	:?_NRMVASH13_TXT_EXPLAIN
		DW	(?_NRMVASH13_TXT_EXPLAIN&$FFFF)

;********************************
_EXPLAIN_NO
	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?SPCE,(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?WAIT
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$01),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$08),(?AL+$0D),?APST,?SPCE,(?AL+$14),(?AL+$0F),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$0E),(?AL+$12),(?AL+$04),?SPCE,(?AU+$03),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0C),?WAIT
		DB	(?AU+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?EXCL,?WAIT
		DB	(?AU+$16),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),?EXCL,?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THISACTORRESTORESTATE

;********************************
_TXT_SALAFY_TRAIN

	DB	CMD_TEXTICON
		DW	ICON_SALAFY

	DB	CMD_TEXTWRITE
		DB	(?AU+$11),(?AL+$04),(?AL+$00),(?AL+$03),(?AL+$18),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$01),(?AL+$00),(?AL+$13),(?AL+$13),(?AL+$0B),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?SPCE,(?AU+$0D),(?AL+$0E),?HURRY
		DB	?SPCE,(?AU+$18),(?AL+$04),(?AL+$12)
		DB	?EOF

	DB	CMD_TEXTMENU
		DB	$02
		DB	:_TRAIN_NO
		DW	(_TRAIN_NO&$FFFF)
		DB	:_TRAIN_YES
		DW	(_TRAIN_YES&$FFFF)

;********************************
_TRAIN_NO
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_SALAFY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$07),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$0E),(?AU+$0A),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THISACTORRESTORESTATE

;********************************
_TRAIN_YES
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_SALAFY

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$0E),(?AL+$0E),(?AL+$03),?PERD,?WAIT
		DB	(?AU+$0B),(?AL+$04),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AU+$06),(?AL+$0E),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_HEROTODOOR
		DB	$00
		DB	$00
		DB	$00
		DB	$00

	DB	CMD_JUMP
		DB	:?_NRMVASH13_TRAININGBTL
		DW	(?_NRMVASH13_TRAININGBTL&$FFFF)

;********************************
?_NRMVASH13_YAKI_BOOTS_TONY
	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:_TONY
		DW	(_TONY&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR23-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0D
		DB	$0A
		DW	$D107
		DB	$4F
		DB	:_YAKI
		DW	(_YAKI&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$29
		DB	:BIT_YAKI
		DW	(BIT_YAKI&$FFFF)
		DW	$84F0
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR23-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETTEXT
		DB	:_HEY
		DW	(_HEY&$FFFF)

	DB	CMD_SYNC
		DB	$02
		DB	$02

	DB	CMD_PALCLEARBASE
		DB	$0F
		DW	$7FFF

	DB	CMD_PALFADE
		DB	$20
		DB	$0F

	DB	CMD_HEROSETDOOR
		DB	$0F
		DB	$08

	DB	CMD_JUMP
		DB	:?_NRMGLADE03
		DW	(?_NRMGLADE03&$FFFF)

	DB	CMD_END

;********************************
_TONY
	DB	CMD_THISACTORSETANIM
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_SYNC
		DB	$01
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_RUN_DOWN_ANIM
		DW	(?_HERO_RUN_DOWN_ANIM&$FFFF)
		DB	$04
		DB	:?_HERO_RUN_LEFT_ANIM
		DW	(?_HERO_RUN_LEFT_ANIM&$FFFF)
		DB	$78
		DB	$00

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
_YAKI
	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_YAKI_RUN_RIGHT_ANIM
		DW	(?_YAKI_RUN_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_SYNC
		DB	$01
		DB	$02

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_YAKI_RUN_UP_ANIM
		DW	(?_YAKI_RUN_UP_ANIM&$FFFF)
		DB	$12
		DB	:?_YAKI_RUN_LEFT_ANIM
		DW	(?_YAKI_RUN_LEFT_ANIM&$FFFF)
		DB	$28
		DB	:?_YAKI_STAND_LEFT_ANIM
		DW	(?_YAKI_STAND_LEFT_ANIM&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_SETTEXT
		DB	:_AND_STAY_OUT
		DW	(_AND_STAY_OUT&$FFFF)

	DB	CMD_END

;********************************
_HEY

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$04),(?AL+$18),?EXCL,?SPCE,(?AU+$18),(?AL+$0E),(?AL+$14),?APST,(?AL+$11),(?AL+$04),?HURRY
		DB	(?AL+$0D),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$00),(?AL+$0B),(?AL+$0B),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$03),?WAIT
		DB	(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_END

;********************************
_AND_STAY_OUT

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$12),(?AL+$13),(?AL+$00),(?AL+$18),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$13),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SYNC
		DB	$02
		DB	$02

	DB	CMD_END

;********************************
?_NRMVASH13_NRM_INTRO
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$01

	DB	CMD_SCENENEW

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$00
		DB	$0A
		DW	$D0FA
		DB	$00
		DB	:_TONY_ENTER
		DW	(_TONY_ENTER&$FFFF)
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR20-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$01
		DB	$0A
		DW	$D0FB
		DB	$00
		DB	:_EIDON_ENTER
		DW	(_EIDON_ENTER&$FFFF)
		DB	:_EIDON_TALKER
		DW	(_EIDON_TALKER&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR21-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0C
		DB	$09
		DW	$D0ED
		DB	$4F
		DB	:_YAKI
		DW	(_YAKI&$FFFF)
		DB	:_YAKI_TALKER
		DW	(_YAKI_TALKER&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR22-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0E
		DB	$0A
		DW	$D108
		DB	$2A
		DB	:_SALAFY
		DW	(_SALAFY&$FFFF)
		DB	:_SALAFY_TALKER
		DW	(_SALAFY_TALKER&$FFFF)

;********************************
_BATTLE_RESET
	DB	CMD_LOADMAP
		DW	(MAP_NRMVASH13&$FFFF)
		DB	:MAP_NRMVASH13

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMVASH13&$FFFF)

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMVASH13_INTRO&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_LOADVRAMTILES
		DB	$2A
		DB	:BIT_EIDON
		DW	(BIT_EIDON&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$25
		DB	:BIT_SALAFY
		DW	(BIT_SALAFY&$FFFF)
		DW	$82A0
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$29
		DB	:BIT_YAKI
		DW	(BIT_YAKI&$FFFF)
		DW	$84F0
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR20-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR21-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR22-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SETBTLRETURN
		DB	:_BATTLE_RETURN
		DW	(_BATTLE_RETURN&$FFFF)
		DB	:_BATTLE_RETURN
		DW	(_BATTLE_RETURN&$FFFF)

	DB	CMD_SONGSTART
		DB	SONGID_lesson

	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
_BATTLE_RETURN
	DB	CMD_SCENENEW

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0D
		DB	$0A
		DW	$D107
		DB	$00
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR22-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0E
		DB	$0A
		DW	$D108
		DB	$2A
		DB	:?_SALAFY_STAND_LEFT_ANIM
		DW	(?_SALAFY_STAND_LEFT_ANIM&$FFFF)
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_SETSCROLL
		DB	:_TONY_NCOURAGE
		DW	(_TONY_NCOURAGE&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(_BATTLE_RESET&$FFFF)

;********************************
_TONY_NCOURAGE
	DB	CMD_SETTEXT
		DB	:_TXT_NCOURAGE
		DW	(_TXT_NCOURAGE&$FFFF)

	DB	CMD_WAITANYEVENTTEXT

	DB	CMD_THATACTORINIT
		DB	(((ACTOR22-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0E
		DB	$0A
		DW	$D108
		DB	$2A
		DB	:_SALAFY
		DW	(_SALAFY&$FFFF)
		DB	:_SALAFY_TALKER
		DW	(_SALAFY_TALKER&$FFFF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_END

;********************************
_TONY_ENTER
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_RIGHT_ANIM
		DW	(?_HERO_WALK_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITANYEVENTTEXT

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_WALK_UP_ANIM
		DW	(?_HERO_WALK_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_HERO_WALK_RIGHT_ANIM
		DW	(?_HERO_WALK_RIGHT_ANIM&$FFFF)
		DB	$80
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
_EIDON_TALKER
	DB	CMD_SETTEXT
		DB	:_TXT_EIDON_WAIT
		DW	(_TXT_EIDON_WAIT&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_EIDON
		DW	(?_FACE_EIDON&$FFFF)

;********************************
_EIDON_ENTER
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_EIDON_WALK_RIGHT_ANIM
		DW	(?_EIDON_WALK_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_EIDON_STAND_LEFT_ANIM
		DW	(?_EIDON_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:_TXT_DO_YOU_KNOW
		DW	(_TXT_DO_YOU_KNOW&$FFFF)

	DB	CMD_WAITANYEVENTTEXT

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_EIDON_WALK_RIGHT_ANIM
		DW	(?_EIDON_WALK_RIGHT_ANIM&$FFFF)
		DB	$80
		DB	$01
		DB	$00
		DB	$00

	DB	CMD_THISACTORSETANIM
		DB	:?_EIDON_STAND_UP_ANIM
		DW	(?_EIDON_STAND_UP_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:_TXT_MEET_YAKI
		DW	(_TXT_MEET_YAKI&$FFFF)

	DB	CMD_WAITANYEVENTTEXT

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_EIDON_WALK_LEFT_ANIM
		DW	(?_EIDON_WALK_LEFT_ANIM&$FFFF)
		DB	$70
		DB	:?_EIDON_WALK_UP_ANIM
		DW	(?_EIDON_WALK_UP_ANIM&$FFFF)
		DB	$10
		DB	:?_EIDON_STAND_DOWN_ANIM
		DW	(?_EIDON_STAND_DOWN_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_END

;********************************
_SALAFY
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_SALAFY_WALK_RIGHT_ANIM
		DW	(?_SALAFY_WALK_RIGHT_ANIM&$FFFF)
		DB	$40
		DB	:?_SALAFY_STAND_DOWN_ANIM
		DW	(?_SALAFY_STAND_DOWN_ANIM&$FFFF)
		DB	$28
		DB	:?_SALAFY_WALK_LEFT_ANIM
		DW	(?_SALAFY_WALK_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_SALAFY_STAND_LEFT_ANIM
		DW	(?_SALAFY_STAND_LEFT_ANIM&$FFFF)
		DB	$64
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(_SALAFY&$FFFF)

;********************************
_SALAFY_TALKER
	DB	CMD_SETTEXT
		DB	:_TXT_MEET_SALAFY
		DW	(_TXT_MEET_SALAFY&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_SALAFY
		DW	(?_FACE_SALAFY&$FFFF)

;********************************
_YAKI
	DB	CMD_THISACTORSETANIM
		DB	:?_YAKI_STAND_LEFT_ANIM
		DW	(?_YAKI_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_END

;********************************
_YAKI_TALKER
	DB	CMD_SETTEXT
		DB	:?_NRMVASH13_TXT_EXPLAIN
		DW	(?_NRMVASH13_TXT_EXPLAIN&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_YAKI
		DW	(?_FACE_YAKI&$FFFF)

;********************************
_TXT_EIDON_WAIT

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$16),(?AL+$04),?SPCE,(?AL+$06),(?AL+$04),(?AL+$13),?HURRY
		DB	(?AL+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$01),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$08),(?AL+$05),?WAIT
		DB	(?AU+$0E),(?AL+$11),(?AL+$16),(?AL+$08),(?AL+$0D),?SPCE,(?AL+$05),(?AL+$08),(?AL+$0D),(?AL+$03),(?AL+$12),?SPCE,(?AL+$14),(?AL+$12),?HURRY
		DB	(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_EIDON

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THISACTORRESTORESTATE

;********************************
_TXT_DO_YOU_KNOW
	DB	CMD_TEXTICON
		DW	ICON_EIDON

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?COMM,?SPCE,(?AU+$08),?HURRY
		DB	(?AL+$16),(?AL+$00),(?AL+$0D),(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$07),(?AL+$00),(?AL+$15),(?AL+$04),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$12),?PERD,?WAIT
		DB	?EOF

	DB	CMD_INVENTORYGIVE
		DB	INV_TYPE_ITEM
		DB	INV_ELDRITCH_AWL
		DB	$01

	DB	CMD_TEXTCLOSE


	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$00),(?AL+$0D),?HURRY
		DB	(?AU+$04),(?AL+$0B),(?AL+$03),(?AL+$11),(?AL+$08),(?AL+$13),(?AL+$02),(?AL+$07),?SPCE,(?AU+$00),(?AL+$16),(?AL+$0B),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE


	DB	CMD_TEXTICON
		DW	ICON_EIDON

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),(?AL+$13),?SPCE,(?AL+$16),(?AL+$08),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$07),(?AL+$04),(?AL+$0B),(?AL+$0F),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$04),(?AL+$12),(?AL+$02),(?AL+$00),(?AL+$0F),(?AL+$04),?SPCE,(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?WAIT
		DB	(?AL+$03),(?AL+$00),(?AL+$0D),(?AL+$06),(?AL+$04),(?AL+$11),(?AL+$0E),(?AL+$14),(?AL+$12),?HURRY
		DB	(?AL+$00),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$12),?PERD,?WAIT
		DB	(?AU+$03),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?HURRY
		DB	(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$07),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$13),(?AL+$0E),?WAIT
		DB	(?AL+$02),(?AL+$0E),(?AL+$0D),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$0B),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?HURRY
		DB	(?AL+$0F),(?AL+$0E),(?AL+$16),(?AL+$04),(?AL+$11),?SPCE,(?AL+$0E),(?AL+$05),?WAIT
		DB	(?AL+$08),(?AL+$0D),(?AL+$05),(?AL+$14),(?AL+$12),(?AL+$04),(?AL+$03),?HURRY
		DB	(?AU+$00),(?AL+$0D),(?AL+$08),(?AL+$0C),(?AL+$08),(?AL+$13),(?AL+$04),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?SPCE,(?AU+$0D),(?AL+$0E),?HURRY
		DB	?SPCE,(?AU+$18),(?AL+$04),(?AL+$12)
		DB	?EOF

	DB	CMD_TEXTMENU
		DB	$02
		DB	:_DONT_KNOW
		DW	(_DONT_KNOW&$FFFF)
		DB	:_KNOW
		DW	(_KNOW&$FFFF)

;********************************
_KNOW
	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$18),(?AL+$04),(?AL+$12),?SPCE,(?AU+$08),?SPCE,(?AL+$03),(?AL+$0E),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_EIDON

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$00),?COMM,?SPCE,(?AL+$0E),(?AL+$0A),(?AL+$00),(?AL+$18),?PERD,?HURRY
		DB	(?AU+$08),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$02),(?AL+$00),(?AL+$12),(?AL+$04),?COMM,?WAIT
		DB	(?AL+$02),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?SPCE,(?AL+$0C),(?AL+$04),?HURRY
		DB	(?AL+$13),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AU+$16),(?AL+$04),(?AL+$00),(?AL+$15),(?AL+$04),?PERD,?WAIT
		DB	(?AU+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?APST,(?AL+$12),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$0F),(?AL+$04),(?AL+$11),(?AL+$12),(?AL+$0E),(?AL+$0D),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?WAIT
		DB	(?AL+$16),(?AL+$07),(?AL+$0E),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$12),(?AL+$07),(?AL+$0E),(?AL+$14),(?AL+$0B),(?AL+$03),?DASH,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMPLOCAL
		DW	(?_NRMVASH13_QUAKE&$FFFF)

;********************************
_DONT_KNOW
	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0D),(?AL+$0E),(?AL+$0F),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_EIDON

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?PERD,?PERD,?PERD,?SPCE,(?AU+$18),(?AL+$00),(?AL+$0A),(?AL+$08),?HURRY
		DB	(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$08),(?AL+$12),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$04),(?AL+$11),?SPCE,(?AL+$0E),(?AL+$05),?HURRY
		DB	(?AU+$15),(?AL+$00),(?AL+$12),(?AL+$07),?SPCE,(?AU+$0D),(?AL+$00),(?AL+$11),(?AL+$0E),(?AL+$0E),(?AL+$0C),?PERD,?WAIT
		DB	(?AU+$07),(?AL+$04),(?AL+$11),(?AL+$04),?COMM,?SPCE,(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?HURRY
		DB	(?AL+$08),(?AL+$0D),(?AL+$13),(?AL+$11),(?AL+$0E),(?AL+$03),(?AL+$14),(?AL+$02),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_END

;********************************
_TXT_MEET_YAKI

	DB	CMD_TEXTICON
		DW	ICON_EIDON

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?COMM,?SPCE,(?AU+$08),?APST,(?AL+$03),?SPCE,(?AL+$0B),(?AL+$08),(?AL+$0A),(?AL+$04),?HURRY
		DB	(?AL+$18),(?AL+$0E),(?AL+$14),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$0C),(?AL+$04),(?AL+$04),(?AL+$13),?WAIT
		DB	(?AU+$18),(?AL+$00),(?AL+$0A),(?AL+$08),?PERD,?SPCE,(?AU+$18),(?AL+$00),(?AL+$0A),(?AL+$08),?COMM,?HURRY
		DB	(?AL+$0C),(?AL+$04),(?AL+$04),(?AL+$13),?SPCE,(?AU+$13),(?AL+$0E),(?AL+$0D),(?AL+$18),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETANYEVENTTEXT


	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$07),?SPCE,(?AU+$18),(?AU+$04),(?AU+$00),(?AU+$07),(?AU+$07),(?AU+$07),?EXCL,?EXCL,?WAIT
		DB	(?AU+$07),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$18),(?AL+$00),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$08),(?AL+$0D),?APST,?COMM,?HURRY
		DB	(?AL+$01),(?AL+$11),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?EXCL,?SPCE,(?AU+$08),?APST,(?AL+$0C),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$06),(?AL+$14),(?AL+$18),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?HURRY
		DB	(?AL+$06),(?AL+$0E),(?AL+$0D),(?AL+$0D),(?AL+$00),?SPCE,(?AL+$13),(?AL+$04),(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$18),(?AL+$00),?WAIT
		DB	(?AL+$07),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$13),(?AL+$0E),?SPCE,(?AL+$0D),(?AL+$00),(?AL+$01),?HURRY
		DB	(?AL+$13),(?AL+$07),(?AL+$0E),(?AL+$12),(?AL+$04),?SPCE,(?AU+$03),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$0C),?WAIT
		DB	(?AU+$02),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),(?AL+$14),(?AL+$11),(?AL+$04),(?AL+$12),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?HURRY
		DB	(?AL+$01),(?AL+$04),(?AL+$00),(?AL+$13),?SPCE,?APST,(?AL+$04),(?AL+$0C),?WAIT
		DB	(?AL+$12),(?AL+$04),(?AL+$0D),(?AL+$12),(?AL+$04),(?AL+$0B),(?AL+$04),(?AL+$12),(?AL+$12),?EXCL,?SPCE,(?AU+$04),(?AL+$11),?COMM,?HURRY
		DB	(?AU+$08),?SPCE,(?AL+$0C),(?AL+$04),(?AL+$00),(?AL+$0D),?PERD,?PERD,?PERD,?SPCE,(?AL+$01),(?AL+$04),(?AL+$00),(?AL+$13),?WAIT
		DB	?APST,(?AL+$04),(?AL+$0C),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$0D),(?AL+$00),(?AL+$01),?HURRY
		DB	?APST,(?AL+$04),(?AL+$0C),?EXCL,?SPCE,(?AU+$16),(?AU+$0E),(?AU+$0E),(?AU+$0E),?EXCL,?SPCE,(?AU+$12),(?AL+$0E),?WAIT
		DB	(?AU+$16),(?AU+$07),(?AU+$00),(?AU+$13),(?AU+$02),(?AU+$07),(?AU+$00),?SPCE,(?AU+$06),(?AU+$0E),(?AU+$0D),(?AU+$0D),(?AU+$00),?HURRY
		DB	(?AU+$03),(?AU+$0E),?QUST,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_END

;********************************
_TXT_MEET_SALAFY

	DB	CMD_TEXTICON
		DW	ICON_SALAFY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AU+$12),(?AL+$00),(?AL+$0B),(?AL+$00),(?AL+$05),(?AL+$18),?COMM,?HURRY
		DB	(?AL+$00),(?AL+$0F),(?AL+$0F),(?AL+$11),(?AL+$04),(?AL+$0D),(?AL+$13),(?AL+$08),(?AL+$02),(?AL+$04),?WAIT
		DB	(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$04),(?AL+$11),?EXCL,?WAIT
		DB	(?AU+$11),(?AL+$04),(?AL+$00),(?AL+$03),(?AL+$18),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?SPCE,(?AL+$00),?HURRY
		DB	(?AL+$13),(?AL+$11),(?AL+$00),(?AL+$08),(?AL+$0D),(?AL+$08),(?AL+$0D),(?AL+$06),?SPCE,(?AL+$0C),(?AL+$00),(?AL+$13),(?AL+$02),(?AL+$07),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?SPCE,(?AU+$0D),(?AL+$0E),?HURRY
		DB	?SPCE,(?AU+$18),(?AL+$04),(?AL+$12)
		DB	?EOF

	DB	CMD_TEXTMENU
		DB	$02
		DB	:_TRAIN_NO
		DW	(_TRAIN_NO&$FFFF)
		DB	:_TRAIN_YES
		DW	(_TRAIN_YES&$FFFF)

;********************************
_TRAIN_NO
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_SALAFY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$07),?PERD,?PERD,?PERD,?WAIT
		DB	(?AU+$0E),(?AU+$0A),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THISACTORRESTORESTATE

;********************************
_TRAIN_YES
	DB	CMD_TEXTCLEAR

	DB	CMD_TEXTICON
		DW	ICON_SALAFY

	DB	CMD_TEXTWRITE
		DB	(?AU+$06),(?AL+$0E),(?AL+$0E),(?AL+$03),?PERD,?WAIT
		DB	(?AU+$0B),(?AL+$04),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AU+$06),(?AL+$0E),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_JUMP
		DB	:?_NRMVASH13_TRAININGBTL
		DW	(?_NRMVASH13_TRAININGBTL&$FFFF)

;********************************
_TXT_NCOURAGE

	DB	CMD_TEXTICON
		DW	ICON_SALAFY

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AL+$07),(?AL+$00),(?AL+$13),?SPCE,(?AL+$16),(?AL+$00),(?AL+$12),?SPCE,(?AL+$06),(?AL+$11),(?AL+$04),(?AL+$00),(?AL+$13),?EXCL,?WAIT
		DB	(?AU+$02),(?AL+$0E),(?AL+$0C),(?AL+$04),?SPCE,(?AL+$01),(?AL+$00),(?AL+$02),(?AL+$0A),?SPCE,(?AL+$00),(?AL+$0D),(?AL+$18),?WAIT
		DB	(?AL+$13),(?AL+$08),(?AL+$0C),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?APST,(?AL+$0B),(?AL+$0B),?SPCE,(?AL+$03),(?AL+$0E),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_END

;********************************
?_NRMVASH13_QUAKE
	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMVASH13&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:_TONY_QUAKE
		DW	(_TONY_QUAKE&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((ACTOR20-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:_EIDON_QUAKE
		DW	(_EIDON_QUAKE&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR21-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0C
		DB	$09
		DW	$D0ED
		DB	$4F
		DB	:_YAKI_QUAKE
		DW	(_YAKI_QUAKE&$FFFF)
		DB	:_YAKI_TALKER
		DW	(_YAKI_TALKER&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR22-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TALKER_AI&$FFFF)
		DB	$0E
		DB	$0A
		DW	$D108
		DB	$2A
		DB	:_SALAFY_QUAKE
		DW	(_SALAFY_QUAKE&$FFFF)
		DB	:_SALAFY_TALKER
		DW	(_SALAFY_TALKER&$FFFF)

	DB	CMD_END

;********************************
_TONY_QUAKE
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	$04
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_WAITANYEVENTMASTER

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)
		DB	$26
		DB	$00

	DB	CMD_WAITANYEVENTMASTER

	DB	CMD_THISACTORSETAI
		DW	(?HERO_AI&$FFFF)

	DB	CMD_JUMP
		DB	:?_HERO_STAND_RIGHT_ANIM
		DW	(?_HERO_STAND_RIGHT_ANIM&$FFFF)

;********************************
_EIDON_QUAKE
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_EIDON_STAND_DOWN_ANIM
		DW	(?_EIDON_STAND_DOWN_ANIM&$FFFF)
		DB	$10
		DB	:?_EIDON_STAND_LEFT_ANIM
		DW	(?_EIDON_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:_TONY_QUAKE
		DW	(_TONY_QUAKE&$FFFF)

	DB	CMD_SFX
		DB	SFXID_EARTHQUAKE

	DB	CMD_SETSCROLL
		DB	:?_NRMGEYSER_QUAKE
		DW	(?_NRMGEYSER_QUAKE&$FFFF)

	DB	CMD_SETTEXT
		DB	:_TXT_WHATS_GOING_ON
		DW	(_TXT_WHATS_GOING_ON&$FFFF)

	DB	CMD_WAITANYEVENTTEXT

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_EIDON_RUN_UP_ANIM
		DW	(?_EIDON_RUN_UP_ANIM&$FFFF)
		DB	$06
		DB	:?_EIDON_RUN_LEFT_ANIM
		DW	(?_EIDON_RUN_LEFT_ANIM&$FFFF)
		DB	$30
		DB	$00

	DB	CMD_SETANYEVENTMASTER

	DB	CMD_THISACTORSTOP

;********************************
_YAKI_QUAKE
	DB	CMD_WAITANYEVENTMASTER

	DB	CMD_DELAY
		DB	$18

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_YAKI_RUN_LEFT_ANIM
		DW	(?_YAKI_RUN_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_YAKI_STAND_LEFT_ANIM
		DW	(?_YAKI_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SETTEXT
		DB	:_TXT_WHATS_SHAKIN
		DW	(_TXT_WHATS_SHAKIN&$FFFF)

	DB	CMD_WAITANYEVENTTEXT

	DB	CMD_SETANYEVENTMASTER

	DB	CMD_END

;********************************
_YAKI_TALKER
	DB	CMD_SETTEXT
		DB	:_DIG_IT
		DW	(_DIG_IT&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_YAKI
		DW	(?_FACE_YAKI&$FFFF)

;********************************
_SALAFY_QUAKE
	DB	CMD_THISACTORSETANIM
		DB	:?_SALAFY_STAND_LEFT_ANIM
		DW	(?_SALAFY_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_END

;********************************
_SALAFY_TALKER
	DB	CMD_SETTEXT
		DB	:_OH_NO
		DW	(_OH_NO&$FFFF)

	DB	CMD_JUMP
		DB	:?_FACE_SALAFY
		DW	(?_FACE_SALAFY&$FFFF)

;********************************
_TXT_WHATS_GOING_ON
	DB	CMD_SETGAMECOUNT
		DW	$0003


	DB	CMD_TEXTICON
		DW	ICON_EIDON

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$14),(?AL+$07),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$0E),(?AL+$0D),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_EIDON

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?PERD,?PERD,?PERD,?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?HURRY
		DB	(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?EXCL,?SPCE,(?AU+$08),?SPCE,(?AL+$13),(?AL+$07),(?AL+$08),(?AL+$0D),(?AL+$0A),?WAIT
		DB	(?AL+$08),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$02),(?AL+$0E),(?AL+$0C),(?AL+$08),(?AL+$0D),(?AL+$06),?HURRY
		DB	(?AL+$05),(?AL+$11),(?AL+$0E),(?AL+$0C),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?WAIT
		DB	(?AL+$06),(?AL+$0B),(?AL+$00),(?AL+$03),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_END

;********************************
_TXT_WHATS_SHAKIN

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$07),?SPCE,(?AU+$18),(?AU+$04),(?AU+$00),(?AU+$07),?EXCL,?EXCL,?EXCL,?WAIT
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$12),(?AL+$07),(?AL+$00),(?AL+$0A),(?AL+$08),(?AL+$0D),?APST,?COMM,?HURRY
		DB	(?AL+$01),(?AL+$11),(?AL+$0E),(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETANYEVENTTEXT

	DB	CMD_END

;********************************
_DIG_IT

	DB	CMD_TEXTICON
		DW	ICON_YAKI

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$0E),(?AU+$07),?SPCE,(?AU+$18),(?AU+$04),(?AU+$00),(?AU+$07),(?AU+$07),(?AU+$07),?EXCL,?HURRY
		DB	(?AU+$03),(?AU+$08),(?AU+$06),?SPCE,(?AU+$08),(?AU+$13),?EXCL,?SPCE,(?AU+$16),(?AU+$0E),(?AU+$0E),(?AU+$0E),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THISACTORRESTORESTATE

;********************************
_OH_NO

	DB	CMD_TEXTICON
		DW	ICON_SALAFY

	DB	CMD_TEXTWRITE
		DB	(?AU+$0E),(?AL+$07),?SPCE,(?AL+$0D),(?AL+$0E),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THISACTORRESTORESTATE

;********************************
?_NRMVASH13_ENDING
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_NRMVASH13&$FFFF)
		DB	:MAP_NRMVASH13

	DB	CMD_LOADHOTSPOTS
		DW	(HS_NRMVASH13&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_NRMVASH13&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0B
		DB	$08
		DW	$D0D3
		DB	$00
		DB	:?_NRMVASH13_WENCE_END
		DW	(?_NRMVASH13_WENCE_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0B
		DB	$07
		DW	$D0BA
		DB	$29
		DB	:?_NRMVASH13_YAKI_END
		DW	(?_NRMVASH13_YAKI_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$0D
		DB	$08
		DW	$D0D5
		DB	$52
		DB	:?_NRMVASH13_SALAFY_END
		DW	(?_NRMVASH13_SALAFY_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$00
		DB	$08
		DW	$D0C8
		DB	$79
		DB	:?_NRMVASH13_GIA_END
		DW	(?_NRMVASH13_GIA_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$29
		DB	:BIT_WENCE
		DW	(BIT_WENCE&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$29
		DB	:BIT_YAKI
		DW	(BIT_YAKI&$FFFF)
		DW	$8290
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$25
		DB	:BIT_SALAFY
		DW	(BIT_SALAFY&$FFFF)
		DW	$8520
		DB	$00

	DB	CMD_LOADVRAMTILES
		DB	$27
		DB	:BIT_GIA
		DW	(BIT_GIA&$FFFF)
		DW	$8790
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR01-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROSETCAMERA

	DB	CMD_SCENEREADY

	DB	CMD_WAITEVENTMASTER
		DB	$01

	DB	CMD_JUMP
		DB	:?_NRMVASH16_ENDING
		DW	(?_NRMVASH16_ENDING&$FFFF)

	DB	CMD_END

;********************************
?_NRMVASH13_WENCE_END
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WENCE_STAND_UP_ANIM
		DW	(?_WENCE_STAND_UP_ANIM&$FFFF)
		DB	$80
		DB	:?_WENCE_STAND_RIGHT_ANIM
		DW	(?_WENCE_STAND_RIGHT_ANIM&$FFFF)
		DB	$60
		DB	:?_WENCE_STAND_UP_ANIM
		DW	(?_WENCE_STAND_UP_ANIM&$FFFF)
		DB	$60
		DB	:?_WENCE_STAND_RIGHT_ANIM
		DW	(?_WENCE_STAND_RIGHT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_THATACTORSTART
		DB	(((ACTOR02-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SYNC
		DB	$01
		DB	$04

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_WENCE_STAND_LEFT_ANIM
		DW	(?_WENCE_STAND_LEFT_ANIM&$FFFF)
		DB	$20
		DB	:?_WENCE_BACK_LEFT_ANIM
		DW	(?_WENCE_BACK_LEFT_ANIM&$FFFF)
		DB	$80
		DB	$00

	DB	CMD_END

;********************************
?_NRMVASH13_YAKI_END
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_YAKI_STAND_DOWN_ANIM
		DW	(?_YAKI_STAND_DOWN_ANIM&$FFFF)
		DB	$90
		DB	:?_YAKI_STAND_DR_ANIM
		DW	(?_YAKI_STAND_DR_ANIM&$FFFF)
		DB	$70
		DB	:?_YAKI_STAND_DOWN_ANIM
		DW	(?_YAKI_STAND_DOWN_ANIM&$FFFF)
		DB	$50
		DB	:?_YAKI_STAND_DR_ANIM
		DW	(?_YAKI_STAND_DR_ANIM&$FFFF)
		DB	$40
		DB	$00

	DB	CMD_SYNC
		DB	$00
		DB	$02

	DB	CMD_DELAY
		DB	$60

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_YAKI_STAND_LEFT_ANIM
		DW	(?_YAKI_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_YAKI_STAND_DL_ANIM
		DW	(?_YAKI_STAND_DL_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$01
		DB	$04

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_YAKI_STAND_LEFT_ANIM
		DW	(?_YAKI_STAND_LEFT_ANIM&$FFFF)
		DB	$80
		DB	:?_YAKI_STAND_DOWN_ANIM
		DW	(?_YAKI_STAND_DOWN_ANIM&$FFFF)
		DB	$6C
		DB	:?_YAKI_WALK_RIGHT_ANIM
		DW	(?_YAKI_WALK_RIGHT_ANIM&$FFFF)
		DB	$60
		DB	$00

	DB	CMD_END

;********************************
?_NRMVASH13_SALAFY_END
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_SALAFY_STAND_LEFT_ANIM
		DW	(?_SALAFY_STAND_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_SALAFY_STAND_UL_ANIM
		DW	(?_SALAFY_STAND_UL_ANIM&$FFFF)
		DB	$50
		DB	:?_SALAFY_WALK_LEFT_ANIM
		DW	(?_SALAFY_WALK_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_SALAFY_STAND_LEFT_ANIM
		DW	(?_SALAFY_STAND_LEFT_ANIM&$FFFF)
		DB	$60
		DB	:?_SALAFY_STAND_UL_ANIM
		DW	(?_SALAFY_STAND_UL_ANIM&$FFFF)
		DB	$80
		DB	:?_SALAFY_STAND_LEFT_ANIM
		DW	(?_SALAFY_STAND_LEFT_ANIM&$FFFF)
		DB	$00
		DB	$00

	DB	CMD_SYNC
		DB	$01
		DB	$04

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_SALAFY_STAND_LEFT_ANIM
		DW	(?_SALAFY_STAND_LEFT_ANIM&$FFFF)
		DB	$50
		DB	:?_SALAFY_WALK_LEFT_ANIM
		DW	(?_SALAFY_WALK_LEFT_ANIM&$FFFF)
		DB	$10
		DB	:?_SALAFY_STAND_LEFT_ANIM
		DW	(?_SALAFY_STAND_LEFT_ANIM&$FFFF)
		DB	$40
		DB	:?_SALAFY_STAND_UP_ANIM
		DW	(?_SALAFY_STAND_UP_ANIM&$FFFF)
		DB	$60
		DB	:?_SALAFY_WALK_RIGHT_ANIM
		DW	(?_SALAFY_WALK_RIGHT_ANIM&$FFFF)
		DB	$60
		DB	$00

	DB	CMD_SETEVENTMASTER
		DB	$01

	DB	CMD_END

;********************************
?_NRMVASH13_GIA_END
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GIA_WALK_RIGHT_ANIM
		DW	(?_GIA_WALK_RIGHT_ANIM&$FFFF)
		DB	$A0
		DB	:?_GIA_STAND_RIGHT_ANIM
		DW	(?_GIA_STAND_RIGHT_ANIM&$FFFF)
		DB	$60
		DB	$00

	DB	CMD_SYNC
		DB	$01
		DB	$04

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_GIA_STAND_RIGHT_ANIM
		DW	(?_GIA_STAND_RIGHT_ANIM&$FFFF)
		DB	$20
		DB	:?_GIA_WALK_LEFT_ANIM
		DW	(?_GIA_WALK_LEFT_ANIM&$FFFF)
		DB	$80
		DB	$00

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_NRMGLADE03
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	?_END
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	?_NRMVASH22
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?ANIM_AI
	GLOBAL	ACTOR20
	GLOBAL	?_EIDON_WALK_LEFT_ANIM
	GLOBAL	?_EIDON_STAND_LEFT_ANIM
	GLOBAL	?_HERO_WALK_RIGHT_ANIM
	GLOBAL	?_HERO_STAND_RIGHT_ANIM
	GLOBAL	MAP_NRMVASH13
	GLOBAL	TR_NRMVASH13
	GLOBAL	HS_NRMVASH13
	GLOBAL	PAL_HERO
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR00
	GLOBAL	?TALKER_AI
	GLOBAL	BIT_YAKI
	GLOBAL	?_YAKI_WALK_LEFT_ANIM
	GLOBAL	?_YAKI_RUN_LEFT_ANIM
	GLOBAL	?_YAKI_STAND_UL_ANIM
	GLOBAL	?_YAKI_WALK_UP_ANIM
	GLOBAL	?_YAKI_RUN_UP_ANIM
	GLOBAL	?_YAKI_STAND_UR_ANIM
	GLOBAL	?_YAKI_WALK_RIGHT_ANIM
	GLOBAL	?_YAKI_RUN_RIGHT_ANIM
	GLOBAL	?_YAKI_STAND_DR_ANIM
	GLOBAL	?_YAKI_WALK_DOWN_ANIM
	GLOBAL	?_YAKI_RUN_DOWN_ANIM
	GLOBAL	?_YAKI_STAND_DL_ANIM
	GLOBAL	?_FACE_YAKI
	GLOBAL	ACTOR21
	GLOBAL	BIT_SALAFY
	GLOBAL	?_SALAFY_STAND_LEFT_ANIM
	GLOBAL	?_FACE_SALAFY
	GLOBAL	?_NRMVASH13_TRAININGBTL
	GLOBAL	ACTOR23
	GLOBAL	?_HERO_STAND_LEFT_ANIM
	GLOBAL	?_HERO_RUN_DOWN_ANIM
	GLOBAL	?_HERO_RUN_LEFT_ANIM
	GLOBAL	?_YAKI_STAND_LEFT_ANIM
	GLOBAL	ACTOR22
	GLOBAL	HS_NRMVASH13_INTRO
	GLOBAL	BIT_EIDON
	GLOBAL	?_HERO_WALK_UP_ANIM
	GLOBAL	?_FACE_EIDON
	GLOBAL	?_EIDON_WALK_RIGHT_ANIM
	GLOBAL	?_EIDON_STAND_UP_ANIM
	GLOBAL	?_EIDON_WALK_UP_ANIM
	GLOBAL	?_EIDON_STAND_DOWN_ANIM
	GLOBAL	?_SALAFY_WALK_RIGHT_ANIM
	GLOBAL	?_SALAFY_STAND_DOWN_ANIM
	GLOBAL	?_SALAFY_WALK_LEFT_ANIM
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_NRMGEYSER_QUAKE
	GLOBAL	?_EIDON_RUN_UP_ANIM
	GLOBAL	?_EIDON_RUN_LEFT_ANIM
	GLOBAL	ACTOR01
	GLOBAL	ACTOR02
	GLOBAL	BIT_WENCE
	GLOBAL	BIT_GIA
	GLOBAL	?_NRMVASH16_ENDING
	GLOBAL	?_WENCE_STAND_UP_ANIM
	GLOBAL	?_WENCE_STAND_RIGHT_ANIM
	GLOBAL	?_WENCE_STAND_LEFT_ANIM
	GLOBAL	?_WENCE_BACK_LEFT_ANIM
	GLOBAL	?_YAKI_STAND_DOWN_ANIM
	GLOBAL	?_SALAFY_STAND_UL_ANIM
	GLOBAL	?_SALAFY_STAND_UP_ANIM
	GLOBAL	?_GIA_WALK_RIGHT_ANIM
	GLOBAL	?_GIA_STAND_RIGHT_ANIM
	GLOBAL	?_GIA_WALK_LEFT_ANIM

;********************************
	END
;********************************