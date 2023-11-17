;********************************
; MATH.S
;********************************
;	Author:	Patrick Meehan/Dylan "ExoByte" Mayo/Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; Input: 
; 	BC	=	MAX (0-999)							
; 	DE	= 	NUM	(0-999)							
; Output: 
; 	A=	% in Binary (0..32) => 0=0%  32=100%	;count
;********************************
?CALC_PERCENT
	XOR		A
	LD		H,A
	LD		L,A			
	LD		(PERCENT_COUNT),A
	
	; STEP 1 COMPARE IF NUM IS 0 OR MAX
	LD		A,E
	AND		A
	JR		Z,_CHECK_ZERO
_CHECK_LOWER
	CP		C
	JR		C,_START_CALC
_CHECK_UPPER
	LD		A,D
	CP		B
	JR		C,_START_CALC
	LD		A,32
	LD		(PERCENT_COUNT),A
	RET	
_CHECK_ZERO	
	CP		D
	RET		Z
	
	; STEP 2 CALC THE PERCENT VAL
_START_CALC	
;   MAKE lsb increment by shifting right MAX by one (div 2)
	SRL		B
	RR      C
	
;   MAKE val test by shifting left NUM by four (mult 16) - creating whole num
;   Internal NOTE: low nibble of 16bit represents fraction : |.5|.25|.125|.0625| 
	SLA		E
	RL      D	
	SLA		E
	RL      D	
	SLA		E
	RL      D	
	SLA		E
	RL      D

	ADD		HL,BC
_LOOP_START	
;	COMPARE var < val 	 		- if (HL < DE) continue ...
	LD 		A,H						; get MSB of value A 
	CP 		D 						; compare with MSB of value B
 	JR 		NZ,_IS_VAL_GREATER		; not equal, test for greater than 
	LD 		A,L						; get LSB of value A 
	CP 		E						; compare with LSB of value B 
_IS_VAL_GREATER
	JR 		NC,_RET_PERCENT_COUNT	; "val >= var"
	
	ADD		HL,BC
	LD		A,(PERCENT_COUNT)
	INC 	A
	LD		(PERCENT_COUNT),A
	JR		_LOOP_START

_RET_PERCENT_COUNT
	LD		A,(PERCENT_COUNT)
	RET
	
;********************************
; Input: 
; 	C	=	number to square root (0..255)  							
; Output: 
; 	A	=	the square root (only the whole number is rounded up)
;			thus sqrt(99) == 9.949 round will round up to 10
;********************************
?CALC_SQR_ROOT

_RET_00
	LD		A,C
	AND		A
	RET     Z
	
_MID_POINT_OPT
	CP		41
	JR		NC,_RET_07
	
_RET_01	
	CP		2
	JR		NC,_RET_02		; GO TO NEXT,IF IT IS GREATER THAN 2 ...
	LD		A,1
	RET
_RET_02	
	CP		5
	JR		NC,_RET_03
	LD		A,2
	RET
_RET_03	
	CP		11
	JR		NC,_RET_04
	LD		A,3
	RET	
_RET_04	
	CP		19
	JR		NC,_RET_05
	LD		A,4
	RET		
_RET_05	
	CP		29
	JR		NC,_RET_06
	LD		A,5
	RET
_RET_06	
							;MID_POINT OPTIMIZATION ELIMINATES THIS CHECK
	;CP		41
	;JR		NC,_RET_07
	LD		A,6
	RET	
		
_RET_07	
	CP		55
	JR		NC,_RET_08
	LD		A,7
	RET	
_RET_08	
	CP		71
	JR		NC,_RET_09
	LD		A,8
	RET		
_RET_09	
	CP		89
	JR		NC,_RET_10
	LD		A,9
	RET	
_RET_10	
	CP		109
	JR		NC,_RET_11
	LD		A,10
	RET	
_RET_11	
	CP		131
	JR		NC,_RET_12
	LD		A,11
	RET		
_RET_12	
	CP		155
	JR		NC,_RET_13
	LD		A,12
	RET
_RET_13	
	CP		181
	JR		NC,_RET_14
	LD		A,13
	RET
_RET_14	
	CP		208
	JR		NC,_RET_15
	LD		A,14
	RET
_RET_15	
	CP		238           
	JR		NC,_RET_16
	LD		A,15
	RET						
_RET_16	
	LD		A,16
	RET

;********************************
;Input: (de)   -- 2 DIGIT numbers just set d to 0
;Output: [X1], [X10], [X100] 
;
;For example: input DE = 932 (RANGE: 000..999)
;Result:
;x100=	9
;x10=	3
;x1 = 	2
;9*100+3*10+2*1
;********************************
;
?CONVERT_NUMBER_2_ELEMENT	
_SET_START_VALS
	XOR 	A
	LD 		(X100),A
	LD 		(X10),A
	LD 		(X1),A
	LD		A,D
	AND		$03
	JR		Z,_DECIMAL_TO_ELEMENTS
