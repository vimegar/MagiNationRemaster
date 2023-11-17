;Size:951
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\SHADOWHOLD\HLDMAZE\MAP01\HLDMAZE01.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_HLDMAZE01_DR_1
	DB	CMD_HEROTODOOR
		DB	$03
		DB	$08
		DB	$17
		DB	$05

	DB	CMD_JUMP
		DB	:?_HLDCELL02
		DW	(?_HLDCELL02&$FFFF)

;********************************
?_HLDMAZE01_DR_2
	DB	CMD_HEROTODOOR
		DB	$17
		DB	$05
		DB	$17
		DB	$00

	DB	CMD_JUMP
		DB	:?_HLDMAZE03
		DW	(?_HLDMAZE03&$FFFF)

;********************************
?_HLDMAZE01_DR_3
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$01
		DB	:_HLDMAZE01_DR_3_END
		DW	(_HLDMAZE01_DR_3_END&$FFFF)

	DB	CMD_JUMP
		DB	:?_HLDMAZE01_DOOR_LOCKED
		DW	(?_HLDMAZE01_DOOR_LOCKED&$FFFF)

;********************************
_HLDMAZE01_DR_3_END
	DB	CMD_END

;********************************
?_HLDMAZE01_TR_1
	DB	CMD_TOGGLEONCE
		DW	(XRAM_SAVEBITS+$0003)
		DB	$01
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$FA
		DB	$FB
		DW	$D0FD

	DB	CMD_END

;********************************
?_HLDMAZE01_TR_2

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$09),(?AL+$14),(?AL+$12),(?AL+$13),?SPCE,(?AL+$12),(?AL+$0F),(?AL+$11),(?AL+$08),(?AL+$0D),(?AL+$06),(?AL+$12),?HURRY
		DB	(?AL+$00),(?AL+$0D),(?AL+$03),?SPCE,(?AL+$00),?SPCE,(?AL+$13),(?AL+$0E),(?AL+$11),(?AL+$0D),?WAIT
		DB	(?AL+$12),(?AL+$07),(?AL+$04),(?AL+$04),(?AL+$13),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HLDMAZE01_TR_3

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$05),(?AL+$08),(?AL+$0B),(?AL+$0B),(?AL+$04),(?AL+$03),?SPCE,(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$07),?HURRY
		DB	(?AL+$15),(?AL+$08),(?AL+$0B),(?AL+$04),?SPCE,(?AL+$06),(?AL+$0E),(?AL+$0E),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_END

;********************************
?_HLDMAZE01_TXT1

	DB	CMD_TEXTICON
		DW	ICON_GUY02

	DB	CMD_TEXTWRITE
		DB	(?AU+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$07),(?AL+$14),(?AL+$11),(?AL+$13),?SPCE,(?AL+$0C),(?AL+$04),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?APST,(?AL+$0C),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$07),(?AL+$14),(?AL+$11),(?AL+$13),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?COMM,?SPCE,(?AU+$08),?APST,(?AL+$0C),?WAIT
		DB	(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$11),(?AL+$04),(?AL+$12),(?AL+$02),(?AL+$14),(?AL+$04),?SPCE,(?AL+$18),(?AL+$0E),(?AL+$14),?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_GUY02

	DB	CMD_TEXTWRITE
		DB	(?AU+$13),(?AU+$07),(?AU+$00),(?AU+$0D),(?AU+$0A),(?AU+$18),(?AU+$0E),(?AU+$14),?EXCL,?EXCL,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	(?AU+$16),(?AL+$07),(?AL+$00),(?AL+$13),?APST,(?AL+$12),?SPCE,(?AL+$13),(?AL+$07),(?AL+$00),(?AL+$13),?HURRY
		DB	(?AL+$12),(?AL+$16),(?AL+$08),(?AL+$13),(?AL+$02),(?AL+$07),?SPCE,(?AL+$0E),(?AL+$15),(?AL+$04),(?AL+$11),?WAIT
		DB	(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$11),(?AL+$04),?SPCE,(?AL+$05),(?AL+$0E),(?AL+$11),?QUST,?WAIT
		DB	?EOF

	DB	CMD_TEXTICON
		DW	ICON_GUY02

	DB	CMD_TEXTWRITE
		DB	(?AU+$08),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0D),?APST,(?AL+$13),?SPCE,(?AL+$0A),(?AL+$0D),(?AL+$0E),(?AL+$16),?COMM,?HURRY
		DB	(?AL+$01),(?AL+$14),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),(?AL+$18),?SPCE,(?AL+$13),(?AL+$0E),(?AL+$0B),(?AL+$03),?WAIT
		DB	(?AL+$0C),(?AL+$04),?SPCE,(?AL+$0D),(?AL+$0E),(?AL+$13),?SPCE,(?AL+$13),(?AL+$0E),?HURRY
		DB	(?AL+$13),(?AL+$0E),(?AL+$14),(?AL+$02),(?AL+$07),?SPCE,(?AL+$08),(?AL+$13),?PERD,?WAIT
		DB	(?AU+$16),(?AL+$04),(?AL+$0B),(?AL+$0B),?PERD,?PERD,?PERD,?SPCE,(?AU+$01),(?AL+$18),(?AL+$04),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_HLDMAZE01_TXT2

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?DASH,(?AU+$08),(?AU+$13),?APST,(?AU+$12),?SPCE,(?AU+$0B),(?AU+$0E),(?AU+$02),(?AU+$0A),(?AU+$04),(?AU+$03),?DASH,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_SETEVENTTEXT
		DB	$02

	DB	CMD_END

