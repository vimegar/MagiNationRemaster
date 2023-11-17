;********************************
; BTLCMD_STAT.S
;********************************
;	Author:	Patrick Meehan/Dylan "Ab-so-fucking-lutly clever" Mayo,Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved
		
;*********************************
; INCREMENT A "CREATURE" STRUCTS' EXP 
; HL = CREATURE_BTL POINTER
; BC = INCREMENT DELTA
?INCREMENT_CREATURE_EXP
	; get xp pointer
	LD			DE,CREATURE_EXPH
	ADD			HL,DE
	PUSH		HL                      ;this is xp pointer
	; put (contents of HL -16bit-) into HL
	LD			A,(HLI)
	LD			L,(HL)
	LD			H,A
	; add by increment delta
	ADD			HL,BC
	; store the new xp back into CREATURE_BTL's structure
	LD			A,H
	LD			C,L
	POP			HL						;get the back xp pointer
	LD			(HLI),A	
	LD			(HL),C		
	RET
		
;**********************************
; INCREMENT A "MAGI" STRUCTS' ENERGY 
; HL = CREATURE_BTL POINTER
; DE = INCREMENT DELTA
?INCREMENT_MAGI_ENERGY	
	PUSH		HL						; save base pointer
	; get energy stat pointer
	LD			BC,CREATURE_ENGMAXH
	ADD			HL,BC
	PUSH		HL                      ;this is energy_stat pointer
	
	; put (contents of HL -16bit-) into HL
	;    also ADD the incremental delta
	LD			A,(HLI)
	LD			L,(HL)
	LD			H,A
	ADD			HL,DE
    
    ; boundary check the result
	LD			DE,MAX_ENERGY_MAGI_BOUNDARY
	LD	 		A,H						
	CP 			D 						
 	JR 			NZ,_IS_HL_LESS			 
	LD 			A,L						
	CP 			E						
_IS_HL_LESS
	JR 			C,_STORE_ENERGY_RESULT	; "HL < DE"
	;no then cap the result to max
	LD			H,D
	LD			L,E		
_STORE_ENERGY_RESULT	
	
	; store the new energy stat back into CREATURE_BTL's structure
	LD			A,H
	LD			C,L
	POP			HL						;get MAX energy stat pointer
	LD			(HLI),A	
	LD			(HL),C	
	
	POP			HL						; restore base pointer
	PUSH		HL						; save base pointer
	
	; save into CURRENT energy stat
	LD			DE,CREATURE_ENGH
	ADD			HL,DE
	LD			(HLI),A					
	LD			(HL),C
	
	POP			HL						; restore base pointer
	RET
	
;**********************************
; INCREMENT A "CREATURE" STRUCTS' ENERGY 
; HL = CREATURE_BTL POINTER
; DE = INCREMENT DELTA
?INCREMENT_CREATURE_ENERGY		
	; get energy stat pointer
	LD			BC,CREATURE_ENGMAXH
	ADD			HL,BC
	PUSH		HL                      ;this is energy_stat pointer
	
	; put (contents of HL -16bit-) into HL
	;    also ADD the incremental delta
	LD			A,(HLI)
	LD			L,(HL)
	LD			H,A
	ADD			HL,DE
    
    ; boundary check the result
	LD			DE,MAX_ENERGY_STAT_BOUNDARY
	;					 	 		- if (HL < DE) continue ...
	LD	 		A,H						; get MSB of value A 
	CP 			D 						; compare with MSB of value B
 	JR 			NZ,_IS_HL_LESS			; not equal, test for greater than 
	LD 			A,L						; get LSB of value A 
	CP 			E						; compare with LSB of value B 
_IS_HL_LESS
	JR 			C,_STORE_ENERGY_RESULT	; "val >= var"
	;no then cap the result to max
	LD			H,D
	LD			L,E		
_STORE_ENERGY_RESULT	
	
	; store the new energy stat back into CREATURE_BTL's structure
	LD			A,H
	LD			C,L
	POP			HL						;get energy stat pointer
	LD			(HLI),A	
	LD			(HL),C	
	RET

;**********************************
; DECREMENT A "CREATURE" STRUCTS ENERGY 
; -this function can be used to deal 'damage'
; HL = CREATURE_BTL POINTER
; DE = DECREMENT DELTA
?DECREMENT_CREATURE_ENERGY	
	; get energy stat pointer
	LD			BC,CREATURE_ENGMAXH
	ADD			HL,BC
	PUSH		HL                      ;this is energy_stat pointer
	
	; put (contents of HL -16bit-) into HL
	;    also add the levelup energy incremental
	LD			A,(HLI)
	LD			L,(HL)
	LD			H,A
	TWOS_COMP	D,E
	ADD			HL,DE
    ; boundary check the result
	JR			NC,	_STORE_ENERGY_RESULT
	;no then cap the result to zero
	LD			HL,0		
