;********************************
; BTLCMD_LEVELUP.S
;********************************
;	Author:	Patrick Meehan/Dylan "Ab-so-fucking-lutly clever" Mayo,Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved

;----------------------------
; BATTLE_EQU.S
; CREATURENAME_TABLE.S --> ?BTL_COPY_CREATURE_NAME
; SYSTEM\BATTLE.MGI    --> ?<TEXT SCRIPTS>
; BTLCMD_FUNCS.S	   --> _STANDARD_MSG EXAMPLE
; BATTLE.S			   --> BTL_TST_G_PARAM  "ABAQUIST STATS" 
;----------------------------
				
;********************************
?BTL_CHECK_LVL_UP

	SWITCH_RAM_BANK		WRAM_BATTLE
	
	;CHECK FOR CREATURE LVL UPS
	;--------------------------
	LD		HL,BTL_HERO_USED_RINGS+9
	LD		A,10
	LD		(BTL_COUNTER),A
	
_LVL_UP_LOOP
	;see if that ring was used  
	;----------------------------
	XOR		A
	LD		(BTL_PENDING_MSG),A
	LD		A,(HLD)
	AND		A
	JP		Z,_UNUSED
	
	;if so, where is that creature in xram?
	;-------------------------------
	PUSH	HL			;USED RING PTR
	LD		HL,XRAM_INVENTORY_RINGS
	LD		A,(BTL_COUNTER)
	DEC		A
	LD		C,A
	LD		B,0
	ADD		HL,BC
	
	BATTERY_ON
	BATTERY_SET_BANK	RAMB_GAMESTATE
	
	LD		A,(HL)
	LD		C,A
	
	BATTERY_OFF	
	
	LD		B,CREATURE_XRAM_SIZE
	CALL	?MULT
	LD		BC,CREATURE_XRAM
	ADD		HL,BC
	
	SET16	H,L,BTL_CUR_LVLUP
	
	;now, does it have enough exp to go up a lvl?
	;after getting exp this batl
	;----------------------------------
	;HL comes back w/ cur exp
	CALL	?BTL_DO_EXP

	LD		BC,EXP_PER_CREATURE_LEVELUP
	TWOS_COMP	B,C
	ADD		HL,BC
	FGET16	B,C,BTL_CUR_LVLUP
	JR		NC,_NO_LVL_UP

_LVL_UP
	LD		HL,BTL_TARGET
	CALL	?BTL_SUMMON_CREATURE
	
_RE_LVL_UP
	;start the fanfare - force the song
	LD		A,SONGID_levelup1
	LD		(CURRENT_SONG),A
	LD		A,$01
	LD		(START_SONG),A

	LD		HL,LVL_UP_FLAGS
	LD		(HL),0
	SET		1,(HL)
	LD		HL,BTL_TARGET
	CALL	?LEVELUP_CREATURE	
	XOR		A
	LD		(LVL_UP_FLAGS),A	
	
	LD		HL,BTL_TARGET_EXPH
	LD		A,(HLI)
	LD		L,(HL)
	LD		H,A
	
	;still enough exp?
	;------------------------
	LD		BC,EXP_PER_CREATURE_LEVELUP
	TWOS_COMP	B,C
	ADD		HL,BC
	JR		C,_RE_LVL_UP
	
	;PUT BACK IN XRAM
	FGET16	B,C,BTL_CUR_LVLUP
	LD		HL,BTL_TARGET
	CALL	?BTL_UNSUMMON_CREATURE

_NO_LVL_UP		
	POP		HL			;GET BACK USED RING PTR

_UNUSED
	PUSH	HL
	LD		HL,BTL_COUNTER
	DEC		(HL)
	POP		HL
	JP		NZ,_LVL_UP_LOOP

	;CHECK FOR TONY LVL UP
	;--------------------------
	LD		BC,CREATURETONY
	FSET16	B,C,BTL_CUR_LVLUP
	CALL	?BTL_DO_EXP
	
	LD		BC,EXP_PER_MAGI_LEVELUP
	TWOS_COMP	B,C
	ADD		HL,BC
	RET		NC
	
	;LVL UP TONY
	;------------------------
	LD		BC,CREATURETONY
	LD		HL,BTL_TARGET
	
	CALL	?BTL_SUMMON_CREATURE
	
	;start the fanfare - force the song
	LD		A,SONGID_levelup1
	LD		(CURRENT_SONG),A
	LD		A,$01
	LD		(START_SONG),A
	
	LD		HL,LVL_UP_FLAGS
	RES		0,(HL)
	SET		1,(HL)
	
	LD		HL,BTL_TARGET
	
	CALL	?LEVELUP_MAGI
	
	LD		HL,BTL_TARGET
	LD		BC,CREATURETONY
	
	CALL	?BTL_UNSUMMON_CREATURE	
	
	RET
;********************************	
?BTL_DO_EXP

	BATTERY_ON
	BATTERY_SET_BANK	RAMB_CREATURES

	;(0) GET SWEET SPOT AMOUNT
	;--------------------------
	LD		BC,XRAM_CREATURE_LVL
	FGET16	H,L,BTL_CUR_LVLUP
	ADD		HL,BC	
	LD		A,(HL)
	LD		B,A
	LD		A,(BTL_EXP_LVL)
	INC		A
	SUB		B
	JR		C,_ALLY_HIGHER
	
	LD		B,BTL_EXP_ZONE_1
	CP		BTL_EXP_ALLY_LOWER_1
	JR		C,_SS_DONE
	
	
; Commenting these out to make the XP curve less punishing - Lydia
	LD		B,BTL_EXP_ZONE_2
	JR		_SS_DONE   ; Jump straight to end with our phatty XP
;	CP		BTL_EXP_ALLY_LOWER_2
;	JR		C,_SS_DONE
	