;********************************
?_HLDMAZE01_TXT3

	DB	CMD_TEXTICON
		DW	ICON_TONY

	DB	CMD_TEXTWRITE
		DB	?DASH,(?AU+$13),(?AU+$0E),(?AU+$0D),(?AU+$18),?SPCE,(?AU+$14),(?AU+$0D),(?AU+$0B),(?AU+$0E),(?AU+$02),(?AU+$0A),(?AU+$12),?HURRY
		DB	(?AU+$13),(?AU+$07),(?AU+$04),?SPCE,(?AU+$03),(?AU+$0E),(?AU+$0E),(?AU+$11),?PERD,?SPCE,(?AU+$13),(?AU+$07),(?AU+$04),?WAIT
		DB	(?AU+$0A),(?AU+$04),(?AU+$18),?SPCE,(?AU+$09),(?AU+$00),(?AU+$0C),(?AU+$12),?SPCE,(?AU+$00),(?AU+$0D),(?AU+$03),?HURRY
		DB	(?AU+$01),(?AU+$11),(?AU+$04),(?AU+$00),(?AU+$0A),(?AU+$12),?SPCE,(?AU+$08),(?AU+$0D),?SPCE,(?AU+$13),(?AU+$07),(?AU+$04),?WAIT
		DB	(?AU+$0B),(?AU+$0E),(?AU+$02),(?AU+$0A),?DASH,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_SETEVENTTEXT
		DB	$01

	DB	CMD_END

;********************************
?_HLDMAZE_RNDBAT
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$00
		DB	$00
		DB	$00

	DB	CMD_SCREENWIPE
		DW	(?DO_SCREENFX_SWIRL&$FFFF)
		DB	SONGID_battle

	DB	CMD_JUMPRANDOM
		DB	$06
		DB	:_BTL1
		DW	(_BTL1&$FFFF)
		DB	:_BTL2
		DW	(_BTL2&$FFFF)
		DB	:_BTL3
		DW	(_BTL3&$FFFF)
		DB	:_BTL4
		DW	(_BTL4&$FFFF)
		DB	:_BTL5
		DW	(_BTL5&$FFFF)
		DB	:_BTL6
		DW	(_BTL6&$FFFF)

;********************************
_BTL1
	DB	CMD_BTLNEW
		DB	SHADOWHOLD_ARENA1
		DB	MAGI_RND1
		DB	$20
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	BORGOR
		DB	$20
		DB	$40
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL2
	DB	CMD_BTLNEW
		DB	SHADOWHOLD_ARENA1
		DB	MAGI_RND1
		DB	$1E
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SPINDLE
		DB	$1E
		DB	$3C
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL3
	DB	CMD_BTLNEW
		DB	SHADOWHOLD_ARENA1
		DB	MAGI_RND1
		DB	$1F
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SARBIL
		DB	$1E
		DB	$3C
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	KLETCH
		DB	$19
		DB	$32
		DB	$01

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	KLETCH
		DB	$19
		DB	$32
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL4
	DB	CMD_BTLNEW
		DB	SHADOWHOLD_ARENA1
		DB	MAGI_RND1
		DB	$1F
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SARBIL
		DB	$1F
		DB	$3E
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL5
	DB	CMD_BTLNEW
		DB	SHADOWHOLD_ARENA1
		DB	MAGI_RND1
		DB	$1B
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	KLETCH
		DB	$1B
		DB	$36
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL6
	DB	CMD_BTLNEW
		DB	SHADOWHOLD_ARENA1
		DB	MAGI_RND1
		DB	$1C
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	KLETCH
		DB	$18
		DB	$32
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	BORGOR
		DB	$1E
		DB	$3C
		DB	$01

	DB	CMD_BTLAUTO

