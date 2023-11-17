;********************************
; SCRIPT_00_ACTOR.S
;********************************
;	Author:	Patrick Meehan/Dylan "ExoByte" Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?ACTOR_INIT_INTERRUPT

	LD		A,(BC)		; Script bank
	INC		BC
	LD		(HLI),A
	LD		A,(BC)		; Starting frame
	INC		BC
	LD		(HLI),A
	LD		A,(BC)
	INC		BC
	LD		(HLI),A
	
	RET

;********************************
; HL:	Ptr to script
?ACTOR_INIT_SCRIPT_00

	LD		A,(BC)		; Script bank
	INC		BC
	LD		(HLI),A
	LD		A,(BC)		; Starting frame
	INC		BC
	LD		(HLI),A
	LD		A,(BC)
	INC		BC
	LD		(HLI),A
	LD		A,?SCRIPT_START&$FF		; Starting state
	LD		(HLI),A
	LD		A,(?SCRIPT_START>>8)&$FF
	LD		(HLI),A
	INC		HL			; Count
	INC		HL
	
	RET

;********************************
; HL:	Ptr to script
?ACTOR_INIT_SCRIPT_01

	INC		HL			; Script bank and frame
	INC		HL
	INC		HL
	LD		A,?CMD_END&$FF				; Starting state
	LD		(HLI),A
	LD		A,(?CMD_END>>8)&$FF
	LD		(HLI),A
	
	INC		HL			; Count
	INC		HL
	
	RET

;********************************
; HL:	Ptr to actor
?ACTOR_INIT_SHARED

	; COPY THE ACTOR
	;--------------------------------
	INC		HL

	LD		A,(BC)		; State
	INC		BC
	LD		(HLI),A
	LD		A,(BC)
	INC		BC
	LD		(HLI),A
	LD		A,ACTOR_XOFF_INIT
	LD		(HLI),A
	LD		A,ACTOR_YOFF_INIT
	LD		(HLI),A
	LD		A,(BC)		; X Tile
	INC		BC
	LD		(HLI),A
	LD		A,(BC)		; Y Tile
	INC		BC
	LD		(HLI),A
	LD		A,(BC)		; Tile
	INC		BC
	LD		(HLI),A
	LD		A,(BC)
	INC		BC
	LD		(HLI),A
	LD		A,(BC)		; Frame base
	INC		BC
	LD		(HLI),A	

	JP		?ACTOR_INIT_SCRIPT_00

;********************************
?ACTOR_SET_SCRIPT

	LD		A,(BC)
	INC		BC
	LD		(HLI),A
	LD		A,(BC)
	INC		BC
	LD		(HLI),A

	LD		A,?SCRIPT_START&$FF
	LD		(HLI),A
	LD		(HL),(?SCRIPT_START>>8)&$FF	

	INC		HL
	INC		HL
	INC		HL

	RET

;********************************
?CMD_HEROFROMDOOR

	SWITCH_ROM_BANK		:?CMD_HEROFROMDOOR_XX
	JP					?CMD_HEROFROMDOOR_XX

;********************************
?CMD_HEROSETDOOR

	; X TILE
	;--------------------------------
	LD		A,(BC)
	INC		BC
	LD		(HERO_DOORX),A
	
	; Y TILE
	;--------------------------------
	LD		A,(BC)
	INC		BC
	LD		(HERO_DOORY),A
	
	JP		?SCRIPT_PLAY_NEXT

;********************************
?CMD_HEROTODOOR

	; X TILE
	;--------------------------------
	LD		A,(BC)
	INC		BC
	LD		L,A
	LD		A,(HEROACTOR_XTILE)
	SUB		L
	LD		L,A
	LD		A,(BC)
	INC		BC
	ADD		A,L
	LD		(HERO_DOORX),A
	
	; Y TILE
	;--------------------------------
	LD		A,(BC)
	INC		BC
	LD		L,A
	LD		A,(HEROACTOR_YTILE)
	SUB		L
	LD		L,A
	LD		A,(BC)
	INC		BC
	ADD		A,L
	LD		(HERO_DOORY),A
	
	JP		?SCRIPT_PLAY_NEXT

;********************************
?CMD_THATACTORDRAWTILE

	CALL				?SCRIPT_ACTOR_ADDR