;	LD		B,BTL_EXP_ZONE_3
;	CP		BTL_EXP_ALLY_LOWER_3
;	JR		C,_SS_DONE
	
;	LD		B,BTL_EXP_ZONE_4
;	CP		BTL_EXP_ALLY_LOWER_4
;	JR		C,_SS_DONE
	
;	LD		B,BTL_EXP_ZONE_5
;	JR		_SS_DONE	
	
_ALLY_HIGHER
	CPL
	INC		A
	
	LD		B,BTL_EXP_ZONE_1
	CP		BTL_EXP_ALLY_HIGHER_1
	JR		C,_SS_DONE
	
	LD		B,BTL_EXP_ZONE_2
	CP		BTL_EXP_ALLY_HIGHER_2
	JR		C,_SS_DONE
	
	LD		B,BTL_EXP_ZONE_3
	CP		BTL_EXP_ALLY_HIGHER_3
	JR		C,_SS_DONE
	
	LD		B,BTL_EXP_ZONE_4
	CP		BTL_EXP_ALLY_HIGHER_4
	JR		C,_SS_DONE
	
	LD		B,BTL_EXP_ZONE_5
	
_SS_DONE
	LD		A,B
	
	;(Exp - (Amt Ally Summoned - Amt enemy summoned))+1
	;------------------------------	
	LD		HL,BTL_EXP_ENEMY_SUMMONED
	ADD		A,(HL)
	LD		HL,BTL_EXP_ALLY_SUMMONED
	SUB		(HL)
	JR		NC,_NO_CARRY
	LD		A,1
	
_NO_CARRY
	INC		A
	LD		(BTL_CUR_EXP),A		
	
	;(1) Get cur EXP
	;---------------------------
	FGET16	H,L,BTL_CUR_LVLUP
	LD		BC,XRAM_CREATURE_EXPH
	ADD		HL,BC	

	LD		A,(HLI)
	LD		L,(HL)
	LD		H,A
	
	;(2) Add and reset
	;-------------------------
	LD		A,(BTL_CUR_EXP)
	LD		C,A
	LD		B,0
	ADD		HL,BC
	PUSH	HL	
	
	LD		B,H
	LD		C,L
	FGET16	H,L,BTL_CUR_LVLUP
	LD		DE,XRAM_CREATURE_EXPH
	ADD		HL,DE
	
	LD		A,B
	LD		(HLI),A
	LD		A,C
	LD		(HL),A
	
	BATTERY_OFF

	POP		HL
	RET
	
;********************************
; HL = CREATURE_BTL POINTER
; LVL_UP_STAT_LEVEL = lvl to check against
?CHECK_NEWCMD
		
_CHECK_CMD0	
	; if CREATURE_CMD0LVL == $FF goto next one
	PUSH		HL		;save base pointer
	LD			DE,CREATURE_CMD0LVL
	ADD			HL,DE
	LD			A,CMD_ALREADY_LEARNED
	CP			(HL)
	JR			Z,_CHECK_CMD1
	
	; if CREATURE_CMD0LVL < (LVL_UP_STAT_LEVEL)
	LD			A,(HL)
	LD			A,(LVL_UP_STAT_LEVEL)
	CP			(HL)
	JR			C,_RET_NO_CMD
	; set to CMD_ALREADY_LEARNED
	LD			A,CMD_ALREADY_LEARNED
	LD			(HL),A							
	LD			DE,CREATURE_CMD0
	JR			_RET_SETCMD
			
_CHECK_CMD1
	; if CREATURE_CMD1LVL == $FF goto next one
	POP			HL
	PUSH		HL
	LD			DE,CREATURE_CMD1LVL
	ADD			HL,DE
	LD			A,CMD_ALREADY_LEARNED
	CP			(HL)
	JR			Z,_CHECK_CMD2
	
	; if CREATURE_CMD1LVL < (LVL_UP_STAT_LEVEL)
	LD			A,(HL)
	LD			A,(LVL_UP_STAT_LEVEL)
	CP			(HL)
	JR			C,_RET_NO_CMD
	LD			A,CMD_ALREADY_LEARNED
	LD			(HL),A	
	LD			DE,CREATURE_CMD1
	JR			_RET_SETCMD
	
_CHECK_CMD2
	; if CREATURE_CMD2LVL == $FF goto next one
	POP			HL
	PUSH		HL
	LD			DE,CREATURE_CMD2LVL
	ADD			HL,DE
	LD			A,CMD_ALREADY_LEARNED
	CP			(HL)
	JR			Z,_CHECK_CMD3
	
	; if CREATURE_CMD2LVL < (LVL_UP_STAT_LEVEL)
	LD			A,(HL)
	LD			A,(LVL_UP_STAT_LEVEL)
	CP			(HL)
	JR			C,_RET_NO_CMD
	LD			A,CMD_ALREADY_LEARNED
	LD			(HL),A	
	LD			DE,CREATURE_CMD2
	JR			_RET_SETCMD
	
_CHECK_CMD3
	; if CREATURE_CMD3LVL == $FF goto next one
	POP			HL
	PUSH		HL
	LD			DE,CREATURE_CMD3LVL
	ADD			HL,DE
	LD			A,CMD_ALREADY_LEARNED
	CP			(HL)
	JR			Z,_RET_NO_CMD
		
	; if CREATURE_CMD3LVL < (LVL_UP_STAT_LEVEL)
	LD			A,(HL)
	LD			A,(LVL_UP_STAT_LEVEL)
	CP			(HL)
	JR			C,_RET_NO_CMD
	LD			A,CMD_ALREADY_LEARNED
	LD			(HL),A	
	LD			DE,CREATURE_CMD3

	;fall into _RET_SETCMD...
		
