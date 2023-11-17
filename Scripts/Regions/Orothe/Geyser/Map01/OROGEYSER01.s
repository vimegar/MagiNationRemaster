;Size:1097
                     
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\OROTHE\GEYSER\MAP01\OROGEYSER01.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_OROGEYSER01_DR_1
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$1F
		DB	$1A
		DB	$0F

	DB	CMD_JUMP
		DB	:?_OROGEYSER05
		DW	(?_OROGEYSER05&$FFFF)

;********************************
?_OROGEYSER01_DR_2
	DB	CMD_HEROTODOOR
		DB	$15
		DB	$05
		DB	$00
		DB	$1F

	DB	CMD_JUMP
		DB	:?_OROGEYSER02
		DW	(?_OROGEYSER02&$FFFF)

;********************************
?_OROGEYSER01_DR_3
	DB	CMD_HEROTODOOR
		DB	$2F
		DB	$00
		DB	$1A
		DB	$0F

	DB	CMD_JUMP
		DB	:?_OROGEYSER03
		DW	(?_OROGEYSER03&$FFFF)

;********************************
?_OROGEYSER01_DR_4
	DB	CMD_HEROTODOOR
		DB	$16
		DB	$06
		DB	$2F
		DB	$00

	DB	CMD_JUMP
		DB	:?_OROGEYSER04
		DW	(?_OROGEYSER04&$FFFF)

;********************************
?_OROGEYSER01_DR_5
	DB	CMD_HEROTODOOR
		DB	$07
		DB	$04
		DB	$2F
		DB	$00

	DB	CMD_JUMP
		DB	:?_OROGEYSER06
		DW	(?_OROGEYSER06&$FFFF)

;********************************
?_OROGEYSER01_DR_6
	DB	CMD_HEROTODOOR
		DB	$28
		DB	$01
		DB	$2F
		DB	$00

	DB	CMD_JUMP
		DB	:?_OROGEYSER07
		DW	(?_OROGEYSER07&$FFFF)

;********************************
?_OROGEYSER01_TR_1
	DB	CMD_TRIGGERALWAYS
		DW	(XRAM_SAVEBITS+$0001)
		DB	$01
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$EF
		DW	$D316

	DB	CMD_LOADSPAREMAP
		DW	(SCR_OROGEYSER01B&$FFFF)
		DB	:SCR_OROGEYSER01B
		DW	(COL_OROGEYSER01B&$FFFF)
		DB	:COL_OROGEYSER01B

	DB	CMD_COPYTILESPARE
		DW	$D345
		DB	$06
		DB	$02
		DW	$D345
		DB	$11
		DB	$15

	DB	CMD_END

;********************************
?_OROGEYSER01_TR_2
	DB	CMD_TRIGGERALWAYS
		DW	(XRAM_SAVEBITS+$0001)
		DB	$02
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$EF
		DW	$D472

	DB	CMD_LOADSPAREMAP
		DW	(SCR_OROGEYSER01B&$FFFF)
		DB	:SCR_OROGEYSER01B
		DW	(COL_OROGEYSER01B&$FFFF)
		DB	:COL_OROGEYSER01B

	DB	CMD_COPYTILESPARE
		DW	$D411
		DB	$01
		DB	$06
		DW	$D411
		DB	$15
		DB	$21

	DB	CMD_END

;********************************
?_OROGEYSER01_TR_3
	DB	CMD_TRIGGERALWAYS
		DW	(XRAM_SAVEBITS+$0001)
		DB	$04
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	$EF
		DW	$D619

	DB	CMD_LOADSPAREMAP
		DW	(SCR_OROGEYSER01B&$FFFF)
		DB	:SCR_OROGEYSER01B
		DW	(COL_OROGEYSER01B&$FFFF)
		DB	:COL_OROGEYSER01B

	DB	CMD_COPYTILESPARE
		DW	$D5B6
		DB	$05
		DB	$02
		DW	$D5B6
		DB	$1E
		DB	$16

	DB	CMD_END

