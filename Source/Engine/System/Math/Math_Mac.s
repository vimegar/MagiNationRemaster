;********************************
; MATH_MAC.S
;********************************
;	Author:	Patrick Meehan/Dylan "ExoByte" Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved


;*****************************
RANDOM4		MACRO
	LD			C,$03
	CALL		?RANDOM
	ENDM

;*****************************
RANDOM8		MACRO
	LD			C,$07
	CALL		?RANDOM
	ENDM

;*****************************
RANDOM16	MACRO
	LD			C,$0F
	CALL		?RANDOM
	ENDM

;*****************************
RANDOM255	MACRO
	LD			C,$FF
	CALL		?RANDOM
	ENDM

;*****************************
; A:	<--Random value
; E:	Is molested
RANDVAL		MACRO	scratch

; ?RANDVAL is broken and doesnt produce a proper distribution. for now we just replace this with a better 0-255 RNG
;	CALL	?RANDVAL
	CALL    ?RANDOM_NOMASK

	ENDM
	
;********************************
;A IS MOLESTED
SLA16		MACRO	rh,rl,num
	
	LD		A,num			;2
	
;_LABEL
	SLA		rl				;2
	RL		rh				;2
	DEC		A				;1
	
;JR NZ,_LABEL
	DB		%00100000		;3/2
	DB		%11111001
	
	ENDM	
			
;********************************
;A IS MOLESTED
SRL16		MACRO	rh,rl,num
	
	LD		A,num			;2
	
;_LABEL
	SRL		rh				;2
	RR		rl				;2
	DEC		A				;1
	
;JR NZ,_LABEL
	DB		%00100000		;3/2
	DB		%11111001
	
	ENDM	

;********************************
;rhrl <- (-rhrl)
;A IS MOLESTED
TWOS_COMP	MACRO	rh,rl
	LD		A,rl
	CPL
	LD		rl,A
	LD		A,rh
	CPL
	LD		rh,a
	INC		rh&rl

	ENDM

;********************************
	END
;********************************