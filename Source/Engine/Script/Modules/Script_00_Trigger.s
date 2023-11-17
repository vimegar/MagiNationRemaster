;********************************
; SCRIPT_00_TRIGGER.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; GLOBALS
;********************************
	GLOBAL		?_TXT_GOT_ITEM
	GLOBAL		?_TXT_ITS_EMPTY
	GLOBAL		?_TXT_TOO_MANY

;********************************
;Takes 6 parameters:
;	WORD	Address of XRAM Bit
;	BYTE	Mask of XRAM Bit
;	BYTE	Alternate script bank
;	WORD	Alternate script addr
;	BYTE	Pattern fow switch ON state
;	BYTE	Pattern for switch OFF state
;	WORD	The tilemap coord address of the tile	
;********************************
?CMD_TOGGLEALWAYS
	; GET THE MASK, BYTE ADDR AND BYTE
	;--------------------------------
	LD			HL,$09				; Total command params in bytes
	CALL		?SCRIPT_TRIGGER_READY
	
	LD			A,(SCREEN_VISIBLE)
	AND			A
	JR			NZ,_RUNTIME

	; IS SWITCH ON?
	;--------------------------------
	LD			A,B									; XRAMByte & ByteMask (Get XRAM Bit value)
	AND			C
	JP			Z,?SCRIPT_TRIGGER_DRAW_OFF	; if switch is off jump

	; SWITCH IS ON: TURN IT OFF
	;--------------------------------
	
	JP			?SCRIPT_TRIGGER_DRAW_ON_TOGGLE ; switch is on, jump
		
_RUNTIME
	; IS SWITCH ON?
	;--------------------------------
	LD			A,B					; XRAMByte & ByteMask (Get XRAM Bit value)
	AND			C
	JP			Z,?SCRIPT_TRIGGER_ON_TOGGLE	; switch is OFF, turn it ON

	; SWITCH IS ALREADY ON: TURN OFF
	;--------------------------------
	JP			?SCRIPT_TRIGGER_OFF

;********************************
;Takes 6 parameters:
;	WORD	Address of XRAM Bit
;	BYTE	Mask of XRAM Bit
;	BYTE	Alternate script bank
;	WORD	Alternate script addr
;	BYTE	Pattern fow switch ON state
;	BYTE	Pattern for switch OFF state
;	WORD	The tilemap coord address of the tile	
;********************************
?CMD_TOGGLEONCE
	; GET THE MASK, BYTE ADDR AND BYTE
	;--------------------------------
	LD			HL,$09				; Total command params in bytes
	CALL		?SCRIPT_TRIGGER_READY
	
	LD			A,(SCREEN_VISIBLE)
	AND			A
	JR			NZ,_RUNTIME

	; IS SWITCH ON?
	;--------------------------------
	LD			A,B									; XRAMByte & ByteMask (Get XRAM Bit value)
	AND			C
	MOVADDR_FF	SCRIPT_WSTATE,?CMD_END
	JP			Z,?SCRIPT_TRIGGER_DRAW_OFF	; if switch is off jump
	
	; SWITCH IS ON: TURN IT OFF
	;--------------------------------
	
	LD			DE,$03
	ADD			HL,DE
	LD			A,(HLI)
	LD			E,A
	INC			HL
	
	JP			?SCRIPT_TRIGGER_UPDATE		; switch is on, jump
		
_RUNTIME
	; IS SWITCH ON?
	;--------------------------------
	LD			A,B					; XRAMByte & ByteMask (Get XRAM Bit value)
	AND			C
	JP			Z,?SCRIPT_TRIGGER_ON_TOGGLE	; switch is OFF, turn it ON

	; SWITCH IS ALREADY ON: TURN OFF
	;--------------------------------
	JP			?SCRIPT_TRIGGER_OFF


;********************************
;Takes 6 parameters:
;	WORD	Address of XRAM Bit
;	BYTE	Mask of XRAM Bit
;	BYTE	Alternate script bank
;	WORD	Alternate script addr
;	BYTE	Pattern fow switch ON state
;	WORD	The tilemap coord address of the tile
;********************************
?CMD_TRIGGERALWAYS

	; GET THE MASK, BYTE ADDR AND BYTE
	;--------------------------------
	LD			HL,$09				; Total command params in bytes
	CALL		?SCRIPT_TRIGGER_READY
	
	LD			A,(SCREEN_VISIBLE)
	AND			A
	JR			NZ,_RUNTIME

	; IS SWITCH ON?
	;--------------------------------
	LD			A,B					; XRAMByte & ByteMask (Get XRAM Bit value)
	AND			C
	JP			Z,?CMD_END

	; SWITCH IS ON: DRAW TILE
	;--------------------------------
	JP			?SCRIPT_TRIGGER_DRAW
	
