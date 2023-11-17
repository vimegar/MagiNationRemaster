;********************************
; COLL_MAC.S
;********************************
;	Author:	Patrick Meehan/Dylan ExoByte Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
COLL_DETECT		MACRO

		CALL_FOREIGN	?COLL_DETECT
		
		ENDM

;********************************
COLL_FREEMOVE	MACRO
		
		CALL_FOREIGN	?COLL_FREEMOVE
		
		ENDM

;********************************
COLL_INIT		MACRO
		XCALL			?COLL_INIT
		ENDM

;********************************
	END
;********************************