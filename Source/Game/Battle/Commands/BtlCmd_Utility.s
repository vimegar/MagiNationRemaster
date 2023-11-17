;********************************
; BTLCMD_UTILITY.S
;********************************
;	Author:	Patrick Meehan/Dylan "Ab-so-fucking-lutly clever" Mayo,Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved
;********************************


;********************************
; 	GENERIC UTILITY FUNCTIONS
;********************************
?HALF_LIFE_BTL_TARGET
	GET_CREATURE_WORD	BTL_TARGET, CREATURE_ENGH
	; now that we have ENERGY 16-bit val in HL
	; we can do whatever...

	SRL			H
	RR			L
	
	LD			A,L
	CP			H
	JR			NZ,_SET_LIFE
	CP			0
	JR			NZ,_SET_LIFE
	LD			L,1
		
_SET_LIFE	
	; then we can save it back
	SET_CREATURE_WORD
	RET

?SWAP_ATTACK_DEFENSE_STAT
	; SWAP ATTACK and DEFENSE (demonstrates the operation order is stack-based)
	GET_CREATURE_BYTE	BTL_TARGET, CREATURE_STR
	LD			C,A		
	GET_CREATURE_BYTE	BTL_TARGET, CREATURE_DEF
	LD			B,A
	
	;the last GET_CREATURE_BYTE was for DEF, so put ATK in A, and store it
	LD			A,C
	SET_CREATURE_BYTE
	LD			A,B
	SET_CREATURE_BYTE
	RET
	
?INC_ATTACK_12_PERECENT
	RAISE_STAT_BY_PERCENT_SCALAR	BTL_TARGET, CREATURE_STR, 4, MAX_STR_STAT_BOUNDARY				
	RET

?DEC_ATTACK_12_PERECENT
	LOWER_STAT_BY_PERCENT_SCALAR	BTL_TARGET, CREATURE_STR, 4
	RET
	
;********************************
	END
;********************************