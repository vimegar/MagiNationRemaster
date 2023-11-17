;********************************
; BATTLE_INIT.S
;********************************
;	Author:	Patrick Meehan/Dylan "Don't Forget My Name" Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; BC:	Address of source creature
; HL:	Address of dest creature
?BTL_CREATURE_CLOSE

	; Copy the creature from "active" to "bench"
	;-------------------------------------------
	;NOTE: ITS THE SAME DAMN DEER AS BTL_CREATURE_OPEN.
	;KEEP THE OTHER NAME SO IT MAKES MORE LOGICAL SENSE
	;JUST MAKE SURE YOU HAVE YOUR SOURCE AND DEST REVERSED.
	;SO THAT YOU ARE GOING TO THE BENCH FROM THE ACTIVE

;********************************
; BC:	Address of source creature
; HL:	Address of dest creature
?BTL_CREATURE_OPEN

	SWITCH_RAM_BANK		WRAM_BATTLE
	

	; Copy the creature from "source" to "dest"
	;-------------------------------------------	
	LD		D,CREATURE_BTL_SIZE
	
_OPEN_LOOP
	LD_HLI_BCI
	DEC		D
	JR		NZ,_OPEN_LOOP

	RET

;********************************
;Creature should be in BTL_TARGET
?BTL_GENERATE_CREATURE

	; Input: source creature, dest in battle, total levels to raise

	; Level the creature up by a variable delta
	;---------------------------------
	SET		0,A
	LD		(LVL_UP_FLAGS),A
	LD		A,(BTL_MAGI_SUMMON_LVL)
	
	
_LVLUP_LOOP
	LD		HL,BTL_TARGET
	PUSH	AF
	CALL	?LEVELUP_CREATURE
	POP		AF
	DEC		A
	JR		NZ,_LVLUP_LOOP
	
	
	; Call ?BTL_CREATURE_CLOSE to put the creature into play

	RET


;********************************
	if 0
?DEBUG_WATCH_BLT_TARGET

	

	SWITCH_RAM_BANK		WRAM_BATTLE
	
	LD		A,(BTL_TARGET_TYPE)
	LD		(TARGET_TYPE),A
	
	LD		A,(BTL_TARGET_LVL)
	LD		(TARGET_LVL),A
	
	LD		A,(BTL_TARGET_EXPH)
	LD		(TARGET_EXPH),A
	LD		A,(BTL_TARGET_EXPL)
	LD		(TARGET_EXPL),A
	
	;LD		A,(BTL_TARGET_ENGH)
	;LD		(TARGET_ENGMAXH),A
	;LD		A,(BTL_TARGET_ENGL)
	;LD		(TARGET_ENGMAXL),A
	
	LD		A,(BTL_TARGET_ENGMAXH)
	LD		(TARGET_ENGMAXH),A
	LD		A,(BTL_TARGET_ENGMAXL)
	LD		(TARGET_ENGMAXL),A
	
	LD		A,(BTL_TARGET_SKILL)
	LD		(TARGET_SKILL),A
	
	LD		A,(BTL_TARGET_SKILL)
	LD		(TARGET_SKILL),A
	
	LD		A,(BTL_TARGET_SPEED)
	LD		(TARGET_SPEED),A
	
	LD		A,(BTL_TARGET_DEF)
	LD		(TARGET_DEF),A
	
	LD		A,(BTL_TARGET_RESIST)
	LD		(TARGET_RESIST),A
	
	LD		A,(BTL_TARGET_LUCK)
	LD		(TARGET_LUCK),A
	RET
	

