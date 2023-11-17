;********************************
; BTLCMD_FORMULA.S
;********************************
;	Author:	Patrick Meehan/Dylan "Ab-so-fucking-lutly clever" Mayo,Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
;NORMAL ATTACK EQUATION
;A <- DAMAGE VAL
?ATK_FUNC_STANDARD

	LD		A,(BTL_CREATURE_LUCK)
	LD		B,A
	LD		A,10					;[-10,+10]

	CALL	?BATTLE_LUCK	
	LD		B,A
	
	LD		A,(BTL_CREATURE_STR)
	ADD		A,B
	
	LD		HL,ATTACK_TABLE
	ADD		A,A
	LD		C,A
	LD		B,0
	ADD		HL,BC
	
	LD		A,(HLI)			;MIN ATTACK
	LD		D,A				;D = MIN
	LD		A,(HL)			;MAX ATTACK
	SUB		D
	LD		C,A				;C=(MAX + -MIN)	
	
	LD		A,(BTL_TARGET_DEF)				
	LD		B,A								
	LD		A,99							
	SUB		B								
	LD		B,A				;B=(99 + -DEF)	
												
	PUSH	DE

	CALL	?MULT			;HL = B*C
	
	LD		A,100
	CALL	?DIV16			;A = HL/100

	POP		DE
	ADD		A,D				;A = DAMAGE  (HL/100)+MIN 
	
	RET
;********************************
;SPECIAL ATTACK EQUATION (MAGIC ATTACK)
;A <- DAMAGE VAL
?SKILL_FUNC_STANDARD

	LD		A,(BTL_CREATURE_LUCK)
	LD		B,A
	LD		A,10					;[-10,+10]
	CALL	?BATTLE_LUCK	
	LD		B,A
	LD		A,(BTL_CREATURE_SKILL)
	ADD		A,B
	LD		HL,SPECIAL_ATTACK_TABLE
	ADD		A,A
	LD		C,A
	LD		B,0
	ADD		HL,BC
	LD		A,(HLI)			;MIN ATTACK
	LD		D,A				;D = MIN
	LD		A,(HL)			;MAX ATTACK
	SUB		D
	LD		C,A				;C=(MAX + -MIN)	
	LD		A,(BTL_TARGET_RESIST)				
	LD		B,A								
	LD		A,99							
	SUB		B								
	LD		B,A				;B=(99 + -DEF)							
	PUSH	DE
	CALL	?MULT			;HL = B*C
	LD		A,100
	CALL	?DIV16			;A = HL/100
	POP		DE
	ADD		A,D				;A = DAMAGE  (HL/100)+MIN 
	RET

;*****************************
;Healing value calculation - ignores RES 
;A <- DAMAGE VAL
?SKILL_FUNC_NORES
	LD		A,(BTL_CREATURE_LUCK)
	LD		B,A
	LD		A,10					;[-10,+10]
	CALL	?BATTLE_LUCK	
	LD		B,A
	LD		A,(BTL_CREATURE_SKILL)
	ADD		A,B
	LD		HL,SPECIAL_ATTACK_TABLE
	ADD		A,A
	LD		C,A
	LD		B,0
	ADD		HL,BC
	LD		A,(HLI)			;MIN ATTACK
	LD		D,A				;D = MIN
	LD		A,(HL)			;MAX ATTACK
	SUB		D				;Lydia TODO: I dont understand why these next three instructions are necessary, but if you just load (HL) into A and call it a day then the numbers are very wrong
	LD		C,A				;C=(MAX + -MIN)	 
	LD		A,D             ;A=MIN
	ADD		A,C             ;A=MAX
	RET
	
