;********************************
; CARDSCENE_EQU.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
CARDSCN_BANK			EQU		$04

;********************************
CARDSCN_ARENA_BG		EQU		$9800	; Top Left corner of Card Area (bg0)
CARDSCN_ARENAMENU_BG	EQU		$99A0	; Top Left corner of Card Black Border Area (bg0)
CARDSCN_ARENAVRM		EQU		$9000	; Top Left corner of Card Area (vram)

; tony's creatures ...  <bank 0>
CARDSCN_CARD1BG			EQU		$98E0	; Top Left corner of Card1
CARDSCN_CARD2BG			EQU		$98C5	; Top Left corner of Card2
CARDSCN_CARD3BG			EQU		$98CB	; Top Left corner of Card3
CARDSCN_CARD4BG			EQU		$98F0	; Top Left corner of Card4
; magi's creatures ...  <bank 1>
CARDSCN_CARD5BG			EQU		$9800	; Top Left corner of Card1
CARDSCN_CARD6BG			EQU		$9805	; Top Left corner of Card2
CARDSCN_CARD7BG			EQU		$980B	; Top Left corner of Card2
CARDSCN_CARD8BG			EQU		$9810	; Top Left corner of Card2

;********************************
; tony's creatures ...  <bank 0>
CARDSCN_CARD1VRM		EQU		$9300 	; Top Left corner of Card1
CARDSCN_CARD2VRM		EQU		$9440 	; Top Left corner of Card2
CARDSCN_CARD3VRM		EQU		$9580 	; Top Left corner of Card2
CARDSCN_CARD4VRM		EQU		$96C0 	; Top Left corner of Card2
; magi's creatures ...  <bank 1>
CARDSCN_CARD5VRM		EQU		$9300	; Top Left corner of Card1
CARDSCN_CARD6VRM		EQU		$9440	; Top Left corner of Card2
CARDSCN_CARD7VRM		EQU		$9580	; Top Left corner of Card2
CARDSCN_CARD8VRM		EQU		$96C0	; Top Left corner of Card2

;********************************

BLANK_CARD_TILE			EQU		$F0
;********************************
	END
;********************************
