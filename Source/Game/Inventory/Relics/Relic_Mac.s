;********************************
; RELIC_MAC.S
;********************************
;	Author:	Patrick Meehan/Dylan "HeWhoDareNotTouchethAdrian'sStuff" Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
RELIC_RAISE_ENERGY	MACRO		amt

	LD		A,(BTL_TARGET_ENGMAXH)
	LD		H,A
	LD		A,(BTL_TARGET_ENGMAXL)
	LD		L,A
	LD		C,amt
	LD		B,0
	ADD		HL,BC
	LD		A,H
	LD		(BTL_TARGET_ENGMAXH),A
	LD		(BTL_TARGET_ENGH),A
	LD		A,L
	LD		(BTL_TARGET_ENGMAXL),A
	LD		(BTL_TARGET_ENGL),A

	ENDM


;********************************
RELIC_SET_STRONG	MACRO		elem

	LD		HL,BTL_TARGET_ELEMSTRONG
	LD		A,elem
	OR		(HL)
	LD		(HL),A

	ENDM
	
;********************************
RELIC_SET_WEAK	MACRO		elem

	LD		HL,BTL_TARGET_ELEMWEAK
	LD		A,elem
	OR		(HL)
	LD		(HL),A

	ENDM
	
;********************************
RELIC_SET_PERM	MACRO		status

	LD		HL,BTL_TARGET_PERMSTAT
	LD		A,status
	OR		(HL)
	LD		(HL),A

	ENDM
	
;********************************
RELIC_SET_IMMUNE	MACRO		status

	LD		HL,BTL_TARGET_IMMUNE
	LD		A,status
	OR		(HL)
	LD		(HL),A

	ENDM
	

	



;********************************
RELIC_TEMPLATE1	MACRO	name,modCmd,modStats,xtra
name&_MOD_CMD		DW		(modCmd)		; Function to modify CREATUR0's cmd		--Called when creature picks command
name&_MOD_STATS		DW		(modStats)	; Function to modify CREATURE0's stats		--Called when creature is summoned	
name&_XTRA			DW		(xtra)		; Function to do nasty stuff to CREATURE1	--Called during ?BATTLE_ATK_WRAPPER

	ENDM
	
;********************************
RELIC_TEMPLATE2	MACRO	name,name1,name2,name3,name4,name5,name6,name7,name8,name9,name10,name11,name12,name13

name&_NAME1		DB		name1	; 1ST name char
name&_NAME2		DB		name2	; 2ND name char
name&_NAME3		DB		name3	; 3RD name char
name&_NAME4		DB		name4	; 4TH name char
name&_NAME5		DB		name5	; 5TH name char
name&_NAME6		DB		name6	; 6TH name char
name&_NAME7		DB		name7	; 7TH name char
name&_NAME8		DB		name8	; 8TH name char
name&_NAME9		DB		name9	; 9TH name char
name&_NAME10	DB		name10	; 10TH name char
name&_NAME11	DB		name11	; 11TH name char
name&_NAME12	DB		name12	; 12TH name char
name&_NAME13	DB		name13	; 13TH name char
	ENDM


;********************************
	END
;********************************
