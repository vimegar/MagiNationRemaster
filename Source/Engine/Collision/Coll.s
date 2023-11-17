;********************************
; COLL_FREEMOVE.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\ENGINE\COLLISION\COLL_TABLE.S
	LIB		SOURCE\ENGINE\COLLISION\COLL_MOVEFUNC.S
	LIB		SOURCE\ENGINE\COLLISION\COLL_FREEMOVE.S
	LIB		SOURCE\ENGINE\COLLISION\COLL_DETECT.S


;********************************
?COLL_INIT
	LD		HL,COLL_MASK

	XOR		A			;A = $00
	LD		(HLI),A

	CPL					;A = $FF
	LD		(HLI),A
	LD		(HLI),A
	
	CPL					;A = $00
	LD		(HLI),A

	CPL					;A = $FF
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A

	RET

;********************************
	END
;********************************