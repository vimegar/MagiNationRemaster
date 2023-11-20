;********************************
; BATTLE_MAC.S
;********************************
;	Author:	Patrick Meehan,Emory Georges,Dylan "Schwarb Uff Wirnd" Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\GAME\BATTLE\COMMANDS\BTLCMD_MAC.S


;MACRO MACROS
;BELOW THESE ARE MEM MACROS	
;********************************
BTL_ACTOR_HIDE_PTR		MACRO
	XOR		A
	LD		(ACTOR0A_XTILE),A
	LD		(ACTOR0A_YTILE),A
	
	ENDM

;********************************
BTL_ACTOR_END	MACRO		index

	LD		A,index
	CALL	?BTL_ACTOR_END
	
	ENDM

;********************************
; HL:	<--Actor script
BTL_ACTOR_INDEX_SCRIPT	MACRO	index
	LD		A,index
	CALL	?BTL_ACTOR_INDEX_SCRIPT
	ENDM

;********************************
BTL_ACTOR_SET_SCRIPT	MACRO	index,script

	LD		A,index
	LD		D,:script
	LD		BC,script
	CALL	?BTL_ACTOR_SET_SCRIPT
	ENDM
	

;********************************
BTL_ACTOR_SET_STATUS_ANIM	MACRO


	ENDM	

;********************************
BTL_SET_MAGI_ANIM		MACRO	id,anim,actor

	LD		A,id
	LD		(BTL_ACTOR_ID),A
	LD		A,anim
	LD		(BTL_ACTOR_EFFECT_TYPE),A
	LD		A,actor
	LD		(BTL_ACTOR_AFFECTING),A
	CALL_FOREIGN	?BTL_SET_MAGI_ANIM
	
	ENDM

;********************************
BATTLE_INIT			MACRO
	LD		A,0
	LD		(FIGHTSCN_START),A
	LD		A,0						;by default no skipping the battle macros re-enable this (as the first battle is non-controlled)
	LD		(FIGHTSCN_DONE),A
		
	ENDM	
	
;********************************
BTL_TEXTCLOSE		MACRO
	SCRIPT_SET	TEXT_SCRIPT,?BTL_TXT_BOX_CLOSE_SCRIPT
	
	LD		A,(TEXTBOX_OPEN)
	CP		TEXTBOX_STATE_CLOSED
;	JR		Z,_BOX_CLOSED		(ENDM)
	DB		$28,$05
	CALL	?SYSTEM_UPDATE_GAME
;	JR		_CLOSING_BOX   (BTL_TEXTCLOSE)
	DB		$18,$F4
	
	ENDM

;********************************
BTL_TEXTOPEN		MACRO
	SCRIPT_SET	TEXT_SCRIPT,?BTL_TXT_BOX_OPEN_SCRIPT
	
	LD		A,(TEXTBOX_OPEN)
	CP		TEXTBOX_STATE_OPEN
;	JR		Z,_BOX_OPEN		(ENDM)
	DB		$28,$05
	CALL	?SYSTEM_UPDATE_GAME
;	JR		_OPENING_BOX   (BTL_TEXTOPEN)
	DB		$18,$F4
	
	ENDM	
			
;********************************
BTL_TEXTUPDATE		MACRO

	TEXT_UPDATE
	LD		HL,BTL_TXT_COUNT
	DEC		(HL)
	DB		$28,$05				;JR		Z,ENDM
	CALL	?SYSTEM_UPDATE_GAME
	DB		$18,$EA				;JR		BTL_TEXTUPDATE
	
	ENDM
	
;MEM MACROS START
;********************************
; CREATURE TEMPLATE FORMAT
;BYTE		CREATURE_TYPE	; CREATURE_STATS_TEMPLATE
;BYTE		ENGSTART	
;BYTE		ENGMAXH	
;BYTE		ENGMAXL
;BYTE		STR
;BYTE		SKILL
;BYTE		SPEED
;BYTE		DEF
;BYTE		RESIST
;BYTE		OTHER
;BYTE		LUCK		; CREATURE_FLAVOR_TEMPLATE
;BYTE		ENERGYUP	
;BYTE		ELEMSTONG
;BYTE		ELEMWEAK
;BYTE		IMMUNE
;BYTE		PERMSTAT
;BYTE		AI
;WORD		COST
;WORD		CMD0		; CREATURE_CMD_TEMPLATE
;WORD		CMD1
;WORD		CMD2
;WORD		CMD3
;BYTE		CMD0LVL
;BYTE		CMD1LVL
;BYTE		CMD2LVL
;BYTE		CMD3LVL
; 25 bytes

;********************************
;CURRENT SIZE 2 + (XRAM)39 + (BTL)16 = 57BYTES 
CREATURE_BTL	MACRO	name

