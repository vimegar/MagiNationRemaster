;********************************
; XRAM_GAMESTATE.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
XRAM01	GROUP	$00
		ORG		$A000

;********************************
XRAM_SAVE_FILE			DS		$02
XRAM_VERIFY0			DS		$10

;********************************
XRAM_LOAD_BANK			DS		$01
XRAM_LOAD_SCRIPT		DS		$02
XRAM_HERO_DOORX			DS		$01
XRAM_HERO_DOORY			DS		$01
XRAM_GAME_SAVED			DS		$01
XRAM_NEWGAME_PLUS		DS		$01

;********************************
XRAM_CLEAR_NEWGAME

XRAM_INVENTORY_RELICS	DS		$00FF
XRAM_INVENTORY_RINGS	DS		$000A	;PTRS TO THE XRAM CREATURES
XRAM_CREATURECOUNT		DS		$01

;********************************
XRAM_CLEAR_NEWGAMEPLUS

XRAM_GAMECOUNT			DS		$02

XRAM_SAVEBITS			DS		$00FF
XRAM_SAVEVARS			DS		$00FF
XRAM_TREASURE			DS		$0080

XRAM_HERO_ABILITY		DS		$01
XRAM_GLYPH_COUNT		DS		$01

XRAM_INVENTORY_ANIMITE	DS		$02		;HOW MUCH MONEY TONY HAS
XRAM_INVENTORY_ITEMS	DS		$00FF
XRAM_INVENTORY_INFUSED	DS		$00FF
XRAM_INVENTORY_SPELLS	DS		$00FF

;********************************
XRAM_CLEAR_END

;********************************
XRAM_PAD				DS		$C000 - XRAM_PAD - $10
XRAM_VERIFY1			DS		$10

;********************************
	END
;********************************