;********************************
?DEBUG_INIT_BLT_TARGET
	SWITCH_RAM_BANK		WRAM_BATTLE
	
	; <test code to fake set up for leveling up creature>
	LD		A,CREATURE_TYPE_MED
	LD		(BTL_TARGET_TYPE),A
	
	LD		A,1
	LD		(BTL_TARGET_LVL),A
	LD		(LVL_UP_STAT_LEVEL),A
	
	LD		A,$03
	LD		(BTL_TARGET_EXPH),A
	LD		A,$20
	LD		(BTL_TARGET_EXPL),A
	
	LD		A,0
	LD		(BTL_TARGET_ENGMAXH),A
	LD		A,100
	LD		(BTL_TARGET_ENGMAXL),A

	LD		A,0
	LD		(BTL_TARGET_ENGH),A
	LD		A,100
	LD		(BTL_TARGET_ENGL),A
	
	LD		A,16
	LD		(BTL_TARGET_SKILL),A
	LD		A,0
	LD		(BTL_TARGET_SKILL),A
	LD		A,0
	LD		(BTL_TARGET_SPEED),A
	LD		A,32
	LD		(BTL_TARGET_DEF),A
	LD		A,0
	LD		(BTL_TARGET_RESIST),A
	LD		A,5
	LD		(BTL_TARGET_LUCK),A
	
	LD		A,1
	LD		(LVL_UP_FLAGS),A
	
	;CALL	?DEBUG_WATCH_BLT_TARGET
	RET
	endif
	
;********************************
?BTL_LEVELUP_MAGI
	SWITCH_RAM_BANK		WRAM_BATTLE
	
	; Raise the level of BTL_TARGET		
	LD		HL,BTL_TARGET
	CALL	?LEVELUP_MAGI

	;CALL	?DEBUG_WATCH_BLT_TARGET

	RET

;********************************
?BTL_LEVELUP_CREATURE
	SWITCH_RAM_BANK		WRAM_BATTLE
	
	; Raise the level of BTL_TARGET		
	LD		HL,BTL_TARGET
	CALL	?LEVELUP_CREATURE

	;CALL	?DEBUG_WATCH_BLT_TARGET

	RET

;********************************
; A:	Which relic
?BTL_MODIFY_ATTACK

	; Always modify BTL_CREATURE

	RET

;********************************
; ():	Which relic (index based 0)
?BTL_MODIFY_CREATURE
	
	; set up offset based on relic
	;LD		A,(TABLE_INDEX)
	;ADD		A,A
	;LD		D,0
	;LD		E,A	
	
	;just in case ... 
	;SWITCH_RAM_BANK		WRAM_BATTLE
	
	;	using a table of function ptrs
	;	use 'A' as an index and then call the Relic's Function
	
	
	;RE-WRITE, JUST GRAB F PTR OUT OF RELIC
	
	
;	LD		HL,RELIC_FUNC_TABLE
;	ADD		HL,DE
	
;	ECALL_HL
		
;	CALL	?DEBUG_WATCH_BLT_TARGET

	RET

;********************************
?BTL_SUMMON_CREATURE

	; Input: source creature, dest in battle
	;BC: SOURCE  HL:DEST
	; Source must be XRAM
	; Dest better be BTL_TARGET too
	;---------------------------------------
	
	SWITCH_RAM_BANK		WRAM_BATTLE
	
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON

	; Copy the creature to BTL_TARGET
	;----------------------------------------
	LD		A,(BTL_PROCESS_COUNT)
	AND		A
	JR		Z,_TONY_TURN
	LD		A,1
	JR		_TEAM
	
_TONY_TURN
	XOR		A
	
_TEAM
	LD		(HLI),A		;TEAM
	XOR		A
	LD		(HLI),A		;COUNTER
	
	LD		D,CREATURE_XRAM_SIZE
	
_XRAM_LOOP
	LD_HLI_BCI
	DEC		D
	JR		NZ,_XRAM_LOOP
	
	BATTERY_OFF
	
	
	; Call ?BTL_MODIFY_CREATURE
	;----------------------------
	CALL	?BTL_MODIFY_CREATURE

	;GIVE STARTING ENERGY
	LD		HL,BTL_TARGET_ENGH
	LD		BC,BTL_TARGET_ENGMAXH
	
	LD_HLI_BCI
	LD_HLI_BCI

	RET	
	