name&_TEAM		DS		$01		; Which magi summoned this creature
name&_COUNTER	DS		$01		; (4:ERUPT, 4:MIRROR)

	CREATURE_XRAM		name

	BTL_CMD				name	; Command for current round	

	ENDM

;********************************
CREATURE_CMD_TEMPLATE	MACRO	name,cmd0,lvl0,cmd1,lvl1,cmd2,lvl2,cmd3,lvl3

; Commands possible for creature

name&_CMD0		DW		(cmd0 !& $FFFF)
name&_CMD1		DW		(cmd1 !& $FFFF) 
name&_CMD2		DW		(cmd2 !& $FFFF)
name&_CMD3		DW		(cmd3 !& $FFFF)

; Level at which commands are enabled

name&_CMD0LVL	DB		lvl0
name&_CMD1LVL	DB		lvl1
name&_CMD2LVL	DB		lvl2
name&_CMD3LVL	DB		lvl3

	ENDM
	
;********************************
CREATURE_FLAVOR_TEMPLATE	MACRO	name,luck,energyup,elemstrong,elemweak,immune,permstat,ai,cost

name&_LUCK			DB		luck
name&_ENERGYUP		DB		energyup    ; Hijacking to use as a third type field
name&_ELEMSTRONG	DB		elemstrong	; Strong against these elements
name&_ELEMWEAK		DB		elemweak	; Weak against these elements
name&_IMMUNE		DB		immune		; Immune to status ailments
name&_PERMSTAT		DB		permstat	; Always have status ailments
name&_AI			DB		ai			; Index into creature AI table
name&_COST			DW		cost		; How much the creature costs to make into a ring

	ENDM

;********************************
CREATURE_STATS_TEMPLATE	MACRO	name,creature_type,engstart,engmaxh,engmaxl,str,def,skill,resist,speed,creature_type2
name&_TYPE		DB		creature_type
name&_ENGSTART	DB		engstart
name&_ENGMAXH	DB		engmaxh
name&_ENGMAXL	DB		engmaxl

name&_STR		DB		str
name&_SKILL		DB		skill
name&_SPEED		DB		speed
name&_DEF		DB		def
name&_RESIST	DB		resist
name&_TYPE2     DB      creature_type2  ; Hijacking the other field as a second type field
name&_OTHER2    DB      $01             ; Adding an extra byte to keep alignment

	ENDM

;********************************
CREATURE_XRAM	MACRO	name


name&_ID		DS		$01		; Index into creature template table
name&_TYPE		DS		$01		; creature type
name&_LVL		DS		$01
name&_EXPH		DS		$01
name&_EXPL		DS		$01

name&_ENGH		DS		$01
name&_ENGL		DS		$01
name&_ENGMAXH	DS		$01
name&_ENGMAXL	DS		$01

name&_STR		DS		$01
name&_SKILL		DS		$01
name&_SPEED		DS		$01
name&_DEF		DS		$01
name&_RESIST	DS		$01
name&_TYPE2     DS      $01
name&_OTHER2    DS      $01

name&_LUCK			DS		$01
name&_ENERGYUP		DS		$01
name&_ELEMSTRONG 	DS		$01
name&_ELEMWEAK 		DS		$01
name&_IMMUNE		DS		$01		; Immune to status ailments
name&_STATUS		DS		$01		; Battle status of creature (reset at start)
name&_PERMSTAT		DS		$01		; Always have status ailments
name&_AI			DS		$01

name&_CMD0		DS		$02
name&_CMD1		DS		$02
name&_CMD2		DS		$02
name&_CMD3		DS		$02

name&_CMD0LVL	DS		$01
name&_CMD1LVL	DS		$01
name&_CMD2LVL	DS		$01
name&_CMD3LVL	DS		$01

; Equipped by player

name&_RELIC0	DS		$01		; OFFSET INTO RELIC TABLE
name&_RELIC1	DS		$01

name&_OTHER		DS		$01		;ANYTHING ELSE WE THINK OF

	ENDM
	
	
;********************************
BTL_ANIM_DEFW	MACRO		addr

	DB		:addr
	DEFW	(addr!&$FFFF)
	
	ENDM
					
;*******************************************************************************************
;							*	TABLE MACROS	*
CREATURE_STAT_LEVELUP_ELEMENT	MACRO	name,index,attack,special,speed,defense,special_defense

name&index&_STR			DB		attack
name&index&_SKILL		DB		special
name&index&_SPEED		DB		speed
name&index&_DEFENSE		DB		defense
name&index&_RESIST		DB		special_defense

	ENDM

CREATURE_ENERGY_LEVELUP_ELEMENT	MACRO	index,min,misc1,misc2,max

C_EP_LVLUP_&index	DB		min,misc1,misc2,max	

	ENDM
	
;*******************************************************************************************


;********************************
	END
;********************************