_RET_SETCMD
	POP			HL		; restore base pointer
	
	; DE = 'CMD NAME OFFSET EQUATE'
	; HL = CREATURE_BTL POINTER
	CALL		?SET_NEWCMD_STRING_PARAMS
	
	; set the lvl_up flag to 'new cmd'
	LD			A,(LVL_UP_FLAGS)
	SET			7,A
	LD			(LVL_UP_FLAGS),A
	RET

_RET_NO_CMD
	POP			HL		;restore base pointer
	RET	


	
;****************************************************************************
; the following functions assume that we print in this order:
;	name,
;	lvl,
;	max_energy,
;---------------- creatures only 
;   attack
;   mag attack
;   speed
;	defense
;	mag defense
;	new_cmds 

;********************************
; HL = CREATURE_BTL POINTER
?COPYBUFFER_NAME
	PUSH	HL
	;get creature name
	LD		BC,CREATURE_ID
	ADD		HL,BC
	LD		A,(HL)								
	LD		(BTL_NAME_INDEX),A					;btl name index
	LD		BC,TEXT_PARAM_BUFFER
	FSET16	B,C,BTL_TABLE_COPY_TO
	CALL_FOREIGN	?BTL_COPY_CREATURE_NAME
	LD		A,?FORMAT
	LD		(TEXT_PARAM_BUFFER+10),A		;creature's name=10 chars
	POP		HL
	RET

;********************************
; HL = CREATURE_BTL POINTER
?COPYBUFFER_LVL
	PUSH	HL
	;get creature lvl
	LD		BC,CREATURE_LVL
	ADD		HL,BC
	LD		E,(HL)								;put lvl into E
	LD		D,0
	
	CALL	?CONVERT_NUMBER_2_ELEMENT
	; I assume max level is 99 -- i so won't print X100
	LD		A,(X10)
	ADD		A,?0
	LD		(TEXT_PARAM_BUFFER+11),A		
	LD		A,(X1)
	ADD		A,?0
	LD		(TEXT_PARAM_BUFFER+12),A
	LD		A,?FORMAT
	LD		(TEXT_PARAM_BUFFER+13),A		
	POP		HL
	RET
		
;********************************
; HL = CREATURE_BTL POINTER
?COPYBUFFER_ENERGY
	PUSH	HL
	;get creature lvl
	LD		BC,CREATURE_ENGMAXH
	ADD		HL,BC
	LD		A,(HLI)
	LD		E,(HL)
	LD		D,A
	
	CALL	?CONVERT_NUMBER_2_ELEMENT
	LD		A,(X100)
	ADD		A,?0
	LD		(TEXT_PARAM_BUFFER+14),A		
	LD		A,(X10)
	ADD		A,?0
	LD		(TEXT_PARAM_BUFFER+15),A		
	LD		A,(X1)
	ADD		A,?0
	LD		(TEXT_PARAM_BUFFER+16),A
	LD		A,?FORMAT
	LD		(TEXT_PARAM_BUFFER+17),A		
	POP		HL
	RET

;********************************
; HL = CREATURE_BTL POINTER
?COPYBUFFER_ATTACK
	PUSH	HL
	;get creature attack
	LD		BC,CREATURE_STR
	ADD		HL,BC
	LD		E,(HL)								;put 'STAT' into E
	LD		D,0
	
	CALL	?CONVERT_NUMBER_2_ELEMENT
	; I assume max level is 99 -- i so won't print X100
	LD		A,(X10)
	ADD		A,?0
	LD		(TEXT_PARAM_BUFFER+18),A		
	LD		A,(X1)
	ADD		A,?0
	LD		(TEXT_PARAM_BUFFER+19),A
	LD		A,?FORMAT
	LD		(TEXT_PARAM_BUFFER+20),A		
	POP		HL
	RET

;********************************
; HL = CREATURE_BTL POINTER
?COPYBUFFER_MAG_ATTACK
	PUSH	HL
	;get creature magic attack
	LD		BC,CREATURE_SKILL
	ADD		HL,BC
	LD		E,(HL)								;put 'STAT' into E
	LD		D,0
	
	CALL	?CONVERT_NUMBER_2_ELEMENT
	; I assume max level is 99 -- i so won't print X100
	LD		A,(X10)
	ADD		A,?0
	LD		(TEXT_PARAM_BUFFER+21),A		
	LD		A,(X1)
	ADD		A,?0
	LD		(TEXT_PARAM_BUFFER+22),A
	LD		A,?FORMAT
	LD		(TEXT_PARAM_BUFFER+23),A		
	POP		HL
	RET

;********************************
; HL = CREATURE_BTL POINTER
?COPYBUFFER_SPEED
	PUSH	HL
	;get creature speed
	LD		BC,CREATURE_SPEED
	ADD		HL,BC
	LD		E,(HL)								;put 'STAT' into E
	LD		D,0
	
	CALL	?CONVERT_NUMBER_2_ELEMENT
	; I assume max level is 99 -- i so won't print X100
	LD		A,(X10)
	ADD		A,?0
	LD		(TEXT_PARAM_BUFFER+24),A		
	LD		A,(X1)
	ADD		A,?0
	LD		(TEXT_PARAM_BUFFER+25),A
	LD		A,?FORMAT
	LD		(TEXT_PARAM_BUFFER+26),A		
	POP		HL
	RET	
	
;********************************
; HL = CREATURE_BTL POINTER
?COPYBUFFER_DEFENSE
	PUSH	HL
	;get creature defense
	LD		BC,CREATURE_DEF
	ADD		HL,BC
	LD		E,(HL)								;put 'STAT' into E
	LD		D,0
	
	CALL	?CONVERT_NUMBER_2_ELEMENT
	; I assume max level is 99 -- i so won't print X100
	LD		A,(X10)
	ADD		A,?0
	LD		(TEXT_PARAM_BUFFER+27),A		
	LD		A,(X1)
	ADD		A,?0
	LD		(TEXT_PARAM_BUFFER+28),A
	LD		A,?FORMAT
	LD		(TEXT_PARAM_BUFFER+29),A		
	POP		HL
	RET		
	