;********************************
?BTL_SUMMON_MAGI

	; Input: source creature, dest in battle
	;BC: SOURCE   HL: DEST
	; Source must be XRAM
	
	SWITCH_RAM_BANK		WRAM_BATTLE
	
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON
	

	XOR			A
	LD			(HLI),A				;TEAM(MAGI TEAM IRRELIVANT)
	LD			(HLI),A				;COUNTER
	
	LD			D,CREATURE_XRAM_SIZE-7	;	(XRAM-NON MAGI STUFF)
		
_XRAM_LOOP
	LD_HLI_BCI
	DEC		D
	JR		NZ,_XRAM_LOOP
	
	BATTERY_OFF
	
	LD		A,$FF	;MAGI HAVE LEARNED ALL THEIR COMMANDS
	LD		D,4
	
_CMD_LVL
	LD		(HLI),A
	DEC		D
	JR		NZ,_CMD_LVL
	
	;Clear out relics, other
	;-----------------
	XOR		A
	LD		(HLI),A
	LD		(HLI),A
	LD		(HLI),A
		
	;Clear out CMD section just in case
	;----------------------------------
	LD		D,BTL_CMD_SIZE
	XOR		A

_CLR_CMD
	LD		(HLI),A		;OTHER
	DEC		D
	JR		NZ,_CLR_CMD	

	;Since we are doing a magi, the relic stuff does not apply
	;and you can summon directly into his slot.
	
	RET
	
