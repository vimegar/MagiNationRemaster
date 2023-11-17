;********************************
; SCRIPT_XX_SCROLL.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?COPYTILEBLOCK_XX

	GET16		D,E,COPYTILES_SOURCE
	GET16		H,L,COPYTILES_DEST

	SWITCH_RAM_BANK	WRAM_COLL
	LD			A,(DE)								; Get the collision code
	LD			(HL),A								; Set the collision code

	SWITCH_RAM_BANK	WRAM_TILEMAP
	LD			A,(DE)								; Get the pattern ID
	LD			(HL),A								; Set the pattern ID

?COPYTILEBLOCK_WORK
	PUSH		HL
	PUSH		DE

	LD			A,(SCREEN_VISIBLE)
	AND			A
	JR			Z,_NEXT_TILE

	GET16		D,E,COPYTILES_YX
	CALL		?SCRIPT_UPDATE_TILE_XX

	AND			A
	JR			Z,_NEXT_TILE

	POP			BC									; Repeat
	POP			BC
	RET
	
_NEXT_TILE
	POP			BC
	POP			DE

	LDA_FF		SCRIPT_WCOUNT						; get the counter for the x pos
	DEC 		A
	JR			Z,_NEXT_ROW							; if counter is 0, add a row

	LDFF_A		SCRIPT_WCOUNT						; else dec a and load back into counter			

	INC			BC
	SET16		B,C,COPYTILES_SOURCE
	INC			DE	
	SET16		D,E,COPYTILES_DEST

	LD			HL,COPYTILES_X						; inc column for dst x coord
	INC			(HL)

	LD			A,(SCREEN_VISIBLE)
	AND			A
	RET			NZ

	GET16_FF	H,L,SCRIPT_WSTATE
	JP			(HL)

_NEXT_ROW
	LDA_FF		SCRIPT_WCOUNT+$01					; Get copy width
	LDFF_A		SCRIPT_WCOUNT						; Restore the width counter
	DEC			A
	LD			L,A
	
	LD			A,(COPYTILES_X)
	SUB			L
	LD			(COPYTILES_X),A

	LD			A,(TILEMAP_WIDTH)
	SUB			L
	LD			L,A
	LD			H,$00
	
	PUSH		HL
	
	ADD			HL,BC
	SET16		H,L,COPYTILES_SOURCE

	POP			HL

	ADD			HL,DE
	SET16		H,L,COPYTILES_DEST

	LD			HL,COPYTILES_Y
	INC			(HL)

	LD			A,(COPYTILES_HEIGHT)
	DEC			A
	JR			Z,_FINI
	LD			(COPYTILES_HEIGHT),A

	RET

_FINI
	LD			HL,SCRIPT_WBANK
	RES			$07,(HL)
	MOVADDR		SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT

	RET

;********************************
?COPYTILESPARE_XX

	GET16		D,E,COPYTILES_SOURCE
	GET16		H,L,COPYTILES_DEST

	SWITCH_RAM_BANK	WRAM_SPARE1
	LD			A,(DE)								; Get the collision code
	LD			C,A
	SWITCH_RAM_BANK	WRAM_COLL
	LD			(HL),C								; Set the collision code

	SWITCH_RAM_BANK	WRAM_SPARE0
	LD			A,(DE)								; Get the pattern ID
	LD			C,A
	SWITCH_RAM_BANK	WRAM_TILEMAP
	LD			(HL),C								; Set the pattern ID

	JP			?COPYTILEBLOCK_WORK

;********************************
?SCRIPT_TRACK_CAMERA_XX

	; CHECK X POS, NEG, OR NIL
	;--------------------------------
	LDA_FF		SCRIPT_WCOUNT
	LD			E,A
	
	LD			A,(TILEMAP_XTILE)
	CP			E
	JR			C,_X_POS
	JR			NZ,_X_NEG

_X_NIL							; X is nil (or clamped)
	DEC			L
	JR			_X_CHECK_DONE

_X_NEG							; X is negative
	BIT			$02,H
	JR			NZ,_X_NIL
	LD			A,D
	CPL
	INC			A
	LD			E,A
	JR			_X_MOVE

