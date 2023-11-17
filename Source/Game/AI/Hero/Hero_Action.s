;********************************
; HERO_ACTION.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; B:	Y Tile
; C:	X Tile
; E:	Collcode
; HL:	Tile Addr
?HERO_ACTION_DIG

	SOUND_START_SFX		SFXID_DIG  ;SFXID_CRITICAL_ATTACK

	SET16				B,C,TILEMAP_VBLANK_DST
	SET16				H,L,TILEMAP_VBLANK_SRC

	SWITCH_RAM_BANK		WRAM_COLL	
	LD					A,COLLCODE_SPACE
	LD					(HL),A

	SWITCH_RAM_BANK		WRAM_TILEMAP
	LD					A,MAP_TILE_DUG
	LD					(HL),A
	
	CALL_FOREIGN		?TILEMAP_UPDATE_TILE
	JP					?HERO_AI_PUPPET

;********************************
; B:	Y Tile
; C:	X Tile
; E:	Collcode
; HL:	Tile Addr
?HERO_ACTION_TRIGGER

	;LD			A,(MASTER_SCRIPT_FRAME+$01)
	;AND			A
	;RET			NZ

	LD			A,C
	LD			(TRIGGER_XTILE),A
	LD			A,B
	LD			(TRIGGER_YTILE),A

	SET16		H,L,TRIGGER_TILE

	LD			A,E
	LD			(TRIGGER_CODE),A

	CALL		?TRIGGER_START
	JP			?HERO_AI_CLOSE

;********************************
?HERO_CHECK_ACTION_DOWN

	CALL		?HERO_GET_TILE_DOWN

	LD			A,(AI_CNTDOWN)
	BIT			BitA,A
	RET			Z

	POP			AF

	LDA_FF		AI_HEROFLAGS_NEXT
	SET			HEROFLAGS_ACTION,A
	LDFF_A		AI_HEROFLAGS_NEXT

	LD			A,(HL)
	LD			E,A

	CP			COLLCODE_DIG
	JR			NZ,_NO_DIG
	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_DIG		;check to see if hero can handle a boxxle
	JP			C,?HERO_AI_CLOSE
	MOVADDR		SCRIPT_WFRAME,?_HERO_DIGGING_DOWN_ANIM
	JP			?HERO_ACTION_DIG

_NO_DIG
	CP			COLLCODE_BOXXLE
	JR			NZ,_NO_BOXXLE
	LD			A,(HERO_ABILITY)
	SUB			HERO_ABILITY_BOXXLE		;check to see if hero can handle a boxxle
	JP			C,?HERO_AI_CLOSE
	MOVADDR		SCRIPT_WFRAME,?_HERO_KICK_DOWN_ANIM
	JP			?HERO_AI_PUPPET
	
_NO_BOXXLE
	AND			$E0		; A >= 64?
	JP			Z,?HERO_AI_CLOSE
	BIT			$07,A	; A < 128?
	JP			NZ,?HERO_AI_CLOSE
	JP			?HERO_ACTION_TRIGGER

;********************************
?HERO_CHECK_ACTION_LEFT

	CALL		?HERO_GET_TILE_LEFT

	LD			A,(AI_CNTDOWN)
	BIT			BitA,A
	RET			Z

	POP			AF

	LDA_FF		AI_HEROFLAGS_NEXT
	SET			HEROFLAGS_ACTION,A
	LDFF_A		AI_HEROFLAGS_NEXT

	LD			A,(HL)
	LD			E,A

	CP			COLLCODE_DIG
	JR			NZ,_NO_DIG
	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_DIG		;check to see if hero can handle a boxxle
	JP			C,?HERO_AI_CLOSE
	MOVADDR		SCRIPT_WFRAME,?_HERO_DIGGING_LEFT_ANIM
	JP			?HERO_ACTION_DIG

_NO_DIG
	CP			COLLCODE_BOXXLE
	JR			NZ,_NO_BOXXLE
	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_BOXXLE		;check to see if hero can handle a boxxle
	JP			C,?HERO_AI_CLOSE
	MOVADDR		SCRIPT_WFRAME,?_HERO_KICK_LEFT_ANIM
	JP			?HERO_AI_PUPPET

_NO_BOXXLE
	AND			$E0		; A >= 64?
	JP			Z,?HERO_AI_CLOSE
	BIT			$07,A	; A < 128?
	JP			NZ,?HERO_AI_CLOSE
	JP			?HERO_ACTION_TRIGGER