_STORE_ENERGY_RESULT		
	; store the new energy stat back into CREATURE_BTL's structure
	LD			A,H
	LD			C,L
	POP			HL						;get energy stat pointer
	LD			(HLI),A	
	LD			(HL),C	
	RET	
	
;**********************************
; INCREMENT A "CREATURE" STAT (1 BYTE) 
; HL = CREATURE_BTL POINTER
; BC = STAT_DEFINE
;  E = MAX_STAT_BOUNDARY (this implies that STAT is 1 byte!)
;  A = INCREMENT DELTA  
;  output: stat in A  
?INCREMENT_CREATURE_STAT	
	ADD			HL,BC                   
_INC_STAT
	ADD			A,(HL)
	CP			E
	JR 			C,_STORE_STAT
	LD			A,E
_STORE_STAT
	LD			(HL),A	
	RET		
	
;**********************************
; DECREMENT A "CREATURE" STAT 
; HL = CREATURE_BTL POINTER
; BC = STAT_DEFINE
;  A = DECREMENT DELTA
;  output: stat in A
?DECREMENT_CREATURE_STAT	
	ADD			HL,BC	                      
_DEC_STAT
	LD			C,A
	LD			A,(HL)
	SUB			C
	JR			Z,_INIT_STAT
	JR 			NC,_STORE_STAT
_INIT_STAT	
	LD			A,1
_STORE_STAT
	LD			(HL),A	
	RET	
	
;************************************
; INCREMENT A STAT BY A PERCENTAGE OF IT
; HL = BASE_POINTER 
; DE = STAT DEFINE  
;  B = PERCENTAGE   ;0..32
;  C = STAT MAX 	 	
;	output: stat in A
?INCREMENT_STAT_BY_PERCENT	
	; get  "data pointer"
	ADD			HL,DE
	; save "data pointer"
	PUSH		HL	
	; put (contents of HL -8bit-) into A
	LD			A,(HL)
	
	LD			L,B				;0..32 (represent 0..100%)
	LD			B,A					;SCALAR
	CALL		?SCALE_NUMBER8
	
	;check if it returned zero if so make it 1
	JR			NZ,_GET_STAT_POINTER
	LD			A,1	
_GET_STAT_POINTER	
	POP			HL
	
	ADD			A,(HL)
	
	;boundary check the result
	CP			C
	JR			C,_STORE_STAT
	LD			A,C
_STORE_STAT	
	LD			(HL),A
	RET

;************************************
; DECREMENT A STAT BY A PERCENTAGE OF IT
; HL = BASE_POINTER 
; DE = STAT DEFINE  
;  B = PERCENTAGE   ;0..32	 	
;	output: stat in A
?DECREMENT_STAT_BY_PERCENT	
	; get  "data pointer"
	ADD			HL,DE
	; save "data pointer"
	PUSH		HL	
	; put (contents of HL -8bit-) into A
	LD			A,(HL)
	
	LD			L,B				;0..32 (represent 0..100%)
	LD			B,A					;SCALAR
	CALL		?SCALE_NUMBER8
	;check if it returned zero if so make it 1
	JR			NZ,_GET_STAT_POINTER
	LD			A,1	
_GET_STAT_POINTER	
	POP			HL
	
	CPL			
	INC			A
	ADD			A,(HL)
	
	;boundary check the result
	JR			Z,_INIT_STAT
	JR 			C,_STORE_STAT
_INIT_STAT	
	LD			A,1
_STORE_STAT	
	LD			(HL),A
	RET
		
;**********************************
; SET A "CREATURE" STATUS BIT
; HL = CREATURE_BTL POINTER
; BC = CREATURE_STATUS_DEFINE  ;eg.: "CREATURE_IMMUNE,CREATURE_STATUS,CREATURE_PERMSTAT,etc.."
;  A = STATUS_DEFINE 
;  output: stat in A  
?SET_CREATURE_STATUS	
	ADD			HL,BC                   
	OR			(HL)
	LD			(HL),A	
	RET		
		
;**********************************
; CLR A "CREATURE" STATUS BIT
; HL = CREATURE_BTL POINTER
; BC = CREATURE_STATUS_DEFINE  ;eg.: "CREATURE_IMMUNE,CREATURE_STATUS,CREATURE_PERMSTAT,etc.."
;  A = STATUS_DEFINE 
;  output: stat in A  
?CLR_CREATURE_STATUS	
	ADD			HL,BC                   
	CPL
	AND			(HL)
	LD			(HL),A	
	RET	
			
;********************************
	END
;********************************
	