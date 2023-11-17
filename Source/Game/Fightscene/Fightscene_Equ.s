;********************************
; FIGHTSCENE_EQU.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
FIGHTSCN_BANK			EQU		$04
;********************************
FIGHTSCN_LYC0			EQU		$1F		; Scratch area above creatures
FIGHTSCN_LYC1			EQU		$71		; Scratch area below creatures

;********************************
FIGHTSCN_BORD0BG		EQU		$9800	; Top layer of parallax
FIGHTSCN_BORD1BG		EQU		$9880   ; Bottom layer of parallax
FIGHTSCN_POSTER0BG		EQU		$99E0   ; Creature on left, 15 8x8 tiles down
FIGHTSCN_POSTER1BG		EQU		$9C00	; Creature on right (in window), 0 8x8 tiles down

;********************************
FIGHTSCN_CLEAR0BG		EQU		$9900   ; we clear this BG area (to allow scrolling)
FIGHTSCN_CLEAR1BG		EQU		$9C00   ; we clear this BG area (to allow scrolling)
;this is to fix the arena window from previous text menu box
FIGHTSCN_CLEARFIX1BG	EQU		$9D40   


;********************************
FIGHTSCN_BORD0VRM		EQU		$8800	; Top layer of parallax
FIGHTSCN_BORD1VRM		EQU		$8C00	; Bottom layer of parallax
FIGHTSCN_POSTER0VRM		EQU		$9000	; Creature on left
FIGHTSCN_POSTER1VRM		EQU		$9000	; Creature on right (in window) 

;********************************
FIGHTSCN_BORDY1			EQU		$B0     ; Bottom layer of parallax

;********************************
FIGHTSCN_WY_INIT		EQU		$20
FIGHTSCN_SCY_INIT		EQU		$58	    ; Scroll down to reveal creature 0

;********************************
FIGHTFX_PAN_LEFT		EQU		$00
FIGHTFX_PAN_RIGHT		EQU		$01
;********************************

;******************************** 
GFX_BIT					EQU		0
GFX_BIT_BANK			EQU		2
GFX_BG					EQU		3
GFX_BG_BANK				EQU		5
GFX_BG_WIDTH			EQU		6
GFX_BG_HEIGHT			EQU		7
GFX_BG_PAL				EQU		8
GFX_BG_PAL_BANK			EQU		10

FTS_LEFT				EQU		0
FTS_RIGHT				EQU		1

;********************************
	END
;********************************