?SCRIPT_ACTORDRAWTILE
	LD					DE,ACTOR_STRUCT_XTILE
	ADD					HL,DE

	LD					A,(HLI)
	LD					D,A

	; Y TILE
	;--------------------------------
	SCRIPT_BYTE			E				; Y
	LD					A,(HLI)
	ADD					A,E
	LD					E,A

	; X TILE
	;--------------------------------
	LD					A,(BC)			; X
	INC					BC				
	ADD					A,D
	LD					D,A

	PUSH				DE

	; TILE OFFSET
	;--------------------------------
	SCRIPT_WORD			D,E				; TILEOFFSET
	DEREF_HL
	ADD					HL,DE

	; COLL CODE
	;--------------------------------
	SWITCH_RAM_BANK		WRAM_COLL
	LD					A,(BC)			; COLL CODE
	INC					BC
	LD					(HL),A

	; PATTERN CODE
	;--------------------------------
	SWITCH_RAM_BANK		WRAM_TILEMAP
	LD					A,(BC)			; PATTERN CODE
	INC					BC
	LD					(HL),A

	; UPDATE!
	;--------------------------------
	SET16				B,C,SCRIPT_WFRAME
	MOVADDR				SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	
	POP					DE

	SWITCH_ROM_BANK		:?SCRIPT_UPDATE_TILE_XX
	JP					?SCRIPT_UPDATE_TILE_XX

;********************************
?CMD_THATACTORDRAWTILESPARE

	CALL				?SCRIPT_ACTOR_ADDR

?SCRIPT_ACTORDRAWTILESPARE
	LD					DE,ACTOR_STRUCT_TILE
	ADD					HL,DE

	; TILE OFFSET
	;--------------------------------
	SCRIPT_WORD			D,E				; TILEOFFSET
	DEREF_HL
	ADD					HL,DE

	; COLL CODE
	;--------------------------------
	SWITCH_RAM_BANK		WRAM_SPARE1		; SPARE COLL
	LD					A,(BC)			; COLL CODE
	INC					BC
	LD					(HL),A

	; PATTERN CODE
	;--------------------------------
	SWITCH_RAM_BANK		WRAM_SPARE0		; SPARE TILEMAP
	LD					A,(BC)			; PATTERN CODE
	INC					BC
	LD					(HL),A

	JP					?SCRIPT_PLAY_NEXT

;********************************
?CMD_THATACTORINIT

	CALL				?SCRIPT_ACTOR_ADDR
	CALL				?ACTOR_INIT_SHARED
	CALL				?ACTOR_INIT_SCRIPT_01
	CALL				?ACTOR_INIT_INTERRUPT
	JP					?SCRIPT_PLAY_NEXT

;********************************
?CMD_THATACTORLOCRELATIVE

	CALL				?SCRIPT_ACTOR_ADDR			; Dest
	LD					DE,ACTOR_STRUCT_XOFF
	ADD					HL,DE
	PUSH				HL

	CALL				?SCRIPT_ACTOR_ADDR			; Source
	LD					DE,ACTOR_STRUCT_XTILE
	ADD					HL,DE

	POP					DE

	LD					A,ACTOR_XOFF_INIT			; X Off
	LD					(DE),A
	INC					DE

	LD					A,ACTOR_YOFF_INIT			; Y Off
	LD					(DE),A
	INC					DE

	LD					A,(HLI)						; X Tile
	LD					(DE),A
	INC					DE

	LD					A,(HLI)						; Y Tile
	LD					(DE),A
	INC					DE

	LD					A,(HLI)						; Tile
	LD					(DE),A
	INC					DE
	LD					A,(HLI)
	LD					(DE),A

	JP					?SCRIPT_PLAY_NEXT

;********************************
?CMD_THATACTORSETAI

	CALL			?SCRIPT_ACTOR_ADDR
	
	INC				HL			; Skip the flags
	
	LD				A,(BC)		; Set the AI
	INC				BC
	LD				(HLI),A
	LD				A,(BC)
	INC				BC
	LD				(HLI),A

	JP				?SCRIPT_PLAY_NEXT

;********************************
?CMD_THATACTORSETLOC

	CALL			?SCRIPT_ACTOR_ADDR
	JP				?SCRIPT_ACTOR_SET_LOC

;********************************
?CMD_THATACTORSETSCRIPT

	CALL			?SCRIPT_ACTOR_ADDR

	LD				DE,ACTOR_STRUCT_SCRIPT0
	ADD				HL,DE

	LD				A,(BC)
	INC				BC
	LD				(HLI),A
	CALL			?ACTOR_SET_SCRIPT

	INC				HL
	INC				HL
	INC				HL

	LD				A,?CMD_END&$FF
	LD				(HLI),A
	LD				(HL),(?CMD_END>>8)&$FF	

	JP				?SCRIPT_PLAY_NEXT

