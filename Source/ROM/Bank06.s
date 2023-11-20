;********************************
; BANK06.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
BANK06	GROUP	$06			; Specify bank group.
		ORG		$4000
		
	BINSET		$0000
BIT_FONT	LIBBIN		SOURCE\SYSTEMDATA\BITMAPS\BIT_FONT.BIN
BIT_DIGITS	LIBBIN		SOURCE\SYSTEMDATA\BITMAPS\BIT_DIGITS.BIN
BIT_BORDER	LIBBIN		SOURCE\SYSTEMDATA\BITMAPS\BIT_BORDER.BIN		
		LIB			SOURCE\GAME\MENU\MENU_06.S
		BINSET		$0000
BIT_RELIC1	LIBBIN		SOURCE\SYSTEMDATA\BITMAPS\RELIC1.BIN
BIT_RELIC2	LIBBIN		SOURCE\SYSTEMDATA\BITMAPS\RELIC2.BIN
BIT_RELIC3	LIBBIN		SOURCE\SYSTEMDATA\BITMAPS\RELIC3.BIN
BIT_RELIC4	LIBBIN		SOURCE\SYSTEMDATA\BITMAPS\RELIC4.BIN
BIT_RELIC5	LIBBIN		SOURCE\SYSTEMDATA\BITMAPS\RELIC5.BIN
		
BIT_STREN	LIBBIN		SOURCE\SYSTEMDATA\BITMAPS\BIT_STRENGTH.BIN		
BIT_DEFENSE	LIBBIN		SOURCE\SYSTEMDATA\BITMAPS\BIT_DEFENSE.BIN
BIT_SPEED	LIBBIN		SOURCE\SYSTEMDATA\BITMAPS\BIT_SPEED.BIN
BIT_ATTACK	LIBBIN		SOURCE\SYSTEMDATA\BITMAPS\BIT_ATTACK.BIN
BIT_RESIST	LIBBIN		SOURCE\SYSTEMDATA\BITMAPS\BIT_RESIST.BIN
BIT_LUCK	LIBBIN		SOURCE\SYSTEMDATA\BITMAPS\BIT_LUCK.BIN
BIT_LEVEL	LIBBIN		SOURCE\SYSTEMDATA\BITMAPS\BIT_LEVEL.BIN
BIT_EXP		LIBBIN		SOURCE\SYSTEMDATA\BITMAPS\BIT_EXPERIENCE.BIN
BIT_MENUGLYPH	LIBBIN		SOURCE\SYSTEMDATA\BITMAPS\BIT_GLYPH.BIN


;********************************
	END
;********************************