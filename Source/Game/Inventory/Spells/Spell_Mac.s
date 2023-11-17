;********************************
; SPELL_MAC.S
;********************************
;	Author:	Patrick Meehan/Dylan "HeWhoDareNotTouchethAdrian'sStuff" Mayo, Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved
;********************************

;********************************
SPELL_TEMPLATE1		MACRO		name,btl,base,cost,target,max

name&_BTL_PTR	DW		(btl)		; Pointer to the btl function used
name&_BASE_CODE	DW		(base)		; Code for using ITEM_CMD_BASICs
name&_COST		DB		cost	; Energy consumed
name&_TARGET	DB		target	; Targeting mode
name&_MAX		DB		max		; Maximum allowed

	ENDM

;********************************	
SPELL_TEMPLATE2		MACRO		name,rating,cmdelem,useflag,ptr
name&_RATING	DB		rating	; Strength of the command
name&_CMDELEM	DB		cmdelem	; Elemental
name&_USEFLAG	DB		useflag	; Flag for when can be used
name&_PTRSTART	DW		ptr		; Where the ptr starts

	ENDM		
	
;********************************
SPELL_TEMPLATE3		MACRO	name,name1,name2,name3,name4,name5,name6,name7,name8,name9,name10,name11,name12,name13

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
;Text script to run during battle
SPELL_TEMPLATE4	MACRO	name,bscript,mscript,cscript

	GLOBAL		bscript
	GLOBAL		mscript
	GLOBAL		cscript

name&_BSBANK	DB		:bscript	;Bank of the battle script
name&_BSCRIPT	DW		bscript		;Address of the battle script
name&_MSBANK	DB		:mscript	;Bank of the battle script
name&_MSCRIPT	DW		mscript		;Address of the battle script
name&_CSBANK	DB		:cscript	;Bank of the cutscene script
name&_CSCRIPT	DW		cscript		;Address of the cutscene script

	ENDM

;********************************
	END
;********************************