;********************************
?_OROGEYSER01_TR_4
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$001F)
		DB	$04
		DB	INV_TYPE_ITEM
		DB	INV_RUNEOFPOWER
		DW	$D2BC

;********************************
?_OROGEYSER01_TR_5
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$001F)
		DB	$08
		DB	INV_TYPE_ITEM
		DB	INV_MASTER_RUNE
		DW	$D2BE

;********************************
?_OROGEYSER_RNDBAT
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$00
		DB	$00
		DB	$00

	DB	CMD_SCREENWIPE
		DW	(?DO_SCREENFX_SWIRL&$FFFF)
		DB	SONGID_battle

	DB	CMD_JUMPRANDOM
		DB	$07
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
		DB	:_BTL7
		DW	(_BTL7&$FFFF)

;********************************
_BTL1
	DB	CMD_BTLNEW
		DB	OROGEYSER_ARENA1
		DB	MAGI_RND1
		DB	$29
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	YVOHCNA
		DB	$28
		DB	$50
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SHADWKARAK
		DB	$26
		DB	$4C
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	YVOHCNA
		DB	$26
		DB	$4D
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	DRYTEFIEND
		DB	$25
		DB	$4B
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL2
	DB	CMD_BTLNEW
		DB	OROGEYSER_ARENA1
		DB	MAGI_RND1
		DB	$2A
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	DRYTEFIEND
		DB	$2A
		DB	$55
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	GRAX
		DB	$28
		DB	$50
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL3
	DB	CMD_BTLNEW
		DB	OROGEYSER_ARENA1
		DB	MAGI_RND1
		DB	$2A
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SHADWKARAK
		DB	$2A
		DB	$53
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL4
	DB	CMD_BTLNEW
		DB	OROGEYSER_ARENA1
		DB	MAGI_RND1
		DB	$27
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SHADWKARAK
		DB	$26
		DB	$4D
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	YVOHCNA
		DB	$26
		DB	$4C
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL5
	DB	CMD_BTLNEW
		DB	OROGEYSER_ARENA1
		DB	MAGI_RND1
		DB	$28
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SHADWKARAK
		DB	$26
		DB	$4C
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SHADWKARAK
		DB	$25
		DB	$4B
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL6
	DB	CMD_BTLNEW
		DB	OROGEYSER_ARENA1
		DB	MAGI_RND1
		DB	$29
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SHADWKARAK
		DB	$2A
		DB	$54
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	YVOHCNA
		DB	$28
		DB	$50
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	GRAX
		DB	$26
		DB	$4D
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL7
	DB	CMD_BTLNEW
		DB	OROGEYSER_ARENA1
		DB	MAGI_RND1
		DB	$28
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SHADWKARAK
		DB	$29
		DB	$52
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	YVOHCNA
		DB	$28
		DB	$50
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL8
	DB	CMD_BTLNEW
		DB	OROGEYSER_ARENA1
		DB	MAGI_RND1
		DB	$28
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SHADWKARAK
		DB	$28
		DB	$4F
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	YVOHCNA
		DB	$27
		DB	$4C
		DB	$01

	DB	CMD_BTLAUTO

;********************************
?_OROGEYSER_RNDBAT_RAILING
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$00
		DB	$00
		DB	$00

	DB	CMD_SCREENWIPE
		DW	(?DO_SCREENFX_SWIRL&$FFFF)
		DB	SONGID_battle

	DB	CMD_JUMPRANDOM
		DB	$07
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
		DB	:_BTL7
		DW	(_BTL7&$FFFF)

