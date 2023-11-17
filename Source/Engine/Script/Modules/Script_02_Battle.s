;********************************
; SCRIPT_02_BATTLE.S
;********************************
;	Author:	Dylan "I WIN!" Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
;PARAMS:
;BYTE: CREATURE ACTING ON
;WORD: PTR TO ATTACK STRUCTURE
;BYTE: TARGET
?CMD_BTLATTACK_02	
	
	CALL	?SCRIPT_BTL_OPEN_CREATURE
	
	;Open the command and see if it is legal
	;------------------------------
	LD		BC,BTL_SCRIPT_BUFFER+1	
	LD		HL,BTL_TABLE_COPY_FROM
	LD_HLI_BCI
	LD_HLI_BCI
	LD		BC,BTL_CREATURE_FUNC_PTR
	FSET16	B,C,BTL_TABLE_COPY_TO	
	CALL_FOREIGN	?BTL_CMD_COPY_CMD
	
	CALL_FOREIGN	?BTL_CHECK_TARGET
	LD		A,(BTL_CMD_VALID)
	AND		A
	RET		Z			;IF INVALID, GO HOME, DEAL.
		
	CALL	?SCRIPT_BTL_DETERMINE_TARGET
	
	RET

;********************************
;PARAMS:
;BYTE: CREATURE ACTING ON
;WORD: PTR TO SPELL/ITEM STRUCTURE
;BYTE: TARGET
?CMD_BTLCASTSPELL_02

	CALL	?SCRIPT_BTL_OPEN_CREATURE
	
	;Open the spell command
	;-----------------------
	LD		BC,CMD_SPELL
	FSET16	B,C,BTL_TABLE_COPY_FROM
	LD		BC,BTL_CREATURE_FUNC_PTR
	FSET16	B,C,BTL_TABLE_COPY_TO	
	CALL_FOREIGN	?BTL_CMD_COPY_CMD
	
	;Copy the item to the buffer
	;----------------------------
	FGET16	B,C,BTL_SCRIPT_BUFFER+1	
	FSET16	B,C,INV_OBJ_PTR
	FSET16	B,C,BTL_CREATURE_ITEM
	LD		BC,BTL_TABLE_COPY_BUFFER
	FSET16	B,C,INV_ADDR
	CALL_FOREIGN	?INV_COPY_ITEM_ARRAY
	
	;Copy its params for target checking
	;---------------------------
	LD		HL,BTL_TABLE_COPY_BUFFER	;LOAD THE TARGET MODE
	LD		BC,ITEM_TARGET_OFFSET
	ADD		HL,BC
	LD		A,(HL)
	LD		(BTL_CREATURE_TARGET),A
	
	LD		HL,BTL_TABLE_COPY_BUFFER	;LOAD THE COST
	LD		BC,SPELL_COST_OFFSET	
	ADD		HL,BC
	LD		A,(HL)
	LD		(BTL_CREATURE_COST),A		
	
	;See if it is valid
	;-------------------------
	LD		A,BTL_ID_MAGI
	LD		(BTL_ACTIVE_TURN),A
	CALL_FOREIGN	?BTL_CHECK_TARGET
	LD		A,(BTL_CMD_VALID)
	AND		A
	RET		Z			;IF INVALID, GO HOME, DEAL.
	
	CALL	?SCRIPT_BTL_DETERMINE_TARGET
	
	RET

;********************************
?CMD_BTLEVALUATE_02

	RET

;********************************
;PARAMS:
;BYTE: CREATURE ACTING ON (SHOULD BE MAGI)
?CMD_BTLFOCUS_02
	
	CALL	?SCRIPT_BTL_OPEN_CREATURE
	
	;Open the focus command
	;-----------------------
	LD		BC,CMD_FOCUS
	FSET16	B,C,BTL_TABLE_COPY_FROM
	LD		BC,BTL_CREATURE_FUNC_PTR
	FSET16	B,C,BTL_TABLE_COPY_TO	
	CALL_FOREIGN	?BTL_CMD_COPY_CMD
	
	;Make the target itself
	;-----------------------
	LD		A,(BTL_SCRIPT_BUFFER)
	LD		(BTL_CREATURE_TARGET),A
	
	;Close the creture
	;--------------------------
	CALL	?SCRIPT_BTL_BENCH_FROM_SLOT
	LD		BC,BTL_CREATURE
	CALL	?BTL_CREATURE_CLOSE	

	RET

;********************************	
;PARAMS:
;BYTE: CREATURE BEING GRANTED
;BYTE: CREATURE BEING GRANTED'S LVL
?CMD_BTLRINGGIVE_02

	LD		HL,BTL_SCRIPT_BUFFER

	LD		A,(HLI)	
	LD		(RINGSMITH_CREATURE_MAKE),A	
	
	LD		A,(HL)	
	LD		(RINGSMITH_LVL_TO_RAISE),A	
	
	CALL_FOREIGN	?_GENERATE_CREATURE

	RET