;********************************
; HL = CREATURE_BTL POINTER
?COPYBUFFER_RESIST
	PUSH	HL
	;get creature magic defense
	LD		BC,CREATURE_RESIST
	ADD		HL,BC
	LD		E,(HL)								;put 'STAT' into E
	LD		D,0
	
	CALL	?CONVERT_NUMBER_2_ELEMENT
	; I assume max level is 99 -- i so won't print X100
	LD		A,(X10)
	ADD		A,?0
	LD		(TEXT_PARAM_BUFFER+30),A		
	LD		A,(X1)
	ADD		A,?0
	LD		(TEXT_PARAM_BUFFER+31),A
	LD		A,?FORMAT
	LD		(TEXT_PARAM_BUFFER+32),A		
	POP		HL
	RET		

;********************************
?COPYBUFFER_NEWCMD
	; setup already done in level up creature func
	; BTL_CMD_BASE_PTR		--	command base ptr  
	; BTL_TEXT_BUFFER_PTR	--	ptr to buffer to copy to
	LD		A,1
	LD		(BTL_COPY_COST_FLAG),A
	CALL_FOREIGN	?BTL_CMD_COPY_NAME
	LD		A,?FORMAT
	LD		(TEXT_PARAM_BUFFER+33+7),A
	RET
	
				
;****************************************************************************

;********************************
; LEVELUP "CREATURE" TO NEXT LEVEL
; HL = CREATURE_BTL POINTER
; IF BIT 0 OF (LVL_UP_FLAGS) == TRUE " WE DON'T CHANGE XP "
; IF BIT 1 OF (LVL_UP_FLAGS) == FALSE " WE DON'T DISPLAY TEXT "
?LEVELUP_CREATURE
	; save the base pointer
	PUSH		HL
	SWITCH_RAM_BANK		WRAM_BATTLE
	
	; get random index for the stat table (pre_calc step)
	RANDOM4	
	
	LD			C,A
	LD			B,NUM_OF_LEVELUP_STATS															
	CALL		?MULT						; HL:	<- B * C ; DE IS trashed	
	LD			A,L
	LD			(LVL_UP_STAT_INDEX),A		;STAT_INDEX is (random 0..3)*5
	
	; get random index for energy addition
	RANDOM4	
	INC		A
	LD			(LVL_UP_ENERGY_INDEX),A
	
	POP			HL							; get base pointer
	PUSH		HL							; save base pointer
	
	; get the creature type and put it into DE register 
	LD			BC,CREATURE_TYPE
	ADD			HL,BC
	LD			D,00
	LD			E,(HL)
	
	;************************************************
	;  1. change XP
	; check if we want to levelup WITHOUT changing XP
	LD			A,(LVL_UP_FLAGS)
	BIT			0,A
	JR			NZ,_CHANGE_LVL_STAT			
	
	; get base pointer
	POP			HL
	PUSH		HL

	;1.a get xp pointer
	LD			BC,CREATURE_EXPH
	ADD			HL,BC
	PUSH		HL                      ;this is xp pointer
	;1.b put (contents of HL -16bit-) into HL
	LD			A,(HLI)
	LD			L,(HL)
	LD			H,A
	;1.c subtract by xp_per_level_delta
	LD			BC,EXP_PER_CREATURE_LEVELUP
	TWOS_COMP	B,C
	ADD			HL,BC
	;1.d store the new xp back into CREATURE_BTL's structure
	LD			A,H
	LD			C,L
	POP			HL						;get the back xp pointer
	LD			(HLI),A	
	LD			(HL),C			
	
	;*****************************************************
	;  2. change LVL	
_CHANGE_LVL_STAT
	;get back base pointer
	POP			HL
	PUSH		HL
	
	;2.a get the creatures lvl pointer
	LD			BC,CREATURE_LVL
	ADD			HL,BC
	;2.b put contents into LVL_UP_STAT_LEVEL 
	;    and increment level and save it back
	LD			A,(HL)
	LD			(LVL_UP_STAT_LEVEL),A
	;2.c if MAX LVL leave this function
	CP			MAX_CREATURE_EXP_LEVEL
	JR			NZ,_NOT_MAX_LEVEL
	POP 		HL
	RET
_NOT_MAX_LEVEL	
	INC			A
	LD			(HL),A
		
	; check if you reached the upper levels: 
	; if so force the stat index to zero
	CP			CREATURE_EXP_LEVEL_ZONE3
	JR			C,_LESS_THAN_ZONE4
	XOR 		A
	LD			(LVL_UP_STAT_INDEX),A
_LESS_THAN_ZONE4	
	
	;*********************************************************
	;   3. get STATS
	;3.c now we copy each of the stats into the temp vars
	CALL		?LEVELUP_STRDELTA
	LD			(LVL_UP_STAT_ATTACK),A	
	CALL		?LEVELUP_SKILLDELTA
	LD			(LVL_UP_STAT_SPECIAL),A
	CALL		?LEVELUP_SPEEDDELTA
	LD			(LVL_UP_STAT_SPEED),A
	CALL		?LEVELUP_DEFDELTA
	LD			(LVL_UP_STAT_DEFENSE),A
	CALL		?LEVELUP_RESISTDELTA
	LD			(LVL_UP_STAT_SP_DEF),A
	
	;get back base pointer
	POP			HL
	PUSH		HL
		
	;**********************************************************
	;    4. set STATS
	;4.a get the creature's stats pointer base
	; (I assume they will be in exact order as table)
	LD			DE,CREATURE_STR
	ADD			HL,DE
	
	;4.b increment stat and check for bounds 
	;    (right now, all stats have a boundary of 99)