;********************************
?HERO_CHECK_ACTION_RIGHT

	CALL		?HERO_GET_TILE_RIGHT

	LD			A,(AI_CNTDOWN)
	BIT			BitA,A
	RET			Z

	POP			AF

	LDA_FF		AI_HEROFLAGS_NEXT
	SET			HEROFLAGS_ACTION,A
	LDFF_A		AI_HEROFLAGS_NEXT

	LD			A,(HL)
	LD			E,A

	CP			COLLCODE_DIG
	JR			NZ,_NO_DIG
	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_DIG		;check to see if hero can handle a boxxle
	JP			C,?HERO_AI_CLOSE
	MOVADDR		SCRIPT_WFRAME,?_HERO_DIGGING_RIGHT_ANIM
	JP			?HERO_ACTION_DIG

_NO_DIG
	CP			COLLCODE_BOXXLE
	JR			NZ,_NO_BOXXLE
	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_BOXXLE		;check to see if hero can handle a boxxle
	JP			C,?HERO_AI_CLOSE
	MOVADDR		SCRIPT_WFRAME,?_HERO_KICK_RIGHT_ANIM
	JP			?HERO_AI_PUPPET
	
_NO_BOXXLE
	AND			$E0		; A >= 64?
	JP			Z,?HERO_AI_CLOSE
	BIT			$07,A	; A < 128?
	JP			NZ,?HERO_AI_CLOSE
	JP			?HERO_ACTION_TRIGGER

;********************************
?HERO_CHECK_ACTION_UP

	CALL		?HERO_GET_TILE_UP

	LD			A,(AI_CNTDOWN)
	BIT			BitA,A
	RET			Z

	POP			AF

	LDA_FF		AI_HEROFLAGS_NEXT
	SET			HEROFLAGS_ACTION,A
	LDFF_A		AI_HEROFLAGS_NEXT

	LD			A,(HL)
	LD			E,A

	CP			COLLCODE_DIG
	JR			NZ,_NO_DIG
	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_DIG		;check to see if hero can handle a boxxle
	JP			C,?HERO_AI_CLOSE
	MOVADDR		SCRIPT_WFRAME,?_HERO_DIGGING_UP_ANIM
	JP			?HERO_ACTION_DIG

_NO_DIG
	CP			COLLCODE_BOXXLE
	JR			NZ,_NO_BOXXLE
	LD			A,(HERO_ABILITY)	
	SUB			HERO_ABILITY_BOXXLE		;check to see if hero can handle a boxxle
	JP			C,?HERO_AI_CLOSE
	MOVADDR		SCRIPT_WFRAME,?_HERO_KICK_UP_ANIM
	JP			?HERO_AI_PUPPET

_NO_BOXXLE
	AND			$E0		; A >= 64?
	JP			Z,?HERO_AI_CLOSE
	BIT			$07,A	; A < 128?
	JP			NZ,?HERO_AI_CLOSE
	JP			?HERO_ACTION_TRIGGER

;********************************
; B:	<-X Tile
; C:	<-Y Tile
; DE:	<-Directional delta
; HL:	<-Tile addr
?HERO_GET_TILE_DOWN

	LDA_FF	(ACTOR_XTILE)
	LD		B,A
	LDA_FF	(ACTOR_YTILE)
	INC		A
	LD		C,A

	GET8		E,(TILEMAP_WIDTH)
	LD			D,$00
	GET16		H,L,ACTOR_TILE
	ADD			HL,DE

	SWITCH_RAM_BANK		WRAM_COLL

	RET

;********************************
?HERO_GET_TILE_LEFT
; B:	<-X Tile
; C:	<-Y Tile
; DE:	<-Directional delta
; HL:	<-Tile addr

	LDA_FF	(ACTOR_XTILE)
	DEC		A
	LD		B,A
	LDA_FF	(ACTOR_YTILE)
	LD		C,A

	LD			DE,$FFFF
	GET16		H,L,ACTOR_TILE
	ADD			HL,DE

	SWITCH_RAM_BANK		WRAM_COLL

	RET

;********************************
?HERO_GET_TILE_RIGHT
; B:	<-X Tile
; C:	<-Y Tile
; DE:	<-Directional delta
; HL:	<-Tile addr

	LDA_FF	(ACTOR_XTILE)
	INC		A
	LD		B,A
	LDA_FF	(ACTOR_YTILE)
	LD		C,A

	LD			DE,$0001
	GET16		H,L,ACTOR_TILE
	ADD			HL,DE

	SWITCH_RAM_BANK		WRAM_COLL

	RET

;********************************
?HERO_GET_TILE_UP
; B:	<-X Tile
; C:	<-Y Tile
; DE:	<-Directional delta
; HL:	<-Tile addr

	LDA_FF	(ACTOR_XTILE)
	LD		B,A
	LDA_FF	(ACTOR_YTILE)
	DEC		A
	LD		C,A

	LD			A,(TILEMAP_WIDTH)
	CPL
	INC			A
	LD			E,A
	LD			D,$FF
	GET16		H,L,ACTOR_TILE
	ADD			HL,DE

	SWITCH_RAM_BANK		WRAM_COLL

	RET

;********************************
	END
;********************************
