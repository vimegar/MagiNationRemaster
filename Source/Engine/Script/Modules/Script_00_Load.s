;********************************
; SCRIPT_00_LOAD.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?CMD_LOADBGSCREEN
	SCRIPT_UNPACK	?UNPACK_BG_SCREEN
	JP				?SCRIPT_PLAY_NEXT

;********************************
?CMD_LOADHOTSPOTS

	SCRIPT_WORD		H,L
	
	SWITCH_ROM_BANK	HOTSPOT_BANK
	
	LD				A,(HLI)
	LD				(HOTSPOT_TABLE_SIZE),A
	SET16			H,L,HOTSPOT_TABLE

	SWITCH_ROM_BANK	(SCRIPT_WBANK)

	JP				?SCRIPT_PLAY_NEXT

;********************************
?CMD_LOADMAP
	SCRIPT_UNPACK	?UNPACK_MAP
	JP				?SCRIPT_PLAY_NEXT

;********************************
?CMD_LOADPALETTE
	SCRIPT_UNPACK	?UNPACK_PALETTE_OBJ
	JP				?SCRIPT_PLAY_NEXT

;********************************
?CMD_LOADSCR
	SCRIPT_UNPACK	?UNPACK_TILEMAP
	SCRIPT_UNPACK	?UNPACK_COLL
	JP				?SCRIPT_PLAY_NEXT

;********************************
?CMD_LOADSPAREMAP
	SCRIPT_UNPACK	?UNPACK_TILEMAP_SPARE
	SCRIPT_UNPACK	?UNPACK_COLL_SPARE
	JP				?SCRIPT_PLAY_NEXT

;********************************
?CMD_LOADTRIGGERS

	SCRIPT_WORD		H,L
	PUSH			BC
	
	CALL			?TRIGGER_LOAD_TBL
	
	SWITCH_ROM_BANK	(SCRIPT_WBANK)
	
	POP				BC
	JP				?SCRIPT_PLAY_NEXT

;********************************
?CMD_LOADVRAM
	SCRIPT_UNPACK	?UNPACK_VRAM
	SCRIPT_UNPACK	?UNPACK_PALETTE_BG
	JP				?SCRIPT_PLAY_NEXT

;********************************
?CMD_LOADVRAMTILES

	;VBLANK_START_BUSY

	; TOTAL TILES TO COPY
	;--------------------------------
	LD			A,(BC)
	INC			BC
	LDFF_A		SCRIPT_WCOUNT


	; SOURCE BANK, SOURCE ADDR
	;--------------------------------
	LD			A,(BC)
	LD			(VBLANK_BANK),A
	INC			BC
	LD			A,(BC)
	LD			(VBLANK_SOURCE),A
	INC			BC
	LD			A,(BC)
	LD			(VBLANK_SOURCE+1),A
	INC			BC
	
	; DEST ADDR
	;--------------------------------
	LD			A,(BC)
	LD			(VBLANK_DEST),A
	INC			BC

	LD			A,(BC)
	LD			(VBLANK_DEST+1),A
	INC			BC

	; DEST VBANK
	;--------------------------------
	LD			A,(BC)
	LD			(VBLANK_VBK),A
	INC			BC

	; NEXT FRAME
	;--------------------------------
	SET16		B,C,SCRIPT_WFRAME

	; LOOP
	;--------------------------------
	MOVADDR		SCRIPT_WSTATE,_LOOP

_LOOP
	MOVADDR		VBLANK_FUNC,?VBLANK_COPY_TILE
	
	LDA_FF		SCRIPT_WCOUNT
	DEC			A
	JR			Z,_DONE
	LDFF_A		SCRIPT_WCOUNT
	RET

_DONE
	MOVADDR		SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET

;********************************
	END
;********************************