_RUNTIME
	; IS SWITCH ON?
	;--------------------------------
	LD			A,B					; XRAMByte & ByteMask (Get XRAM Bit value)
	AND			C
	JP			Z,?SCRIPT_TRIGGER_ON

	; SWITCH IS ALREADY ON: PLAY ALTERNATE SCRIPT
	;--------------------------------
	LD			B,H
	LD			C,L
	JP			?CMD_JUMP

;********************************
;Takes 6 parameters:
;	WORD	Address of XRAM Bit
;	BYTE	Mask of XRAM Bit
;	BYTE	Alternate script bank
;	WORD	Alternate script addr
;	BYTE	Pattern for switch ON state
;	WORD	The tilemap coord address of the tile
;********************************
?CMD_TRIGGERONCE

	; GET THE MASK, BYTE ADDR AND BYTE
	;--------------------------------
	LD			HL,$09				; Total command params in bytes
	CALL		?SCRIPT_TRIGGER_READY
	
	LD			A,(SCREEN_VISIBLE)
	AND			A
	JR			NZ,_RUNTIME

	; IS SWITCH ON?
	;--------------------------------
	LD			A,B					; XRAMByte & ByteMask (Get XRAM Bit value)
	AND			C
	JP			Z,?CMD_END

	; SWITCH IS ON: END SCRIPT AND DRAW TILE
	;--------------------------------
	MOVADDR_FF	SCRIPT_WSTATE,?CMD_END
	JP			?SCRIPT_TRIGGER_DRAW
	
_RUNTIME
	; IS SWITCH ON?
	;--------------------------------
	LD			A,B					; XRAMByte & ByteMask (Get XRAM Bit value)
	AND			C
	JP			Z,?SCRIPT_TRIGGER_ON

	; SWITCH IS ALREADY ON: PLAY ALTERNATE SCRIPT
	;--------------------------------
	LD			B,H
	LD			C,L
	JP			?CMD_JUMP

;********************************
;Takes 3 parameters:
;	WORD	Address of XRAM Bit
;	BYTE	Mask of XRAM Bit
;	BYTE	Type of item to grant
;	BYTE	Index of item to grant
;	WORD	The tilemap coord address of the tile
;********************************
?CMD_TRIGGERTREASURE

	; GET THE MASK, BYTE ADDR AND BYTE
	;--------------------------------
	LD			HL,$07				; Total command params in bytes
	CALL		?SCRIPT_TRIGGER_READY
	
	LD			A,(SCREEN_VISIBLE)
	AND			A
	JR			NZ,_RUNTIME

	INC			HL
	INC			HL

	; IS TREASURE BOX OPEN?
	;--------------------------------
	LD			A,B					; XRAMByte & ByteMask (Get XRAM Bit value)
	AND			C
	JP			Z,?CMD_END

	; TREASURE BOX IS OPEN: END SCRIPT AND DRAW TILE
	;--------------------------------
	MOVADDR_FF	SCRIPT_WSTATE,?CMD_END
	LD			E,TREASURE_TILE_OPEN
	JP			?SCRIPT_TRIGGER_UPDATE
	
_RUNTIME
	; IS TREASURE BOX OPEN?
	;--------------------------------
	LD			A,B					; XRAMByte & ByteMask (Get XRAM Bit value)
	AND			C
	JP			NZ,_EMPTY

	; GRANT THE ITEM
	;--------------------------------
	PUSH		BC
	PUSH		DE

	SOUND_START_SFX		SFXID_TREASURECHEST

	LD			A,(HLI)
	LD			(INV_ID_TYPE),A

	LD			A,(HLI)
	LD			(INV_ID),A

	LD			A,$01
	LD			(INV_ID_TOTAL),A

	PUSH				HL
	XCALL				?INVENTORY_GIVE
	SWITCH_ROM_BANK		(SCRIPT_WBANK)
	POP					HL

	TEXT_SET_PARAMS		TEXT_PARAM_BUFFER

	LD			A,(INV_ID_SUCCESS)
	AND			A
	JR			Z,_TOO_MANY

	LD			A,:?_TXT_GOT_ITEM
	LDFF_A		SCRIPT_WBANK
	MOVADDR_FF	SCRIPT_WFRAME,?_TXT_GOT_ITEM	

	POP			DE
	POP			BC

	; UPDATE THE XRAM
	;--------------------------------
	BATTERY_ON
	LD			A,B					; XRAMByte | ByteMask (Set XRAM Bit value)
	OR			C
	LD			(DE),A
	BATTERY_OFF

	LD			E,TREASURE_TILE_OPEN
	JP			?SCRIPT_TRIGGER_UPDATE

_EMPTY
	; SWITCH IS ALREADY ON: TREASURE BOX IS OPEN
	;--------------------------------
	LD			A,:?_TXT_ITS_EMPTY
	LDFF_A		SCRIPT_WBANK
	MOVADDR_FF	SCRIPT_WFRAME,?_TXT_ITS_EMPTY
	RET