;********************************
?CMD_THATACTORSETVRAMBASE

	CALL			?SCRIPT_ACTOR_ADDR

	LD				DE,ACTOR_STRUCT_VRAM
	ADD				HL,DE
	
	LD_HLI_BCI

	JP				?SCRIPT_PLAY_NEXT

;********************************
?CMD_THATACTORSTART

	CALL			?SCRIPT_ACTOR_ADDR

	BIT				ACTOR_FLAGS_ACTIVE,(HL)
	JR				NZ,_ACTIVE

	PUSH			BC
	LD				B,H
	LD				C,L
	XCALL				?ACTORLIST_ADD_ACTOR
	SWITCH_ROM_BANK		(SCRIPT_WBANK)
	POP				BC

_ACTIVE
	RES				ACTOR_FLAGS_STOP,(HL)

	JP				?SCRIPT_PLAY_NEXT

;********************************
?CMD_THATACTORSTOP

	CALL			?SCRIPT_ACTOR_ADDR

	SET				ACTOR_FLAGS_STOP,(HL)

	SET16			B,C,SCRIPT_WFRAME
	MOVADDR			SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET

;********************************
?CMD_THISACTORDRAWTILE

	LD				HL,ACTOR_BASE
	JP				?SCRIPT_ACTORDRAWTILE

;********************************
?CMD_THISACTORDRAWTILESPARE

	LD				HL,ACTOR_BASE
	JP				?SCRIPT_ACTORDRAWTILESPARE

;********************************
?CMD_THISACTORLOCRELATIVE

	CALL				?SCRIPT_ACTOR_ADDR
	LD					DE,ACTOR_STRUCT_XTILE
	ADD					HL,DE

	LD					A,ACTOR_XOFF_INIT
	LDFF_A				ACTOR_XOFF

	LD					A,ACTOR_YOFF_INIT
	LDFF_A				ACTOR_YOFF

	LD					A,(HLI)
	LDFF_A				ACTOR_XTILE

	LD					A,(HLI)
	LDFF_A				ACTOR_YTILE

	LD					A,(HLI)
	LDFF_A				ACTOR_TILE

	LD					A,(HLI)
	LDFF_A				ACTOR_TILE+$01

	JP					?SCRIPT_PLAY_NEXT

;********************************
?CMD_THISACTORNEWSTATE

	SCRIPT_WORD		D,E
	SET16			D,E,ACTOR_NEWSTATE	
	
	JP				?SCRIPT_PLAY_NEXT

;********************************
?CMD_THISACTORRAINDROP

	MOVADDR_FF			ACTOR_STATE,?RAINDROP_AI
	MOVADDR_FF			SCRIPT_WSTATE,_WAIT
	RET

_WAIT
	SWITCH_ROM_BANK		:?CMD_RAINDROP_LOCATE_XX
	JP					?CMD_RAINDROP_LOCATE_XX

;********************************
?CMD_THISACTORRAINDROPTEST
	
	FGET16				D,E,HEROACTOR_TILE
	GET16_FF			H,L,ACTOR_TILE

	LD					A,L
	CP					E
	JR					NZ,_OK

	LD					A,H
	CP					D
	JR					Z,_TRY_AGAIN

_OK
	SWITCH_RAM_BANK		WRAM_COLL
	LD					E,(HL)
	LD					A,(BC)
	INC					BC
	CP					E
	JR					NZ,_TRY_AGAIN

	SET16				B,C,SCRIPT_WFRAME
	MOVADDR_FF			SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	MOVADDR_FF			ACTOR_STATE,?ANIM_AI
	RET

_TRY_AGAIN
	MOVADDR_FF			SCRIPT_WSTATE,?CMD_THISACTORRAINDROP
	RET

;********************************
?CMD_THISACTORRESTORESTATE
	
	LD			A,SCRIPT_RESTORE_BACK
	LD			(ACTOR_RESTORE_FLAG),A	
	
	MOVADDR		HEROACTOR_STATE,?HERO_AI_START
	
	JP			?CMD_END
	
;********************************
?CMD_THISACTORSETAI

	LD			A,(BC)				; Set AI
	INC			BC
	LD			(ACTOR_STATE),A
	LD			A,(BC)
	INC			BC
	LD			(ACTOR_STATE+1),A

	SET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET

