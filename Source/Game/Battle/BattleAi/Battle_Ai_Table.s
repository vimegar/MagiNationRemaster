;********************************
; BATTLE_AI_TABLE.S
;********************************
;	Author:	Dylan "ExoByte" Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved
;********************************


BTL_AI_TABLE
;	DEFW	(?BTL_AI_LOGIC_RND	   		& $FFFF)
	DEFW	(?BTL_AI_DEBUG_CREATURE		& $FFFF)
;	DEFW	(?BTL_AI_DEBUG_MAGI			& $FFFF)
	DEFW	(?BTL_AI_DEBUG_RND1			& $FFFF)
	DEFW	(?BTL_AI_DEBUG_RND1			& $FFFF)
	DEFW	(?BTL_AI_LOGIC_RND	   		& $FFFF)
	
BTL_AI_TARGET_TABLE
	DEFW	?BTL_AI_TENEMYWEAK_P
	DEFW	?BTL_AI_TENEMYSTRONG_P
	DEFW	?BTL_AI_TENEMYMYWEAK_A		
	DEFW	?BTL_AI_TENEMYSTRONG_A		
	DEFW	?BTL_AI_TENEMY_R					
	DEFW	?BTL_AI_TME						
	DEFW	?BTL_AI_TALLYWEAK_P		
	DEFW	?BTL_AI_TALLYSTRONG_P	
	DEFW	?BTL_AI_TALLYWEAK_A	
	DEFW	?BTL_AI_TALLYSTRONG_A	
	DEFW	?BTL_AI_TALLY_R				
	DEFW	?BTL_AI_TTONY_ALWAYS				
	DEFW	?BTL_AI_TTONY_IF_UNBLOCKED	

;********************************
	END
;********************************