;********************************
; SPELL_EQU.S
;********************************
;	Author:	Patrick Meehan/Dylan "MyCodeNeverBreaks" Mayo/Erik Hutchinson
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

;********************************
;TABLE EQUS

INV_BLANK_SPELL				EQU		$00

;Naroom
INV_LEAF_CUT					EQU		$01
INV_GROW						EQU		$02

;Underneath
INV_BURROW						EQU		$03
INV_CAVE_IN						EQU		$04
INV_THUNDERQUAKE				EQU		$05

;Cald
INV_FIREBALL					EQU		$06
INV_FLAME_GEYSER				EQU		$07

;Orothe
INV_ENTANGLE					EQU		$08
INV_TIDAL_WAVE					EQU		$09
INV_DISPELX						EQU		$0A

;Arderial
INV_UPDRAFT						EQU		$0B
INV_LIGHTNING					EQU		$0C

;for the bad guys
;------------------------
INV_CONDEMN						EQU		$0D
INV_SINGULARITY					EQU		$0E
INV_JUDGE						EQU		$0F
INV_JURY						EQU		$10
INV_EXECUTIONER					EQU		$11
INV_FLOOD						EQU		$12
INV_CUNNING_BLOW				EQU		$13

;for me to poop on
;--------------------------

;********************************
SPELL_SIZE						EQU		34
SPELL_NAME_OFFSET				EQU		12
SPELL_NAME_SIZE					EQU		13
SPELL_DAMAGE_OFFSET				EQU		2
SPELL_COST_OFFSET				EQU		4
SPELL_FUNC_BANK					EQU		7
SPELL_BTL_SCRIPT_BANK_OFFSET	EQU		25
SPELL_BTL_SCRIPT_FUNC_OFFSET	EQU		26
SPELL_MAP_SCRIPT_BANK_OFFSET	EQU		28
SPELL_MAP_SCRIPT_FUNC_OFFSET	EQU		29
SPELL_CUT_SCRIPT_BANK_OFFSET	EQU		31
SPELL_CUT_SCRIPT_FUNC_OFFSET	EQU		32


;********************************
	END
;********************************