;********************************
?CMD_THISACTORSETANIM

	GET16		H,L,ACTOR_CURRENT
	LD			DE,ACTOR_STRUCT_SCRIPT1
	ADD			HL,DE

	LD			A,(BC)
	INC			BC
	LD			(HLI),A
	CALL		?ACTOR_SET_SCRIPT

	JP			?SCRIPT_PLAY_NEXT

;********************************
?CMD_THISACTORSETANIMDELAY

	GET16		H,L,ACTOR_CURRENT
	LD			DE,ACTOR_STRUCT_SCRIPT1
	ADD			HL,DE

	LD			A,(BC)
	INC			BC
	AND			A
	JP			Z,?SCRIPT_PLAY_NEXT
	
	LD			(HLI),A
	CALL		?ACTOR_SET_SCRIPT

	LD			A,(BC)
	INC			BC
	AND			A
	JR			Z,?CMD_THISACTORSETANIMDELAY
	LDFF_A		SCRIPT_WCOUNT
	SET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,_LOOP
	
_LOOP
	LDA_FF		SCRIPT_WCOUNT
	DEC			A
	JR			Z,_NEXT
	LDFF_A		SCRIPT_WCOUNT
	RET

_NEXT
	MOVADDR		SCRIPT_WSTATE,?CMD_THISACTORSETANIMDELAY
	RET
	

;********************************
?CMD_THISACTORSETANIMSCROLL

	GET16	H,L,ACTOR_CURRENT
	LD		DE,ACTOR_STRUCT_SCRIPT1
	ADD		HL,DE

	LD		A,(BC)
	INC		BC
	AND		A
	JP		Z,?SCRIPT_PLAY_NEXT
	
	LD		(HLI),A
	CALL	?ACTOR_SET_SCRIPT

	LD		A,(BC)
	INC		BC
	AND		A
	JP		NZ,_OKAY
	INC		BC
	INC		BC
	JR		?CMD_THISACTORSETANIMSCROLL

_OKAY
	LDFF_A		SCRIPT_WCOUNT
	SET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,_LOOP
	
_LOOP
	SCRIPT_BYTE		L
	LD				A,(TILEMAP_XDELTA)
	ADD				A,L
	LD				(TILEMAP_XDELTA),A

	SCRIPT_BYTE		L
	LD				A,(TILEMAP_YDELTA)
	ADD				A,L
	LD				(TILEMAP_YDELTA),A

	LDA_FF			SCRIPT_WCOUNT
	DEC				A
	JR				Z,_NEXT
	LDFF_A			SCRIPT_WCOUNT
	RET

_NEXT
	SET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,?CMD_THISACTORSETANIMSCROLL
	RET

;********************************
?CMD_THISACTORSETLOC

	LD			HL,ACTOR_BASE
	JP			?SCRIPT_ACTOR_SET_LOC

;********************************
?CMD_THISACTORSETVRAMBASE

	LD			A,(BC)
	INC			BC
	LDFF_A		ACTOR_VRAM
	JP			?SCRIPT_PLAY_NEXT

;********************************
?CMD_THISACTORSTOP

	LDA_FF		ACTOR_FLAGS
	SET			ACTOR_FLAGS_STOP,A
	LDFF_A		ACTOR_FLAGS
	MOVADDR		SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET

;********************************
?CMD_THISACTORWAITTILE

	GET16		H,L,ACTOR_TILE
	
	SWITCH_RAM_BANK		WRAM_TILEMAP
	
	LD			E,(HL)
	LD			A,(BC)
	
	CP			E
	RET			NZ
	
	INC			BC

	JP			?SCRIPT_PLAY_NEXT

;********************************
; BC:	Script params
; HL:	<-- Addr of actor
?SCRIPT_ACTOR_ADDR

	LD			A,(BC)
	INC			BC
	ADD			A,A
	LD			E,A
	LD			D,$00
	LD			HL,THAT_ACTOR_TBL
	ADD			HL,DE
	DEREF_HL

	RET

;********************************
?SCRIPT_ACTOR_SET_LOC

	LD			DE,ACTOR_STRUCT_XOFF
	ADD			HL,DE

	LD_HLI_BCI		; X Off
	LD_HLI_BCI		; Y Off
	LD_HLI_BCI		; X Tile
	LD_HLI_BCI		; Y Tile

	LD_HLI_BCI		; Tile
	LD_HLI_BCI

	JP			?SCRIPT_PLAY_NEXT

;********************************
	END
;********************************