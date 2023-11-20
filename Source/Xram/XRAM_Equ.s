;********************************
; XRAM_EQU.S
;********************************
;	Author:	Dylan "File back again" Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

XRAM_RINGBANK_SIZE			EQU		$D0	;#CREATURES IN XRAM_CREATURES.S

;***********************************
; CREATURE XRAM STRUCTURE OFFSETS
;***********************************
XRAM_CREATURE_ID			EQU		00
XRAM_CREATURE_TYPE			EQU		01
XRAM_CREATURE_LVL			EQU		02
XRAM_CREATURE_EXPH			EQU		03
XRAM_CREATURE_EXPL			EQU		04

XRAM_CREATURE_ENGH			EQU		05
XRAM_CREATURE_ENGL			EQU		06
XRAM_CREATURE_ENGMAXH		EQU		07
XRAM_CREATURE_ENGMAXL		EQU		08
;*******************************************************************
; NOTE:   i rearranged these stats to match the level up stats
XRAM_CREATURE_STR			EQU		09		
XRAM_CREATURE_SKILL			EQU		10		; special attack
XRAM_CREATURE_SPEED			EQU		11
XRAM_CREATURE_DEF			EQU		12
XRAM_CREATURE_RESIST		EQU		13		; special defense
XRAM_CREATURE_TYPE2			EQU		14
XRAM_CREATURE_OTHER2		EQU		15
;*******************************************************************
XRAM_CREATURE_LUCK			EQU		16
XRAM_CREATURE_ENERGYUP		EQU		17
XRAM_CREATURE_ELEMSTRONG	EQU		18
XRAM_CREATURE_ELEMWEAK		EQU		19
XRAM_CREATURE_IMMUNE		EQU		20		; Immune to status ailments
XRAM_CREATURE_STATUS		EQU		21		; Battle status of creature (reset at start)
XRAM_CREATURE_PERMSTAT		EQU		22		; Always have status ailments
XRAM_CREATURE_AI			EQU		23

XRAM_CREATURE_CMD0			EQU		24
XRAM_CREATURE_CMD1			EQU		26
XRAM_CREATURE_CMD2			EQU		28
XRAM_CREATURE_CMD3			EQU		30

XRAM_CREATURE_CMD0LVL		EQU		32
XRAM_CREATURE_CMD1LVL		EQU		33
XRAM_CREATURE_CMD2LVL		EQU		34
XRAM_CREATURE_CMD3LVL		EQU		35
; Equipped by player
XRAM_CREATURE_RELIC0		EQU		36		; OFFSET INTO RELIC TABLE
XRAM_CREATURE_RELIC1		EQU		37
XRAM_CREATURE_OTHER			EQU		38

;********************************
	END
;********************************