;********************************
_BTL1
	DB	CMD_BTLNEW
		DB	OROGEYSER_ARENA2
		DB	MAGI_RND1
		DB	$29
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	YVOHCNA
		DB	$28
		DB	$50
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SHADWKARAK
		DB	$26
		DB	$4C
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	YVOHCNA
		DB	$26
		DB	$4D
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	DRYTEFIEND
		DB	$25
		DB	$4B
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL2
	DB	CMD_BTLNEW
		DB	OROGEYSER_ARENA2
		DB	MAGI_RND1
		DB	$2A
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	DRYTEFIEND
		DB	$2A
		DB	$55
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	GRAX
		DB	$28
		DB	$50
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL3
	DB	CMD_BTLNEW
		DB	OROGEYSER_ARENA2
		DB	MAGI_RND1
		DB	$2A
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SHADWKARAK
		DB	$2A
		DB	$53
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL4
	DB	CMD_BTLNEW
		DB	OROGEYSER_ARENA2
		DB	MAGI_RND1
		DB	$27
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SHADWKARAK
		DB	$26
		DB	$4D
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	YVOHCNA
		DB	$26
		DB	$4C
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL5
	DB	CMD_BTLNEW
		DB	OROGEYSER_ARENA2
		DB	MAGI_RND1
		DB	$28
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SHADWKARAK
		DB	$26
		DB	$4C
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SHADWKARAK
		DB	$25
		DB	$4B
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL6
	DB	CMD_BTLNEW
		DB	OROGEYSER_ARENA2
		DB	MAGI_RND1
		DB	$29
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SHADWKARAK
		DB	$2A
		DB	$54
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	YVOHCNA
		DB	$28
		DB	$50
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	GRAX
		DB	$26
		DB	$4D
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL7
	DB	CMD_BTLNEW
		DB	OROGEYSER_ARENA2
		DB	MAGI_RND1
		DB	$28
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SHADWKARAK
		DB	$29
		DB	$52
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	YVOHCNA
		DB	$28
		DB	$50
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL8
	DB	CMD_BTLNEW
		DB	OROGEYSER_ARENA2
		DB	MAGI_RND1
		DB	$28
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SHADWKARAK
		DB	$28
		DB	$4F
		DB	$01

	DB	CMD_BTLNEXTTURN

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	YVOHCNA
		DB	$27
		DB	$4C
		DB	$01

	DB	CMD_BTLAUTO

;********************************
?_OROGEYSER_WARRADABAT
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$00
		DB	$00
		DB	$00

	DB	CMD_SCREENWIPE
		DW	(?DO_SCREENFX_SWIRL&$FFFF)
		DB	SONGID_boss

	DB	CMD_BTLNEW
		DB	OROGEYSER_ARENA2
		DB	WARRADA
		DB	$2A
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLNEXTTURN

	DB	CMD_SETWRAMBYTE
		DW	(BTL_ENEMY_ENGH+$0000)
		DB	WRAM_BATTLE
		DB	$02

	DB	CMD_SETWRAMBYTE
		DW	(BTL_ENEMY_ENGL+$0000)
		DB	WRAM_BATTLE
		DB	$8A


	DB	CMD_TEXTICON
		DW	ICON_WARRADA

	DB	CMD_TEXTWRITE
		DB	(?AU+$07),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$0F),(?AL+$08),(?AL+$13),(?AL+$08),(?AL+$05),(?AL+$14),(?AL+$0B),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SHRYQUE
		DB	$23
		DB	$5A
		DB	$00

	DB	CMD_BTLNEXTTURN

	DB	CMD_SETSCROLL
		DB	:?_WARRADA_MODE_CREATURE
		DW	(?_WARRADA_MODE_CREATURE&$FFFF)

	DB	CMD_WAITANYEVENTSCROLL

	DB	CMD_BTLNEXTTURN

	DB	CMD_SETSCROLL
		DB	:?_WARRADA_MODE_CREATURE
		DW	(?_WARRADA_MODE_CREATURE&$FFFF)

	DB	CMD_WAITANYEVENTSCROLL

	DB	CMD_BTLNEXTTURN

	DB	CMD_SETSCROLL
		DB	:?_WARRADA_MODE1
		DW	(?_WARRADA_MODE1&$FFFF)

	DB	CMD_WAITANYEVENTSCROLL

	DB	CMD_BTLNEXTTURN

