;********************************
; CARDSCENE_VFUNC.S
;********************************
;	Author:	Patrick Meehan,EmG
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************

;*********************************
; (CARDSCN_PAL_SLOT)  :  card slot to go into (0..7)
; (CARDSCN_PAL_OFFSET) : COLOR offset to add to
; output:
?VBLANK_SET_CARD_PALETTE
	LD			A,1
	LD			(VBK),A

	LD		A,(CARDSCN_PAL_SLOT)
_CARD1
	CP		0
	JP		NZ,_CARD2
	XCALL	?SET_CARD1_PALETTE
	JP		_RET
_CARD2	
	CP		1
	JP		NZ,_CARD3
	XCALL	?SET_CARD2_PALETTE
	JP		_RET
_CARD3	
	CP		2
	JP		NZ,_CARD4
	XCALL	?SET_CARD3_PALETTE
	JP		_RET
_CARD4	
	CP		3
	JP		NZ,_CARD5
	XCALL	?SET_CARD4_PALETTE
	JP		_RET	
_CARD5	
	CP		4
	JP		NZ,_CARD6
	XCALL	?SET_CARD5_PALETTE
	JP		_RET
_CARD6	
	CP		5
	JP		NZ,_CARD7
	XCALL	?SET_CARD6_PALETTE
	JP		_RET		
_CARD7	
	CP		6
	JP		NZ,_CARD8
	XCALL	?SET_CARD7_PALETTE
	JP		_RET		
_CARD8	
	;ELSE..	7
	XCALL	?SET_CARD8_PALETTE
_RET	
	XCALL		?VBLANK_UPDATE_PALETTE_BG
	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE
	RET	

;********************************
	END
;********************************