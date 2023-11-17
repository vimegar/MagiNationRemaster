;********************************
; TILEMAP_POSITION.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?TILEMAP_CAMERA_INIT

	LD			E,$00
	
	; CLAMP X, SET FLAGS
	;--------------------------------
	LD			A,(TILEMAP_WIDTH)
	CP			$0A
	JR			NZ,_X_CAN_SCROLL
	SET			$03,E
	JR			_CLAMP_X_MIN	

_X_CAN_SCROLL
	LD			D,A
	LD			A,(TILEMAP_XTILE)
	AND			A
	JR			Z,_CLAMP_X_MIN
	CP			D
	JR			C,_X_IN_MAP		; Don't clamp if X > Width

	; X is >= Width, <= 255, == 0
	;--------------------------------
_CLAMP_X_MIN
	XOR			A
	LD			(TILEMAP_XTILE),A
	LD			(TILEMAP_XTILEOFF),A

	SET			$02,E
	LD			A,(TILEMAP_HSTOP)
	AND			A
	JR			NZ,_X_CLAMP_DONE
	SET			$01,E
	JR			_X_CLAMP_DONE

	; X is < Width, >= 1
	;--------------------------------
_X_IN_MAP
	LD			D,A
	LD			A,(TILEMAP_HSTOP)
	LD			L,A
	CP			D
	JR			Z,_CLAMP_X_MAX		; Clamp if HStop == X
	JR			NC,_X_CLAMP_DONE	; Clamp if HStop < X

_CLAMP_X_MAX
	SET			$01,E
	LD			A,$0F
	LD			(TILEMAP_XTILEOFF),A
	LD			A,L
	LD			(TILEMAP_XTILE),A
	AND			A
	JR			NZ,_X_CLAMP_DONE
	SET			$02,E

_X_CLAMP_DONE


	; CLAMP Y, SET FLAGS
	;--------------------------------
	LD			A,(TILEMAP_VSTOP)
	ADD			A,$0A
	
	CP			$09
	JR			NZ,_Y_CAN_SCROLL
	SET			$07,E
	JR			_CLAMP_Y_MIN	

_Y_CAN_SCROLL
	LD			D,A
	LD			A,(TILEMAP_YTILE)
	AND			A
	JR			Z,_CLAMP_Y_MIN
	CP			D
	JR			C,_Y_IN_MAP		; Don't clamp if Y > Height

	; Y is >= Height, <= 255, == 0
	;--------------------------------
_CLAMP_Y_MIN
	XOR			A
	LD			(TILEMAP_YTILE),A
	LD			(TILEMAP_YTILEOFF),A

	SET			$06,E
	LD			A,(TILEMAP_VSTOP)
	AND			A
	JR			NZ,_Y_CLAMP_DONE
	SET			$05,E
	JR			_Y_CLAMP_DONE

	; Y is < Height, >= 1
	;--------------------------------
_Y_IN_MAP
	LD			D,A
	LD			A,(TILEMAP_VSTOP)
	LD			L,A
	CP			D
	JR			Z,_CLAMP_Y_MAX		; Clamp if VStop == Y
	JR			NC,_Y_CLAMP_DONE	; Clamp if VStop < Y

_CLAMP_Y_MAX
	SET			$05,E
	LD			A,$0F
	LD			(TILEMAP_YTILEOFF),A
	LD			A,L
	LD			(TILEMAP_YTILE),A
	AND			A
	JR			NZ,_Y_CLAMP_DONE
	SET			$06,E

_Y_CLAMP_DONE
	LD			A,E
	LD			(TILEMAP_FLAGS),A

	; SET VARS FOR THE X TILE
	;--------------------------------
	LD			A,(TILEMAP_XTILE)
	ADD			A,A
	ADD			A,A
	ADD			A,A
	ADD			A,A
	LD			B,A
	LD			A,(TILEMAP_XTILEOFF)
	ADD			A,B
	LD			(SCXW),A
	LDFF_A		SCX

	; SET VARS FOR THE Y TILE
	;--------------------------------
	LD			A,(TILEMAP_YTILE)
	LD			C,A
	ADD			A,A
	ADD			A,A
	ADD			A,A
	ADD			A,A
	LD			B,A
	LD			A,(TILEMAP_YTILEOFF)
	ADD			A,B
	LD			(SCYW),A
	LDFF_A		SCY

	; COMPUTE THE SRC ADDR ((Y*WIDTH)+X+$D000)
	;--------------------------------
	LD			A,(TILEMAP_WIDTH)
	LD			B,A
	CALL		?MULT
	LD			A,(TILEMAP_XTILE)
	ADD			A,L
	LD			(TILEMAP_SOURCE),A
	LD			A,$D0
	ADC			A,H
	LD			(TILEMAP_SOURCE+1),A

	; COMPUTE THE DEST ADDR ((Y*$40)+(X*$02)+$9800)
	;--------------------------------
	LD			A,(TILEMAP_YTILE)
	LD			C,A
	LD			B,$40
	CALL		?MULT
	LD			A,H
	AND			$03
	ADD			A,$98
	LD			(TILEMAP_DEST+1),A
	
	LD			A,(TILEMAP_XTILE)
	ADD			A,A
	AND			$1F
	ADD			A,L
	LD			(TILEMAP_DEST),A

	; ADD THE OFFSET TO DEST
	;--------------------------------
	GET16		D,E,TILEMAP_DEST
	LD			HL,$0020
	
	LD			A,(TILEMAP_XTILEOFF)
	BIT			$03,A
	JR			NZ,_XOFF
	LD			A,(TILEMAP_YTILEOFF)
	BIT			$03,A
	JR			NZ,_YOFF

	; XOFF = FALSE, YOFF = FALSE
	;--------------------------------
	RET