_INC_ATTACK
	LD			A,(LVL_UP_STAT_ATTACK)
	ADD			A,(HL)
	CP			MAX_STR_STAT_BOUNDARY
	JR 			C,_STORE_ATTACK
	LD			A,MAX_STR_STAT_BOUNDARY
_STORE_ATTACK
	LD			(HL),A
		
_INC_SPECIAL
	INC			HL
	LD			A,(LVL_UP_STAT_SPECIAL)
	ADD			A,(HL)
	CP			MAX_SKILL_STAT_BOUNDARY
	JR 			C,_STORE_SPECIAL
	LD			A,MAX_SKILL_STAT_BOUNDARY
_STORE_SPECIAL
	LD			(HL),A
	
_INC_SPEED
	INC			HL
	LD			A,(LVL_UP_STAT_SPEED)
	ADD			A,(HL)
	CP			MAX_SPEED_STAT_BOUNDARY
	JR 			C,_STORE_SPEED
	LD			A,MAX_SPEED_STAT_BOUNDARY
_STORE_SPEED
	LD			(HL),A
	
_INC_DEFENSE
	INC			HL
	LD			A,(LVL_UP_STAT_DEFENSE)
	ADD			A,(HL)
	CP			MAX_DEFENSE_STAT_BOUNDARY
	JR 			C,_STORE_DEFENSE
	LD			A,MAX_DEFENSE_STAT_BOUNDARY
_STORE_DEFENSE
	LD			(HL),A
	
_INC_SPECIAL_DEFENSE
	INC			HL
	LD			A,(LVL_UP_STAT_SP_DEF)
	ADD			A,(HL)
	CP			MAX_RESIST_STAT_BOUNDARY
	JR 			C,_STORE_SPECIAL_DEFENSE
	LD			A,MAX_RESIST_STAT_BOUNDARY
_STORE_SPECIAL_DEFENSE
	LD			(HL),A
	
	;**********************************************************
	;    5. get ENERGY
	;get back base pointer
	POP			HL
	PUSH		HL

	; Old logic:
	;5.a get the energy increment from xram
	;LD			BC,CREATURE_ENERGYUP
	;ADD			HL,BC
	;LD			A,(HL)
	;LD			L,A
	;LD			H,0
	;LD			D,H
		
	;5.b add the energy_stat scalar (0..4)
	;LD			A,(LVL_UP_ENERGY_INDEX)
	;LD			E,A
	;ADD			HL,DE
	;LD			E,L				;store incremental in 'E' reg (D is 0)

; Our new logic needs to end with the gain in reg E
	GET_STAT_GAIN_INDEX	CREATURE_ENGMAXH
	PUSH				BC

	; Energy is in the TYPE field
	LD		A,(BTL_TARGET_TYPE)
	; Energy is in the lower 4 bits so we dont need to bit shift and can just mask
	AND     %00001111
	LD		B,A
	LD		C,8
	CALL	?MULT
	LD		DE,LVLUP_ENERGY_TABLES
	ADD		HL,DE
	POP		BC
	ADD		HL,BC
	LD		D,0
	LD		E,(HL)
	
	;get back base pointer
	POP			HL
	PUSH		HL
	
	;5.c get energy stat pointer
	LD			BC,CREATURE_ENGMAXH
	ADD			HL,BC
	PUSH		HL                      ;this is energy_stat pointer
	
	;5.d put (contents of HL -16bit-) into HL
	;    also add the levelup energy incremental (see step 5.b)
	LD			A,(HLI)
	LD			L,(HL)
	LD			H,A
	ADD			HL,DE
	
;****************************************************************
;       6. set ENERGY
	
	;6.a		boundary check the result
	LD			DE,MAX_ENERGY_STAT_BOUNDARY
	;					 	 		- if (HL < DE) continue ...
	LD 			A,H						; get MSB of value A 
	CP 			D 						; compare with MSB of value B
 	JR 			NZ,_IS_HL_LESS			; not equal, test for greater than 
	LD 			A,L						; get LSB of value A 
	CP 			E						; compare with LSB of value B 
_IS_HL_LESS
	JR 			C,_STORE_ENERGY_RESULT	
	;no then cap the result to max
	LD			H,D
	LD			L,E		
	
_STORE_ENERGY_RESULT	
	;6.b			store the new energy stat back into CREATURE_BTL's structure
	LD			A,H
	LD			C,L
	POP			HL						;get energy stat pointer
	LD			(HLI),A	
	LD			(HL),C						
	 
;**********************************************************
;    7. check LEARNING A NEW CMD
	
	;-------------------------------
	; display the results
	POP			HL						;get back base pointer
	PUSH		HL			
	; get luck_func(10)
	LD			BC,CREATURE_LUCK
	ADD			HL,BC
	LD			B,(HL)
	LD			A,10
	CALL		?BATTLE_LUCK
	LD			B,A
	
	; add luck_func(4) to lvl+1
	LD			A,(LVL_UP_STAT_LEVEL)
	INC			A
	ADD			A,B
	LD			(LVL_UP_STAT_LEVEL),A   ; here I assume that I won't use LVL_UP_STAT_LEVEL again
	
	; save restore base pointer
	POP			HL
	
	; check lvl for cmd -- if CMD < (lvl+luck bonus+1) then set new CMD
	CALL		?CHECK_NEWCMD
		
_DISPLAY_TEXT	
	CALL		?LEVELUP_CREATURE_DISPLAYTEXT
	RET