;********************************
_SARBIL
	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SARBIL
		DB	$2A
		DB	$82
		DB	$00

	DB	CMD_IF
		DB	EXPR_WBANK
		DB	WRAM_BATTLE
		DB	EXPR_EQU
		DB	EXPR_XRAMBYTE
		DW	(BTL_CMD_VALID+$0000)&$FFFF
		DB	EXPR_BYTECONST,$00
		DB	:_NO_SARBIL
		DW	(_NO_SARBIL&$FFFF)


	DB	CMD_TEXTICON
		DW	ICON_WARRADA

	DB	CMD_TEXTWRITE
		DB	(?AU+$00),(?AL+$07),(?AL+$07),?COMM,?SPCE,(?AU+$12),(?AL+$00),(?AL+$11),(?AL+$01),(?AL+$08),(?AL+$0B),?COMM,?WAIT
		DB	(?AL+$0F),(?AL+$0B),(?AL+$04),(?AL+$00),(?AL+$12),(?AL+$04),?SPCE,(?AL+$12),(?AL+$07),(?AL+$0E),(?AL+$16),?SPCE,(?AL+$0E),(?AL+$14),(?AL+$11),?WAIT
		DB	(?AL+$06),(?AL+$14),(?AL+$04),(?AL+$12),(?AL+$13),?SPCE,(?AL+$13),(?AL+$07),(?AL+$04),?SPCE,(?AL+$03),(?AL+$0E),(?AL+$0E),(?AL+$11),?PERD,?WAIT
		DB	?EOF

	DB	CMD_TEXTCLOSE

	DB	CMD_BTLNEXTTURN

	DB	CMD_JUMP
		DB	:_ENDLOOP
		DW	(_ENDLOOP&$FFFF)

;********************************
_NO_SARBIL
	DB	CMD_BTLUSEITEM
		DB	BTL_ID_MAGI
		DW	(ITEM_BALOO_ROOT&$FFFF)
		DB	BTLSCR_ME

	DB	CMD_BTLNEXTTURN

	DB	CMD_JUMP
		DB	:_SARBIL
		DW	(_SARBIL&$FFFF)

;********************************
_ENDLOOP
	DB	CMD_SETSCROLL
		DB	:?_WARRADA_MODESARBIL
		DW	(?_WARRADA_MODESARBIL&$FFFF)

	DB	CMD_WAITANYEVENTSCROLL

	DB	CMD_BTLNEXTTURN

	DB	CMD_JUMP
		DB	:_ENDLOOP
		DW	(_ENDLOOP&$FFFF)

;********************************
?_WARRADA_MODE_CREATURE
	DB	CMD_JUMPRANDOM
		DB	$02
		DB	:?_WARRADA11
		DW	(?_WARRADA11&$FFFF)
		DB	:?_WARRADA12
		DW	(?_WARRADA12&$FFFF)

;********************************
?_WARRADA_MODE1
	DB	CMD_JUMPRANDOM
		DB	$06
		DB	:?_WARRADA11
		DW	(?_WARRADA11&$FFFF)
		DB	:?_WARRADA11
		DW	(?_WARRADA11&$FFFF)
		DB	:?_WARRADA12
		DW	(?_WARRADA12&$FFFF)
		DB	:?_WARRADA12
		DW	(?_WARRADA12&$FFFF)
		DB	:?_WARRADA13
		DW	(?_WARRADA13&$FFFF)
		DB	:?_WARRADA14
		DW	(?_WARRADA14&$FFFF)