;********************************
;PARAMS:
;BYTE: CREATURE ACTING ON (SHOULD BE MAGI)
;BYTE: CREATURE BEING SUMMONED'S ID
;BYTE: CREATURE BEING SUMMONED'S LVL
;BYTE: CREATURE BEING SUMMONED'S ENERGY
?CMD_BTLSUMMON_02

	CALL	?SCRIPT_BTL_OPEN_CREATURE
	
	;Open the summon command
	;------------------------
	LD		BC,CMD_SUMMON_MAGI
	FSET16	B,C,BTL_TABLE_COPY_FROM
	LD		BC,BTL_CREATURE_FUNC_PTR
	FSET16	B,C,BTL_TABLE_COPY_TO	
	CALL_FOREIGN	?BTL_CMD_COPY_CMD
	
	;Copy its params for target checking
	;---------------------------
	LD		A,BTL_ID_MAGI
	SET		7,A
	LD		(BTL_ACTIVE_TURN),A
	
	LD		A,BTL_TARGET_ALLYEMPTY
	LD		(BTL_CREATURE_TARGET),A
	
	LD		A,(BTL_SCRIPT_BUFFER+3)		;LOAD THE COST
	LD		(BTL_CREATURE_COST),A	
	
	CALL_FOREIGN	?BTL_CHECK_TARGET
	LD		A,(BTL_CMD_VALID)
	AND		A
	RET		Z			;IF INVALID, GO HOME, DEAL.
		
	;Load summon params
	;-----------------------------
	LD		BC,BTL_MAGI_SUMMON_CREATURE
	LD		HL,BTL_SCRIPT_BUFFER+1
	LD_BCI_HLI
	LD_BCI_HLI
	LD_BCI_HLI
	
	;Make the target first open slot
	;-----------------------
	LD		HL,BTL_CREATURE_SLOTS+BTL_ID_ENEMY0
	LD		BC,BTL_BEING_SUMMONED+BTL_ID_ENEMY0
	LD		D,4
	
_SETUP_LOOP
	LD		A,(BC)
	INC		BC
	ADD		A,(HL)
	LD		(HLI),A
	DEC		D
	JR		NZ,_SETUP_LOOP	
	
	LD		HL,BTL_CREATURE_SLOTS+BTL_ID_ENEMY1
	LD		E,BTL_ID_ENEMY1
	
_TARGET_LOOP
	LD		A,(HLI)
	AND		A
	JR		Z,_HAVE_TARGET
	INC		E
	LD		A,E
	CP		BTL_ID_MAGI
	JR		Z,_TARGET_0
	JR		_TARGET_LOOP	
	
_TARGET_0
	LD		E,BTL_ID_ENEMY0
	
_HAVE_TARGET
	LD		A,E
	LD		(BTL_CREATURE_TARGET),A
	
	;Fix the creature slots
	;------------------------
	LD		HL,BTL_CREATURE_SLOTS+BTL_ID_ENEMY0
	LD		BC,BTL_BEING_SUMMONED+BTL_ID_ENEMY0
	LD		D,4
	
_DONE_LOOP
	LD		A,(BC)
	INC		BC
	LD		E,A
	LD		A,(HL)
	SUB		E
	LD		(HLI),A
	DEC		D
	JR		NZ,_DONE_LOOP
	
	;Close the creture
	;--------------------------
	LD		A,(BTL_SCRIPT_BUFFER)
	CALL	?SCRIPT_BTL_BENCH_FROM_SLOT
	LD		BC,BTL_CREATURE
	CALL	?BTL_CREATURE_CLOSE
	
	;Start the sparkle
	;---------------------------
	LD		A,(BTL_CREATURE_TARGET)
	LD		(BTL_ACTOR_AFFECTING),A
	LD		A,BTL_SUMMON_SPARKLE
	LD		(BTL_ACTOR_EFFECT_TYPE),A
	CALL_FOREIGN		?BTL_SET_ACTOR_EFFECT

	RET

;********************************	
;BYTE: CREATURE ACTING ON (SHOULD BE MAGI)
;BYTE: CREATURE BEING SUMMONED'S ID
;BYTE: CREATURE BEING SUMMONED'S LVL
;BYTE: CREATURE BEING SUMMONED'S ENERGY
;BYTE: TURNS TIL THE CREATURE APPEARS
?CMD_BTLSUMMONDELAY_02
	
	XOR		A
	LD		(BTL_SCRIPT_NO_ENERGY),A

	CALL	?CMD_BTLSUMMON_02
	
	LD		A,(BTL_CMD_VALID)
	AND		A
	JR		NZ,_VALID	;IF INVALID, GO HOME, DEAL.
	LD		A,(BTL_SCRIPT_NO_ENERGY)
	AND		A
	RET		Z
	XOR		A
	LD		(BTL_CREATURE_ENGH),A
	LD		A,1
	LD		(BTL_CREATURE_ENGL),A
	RET
	