_CHECK_768	
	CP		$03
	JR		NZ,_CHECK_512
	LD		A,7
	LD 		(X100),A
	LD		A,6
	LD 		(X10),A
	LD		A,8
	LD 		(X1),A
	JR		_DECIMAL_TO_ELEMENTS
_CHECK_512
   	CP		$02
	JR		NZ,_CHECK_256
	LD		A,5
	LD 		(X100),A
	LD		A,1
	LD 		(X10),A
	LD		A,2
	LD 		(X1),A
	JR		_DECIMAL_TO_ELEMENTS
_CHECK_256
    LD		A,2
	LD 		(X100),A
	LD		A,5
	LD 		(X10),A
	LD		A,6
	LD 		(X1),A	
_DECIMAL_TO_ELEMENTS
	LD		A,(X100)           ;b is set to 0, 2, 5, 7 respectfully based on the [high_byte]
	LD 		B,A
	LD		A,E
	LD		C,A
_LOOP_BY_100
	SUB 	100
	JR 		C, _CONTINUE_BY_10
	INC		B
	LD		C,A
	JR		_LOOP_BY_100
_CONTINUE_BY_10
	LD		A,B
	LD		(X100),A
	LD		A,(X10)            ;b is set to 0, 5, 1, 6 respectfully based on the [high_byte]
	LD		B,A
	LD 		A,C
_LOOP_BY_10
	SUB		10
	JR		C, _CONTINUE_BY_1
	INC		B
	LD		C,A
	JR		_LOOP_BY_10
_CONTINUE_BY_1
	LD		A,B
	LD		(X10),A
	LD		A,(X1)  			;	add by  0, 6, 2, 8 respectfully based on the [high_byte]		
	ADD		A,C		         
	LD		(X1),A
	
	; this algorithm was based on values less than 256
	; now that we've added the all the values lets compensate
	; for cases of overflow example. 370-256 = 114 1+2, 5+1, 6+4
	
_CHECK_1
	; start with 1's
	SUB		10   ;example 12-10 yields 2
	JR		C,_CHECK_10                     ;if # is neg then skip to 10
	; Save the difference to 1's element	
	LD		(X1),A

	;INC the 10's element
	LD		A,(X10)
	INC		A
	LD		(X10),A
	
_CHECK_10
	LD		A,(X10)
	; start with 1's
	SUB		10   ;example 12-10 yields 2
	JR		C,_CHECK_100                     ;if # is neg then skip to 100
	; Save the difference to 10's element	
	LD		(X10),A

	;INC the 100's element
	LD		A,(X100)
	INC		A
	LD		(X100),A

_CHECK_100	
	RET

;********************************
; H:	<- C / B
; L:	<- C % B	
?DIV
	LD		HL,$0000

	LD		A,C
_LOOP
	SUB		B
	JR		C,_DONE
	INC		H
	JR		_LOOP

_DONE
	ADD		A,B
	LD		L,A

	RET	
	
;********************************
; A:  <- HL / A
; BC IS MOLESTED.
?DIV16

	LD			C,A
	LD			B,$00
	TWOS_COMP	B,C
	
	XOR			A
	
_LUPE
	ADD			HL,BC
	RET			NC
	INC			A
	JR			_LUPE	
	
_DONE
	
	RET

;********************************
; HL:	<- B * C
; DE IS MOLESTED
?MULT

;SETUP
	LD		E,B			;1
	LD		HL,$0000	;3
	LD		D,$00		;2
	
;_ZRO---COMMENT SINCE NO NEED TO JMP HERE
	BIT		0,C			;2
	JR		Z,_ONE		;3
	ADD		HL,DE		;2
		
_ONE

	SLA		E			;2
	RL		D			;2
	BIT		1,C			;2
	JR		Z,_TWO		;3
	ADD		HL,DE		;2
	
_TWO

	SLA		E			;2
	RL		D			;2
	BIT		2,C			;2
	JR		Z,_TRE		;3
	ADD		HL,DE		;2
	
_TRE

	SLA		E			;2
	RL		D			;2
	BIT		3,C			;2
	JR		Z,_FOR		;3
	ADD		HL,DE		;2
	
_FOR

	SLA		E			;2
	RL		D			;2	
	BIT		4,C			;2
	JR		Z,_FIV		;3
	ADD		HL,DE		;2
	