;********************************
?_WARRADA_MODESARBIL
	DB	CMD_JUMPRANDOM
		DB	$09
		DB	:?_WARRADA11
		DW	(?_WARRADA11&$FFFF)
		DB	:?_WARRADA11
		DW	(?_WARRADA11&$FFFF)
		DB	:?_WARRADA12
		DW	(?_WARRADA12&$FFFF)
		DB	:?_WARRADA12
		DW	(?_WARRADA12&$FFFF)
		DB	:?_WARRADA13
		DW	(?_WARRADA13&$FFFF)
		DB	:?_WARRADA14
		DW	(?_WARRADA14&$FFFF)
		DB	:?_WARRADA14
		DW	(?_WARRADA14&$FFFF)
		DB	:?_WARRADA15
		DW	(?_WARRADA15&$FFFF)
		DB	:?_WARRADA15
		DW	(?_WARRADA15&$FFFF)

;********************************
?_WARRADA11
	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	KLETCH
		DB	$28
		DB	$5A
		DB	$00

	DB	CMD_SETANYEVENTSCROLL

	DB	CMD_END

;********************************
?_WARRADA12
	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SPINDLE
		DB	$28
		DB	$64
		DB	$00

	DB	CMD_SETANYEVENTSCROLL

	DB	CMD_END

;********************************
?_WARRADA13
	DB	CMD_BTLUSEITEM
		DB	BTL_ID_MAGI
		DW	(ITEM_BALOO_ROOT&$FFFF)
		DB	BTLSCR_ENEMYWEAKEST_PERCENT

	DB	CMD_SETANYEVENTSCROLL

	DB	CMD_END

;********************************
?_WARRADA14
	DB	CMD_BTLCASTSPELL
		DB	BTL_ID_MAGI
		DW	(SPELL_FLOOD&$FFFF)
		DB	BTLSCR_ALLYSTRONGEST_PERCENT

	DB	CMD_SETANYEVENTSCROLL

	DB	CMD_END

;********************************
?_WARRADA15
	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	SARBIL
		DB	$2A
		DB	$64
		DB	$00

	DB	CMD_SETANYEVENTSCROLL

	DB	CMD_END