_VALID

	BTL_SET_MAGI_ANIM	(BTL_ENEMY_ID),SUMMON_ANIM,BTL_ID_MAGI_ACTOR

	CALL	?BTL_COMMON_SUMMON
	
	;Close the creature into its slot
	;------------------------
	FGET16	H,L,BTL_TARGET_SLOT
	LD		BC,BTL_TARGET
	CALL	?BTL_CREATURE_CLOSE	
	
	;Set the delay slot
	;----------------------
	LD		A,(BTL_CREATURE_TARGET)
	LD		C,A
	LD		B,0
	LD		HL,BTL_BEING_SUMMONED
	ADD		HL,BC
	LD		A,(BTL_SCRIPT_BUFFER+4)
	INC		A
	LD		(HL),A
	
	;Set command to none
	;------------------------
	LD		BC,?CMD_FUNC_NONE
	FSET16	B,C,BTL_CREATURE_FUNC_PTR
	
	;Close the creture
	;--------------------------
	LD		A,(BTL_SCRIPT_BUFFER)
	CALL	?SCRIPT_BTL_BENCH_FROM_SLOT
	LD		BC,BTL_CREATURE
	CALL	?BTL_CREATURE_CLOSE	

	RET
	
;********************************
;PARAMS:
;BYTE: CREATURE ACTING ON
;WORD: PTR TO SPELL/ITEM STRUCTURE
;BYTE: TARGET
?CMD_BTLUSEITEM_02

	CALL	?SCRIPT_BTL_OPEN_CREATURE
	
	;Open the spell command
	;-----------------------
	LD		BC,CMD_ITEM
	FSET16	B,C,BTL_TABLE_COPY_FROM
	LD		BC,BTL_CREATURE_FUNC_PTR
	FSET16	B,C,BTL_TABLE_COPY_TO	
	CALL_FOREIGN	?BTL_CMD_COPY_CMD
	
	;Copy the item to the buffer
	;----------------------------
	FGET16	B,C,BTL_SCRIPT_BUFFER+1	
	FSET16	B,C,INV_OBJ_PTR
	FSET16	B,C,BTL_CREATURE_ITEM
	LD		BC,BTL_TABLE_COPY_BUFFER
	FSET16	B,C,INV_ADDR
	CALL_FOREIGN	?INV_COPY_ITEM_ARRAY
	
	;Copy its params for target checking
	;---------------------------
	LD		HL,BTL_TABLE_COPY_BUFFER	;LOAD THE TARGET MODE
	LD		BC,ITEM_TARGET_OFFSET
	ADD		HL,BC
	LD		A,(HL)
	LD		(BTL_CREATURE_TARGET),A
	
	LD		HL,BTL_TABLE_COPY_BUFFER	;LOAD THE COST
	LD		BC,SPELL_COST_OFFSET	
	ADD		HL,BC
	LD		A,(HL)
	LD		(BTL_CREATURE_COST),A		
	
	;See if it is valid
	;-------------------------
	CALL_FOREIGN	?BTL_CHECK_TARGET
	LD		A,(BTL_CMD_VALID)
	AND		A
	RET		Z			;IF INVALID, GO HOME, DEAL.
	
	CALL	?SCRIPT_BTL_DETERMINE_TARGET
	
	RET

;********************************
;A: Slot #
;HL <- BENCH ADDRESS
?SCRIPT_BTL_BENCH_FROM_SLOT
	
	LD		B,A
	LD		C,CREATURE_BTL_SIZE
	CALL	?MULT
	LD		BC,BTL_HERO
	ADD		HL,BC

	RET	

;********************************	
;FINDS THE TARGET AND CLOSES THE CREATURE
?SCRIPT_BTL_DETERMINE_TARGET

	;Figure out the target it wants
	;Can be fairly blind since we know the 
	;cmd is legal.
	;------------------------------
	
	;CHECK FOR BLANKET
	;-----------------------
	LD		A,(BTL_CREATURE_TARGET)
	CP		BTL_TARGET_ALLENEMY
	JR		NC,_CLOSE
	
	LD		A,(BTL_SCRIPT_BUFFER+3)
	LD		C,A
	LD		B,0
	LD		HL,BTL_AI_TARGET_TABLE
	ADD		HL,BC
	ECALL_HL
	
	;Close the creature
	;--------------------------
_CLOSE
	LD		A,(BTL_SCRIPT_BUFFER)
	CALL	?SCRIPT_BTL_BENCH_FROM_SLOT
	LD		BC,BTL_CREATURE
	CALL	?BTL_CREATURE_CLOSE

	RET
	
;********************************
;OPENS THE ACTING UPON CREATURE
;ALSO SETS THE TURN SO TARGET CHECKERS 
;WORK RIGHT
?SCRIPT_BTL_OPEN_CREATURE

	;Find the creature's bench slot
	;------------------------------
	LD		A,(BTL_SCRIPT_BUFFER)
	CALL	?SCRIPT_BTL_BENCH_FROM_SLOT
	
	;Open the creature--keep in mind that if 
	;something illegal happens, do NOT close it
	;------------------------------
	LD		B,H
	LD		C,L
	LD		HL,BTL_CREATURE
	CALL	?BTL_CREATURE_OPEN
	
	LD		A,$FF
	LD		(BTL_ACTIVE_TURN),A
	
	RET

;********************************
	END
;********************************