_FIV

	SLA		E			;2
	RL		D			;2
	BIT		5,C			;2
	JR		Z,_SIX		;3
	ADD		HL,DE		;2
	
_SIX

	SLA		E			;2
	RL		D			;2
	BIT		6,C			;2
	JR		Z,_SVN		;3
	ADD		HL,DE		;2
	
_SVN

	SLA		E			;2
	RL		D			;2
	BIT		7,C			;2
	RET		Z			;5/2
	ADD		HL,DE		;2	
	
_BYE	

	RET					;4

;********************************
; Input: 
; 	L= 	% in Binary (0..32) => 0=0%  32=100%
; 	B=	MAX (0-255)
; Output: 
; 	A=	NUM .:. (L% of B)
;********************************
?SCALE_NUMBER8
	LD		H,0
	LD 		D,H
		
	LD 		A,L 		; percentage
	AND		A			; check if 0
	RET 	Z
	LD		E,A
	
	LD		A,B 		; max val
	AND 	A			; check if 0
	RET 	Z
	
 	DEC 	B			
 	JR		NZ,_LOOP_START
 	XOR		A			; i cannot scale 1 so i force it to always return 0
 	RET
 						;DE == HL == PERCENT VAL OF 00..32, B is counter
_LOOP_START
	ADD		HL,DE
	DEC		B
	JR		NZ,_LOOP_START	
						;HL == perecent*max (eg.  30*60 == 1800 == $0708)	
														
_P_NUMBER_CALC			
	SLA 	H ;H*8
	SLA 	H
	SLA 	H
	
	SRL		L ;L/32
	SRL		L
	SRL		L
	SRL		L
	SRL		L

	LD		A,H			
	ADD		A,L			;(eg.  HL == $0708; 7*8 + 8/32 == 56 == NUM)
	RET

;********************************
; RANDOM NUMBER FUNC
; Input:	C == MASK
; Output:	A == random number (0 .. MASK)
;********************************
?RANDOM
	LD			A,(DIV)
	RRA
	BIT			0,A
	JR			NZ,_COUNTER_INIT
	SWAP		A

	;	SOFTWARE DELAY FOR 1..64 ITERATIONS
_COUNTER_INIT
	AND			$3F
	INC			A
	
_LOOP	
	DEC			A
	JR			NZ,_LOOP		
	
	;	NOW GET THE RANDOM NUMBER AND MASK IT TO YOUR RANGE
	LD			A,(DIV)
	AND			C
	RET

;********************************
; RANDOM NUMBER FUNC NO MASK
; Output:	A == random number (0 .. 255)
;********************************
; Based on the pseudo-RNG from Libbet and the Magic Floor:
;
; Pseudorandom number generator
;
; Copyright 2018, 2020 Damian Yerrick
; 
; This software is provided 'as-is', without any express or implied
; warranty.  In no event will the authors be held liable for any damages
; arising from the use of this software.
; 
; Permission is granted to anyone to use this software for any purpose,
; including commercial applications, and to alter it and redistribute it
; freely, subject to the following restrictions:
; 
; 1. The origin of this software must not be misrepresented; you must not
;    claim that you wrote the original software. If you use this software
;    in a product, an acknowledgment in the product documentation would be
;    appreciated but is not required.
; 2. Altered source versions must be plainly marked as such, and must not be
;    misrepresented as being the original software.
; 3. This notice may not be removed or altered from any source distribution.
;
?RANDOM_NOMASK
	PUSH		HL
	PUSH		BC
	LDA_FF      RANDCOUNT
; Add $B3
	ADD         A,$B3
; Additional alteration: Divide by clock
	LD          B,A
	LDA_FF      TICKER
	LD          C,A
	CALL		?DIV
	LD          A,H
; Multiply by 0x01010101
	LD			HL,RANDCOUNT
	INC			HL
	LD			(HL),A
	DEC         HL
	ADC         A,(HL)
	INC			HL
	LD			(HL),A
	DEC         HL
	ADC         A,(HL)
	INC			HL
	LD			(HL),A
	DEC         HL
	LD          C,A
	ADC         A,(HL)
	LD			(HL),A
	POP			BC
	POP			HL
	LDFF_A      RANDCOUNT
	RET

;********************************
; A:	<--Random value
; E:	Is molested
?RANDVAL

	LDA_FF	DIV
	SWAP	A
	SRA		A
	
	LD		E,A

	LDA_FF	DIV
	ADD		A,E
	
	AND		$07
	DEC		A
	DEC		A
	DEC		A
	LD		E,A

	LDA_FF	RANDCOUNT
	ADD		A,E
	LDFF_A	RANDCOUNT
	
	RET

;********************************
	END