;********************************
?_HLDMAZE_CORE7_BATTLE
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$00
		DB	$00
		DB	$00

	DB	CMD_SCREENWIPE
		DW	(?DO_SCREENFX_SWIRL&$FFFF)
		DB	SONGID_battle

	DB	CMD_BTLNEW
		DB	SHADOWHOLD_ARENA1
		DB	CORE7
		DB	$23
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_SETWRAMBYTE
		DW	(BTL_ENEMY_ENGH+$0000)
		DB	WRAM_BATTLE
		DB	$00

	DB	CMD_SETWRAMBYTE
		DW	(BTL_ENEMY_ENGL+$0000)
		DB	WRAM_BATTLE
		DB	$6E

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	BLACKAGOVO
		DB	$19
		DB	$32
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	CORE_GRAG
		DB	$19
		DB	$32
		DB	$01

	DB	CMD_BTLAUTO

;********************************
?_HLDMAZE_CORE8_BATTLE
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$00
		DB	$00
		DB	$00

	DB	CMD_SCREENWIPE
		DW	(?DO_SCREENFX_SWIRL&$FFFF)
		DB	SONGID_battle

	DB	CMD_BTLNEW
		DB	SHADOWHOLD_ARENA1
		DB	CORE8
		DB	$2D
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_SETWRAMBYTE
		DW	(BTL_ENEMY_ENGH+$0000)
		DB	WRAM_BATTLE
		DB	$00

	DB	CMD_SETWRAMBYTE
		DW	(BTL_ENEMY_ENGL+$0000)
		DB	WRAM_BATTLE
		DB	$64

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	CORE_HYREN
		DB	$30
		DB	$50
		DB	$01

	DB	CMD_BTLAUTO

;********************************
?_HLDMAZE_JINGJACK_BATTLE
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$00
		DB	$00
		DB	$00

	DB	CMD_SCREENWIPE
		DW	(?DO_SCREENFX_SWIRL&$FFFF)
		DB	SONGID_battle

	DB	CMD_BTLNEW
		DB	SHADOWHOLD_ARENA1
		DB	MAGI_RND1
		DB	$20
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_SETWRAMBYTE
		DW	(BTL_RUN_FLAG+$0000)
		DB	WRAM_BATTLE
		DB	$00

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	JINGJACK
		DB	$20
		DB	$40
		DB	$00

	DB	CMD_BTLAUTO

;********************************
?_HLDMAZE01
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_HLDMAZE01&$FFFF)
		DB	:MAP_HLDMAZE01

	DB	CMD_LOADHOTSPOTS
		DW	(HS_HLDMAZE01&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_HLDMAZE01&$FFFF)