;********************************
; Displays the results of a LEVELUP 
; HL = CREATURE_BTL POINTER
; LVL_UP_FLAGS		= the tells if we need to actually display text
; IF BIT 1 OF (LVL_UP_FLAGS) == FALSE " WE DON'T DISPLAY TEXT "
; IF BIT 7 OF (LVL_UP_FLAGS) == TRUE  " WE USE NEW CMD SCRIPT "
?LEVELUP_CREATURE_DISPLAYTEXT
	LD		A,(LVL_UP_FLAGS)
	BIT		1,A
	RET		Z
	
	;init the text params
	CALL	?COPYBUFFER_NAME
	CALL	?COPYBUFFER_LVL
	CALL	?COPYBUFFER_ENERGY
	CALL	?COPYBUFFER_ATTACK
	CALL	?COPYBUFFER_MAG_ATTACK
	CALL	?COPYBUFFER_SPEED
	CALL	?COPYBUFFER_DEFENSE
	CALL	?COPYBUFFER_RESIST
	
	; IF BIT 7 OF (LVL_UP_FLAGS) == TRUE  " WE USE NEW CMD SCRIPT "
	LD		A,(LVL_UP_FLAGS)
	BIT		7,A
	JR		NZ,	_TXT_NEWCMD
_TXT_NORMAL	
	;copy into text buffer
	TEXT_SET_PARAMS	TEXT_PARAM_BUFFER
	SCRIPT_SET		TEXT_SCRIPT,?_BTL_LVLUP_CREATURE_MSG	
	JR		_TXT_LOOP
_TXT_NEWCMD	
	; reset the flag
	RES			7,A
	LD			(LVL_UP_FLAGS),A
	CALL	?COPYBUFFER_NEWCMD
	;copy into text buffer
	TEXT_SET_PARAMS	TEXT_PARAM_BUFFER
	SCRIPT_SET		TEXT_SCRIPT,?_BTL_LVLUP_CREATURE_MSG2	
		
	;make sure params and script are set
	;------------------------------
_TXT_LOOP
		CALL_FOREIGN	?BTL_TEXT_LOOP
	RET

;********************************
; Displays the results of a LEVELUP 
; HL = CREATURE_BTL POINTER
; LVL_UP_FLAGS		= the tells if we need to actually display text
; IF BIT 1 OF (LVL_UP_FLAGS) == FALSE " WE DON'T DISPLAY TEXT "
?LEVELUP_MAGI_DISPLAYTEXT
	LD		A,(LVL_UP_FLAGS)
	BIT		1,A
	RET		Z
	
	;init the text params
	CALL	?COPYBUFFER_NAME
	CALL	?COPYBUFFER_LVL
	CALL	?COPYBUFFER_ENERGY

	;copy into text buffer
	TEXT_SET_PARAMS	TEXT_PARAM_BUFFER
	SCRIPT_SET		TEXT_SCRIPT,?_BTL_LVLUP_MAGI_MSG	
		
	;make sure params and script are set
	;------------------------------
_TXT_LOOP
		CALL_FOREIGN	?BTL_TEXT_LOOP
	RET

;********************************
; LEVELUP "MAGI" TO NEXT LEVEL
; HL = CREATURE_BTL POINTER
; IF BIT 0 OF (LVL_UP_FLAGS) == TRUE " WE DON'T CHANGE XP "
; IF BIT 1 OF (LVL_UP_FLAGS) == FALSE " WE DON'T DISPLAY TEXT "
?LEVELUP_MAGI
	; save the base pointer
	PUSH		HL
	SWITCH_RAM_BANK		WRAM_BATTLE
	
	;********************************
	;1. change XP
	; check if we want to levelup WITHOUT changing XP
	LD			A,(LVL_UP_FLAGS)
	BIT			0,A
	JR			NZ,_CHANGE_LVL_STAT			
	
	LD			BC,EXP_PER_MAGI_LEVELUP
	TWOS_COMP	B,C
	CALL		?INCREMENT_CREATURE_EXP
	
	;********************************
	;2. change LVL	
_CHANGE_LVL_STAT
	;get back base pointer
	POP			HL
	PUSH		HL
	
	;2.a get the creatures lvl pointer
	LD			BC,CREATURE_LVL
	ADD			HL,BC
	;2.b put contents into LVL_UP_STAT_LEVEL and increment level and save it back
	LD			A,(HL)
	LD			(LVL_UP_STAT_LEVEL),A
	;2.c if MAX LVL leave this function
	CP			MAX_MAGI_EXP_LEVEL
	JR			NZ,_NOT_MAX_LEVEL
	POP 		HL
	RET
_NOT_MAX_LEVEL	
	INC			A
	LD			(HL),A
		
	;********************************
	;3. change ENERGY	
	; get base pointer	
	POP			HL
	; based on the (previous) MAGI's level increment the MAGI's life
	LD			A,(LVL_UP_STAT_LEVEL)
	INC			A
	CP			MAGI_EXP_LEVEL_ZONE1
	JR			NC,_ZONE2	
_ZONE1
	LD			DE,MAGI_ZONE1_ENERGY_INC
	JR			_INC_MAGI_ENERGY	
_ZONE2
	CP			MAGI_EXP_LEVEL_ZONE2
	JR			NC,_ZONE3				; 1 LIFE IS GIVEN IN ZONE 3 (TO MAX OUT GET IT BY ITEMS)
	LD			DE,MAGI_ZONE2_ENERGY_INC
	JR			_INC_MAGI_ENERGY	
_ZONE3
	LD			DE,MAGI_ZONE3_ENERGY_INC
_INC_MAGI_ENERGY	
	CALL		?INCREMENT_MAGI_ENERGY		
_DISPLAY_TEXT	
	CALL		?LEVELUP_MAGI_DISPLAYTEXT
	RET	
	
;********************************	
?LEVELUP_SKILLDELTA

	GET_STAT_GAIN_INDEX CREATURE_SKILL
	PUSH				BC
	JR					_LOOKUP

