;********************************
; PALETTE_EQU.S
;********************************
;	Author:	Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

CREATURE0_PAL			EQU		0
CREATURE1_PAL			EQU		1
ARENA_PAL				EQU		2

PALFX_WHITE				EQU		0
PALFX_BLACK				EQU		1
PALFX_FIRE				EQU		2
PALFX_ICE				EQU		3

COMBO_R_B				EQU		1
COMBO_B_G				EQU		2
COMBO_R_G				EQU		3
COMBO_R_G_B				EQU		4

CYCLE_LAST2				EQU		2
CYCLE_LAST3				EQU		3
CYCLE_LAST4				EQU		4

FADE_SPEED1				EQU		1
FADE_SPEED2				EQU		2
FADE_SPEED3				EQU		3
FADE_SPEED4				EQU		4

; SCRIPT PALETTE DELAY
DELAY_COUNT0			EQU		$00
DELAY_COUNT1			EQU		$40
DELAY_COUNT2			EQU		$80
DELAY_COUNT3			EQU		$C0
DELAY_MASK				EQU		$C0
FRAMECOUNT_MASK			EQU		$3F

ANIM_PAL_BUFFER_OFFSET	EQU		128
;********************************

;********************************
	END
;********************************