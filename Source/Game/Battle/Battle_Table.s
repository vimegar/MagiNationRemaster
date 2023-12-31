;********************************
; BATTLE_TABLE.S
;********************************
;	Author:	Patrick Meehan/Dylan "Wheat Cuuuuuuup" Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
BTL_VALID_TARGET_FUNC_TABLE
	DEFW	?BTL_VALID_TARGET_DONTCARE		;BTL_TARGET_ME
	DEFW	?BTL_VALID_TARGET_DONTCARE		;BTL_TARGET_NONE
	DEFW	?BTL_VALID_TARGET_EMPTY			;BTL_TARGET_ALLYEMPTY
	DEFW	?BTL_VALID_TARGET_EMPTY			;BTL_TARGET_ENEMYEMPTY
	DEFW	?BTL_VALID_TARGET_ANYCREAUTRE	;BTL_TARGET_ANYCREATURE
	DEFW	?BTL_VALID_TARGET_ALLYMAGI		;BTL_TARGET_ALLYMAGI
	DEFW	?BTL_VALID_TARGET_ENEMYMAGI		;BTL_TARGET_ENEMYMAGI
	DEFW	?BTL_VALID_TARGET_ENEMYMAGI		;BTL_TARGET_ENEMYMAGI_EVASION
	DEFW	?BTL_VALID_TARGET_DONTCARE		;BTL_TARGET_ANY
	DEFW	?BTL_VALID_TARGET_DONTCARE		;BTL_TARGET_ANY_EVASION
	DEFW	?BTL_VALID_TARGET_ALLENEMY		;BTL_TARGET_ALLENEMY
	DEFW	?BTL_VALID_TARGET_ALLENEMY		;BTL_TARGET_ALLENEMY_MAGI
	DEFW	?BTL_VALID_TARGET_ALLALLY		;BTL_TARGET_ALLALLY
	DEFW	?BTL_VALID_TARGET_DONTCARE		;BTL_TARGET_ALLALLY_ME
	DEFW	?BTL_VALID_TARGET_ALLALLY		;BTL_TARGET_ALLALLY_MAGI
	DEFW	?BTL_VALID_TARGET_DONTCARE		;BTL_TARGET_ALLALLY_MAGI_ME
	DEFW	?BTL_VALID_TARGET_DONTCARE		;BTL_TARGET_ALL
	DEFW	?BTL_VALID_TARGET_DONTCARE		;BTL_TARGET_ALL_ME
	DEFW	?BTL_VALID_TARGET_DONTCARE		;BTL_TARGET_ALL_MAGI
	DEFW	?BTL_VALID_TARGET_DONTCARE		;BTL_TARGET_ALL_MAGI_ME
	DEFW	?BTL_VALID_TARGET_DONTCARE		;BTL_TARGET_DEPENDANT
	
	
BTL_TARGET_FUNC_TABLE
	DEFW	?BTL_TARGET_ME			;BTL_TARGET_ME
	DEFW	?BTL_TARGET_CRASH		;BTL_TARGET_NONE
	DEFW	?BTL_TARGET_EMPTY		;BTL_TARGET_ALLYEMPTY
	DEFW	?BTL_TARGET_EMPTY		;BTL_TARGET_ENEMYEMPTY
	DEFW	?BTL_TARGET_ANY			;BTL_TARGET_ANYCREATURE
	DEFW	?BTL_TARGET_ALLYMAGI	;BTL_TARGET_ALLYMAGI
	DEFW	?BTL_TARGET_ENEMYMAGI	;BTL_TARGET_ENEMYMAGI
	DEFW	?BTL_TARGET_ENEMYMAGI	;BTL_TARGET_ENEMYMAGI_EVASION
	DEFW	?BTL_TARGET_ANY			;BTL_TARGET_ANY
	DEFW	?BTL_TARGET_ANY			;BTL_TARGET_ANY_EVASION
	DEFW	?BTL_TARGET_ALL			;BTL_TARGET_ALLENEMY
	DEFW	?BTL_TARGET_ALL			;BTL_TARGET_ALLENEMY_MAGI
	DEFW	?BTL_TARGET_ALL			;BTL_TARGET_ALLALLY
	DEFW	?BTL_TARGET_ALL			;BTL_TARGET_ALLALLY_ME
	DEFW	?BTL_TARGET_ALL			;BTL_TARGET_ALLALLY_MAGI
	DEFW	?BTL_TARGET_ALL			;BTL_TARGET_ALLALLY_MAGI_ME
	DEFW	?BTL_TARGET_ALL			;BTL_TARGET_ALL
	DEFW	?BTL_TARGET_ALL			;BTL_TARGET_ALL_ME
	DEFW	?BTL_TARGET_ALL			;BTL_TARGET_ALL_MAGI
	DEFW	?BTL_TARGET_ALL			;BTL_TARGET_ALL_MAGI_ME
	DEFW	?BTL_TARGET_CRASH		;BTL_TARGET_DEPENDANT
	
BTL_MENU_FUNC_TABLE
	DEFW	?BTL_TARGET_CRASH		;TOP OF TABLE IS DUMMY
	DEFW	?BTL_MENU_RING			;BTL_CMD_MENU_RING
	DEFW	?BTL_MENU_ITEM			;BTL_CMD_MENU_ITEM
	DEFW	?BTL_MENU_SPELL			;BTL_CMD_MENU_SPELL

;********************************
	END
;********************************