_RANDOM
	RANDVAL	E
	LD		C,A
	LD		B,8
	CALL	?DIV
	LD		C,L

	LD		B,0
	PUSH    BC

; Begin new logic
_LOOKUP
	; Skill is in the TYPE2 field
	LD		A,(BTL_TARGET_TYPE2)
	; Skill is in the lower 4 bits so we dont need to bit shift and can just mask
	AND     %00001111
	LD		B,A
	LD		C,8
	CALL	?MULT
	LD		DE,LVLUP_STAT_TABLES
	ADD		HL,DE
	POP		BC
	JR      _READY

_READY
	ADD		HL,BC
	LD		A,(HL)
	
	RET
	
;********************************	
?LEVELUP_SPEEDDELTA

	GET_STAT_GAIN_INDEX CREATURE_SPEED
	PUSH				BC
	JR					_LOOKUP

_RANDOM
	RANDVAL	E
	LD		C,A
	LD		B,8
	CALL	?DIV
	LD		C,L
	LD		B,0
	PUSH	BC

	; Speed is in the TYPE field
_LOOKUP
	LD		A,(BTL_TARGET_TYPE)
	; Speed is in the upper 4 bits so we swap then mask
	SWAP	A
	AND     %00001111
	LD		B,A
	LD		C,8
	CALL	?MULT
	LD		DE,LVLUP_STAT_TABLES
	ADD		HL,DE
	POP		BC
	JR      _READY

_READY
	ADD		HL,BC
	LD		A,(HL)
	
	RET


;********************************	
?LEVELUP_DEFDELTA

	LD		B,B
	GET_STAT_GAIN_INDEX CREATURE_DEF
	PUSH				BC
	JR					_LOOKUP

_RANDOM
	RANDVAL	E
	LD		C,A
	LD		B,8
	CALL	?DIV
	LD		C,L
	LD		B,0
	PUSH BC

	; Def is in the ENERGYUP field
_LOOKUP
	LD		A,(BTL_TARGET_ENERGYUP)
	; Def is in the upper 4 bits so we shift then mask
	SWAP    A
	AND     %00001111
	LD		B,A
	LD		C,8
	CALL	?MULT
	LD		DE,LVLUP_STAT_TABLES
	ADD		HL,DE
	POP		BC
	JR      _READY

_READY
	ADD		HL,BC
	LD		A,(HL)
	RET

;********************************	
?LEVELUP_RESISTDELTA
	

	GET_STAT_GAIN_INDEX CREATURE_RESIST
	PUSH				BC
	JR					_LOOKUP

_RANDOM
	RANDVAL	E
	LD		C,A
	LD		B,8
	CALL	?DIV
	LD		C,L
	LD		B,0
	PUSH	BC

	; Res is in the ENERGYUP field
_LOOKUP
	LD		A,(BTL_TARGET_ENERGYUP)
	; Res is in the lower 4 bits so just mask
	AND     %00001111
	LD		B,A
	LD		C,8
	CALL	?MULT
	LD		DE,LVLUP_STAT_TABLES
	ADD		HL,DE
	POP		BC
	JR      _READY

_READY
	ADD		HL,BC
	LD		A,(HL)

	RET

;********************************	
?LEVELUP_STRDELTA


	GET_STAT_GAIN_INDEX CREATURE_STR
	PUSH				BC
	JR					_LOOKUP

_RANDOM
	RANDVAL	E
	
; Note that for this one we have to copy over the index generation
; because the OG function uses a different one
	LD		C,A
	LD		B,8
	CALL	?DIV
	LD		C,L
	LD		B,0	
	PUSH    BC

	; Str is in the TYPE2 field
_LOOKUP
	LD		A,(BTL_TARGET_TYPE2)
	; Str is in the upper 4 bits so we shift and then mask
	SWAP	A
	AND     %00001111
	LD		B,A
	LD		C,8
	CALL	?MULT
	LD		DE,LVLUP_STAT_TABLES
	ADD		HL,DE
	POP		BC
	JR      _READY

_READY
	ADD		HL,BC
	LD		A,(HL)
	
	RET
	
LVLUP_STR_TABLE
	DB		1,2,1,2,0,3,2,1	
	
LVLUP_SMALL_DEF_TABLE
LVLUP_SMALL_RESIST_TABLE
LVLUP_LARGE_SPEED_TABLE
LVLUP_LARGE_SKILL_TABLE
LVLUP_WEAK_TABLE
LVLUP_60_TABLE
	DB		0,0,1,1,1,1,0,0,2,0
	
LVLUP_MED_TABLE
LVLUP_80_TABLE
	DB		0,2,1,1,1,1,0,0,2,0

LVLUP_LARGE_DEF_TABLE
LVLUP_LARGE_RESIST_TABLE
LVLUP_SMALL_SPEED_TABLE
LVLUP_SMALL_SKILL_TABLE
LVLUP_BEATDOWN_TABLE
LVLUP_99_TABLE
	DB		0,3,1,1,1,1,0,1,2,0

; New level up tables

LVLUP_STAT_TABLES
	DB 0,0,0,1,0,0,0,0 ; 0.125
	DB 0,0,1,0,0,1,0,0 ; 0.25
	DB 0,1,1,0,0,0,1,0 ; 0.375
	DB 1,0,1,0,1,1,0,0 ; 0.5
	DB 0,1,0,1,1,1,0,1 ; 0.625
	DB 0,1,1,1,0,1,1,1 ; 0.75
	DB 0,1,1,0,1,1,2,1 ; 0.875
	DB 0,1,2,1,1,1,1,1 ; 1.0 
	DB 0,1,1,1,2,1,1,2 ; 1.125
	DB 0,1,1,2,1,2,1,2 ; 1.25
	DB 0,3,1,2,1,1,2,1 ; 1.475
	DB 0,2,1,3,1,2,2,1 ; 1.5
	DB 0,2,2,1,3,2,2,1 ; 1.625
	DB 0,2,2,3,2,1,2,3 ; 1.75
	DB 0,3,1,2,1,2,3,3 ; 1.875
	DB 0,2,3,1,2,3,2,3 ; 2.0