_X_POS							; X is positive
	BIT			$01,H
	JR			NZ,_X_NIL
	LD			E,D

_X_MOVE
	LD			A,(TILEMAP_XDELTA)
	ADD			A,E
	LD			(TILEMAP_XDELTA),A

_X_CHECK_DONE

	; CHECK Y POS, NEG, OR NIL
	;--------------------------------
	LDA_FF		SCRIPT_WCOUNT+$01
	LD			E,A
	
	LD			A,(TILEMAP_YTILE)
	CP			E
	JR			C,_Y_POS
	JR			NZ,_Y_NEG

_Y_NIL							; X is nil (or clamped)
	DEC			L
	JR			_Y_CHECK_DONE

_Y_NEG							; X is negative
	BIT			$06,H
	JR			NZ,_Y_NIL
	LD			A,D
	CPL
	INC			A
	LD			E,A
	JR			_Y_MOVE

_Y_POS							; X is positive
	BIT			$05,H
	JR			NZ,_Y_NIL
	LD			E,D

_Y_MOVE
	LD			A,(TILEMAP_YDELTA)
	ADD			A,E
	LD			(TILEMAP_YDELTA),A

_Y_CHECK_DONE

	; TARGET REACHED?
	;--------------------------------
	LD			A,L
	AND			A
	RET			NZ

	INC			BC
	SET16		B,C,SCRIPT_WFRAME
	MOVADDR		SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET

;********************************
?CMD_SETCOLLMASK_XX
	
	LD			HL,COLL_MASK+$07
	XOR			A

	LD			(HLD),A		;7
	LD			(HLD),A		;6
	LD			(HLD),A		;5
	LD			(HL),A		;4
	
	CPL
	
	BIT			$00,E
	JR			Z,_NO_0
	LD			(HL),A
_NO_0
	INC			HL

	BIT			$01,E
	JR			Z,_NO_1
	LD			(HL),A
_NO_1
	INC			HL

	BIT			$02,E
	JR			Z,_NO_2
	LD			(HL),A
_NO_2
	INC			HL

	BIT			$03,E
	JR			Z,_NO_3
	LD			(HL),A
_NO_3

	SET16			B,C,SCRIPT_WFRAME
	MOVADDR_FF		SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET

;********************************
; DE:	TILEMAP_VBLANK_DST		Y,X Tile
; HL:	TILEMAP_VBLANK_SRC		Tilemap address
?SCRIPT_UPDATE_TILE_XX

	LD				A,(SCREEN_VISIBLE)				; Skip update if the screen is hidden
	AND				A
	RET				Z
	
	LD				A,(TILEMAP_XTILE)				; Get the screen X tile coord
	LD				B,A
	LD				A,D								; Get COPYTILES_X
	SUB				B								; Is the X tile in screen bounds?
	LD				B,A								; B = Screen X Tile
	AND				$F0
	LD				A,$00
	RET				NZ

	LD				A,(TILEMAP_YTILE)				; Get the screen Y tile coord
	LD				C,A
	LD				A,E								; Get COPYTILES_Y
	SUB				C								; Is the Y tile in screen bounds?
	LD				C,A								; C = Screen Y Tile
	AND				$F0
	LD				A,$00
	RET				NZ

	PUSH			BC

	SET16			H,L,TILEMAP_VBLANK_SRC
	SET16			D,E,TILEMAP_VBLANK_DST
	CALL_FOREIGN	?TILEMAP_UPDATE_TILE_INIT		; D = XTile, E = YTile, HL = Tileaddr

	POP				BC

	LD				A,B
	AND				A
	JR				Z,_X_ON_BORDER
	CP				$0A
	JR				NZ,_Y_BORD

_X_ON_BORDER
	LD				A,(TILEMAP_COLTRIG)
	AND				A
	JR				NZ,_REPEAT

_Y_BORD
	LD				A,C
	AND				A
	JR				Z,_Y_ON_BORDER
	CP				$09
	LD				A,$00
	RET				NZ

_Y_ON_BORDER
	LD				A,(TILEMAP_ROWTRIG)
	AND				A
	RET				Z

_REPEAT
	LD				A,$01
	RET

;********************************
	END
;********************************