;********************************
?BTL_UNSUMMON_CREATURE

	; Input: source creature, dest in XRAM
	;HL: SOURCE  BC:DEST
	; Source must be WRAM_BATTLE (don't offset for xram)
	; Dest better be XRAM too
	;---------------------------------------
	LD		DE,CREATURE_XRAM_OFFSET
	ADD		HL,DE	
	
	SWITCH_RAM_BANK		WRAM_BATTLE	
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON
	
	LD		D,CREATURE_XRAM_SIZE
	
_XRAM_LOOP
	LD_BCI_HLI
	DEC		D
	JR		NZ,_XRAM_LOOP
	
	BATTERY_OFF	

	RET	
	
;********************************
?BTL_TXT_BOX_OPEN_SCRIPT
	DB	CMD_TEXTOPEN, CMD_END
	
;********************************
?BTL_TXT_BOX_CLOSE_SCRIPT
	DB	CMD_TEXTCLOSE, CMD_END

;********************************
	END
;********************************
;********************************
; BC:	Address of source creature
; HL:	Address of dest creature
?BTL_CREATURE_OPEN

	SWITCH_RAM_BANK		WRAM_BATTLE
	

	; Copy the creature from "source" to "dest"
	;-------------------------------------------

	LD_HLI_BCI		;TEAM
	LD_HLI_BCI		;COUNTER
	
	LD_HLI_BCI		;ID
	LD_HLI_BCI		;TYPE
	LD_HLI_BCI		;LVL
	LD_HLI_BCI		;EXPH
	LD_HLI_BCI		;EXPL
	
	LD_HLI_BCI		;ENGH
	LD_HLI_BCI		;ENGL
	LD_HLI_BCI		;ENGMAXH
	LD_HLI_BCI		;ENGMAXL
	
	LD_HLI_BCI		;ATK	
	LD_HLI_BCI		;SKILL
	LD_HLI_BCI		;SPD
	LD_HLI_BCI		;DEF
	LD_HLI_BCI		;RESIST	
	
	LD_HLI_BCI		;LUCK
	LD_HLI_BCI		;ELEM
	LD_HLI_BCI		;ELEMSTRONG
	LD_HLI_BCI		;ELEMWEAK
	LD_HLI_BCI		;IMMUNE
	LD_HLI_BCI		;STATUS
	LD_HLI_BCI		;PERMSTAT
	LD_HLI_BCI		;AI
	
	LD_HLI_BCI		;CMD0
	LD_HLI_BCI		;CMD1
	LD_HLI_BCI		;CMD2
	LD_HLI_BCI		;CMD3
	
	LD_HLI_BCI		;CMD0LVL
	LD_HLI_BCI		;CMD1LVL
	LD_HLI_BCI		;CMD2LVL
	LD_HLI_BCI		;CMD3LVL
		
	LD_HLI_BCI		;RELIC0
	LD_HLI_BCI		;RELIC1
	
	LD_HLI_BCI		;OTHER
	
;BTL COMMAND
	LD_HLI_BCI		;FUNCLO
	LD_HLI_BCI		;FUNCHI
	LD_HLI_BCI		;COST
	LD_HLI_BCI		;TARGET
	LD_HLI_BCI		;MENU
	
	LD_HLI_BCI		;RATING
	LD_HLI_BCI		;ELEM
	LD_HLI_BCI		;REPEAT(SUMMON/ITEM LO)
	LD_HLI_BCI		;CHANCE(SUMMON/ITEM HI)	
	
	LD_HLI_BCI		;NAME 1
	LD_HLI_BCI		;NAME 2
	LD_HLI_BCI		;NAME 3
	LD_HLI_BCI		;NAME 4
	LD_HLI_BCI		;NAME 5
	LD_HLI_BCI		;NAME 6
	LD_HLI_BCI		;NAME 7
	

	RET

;********************************
?BTL_SUMMON_CREATURE

	; Input: source creature, dest in battle
	;BC: SOURCE  HL:DEST
	; Source must be XRAM
	; Dest better be BTL_TARGET too
	;---------------------------------------
	
	SWITCH_RAM_BANK		WRAM_BATTLE
	
	BATTERY_SET_BANK	RAMB_CREATURES
	BATTERY_ON

	; Copy the creature to BTL_TARGET
	;----------------------------------------
	LD		A,(BTL_ACTIVE_TURN)
	BIT		7,A
	JR		Z,_TONY_TURN
	LD		A,1
	JR		_TEAM
	
_TONY_TURN
	XOR		A
	
_TEAM
	LD		(HLI),A		;TEAM
	XOR		A
	LD		(HLI),A		;COUNTER
		
	
	LD_HLI_BCI		;ID
	LD_HLI_BCI		;TYPE
	LD_HLI_BCI		;LVL
	LD_HLI_BCI		;EXPH
	LD_HLI_BCI		;EXPL
	
	LD_HLI_BCI		;ENGH
	LD_HLI_BCI		;ENGL
	LD_HLI_BCI		;ENGMAXH
	LD_HLI_BCI		;ENGMAXL
	
	LD_HLI_BCI		;ATK	
	LD_HLI_BCI		;SKILL	
	LD_HLI_BCI		;SPD
	LD_HLI_BCI		;DEF
	LD_HLI_BCI		;RESIST	

	LD_HLI_BCI		;LUCK
	LD_HLI_BCI		;ELEM
	LD_HLI_BCI		;ELEMSTRONG
	LD_HLI_BCI		;ELEMWEAK
	LD_HLI_BCI		;IMMUNE
	LD_HLI_BCI		;STATUS
	LD_HLI_BCI		;PERMSTAT
	LD_HLI_BCI		;AI
	
	LD_HLI_BCI		;CMD0
	LD_HLI_BCI		;CMD1
	LD_HLI_BCI		;CMD2
	LD_HLI_BCI		;CMD3
	
	LD_HLI_BCI		;CMD0LVL
	LD_HLI_BCI		;CMD1LVL
	LD_HLI_BCI		;CMD2LVL 
	LD_HLI_BCI		;CMD3LVL
	
	LD_HLI_BCI		;RELIC0 
	LD_HLI_BCI		;RELIC1

	LD_HLI_BCI		;OTHER
	
	BATTERY_OFF
	
	
	; Call ?BTL_MODIFY_CREATURE
	;----------------------------
	CALL	?BTL_MODIFY_CREATURE

	;GIVE STARTING ENERGY
	LD		HL,BTL_TARGET_ENGH
	LD		BC,BTL_TARGET_ENGMAXH
	
	LD_HLI_BCI
	LD_HLI_BCI

	RET		
	