_YOFF

	; XOFF = FALSE, YOFF = TRUE
	;--------------------------------
	ADD			HL,DE
	LD			A,H
	AND			$03
	ADD			A,$98
	LD			H,A
	SET16		H,L,TILEMAP_DEST
	RET
	
_XOFF
	

	LD			A,(TILEMAP_YTILEOFF)
	BIT			$03,A
	JR			NZ,_XOFFYOFF

	; XOFF = TRUE, YOFF = FALSE
	;--------------------------------
	LD			A,E
	INC			A
	AND			$1F
	LD			C,A
	LD			A,E
	AND			$E0
	ADD			A,C
	LD			(TILEMAP_DEST),A
	RET

_XOFFYOFF

	; XOFF = TRUE, YOFF = TRUE
	;--------------------------------
	LD			A,E
	INC			A
	AND			$1F
	LD			C,A
	LD			A,E
	AND			$E0
	ADD			A,C
	LD			E,A
	
	ADD			HL,DE
	LD			A,H
	AND			$03
	ADD			A,$98
	LD			H,A
	SET16		H,L,TILEMAP_DEST
	RET

;********************************
?TILEMAP_POSITION

	; KEEP THE SCREEN IN THE TILEMAP
	;--------------------------------
	CALL		?TILEMAP_CAMERA_INIT

	
	
	; DRAW THE TILES
	;--------------------------------
	GET16		H,L,TILEMAP_SOURCE
	LD			A,(TILEMAP_XTILE)
	LD			D,A
	LD			A,(TILEMAP_YTILE)
	LD			E,A

	LD			C,$0A	
_YLOOP	
		; SAVE THE ROW
		;--------------------------------
		PUSH		HL
		PUSH		DE
		LD			B,$0B
_XLOOP
			; SAVE THE COUNTERS
			;--------------------------------
			PUSH		BC
			PUSH		DE
			PUSH		HL

			; DRAW THE TILE
			;--------------------------------
			SWITCH_RAM_BANK		WRAM_TILEMAP
			
			LD			A,(HL)
			LD			C,A
			CALL		?TILEMAP_READY_DRAWTILE
			CALL		?TILEMAP_DRAWTILE

			POP			HL
			POP			DE
			POP			BC

			; GET THE NEXT SOURCE AND DEST
			;--------------------------------
			INC			D
			INC			HL

			DEC			B
			JP			NZ,_XLOOP

		; GET THE NEXT ROW
		;--------------------------------
		POP			DE
		INC			E
		
		POP			HL
		LD			A,(TILEMAP_WIDTH)
		ADD			A,L
		LD			L,A
		LD			A,$00
		ADC			A,H
		LD			H,A
	
		DEC			C
		JP			NZ,_YLOOP

	; RESET THE BANKS
	;--------------------------------
	XOR					A
	LD					(VBK),A
	SWITCH_RAM_BANK		A

	RET

;********************************
; TILEMAP_VBLANK_DST:	Y,X Tile
; TILEMAP_VBLANK_SRC:	Tilemap address
?TILEMAP_UPDATE_TILE_INIT

	SWITCH_RAM_BANK	WRAM_TILEMAP

	GET16	D,E,TILEMAP_VBLANK_DST
	GET16	H,L,TILEMAP_VBLANK_SRC
	LD		C,(HL)

	CALL	?TILEMAP_READY_DRAWTILE

	SET16	D,E,TILEMAP_VBLANK_DST
	SET16	H,L,TILEMAP_VBLANK_SRC

	LD		A,:?TILEMAP_VBLANK_DRAWTILE2
	LD		(VBLANK_BANK),A
	MOVADDR	VBLANK_FUNC,?TILEMAP_VBLANK_DRAWTILE2

	RET

;********************************
; TILEMAP_VBLANK_DST:	Y,X Tile
; TILEMAP_VBLANK_SRC:	Tilemap address
?TILEMAP_UPDATE_TILE

	SWITCH_RAM_BANK	WRAM_TILEMAP

	GET16	D,E,TILEMAP_VBLANK_DST
	GET16	H,L,TILEMAP_VBLANK_SRC
	LD		C,(HL)

	CALL	?TILEMAP_READY_DRAWTILE

	SET16	D,E,TILEMAP_VBLANK_DST
	SET16	H,L,TILEMAP_VBLANK_SRC

	LD		A,:?TILEMAP_VBLANK_DRAWTILE2
	LD		(VBLANK_BANK),A
	MOVADDR	VBLANK_FUNC,?TILEMAP_VBLANK_DRAWTILE2

	CALL	?SYSTEM_DO_VFUNC
	RET

;********************************
	END
;********************************