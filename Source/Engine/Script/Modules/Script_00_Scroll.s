;********************************
; SCRIPT_00_SCROLL.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?SCRIPT_TRACK_CAMERA
	LD			A,(TILEMAP_FLAGS)
	LD			H,A

	LD			L,$02

	LD			A,(BC)		; Get speed of move
	LD			D,A
	
	SWITCH_ROM_BANK		SCRIPT_BANK_XX
	JP					?SCRIPT_TRACK_CAMERA_XX
	
;********************************
?SCRIPT_CENTER_CAMERA
	LD			L,(-$05)&$FF
	LD			A,L
	ADD			A,E
	LD			(TILEMAP_XTILE),A

	LD			A,L
	ADD			A,D
	LD			(TILEMAP_YTILE),A

	JP			?SCRIPT_PLAY_NEXT

;********************************
?CMD_CAMERASEEK
	LD			L,(-$05)&$FF

	LD			A,(BC)
	INC			BC
	ADD			A,L
	LDFF_A		SCRIPT_WCOUNT		; X Tile target			

	LD			A,(BC)
	INC			BC
	ADD			A,L
	LDFF_A		SCRIPT_WCOUNT+$01	; Y Tile target
	
	SET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,?SCRIPT_TRACK_CAMERA
	RET

;********************************
?CMD_CAMERASEEKACTOR

	SCRIPT_WORD	H,L
	LD			DE,ACTOR_STRUCT_XTILE
	ADD			HL,DE
	LD			E,(-$05)&$FF
	
	LD			A,(HLI)
	LD			D,A
	CP			$05
	LD			A,$00
	JR			C,_X_OK
	LD			A,D
	ADD			A,E
_X_OK
	LD			(SCRIPT_WCOUNT),A

	LD			A,(HLI)
	LD			D,A
	CP			$05
	LD			A,$00
	JR			C,_Y_OK
	LD			A,D
	ADD			A,E
_Y_OK
	LD			(SCRIPT_WCOUNT+$01),A

	SET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,?SCRIPT_TRACK_CAMERA
	RET

;********************************
?CMD_DRAWTILE

	; Y TILE
	;--------------------------------
	SCRIPT_BYTE			E				; Y

	; X TILE
	;--------------------------------
	SCRIPT_BYTE			D				; X

	; TILE OFFSET
	;--------------------------------
	SCRIPT_WORD			H,L				; TILEOFFSET

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

	SWITCH_ROM_BANK		:?SCRIPT_UPDATE_TILE_XX
	JP					?SCRIPT_UPDATE_TILE_XX


;********************************
?CMD_DRAWTILESPARE

	; Y TILE
	;--------------------------------
	SCRIPT_BYTE			E				; Y

	; X TILE
	;--------------------------------
	SCRIPT_BYTE			D				; X

	; TILE OFFSET
	;--------------------------------
	SCRIPT_WORD			H,L				; TILEOFFSET
	PUSH				DE

	; COLL CODE
	;--------------------------------
	SWITCH_RAM_BANK		WRAM_SPARE1
	LD					A,(BC)			; COLL CODE
	LD					E,A
	INC					BC

	SWITCH_RAM_BANK		WRAM_COLL
	LD					(HL),E

	; PATTERN CODE
	;--------------------------------
	SWITCH_RAM_BANK		WRAM_SPARE0
	LD					A,(BC)			; PATTERN CODE
	LD					E,A
	INC					BC

	SWITCH_RAM_BANK		WRAM_TILEMAP
	LD					(HL),E

	; UPDATE!
	;--------------------------------
	POP					DE
	
	SET16				B,C,SCRIPT_WFRAME
	MOVADDR				SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT

	SWITCH_ROM_BANK		:?SCRIPT_UPDATE_TILE_XX
	JP					?SCRIPT_UPDATE_TILE_XX

;********************************
?CMD_HEROSETCAMERA
	LD			A,(HEROACTOR_XTILE)
	LD			E,A
	LD			A,(HEROACTOR_YTILE)
	LD			D,A
	
	LD			A,ACTOR_XOFF_INIT
	LD			(TILEMAP_XTILEOFF),A
	LD			A,ACTOR_YOFF_INIT
	LD			(TILEMAP_YTILEOFF),A
	
	JP			?SCRIPT_CENTER_CAMERA

;********************************
?CMD_SCROLLMAP
	LD			A,(BC)
	INC			BC
	AND			A
	JP			Z,?SCRIPT_PLAY_NEXT

	LDFF_A		SCRIPT_WCOUNT
	SET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,_LOOP

_LOOP
	LD			A,(BC)
	INC			BC
	LD			L,A
	LD			A,(TILEMAP_XDELTA)
	ADD			A,L
	LD			(TILEMAP_XDELTA),A
	
	LD			A,(BC)
	INC			BC
	LD			L,A
	LD			A,(TILEMAP_YDELTA)
	ADD			A,L
	LD			(TILEMAP_YDELTA),A

	LDA_FF		SCRIPT_WCOUNT
	DEC			A
	JR			Z,_NEXT
	LDFF_A		SCRIPT_WCOUNT
	RET

_NEXT
	SET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,?CMD_SCROLLMAP
	RET

;********************************
?CMD_SETCAMERA
	SCRIPT_BYTE		E	; X Center
	SCRIPT_BYTE		D	; Y Center

	LD				A,$08
	LD				(TILEMAP_XTILEOFF),A
	LD				(TILEMAP_YTILEOFF),A

	JP				?SCRIPT_CENTER_CAMERA

;********************************
;Takes 6 parameters:
;	WORD	The Maptile coord of the starting position of rectangle
;	BYTE	The Width of the Rectangle to be copied
;	BYTE	The Height of the rectangle to be copied
;	WORD	The Maptile coord of the destination position
;	BYTE	The Starting Y position of the place to be copied to
;	BYTE	The Starting X position of the place to be copied to
;	
?CMD_COPYTILEBLOCK

	MOVADDR			SCRIPT_WSTATE,?COPYTILEBLOCK_XX

?CMD_COPYTILEBLOCK_SETUP

	LD				HL,COPYTILES_SOURCE
	LD_HLI_BCI
	LD_HLI_BCI

	LD				A,(BC)
	INC				BC
	LDFF_A			SCRIPT_WCOUNT					; Set up the width counter
	LDFF_A			SCRIPT_WCOUNT+$01

	LD				A,(BC)
	INC				BC
	LD				(COPYTILES_HEIGHT),A			; Set up the height counter

	LD				HL,COPYTILES_DEST
	LD_HLI_BCI
	LD_HLI_BCI
	LD_HLI_BCI										; COPYTILES_Y
	LD_HLI_BCI										; COPYTILES_X

	SET16			B,C,SCRIPT_WFRAME
	LD				HL,SCRIPT_WBANK
	SET				$07,(HL)
	
	RET

;********************************
?CMD_COPYTILESPARE

	MOVADDR			SCRIPT_WSTATE,?COPYTILESPARE_XX

	JP				?CMD_COPYTILEBLOCK_SETUP

;********************************
?CMD_SETCOLLMASK

	LD			A,(BC)
	INC			BC
	LD			E,A

	SWITCH_ROM_BANK		:?CMD_SETCOLLMASK_XX
	JP					?CMD_SETCOLLMASK_XX

;********************************
	END
;********************************