;********************************
?_HLDMAZE01_RETURN
	DB	CMD_LOADVRAM
		DW	(VRM_HLDMAZE&$FFFF)
		DB	:VRM_HLDMAZE
		DW	(PAL_HLDMAZE&$FFFF)
		DB	:PAL_HLDMAZE

	DB	CMD_SONGSTART
		DB	SONGID_shadowhold

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_HLDMAZE_RNDBAT
		DW	(?_HLDMAZE_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_HLDMAZE01_RETURN
		DW	(?_HLDMAZE01_RETURN&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_IF
		DB	EXPR_NOT
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0000)&$FFFF
		DB	$01
		DB	:_SKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_COPYTILEBLOCK
		DW	$D000
		DB	$02
		DB	$02
		DW	$D198
		DB	$0C
		DB	$18

;********************************
_SKIP
	DB	CMD_IF
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0081)&$FFFF
		DB	$02
		DB	:_HLDMAZE01_END
		DW	(_HLDMAZE01_END&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TRIGGER_AI&$FFFF)
		DB	$19
		DB	$06
		DW	$D0D9
		DB	$00
		DB	:?_MAN02_STAND_DOWN_ANIM
		DW	(?_MAN02_STAND_DOWN_ANIM&$FFFF)
		DB	:?_HLDMAZE01_PRISONER_FREE
		DW	(?_HLDMAZE01_PRISONER_FREE&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$30
		DB	:BIT_MAN02
		DW	(BIT_MAN02&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

;********************************
_HLDMAZE01_END
	DB	CMD_SCENEREADY

	DB	CMD_END

;********************************
?_HLDMAZE01_PRISONER_FREE
	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0081)
		DB	$02

	DB	CMD_SETTEXT
		DB	:?_HLDMAZE01_TXT1
		DW	(?_HLDMAZE01_TXT1&$FFFF)

	DB	CMD_SWITCH
		DB	EXPR_FACEHERO
		DB	:_UP
		DW	$0000
		DW	(_UP&$FFFF)
		DB	:_DOWN
		DW	$0003
		DW	(_DOWN&$FFFF)
		DB	:_RIGHT
		DW	$0002
		DW	(_RIGHT&$FFFF)
		DB	:_LEFT
		DW	$0001
		DW	(_LEFT&$FFFF)
		DB	$FF

;********************************
_UP
	DB	CMD_THISACTORSETANIM
		DB	:?_MAN02_STAND_UP_ANIM
		DW	(?_MAN02_STAND_UP_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_JUMP
		DB	:_MOVE_IT
		DW	(_MOVE_IT&$FFFF)

;********************************
_DOWN
	DB	CMD_THISACTORSETANIM
		DB	:?_MAN02_STAND_DOWN_ANIM
		DW	(?_MAN02_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_JUMP
		DB	:_GO_AROUND
		DW	(_GO_AROUND&$FFFF)

;********************************
_LEFT
	DB	CMD_THISACTORSETANIM
		DB	:?_MAN02_STAND_LEFT_ANIM
		DW	(?_MAN02_STAND_LEFT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_JUMP
		DB	:_MOVE_IT
		DW	(_MOVE_IT&$FFFF)

;********************************
_RIGHT
	DB	CMD_THISACTORSETANIM
		DB	:?_MAN02_STAND_RIGHT_ANIM
		DW	(?_MAN02_STAND_RIGHT_ANIM&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_JUMP
		DB	:_MOVE_IT
		DW	(_MOVE_IT&$FFFF)

;********************************
_MOVE_IT
	DB	CMD_THISACTORSETANIM
		DB	:?_MAN02_RUN_DOWN_ANIM
		DW	(?_MAN02_RUN_DOWN_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$20

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
_GO_AROUND
	DB	CMD_THISACTORSETANIM
		DB	:?_MAN02_RUN_RIGHT_ANIM
		DW	(?_MAN02_RUN_RIGHT_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$08

	DB	CMD_THISACTORSETANIM
		DB	:?_MAN02_RUN_DOWN_ANIM
		DW	(?_MAN02_RUN_DOWN_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$10

	DB	CMD_THISACTORSETANIM
		DB	:?_MAN02_RUN_LEFT_ANIM
		DW	(?_MAN02_RUN_LEFT_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$08

	DB	CMD_THISACTORSETANIM
		DB	:?_MAN02_RUN_DOWN_ANIM
		DW	(?_MAN02_RUN_DOWN_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$18

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_THISACTORSTOP

	DB	CMD_END

;********************************
?_HLDMAZE01_DOOR_LOCKED
	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_XRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$001C)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:?_HLDMAZE01_UNLOCK_DOOR
		DW	(?_HLDMAZE01_UNLOCK_DOOR&$FFFF)

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_WALK_DOWN_ANIM
		DW	(?_HERO_WALK_DOWN_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$08

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_SETTEXT
		DB	:?_HLDMAZE01_TXT2
		DW	(?_HLDMAZE01_TXT2&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$02

	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)

	DB	CMD_END

;********************************
?_HLDMAZE01_UNLOCK_DOOR
	DB	CMD_SETTEXT
		DB	:?_HLDMAZE01_TXT3
		DW	(?_HLDMAZE01_TXT3&$FFFF)

	DB	CMD_WAITEVENTTEXT
		DB	$01

	DB	CMD_COPYTILEBLOCK
		DW	$D000
		DB	$02
		DB	$02
		DW	$D198
		DB	$0C
		DB	$18

	DB	CMD_EXPRXRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$001C)
		DB	EXPR_SUB
		DB	EXPR_XRAMBYTE
		DW	(XRAM_INVENTORY_ITEMS+$001C)&$FFFF
		DB	EXPR_BYTECONST,$01

	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0000)
		DB	$01

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_HLDCELL02
	GLOBAL	?_HLDMAZE03
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	?_END
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?DO_SCREENFX_SWIRL
	GLOBAL	?_BATTLE_FADE_IN
	GLOBAL	BTL_ENEMY_ENGH
	GLOBAL	BTL_ENEMY_ENGL
	GLOBAL	BTL_RUN_FLAG
	GLOBAL	MAP_HLDMAZE01
	GLOBAL	HS_HLDMAZE01
	GLOBAL	TR_HLDMAZE01
	GLOBAL	VRM_HLDMAZE
	GLOBAL	PAL_HLDMAZE
	GLOBAL	PAL_HERO
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST
	GLOBAL	ACTOR00
	GLOBAL	?TRIGGER_AI
	GLOBAL	?_MAN02_STAND_DOWN_ANIM
	GLOBAL	BIT_MAN02
	GLOBAL	?_MAN02_STAND_UP_ANIM
	GLOBAL	?_MAN02_STAND_LEFT_ANIM
	GLOBAL	?_MAN02_STAND_RIGHT_ANIM
	GLOBAL	?_MAN02_RUN_DOWN_ANIM
	GLOBAL	?_MAN02_RUN_RIGHT_ANIM
	GLOBAL	?_MAN02_RUN_LEFT_ANIM
	GLOBAL	XRAM_INVENTORY_ITEMS
	GLOBAL	?ANIM_AI
	GLOBAL	?_HERO_WALK_DOWN_ANIM
	GLOBAL	?_HERO_STAND_UP_ANIM

;********************************
	END
;********************************