_TOO_MANY
	POP			AF
	POP			AF

	LD			A,:?_TXT_TOO_MANY
	LDFF_A		SCRIPT_WBANK
	MOVADDR_FF	SCRIPT_WFRAME,?_TXT_TOO_MANY
	RET

;********************************
; HL:	Script params (ALTERNATE SCRIPT)
; DE:	Address of byte
; C:	The byte
; B:	The mask
?SCRIPT_TRIGGER_ON

	BATTERY_ON
	LD			A,B					; XRAMByte | ByteMask (Set XRAM Bit value)
	OR			C
	LD			(DE),A
	BATTERY_OFF

?SCRIPT_TRIGGER_DRAW

	; SKIP THE ALTERNATE SCRIPT
	;--------------------------------
	LD			DE,$03
	ADD			HL,DE

	; DRAW THE TILE
	;--------------------------------
	LD			A,(HLI)				; E = Pattern fow switch ON state
	LD			E,A

	JP			?SCRIPT_TRIGGER_UPDATE


;********************************
; HL:	Script params (ALTERNATE SCRIPT)
; DE:	Address of byte
; C:	The byte
; B:	The mask
?SCRIPT_TRIGGER_ON_TOGGLE

	BATTERY_ON
	LD			A,B					; XRAMByte | ByteMask (Set XRAM Bit value)
	OR			C
	LD			(DE),A
	BATTERY_OFF

?SCRIPT_TRIGGER_DRAW_ON_TOGGLE
	;cmd_jump put internally, sets up Script_Play_Next
	LD		A,(HLI)
	LD		(SCRIPT_WBANK),A
	LD		A,(HLI)
	LD		C,A
	LD		A,(HLI)
	LD		B,A
	
	SET16	B,C,SCRIPT_WFRAME
	
	LD		A,(HLI)
	LD		E,A				; loads the pattern ID into E
	INC		HL				; getting past second pattern param
	
	JP		?SCRIPT_TRIGGER_UPDATE



;********************************
; HL:	Script params (ALTERNATE SCRIPT)
; DE:	Address of byte
; C:	The byte
; B:	The mask
?SCRIPT_TRIGGER_OFF

	BATTERY_ON
	LD			A,B					; XRAMByte | ByteMask (Set XRAM Bit value)
	XOR			C
	LD			(DE),A
	BATTERY_OFF

?SCRIPT_TRIGGER_DRAW_OFF

	; SKIP THE ALTERNATE SCRIPT AND ON PATTERN
	;--------------------------------
	LD			DE,$04
	ADD			HL,DE

	; DRAW THE TILE
	;--------------------------------
	
	LD			A,(HLI)				; E = Pattern fow switch ON state
	LD			E,A

	INC			HL
	INC			HL
	SET16		H,L,SCRIPT_WFRAME
	DEC			HL    
	DEC			HL

	JP			?SCRIPT_TRIGGER_UPDATE

;********************************
; E:		Pattern to draw
; HL:		Script params (MAP TILE ADDR)
?SCRIPT_TRIGGER_UPDATE

	SWITCH_RAM_BANK		WRAM_TILEMAP

	; SET THE TILE TO THE TILEMAP
	;--------------------------------
	DEREF_HL				; HL = Map tile addr
	LD			(HL),E

	; SKIP UPDATE IF SCREEN IS NOT VISIBLE
	;--------------------------------
	LD			A,(SCREEN_VISIBLE)
	AND			A
	RET			Z

	; UPDATE THE TILE
	;--------------------------------
	LD			A,(TRIGGER_XTILE)
	LD			E,A

	LD			A,(TRIGGER_YTILE)
	LD			D,A

	GET16		H,L,TRIGGER_TILE
	
	LD			C,(HL)
	
	XCALL		?TILEMAP_READY_DRAWTILE

	SET16		D,E,TILEMAP_VBLANK_DST
	SET16		H,L,TILEMAP_VBLANK_SRC

	LD			A,:?TILEMAP_VBLANK_DRAWTILE2
	LD			(VBLANK_BANK),A
	MOVADDR		VBLANK_FUNC,?TILEMAP_VBLANK_DRAWTILE2

	
	;  er....

	RET

;********************************
; HL:	Total command params in bytes
; BC:	Script (ADDRESS, MASK)
; HL:	<- Script params
; DE:	<- Address of byte
; C:	<- The byte
; B:	<- The mask
?SCRIPT_TRIGGER_READY

	; SCRIPT WILL PLAY NEXT COMMAND
	;--------------------------------
	ADD			HL,BC
	SET16		H,L,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT

	; GET THE TRIGGER BIT
	;--------------------------------
	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON

	LD			L,C
	LD			H,B

	LD			A,(HLI)		; Address
	LD			E,A
	LD			A,(HLI)
	LD			D,A
	
	LD			A,(DE)		; Byte
	LD			C,A
	
	LD			A,(HLI)		; Mask
	LD			B,A

	BATTERY_OFF

	RET

;********************************
	END
;********************************