LVLUP_ENERGY_TABLES 
	DB 1,2,0,1,1,2,1,0 ; 1.0
	DB 1,0,1,2,1,1,2,2 ; 1.25
	DB 0,2,1,2,1,1,2,3 ; 1.5
	DB 0,2,3,1,1,2,2,3 ; 1.75
	DB 1,2,3,2,2,1,2,3 ; 2.0
	DB 2,3,1,2,3,2,3,2 ; 2.25
	DB 3,1,3,2,3,3,2,4 ; 2.5
	DB 4,1,2,2,3,3,3,4 ; 2.75
	DB 2,4,4,2,3,3,4,2 ; 3.0
	DB 3,3,2,4,3,3,4,4 ; 3.25
	DB 4,2,4,4,2,5,2,5 ; 3.5
	DB 3,5,4,5,3,4,2,4 ; 3.75
	DB 4,2,5,3,5,4,3,6 ; 4.0
	DB 2,6,4,5,4,3,6,4 ; 4.25
	DB 6,5,4,6,6,3,4,2 ; 4.5
	DB 5,6,4,6,3,4,6,4 ; 4.75

; Speed tables: Range from 0.2 gain at worst up to 1.2 gain at best
LVLUP_SPD_LOW_TABLE ; 0.2 gain
	DB 0,0,0,1,1,0,0,0,0,0
LVLUP_SPD_MED_TABLE ; 0.5 gain
	DB 0,0,1,1,1,1,1,0,0,0
LVLUP_SPD_BIG_TABLE ; 0.9 gain
	DB 0,1,1,1,1,1,1,1,2,0
LVLUP_SPD_MGA_TABLE ; 1.2 gain
	DB 0,1,1,1,1,1,1,2,3,0

; Attack tables: Range from 0.2 gain at worst up to 1.4 gain at best
LVLUP_ATK_LOW_TABLE ; 0.2 gain
	DB 0,0,0,1,1,0,0,0,0,0
LVLUP_ATK_MED_TABLE ; 0.6 gain
	DB 0,0,1,1,1,1,1,0,1,0
LVLUP_ATK_BIG_TABLE ; 1.0 gain
	DB 0,1,1,1,1,1,1,2,2,0
LVLUP_ATK_MGA_TABLE ; 1.4 gain
	DB 0,1,1,1,2,2,2,2,3,0

; Defense tables: Range from 0.2 gain at worst up to 1.2 gain at best 
LVLUP_DEF_LOW_TABLE ; 0.2 gain
	DB 0,0,0,0,1,1,0,0,0,0
LVLUP_DEF_MED_TABLE ; 0.5 gain
	DB 0,0,1,1,1,1,0,0,1,0
LVLUP_DEF_BIG_TABLE ; 0.9 gain
	DB 0,1,1,1,1,1,0,2,2,0
LVLUP_DEF_MGA_TABLE ; 1.2 gain
	DB 0,1,1,1,1,1,1,2,3,0

; Resist tables: Range from 0.1 gain at worst up to 0.8 gain at best
; Note that we give lower resist numbers across the board to make up for SKL-
; based attackers relying on energy to do anything useful. Gains are weighted
; toward the bottom end.
LVLUP_RES_LOW_TABLE ; 0.1 gain
	DB 0,0,0,1,0,0,0,0,0,0
LVLUP_RES_MED_TABLE ; 0.2 gain
	DB 0,0,0,1,0,1,0,0,0,0
LVLUP_RES_BIG_TABLE ; 0.4 gain
	DB 0,0,0,1,1,1,0,0,1,0
LVLUP_RES_MGA_TABLE ; 0.8 gain
	DB 0,0,1,1,1,1,1,1,2,0

	
;********************************	
?RINGSMITH_GENERATE_CREATURE

	FGET16	B,C,RINGSMITH_XRAM_CREATURE
	LD		HL,BTL_TARGET
	LD		A,(RINGSMITH_LVL_TO_RAISE)
	DEC		A
	PUSH	AF
	
	SWITCH_RAM_BANK	WRAM_BATTLE
	
	CALL	?BTL_SUMMON_CREATURE
	
	;Level up the creature to its current form
	;--------------------------------
	XOR		A
	SET		0,A
	RES		1,A
	LD		(LVL_UP_FLAGS),A
	
	POP		AF
	
	AND		A
	JR		Z,_NO_LVL
	
_LVLUP_LOOP
	LD		HL,BTL_TARGET
	PUSH	AF
	CALL	?LEVELUP_CREATURE
	POP		AF
	DEC		A
	JR		NZ,_LVLUP_LOOP
	
_NO_LVL
	FGET16	B,C,RINGSMITH_XRAM_CREATURE
	LD		HL,BTL_TARGET
	CALL	?BTL_UNSUMMON_CREATURE			
	
	RET

;******************************	
; HL = CREATURE_BTL POINTER
; DE = 'CMD NAME OFFSET EQU'
?SET_NEWCMD_STRING_PARAMS	
	PUSH	HL
	ADD		HL,DE
	; DEREF INTO DE
	LD		A,(HLI)
	LD		D,(HL)
	LD		E,A
	FSET16	D,E,BTL_CMD_BASE_PTR
	MOVADDR	BTL_TEXT_BUFFER_PTR,TEXT_PARAM_BUFFER+33
	POP		HL
	RET
;********************************
	END
;********************************