;********************************
;LUCK CALC
;PRETTY MUCH EVERYTHING IS MOLESTED
;B = LUCK INDEX		A = RANGE I.E.[-A,+A]
;A <- END VALUE
?BATTLE_LUCK
	LD			HL,LUCK_TABLE
	LD			C,B
	LD			B,0
	ADD			HL,BC
	LD			B,(HL)		;B = LUCK VALUE
	LD			C,A
	CALL		?MULT		;HL = LUCK * RANGE
	LD			A,99
	CALL		?DIV16		;A = L*R/99
	LD			E,A			;E = L*R/99
	ADD			A,A			;A = 2(E)
	LD			C,A			;C = 2(E)
	INC			C			;C = 2(E)+1
	PUSH 		DE
	LD			A,(DIV)
	LD			B,A			;B = A = RND(255)
	CALL		?MULT		
	LD			A,$FF
	CALL		?DIV16		;A = (2(E)+1)*RND(255)/255
	POP			DE
	SUB	 		E			;A = (2(E)+1)*RND(255)/255 - E
	RET	
	
	
;************************************************
;BTL_DETERMINE_HIT -- determines if target creature dodges, thereby making you miss
;   B = (SPEED_STAT OF enemy) C == HIT_FACTOR STAT (0..255)	
;	A <- 0 MISS, 1 HIT
?BTL_DETERMINE_HIT	

	PUSH		BC
	
	RANDOM255					;compute a random number from 0..255
	SLA			B
	ADD			A,B				;add the scalar
	LD			B,A				;save the scalar
	LD			A,(BTL_TARGET_STATUS)
	AND			HIDDEN
	JR			Z,_NOT_HIDDEN
	POP			DE
	LD			A,B
	CP			BTL_HIDDEN_HIT_CHANCE
	JR			C,_HIT_TRUE
	JR			_HIT_FALSE
	
_NOT_HIDDEN
	LD			A,B
	POP			BC
	CP			C
	JR			NC,_HIT_FALSE	
_HIT_TRUE
	LD			A,1
	RET	
_HIT_FALSE
	LD			A,(BTL_TARGET_STATUS)
	AND			HIDDEN
	JR			Z,_NOT_HIDDEN2
	BTL_ACTOR_SET_SCRIPT	(BTL_CREATURE_TARGET),?_STATUS_HIDDEN_ANIM
	
	CALL_FOREIGN	?BTL_MSG_NORM_PARAMS
	TEXT_SET_PARAMS	TEXT_PARAM_BUFFER
	SCRIPT_SET		TEXT_SCRIPT,?_BTL_HIDDEN
	
	CALL_FOREIGN	?BTL_TEXT_LOOP
	
	BTL_ACTOR_END	(BTL_CREATURE_TARGET)
	
_NOT_HIDDEN2
	XOR			A	
	RET

;*****************	
?BTL_DEBUG_FUNC
	LD		A,0
	LD		B,0
	LD		C,99
	LD		DE,00
	CALL	?XP_CALC
	

	LD		DE,370
	CALL	?CONVERT_NUMBER_2_ELEMENT
	
	LD		A,(X100)
	LD		A,(X10)
	LD		A,(X1)	
	RET	

;***************************************
; XP FORMULA            
; A = (LVL OF ally-0,99),  DE = termination(0,1,2(boss)) , C = (LVL OF enemy-0,99) 
; A = XP gained
;---------------------------------------
XP_TABLE
	DB		 5,4,25,250
	DB		 9,3,20,200
	DB		11,2,10,125
	DB		99,1,5,85

?XP_CALC
	; step1 X = |ally-enemy|
	ADD		A,$02
	SUB		C
	JR		NC,_POSITIVE
	CPL	
	INC		A	
_POSITIVE
	
	LD		HL,XP_TABLE
	LD		BC,04
	INC		DE				;this is to set the base offset for which to get the XP value
_ZONE1
	CP		(HL)			;<RANGE1
	JR		NC,_ZONE2
	ADD		HL,DE
	LD		A,(HL)
	RET
_ZONE2
	ADD		HL,BC
	CP		(HL)			;<RANGE2
	JR		NC,_ZONE3
	ADD		HL,DE
	LD		A,(HL)
	RET
_ZONE3
	ADD		HL,BC
	CP		(HL)			;<RANGE3
	JR		NC,_ZONE4
	ADD		HL,DE
	LD		A,(HL)
	RET
_ZONE4					
	ADD		HL,BC			;else RANGE4
	ADD		HL,DE
	LD		A,(HL)
	RET
		
;******************************
; END
;******************************	