;********************************
?_OROGEYSER01
	DB	CMD_SCENENEW

	DB	CMD_LOADMAP
		DW	(MAP_OROGEYSER01&$FFFF)
		DB	:MAP_OROGEYSER01

	DB	CMD_LOADHOTSPOTS
		DW	(HS_OROGEYSER01&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_OROGEYSER01&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_OROGEYSER_RNDBAT
		DW	(?_OROGEYSER_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_OROGEYSER01
		DW	(?_OROGEYSER01&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_SWITCH
		DB	EXPR_XRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)&$FFFF
		DB	:_SKIP
		DW	$0000
		DW	(_SKIP&$FFFF)
		DB	:_ONE
		DW	$0001
		DW	(_ONE&$FFFF)
		DB	:_TWO
		DW	$0002
		DW	(_TWO&$FFFF)
		DB	:_THREE
		DW	$0003
		DW	(_THREE&$FFFF)
		DB	:_FOUR
		DW	$0004
		DW	(_FOUR&$FFFF)
		DB	:_FIVE
		DW	$0005
		DW	(_FIVE&$FFFF)
		DB	:_SIX
		DW	$0006
		DW	(_SIX&$FFFF)
		DB	$FF

;********************************
_ONE
	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$18
		DB	$12
		DW	$D378
		DB	$00
		DB	:?_OROGEYSER_TONY_FALLING
		DW	(?_OROGEYSER_TONY_FALLING&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_SETCAMERA
		DB	$18
		DB	$16

	DB	CMD_JUMPLOCAL
		DW	(_END&$FFFF)

;********************************
_TWO
	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$1C
		DB	$1F
		DW	$D5EC
		DB	$00
		DB	:?_OROGEYSER_TONY_FALLING
		DW	(?_OROGEYSER_TONY_FALLING&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_SETCAMERA
		DB	$1C
		DB	$23

	DB	CMD_JUMPLOCAL
		DW	(_END&$FFFF)

;********************************
_THREE
	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$12
		DB	$1B
		DW	$D522
		DB	$00
		DB	:?_OROGEYSER_TONY_FALLING
		DW	(?_OROGEYSER_TONY_FALLING&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_SETCAMERA
		DB	$12
		DB	$1F

	DB	CMD_JUMPLOCAL
		DW	(_END&$FFFF)

;********************************
_FOUR
	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$12
		DB	$04
		DW	$D0D2
		DB	$00
		DB	:?_OROGEYSER_TONY_FALLING
		DW	(?_OROGEYSER_TONY_FALLING&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_SETCAMERA
		DB	$12
		DB	$08

	DB	CMD_JUMPLOCAL
		DW	(_END&$FFFF)

;********************************
_FIVE
	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$1D
		DB	$0B
		DW	$D22D
		DB	$00
		DB	:?_OROGEYSER_TONY_FALLING
		DW	(?_OROGEYSER_TONY_FALLING&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_SETCAMERA
		DB	$1D
		DB	$0F

	DB	CMD_JUMPLOCAL
		DW	(_END&$FFFF)

;********************************
_SIX
	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$26
		DB	$0C
		DW	$D266
		DB	$00
		DB	:?_OROGEYSER_TONY_FALLING
		DW	(?_OROGEYSER_TONY_FALLING&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_SETCAMERA
		DB	$26
		DB	$12

	DB	CMD_JUMPLOCAL
		DW	(_END&$FFFF)

;********************************
_SKIP
	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$00
		DB	$00
		DW	$D000
		DB	$00
		DB	:?_HERO_STAND_LEFT_ANIM
		DW	(?_HERO_STAND_LEFT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

;********************************
_END
	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$0000)
		DB	$00

	DB	CMD_SCENEREADY

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_END

;********************************
?_OROGEYSER_TONY_FALLING
	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_FALLING_GOOFILY_3
		DW	(?_HERO_FALLING_GOOFILY_3&$FFFF)
		DB	$10
		DB	$00

	DB	CMD_THISACTORSETANIMSCROLL
		DB	:?_HERO_FALLING_GOOFILY_3
		DW	(?_HERO_FALLING_GOOFILY_3&$FFFF)
		DB	$10
		DB	$00
		DB	$03
		DB	$00

	DB	CMD_THISACTORSETANIMDELAY
		DB	:?_HERO_SLOSHED_LEFT
		DW	(?_HERO_SLOSHED_LEFT&$FFFF)
		DB	$20
		DB	$00

	DB	CMD_SETSCROLL
		DB	:_BLORG
		DW	(_BLORG&$FFFF)

	DB	CMD_END

;********************************
_BLORG
	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_OROGEYSER05
	GLOBAL	?_OROGEYSER02
	GLOBAL	?_OROGEYSER03
	GLOBAL	?_OROGEYSER04
	GLOBAL	?_OROGEYSER06
	GLOBAL	?_OROGEYSER07
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	?_END
	GLOBAL	SCR_OROGEYSER01B
	GLOBAL	COL_OROGEYSER01B
	GLOBAL	XRAM_TREASURE
	GLOBAL	?DO_SCREENFX_SWIRL
	GLOBAL	?_BATTLE_FADE_IN
	GLOBAL	BTL_ENEMY_ENGH
	GLOBAL	BTL_ENEMY_ENGL
	GLOBAL	BTL_CMD_VALID
	GLOBAL	ITEM_BALOO_ROOT
	GLOBAL	SPELL_FLOOD
	GLOBAL	MAP_OROGEYSER01
	GLOBAL	HS_OROGEYSER01
	GLOBAL	TR_OROGEYSER01
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	?ANIM_AI
	GLOBAL	?_DONT_TALK
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STAND_LEFT_ANIM
	GLOBAL	?_HERO_FALLING_GOOFILY_3
	GLOBAL	?_HERO_SLOSHED_LEFT
	GLOBAL	?_HERO_STAND_DOWN_ANIM

;********************************
	END
;********************************