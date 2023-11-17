;********************************
; SCRIPT_XX_ACTOR.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?CMD_HEROFROMDOOR_XX

	LD		A,(HERO_DOORX)
	LD		(HEROACTOR_XTILE),A
	LD		A,(HERO_DOORY)
	LD		(HEROACTOR_YTILE),A
	
	LD		B,A
	LD		A,(TILEMAP_WIDTH)
	LD		C,A
	CALL	?MULT
	
	LD		D,$D0
	LD		A,(HERO_DOORX)
	LD		E,A
	ADD		HL,DE
	SET16	H,L,HEROACTOR_TILE

	LD		A,HOTSPOT_NULL
	LD		(HOTSPOT_CURRENT),A

	MOVADDR	SCRIPT_WSTATE,?SCRIPT_PLAY_NEXT
	RET

;********************************
?CMD_RAINDROP_LOCATE_XX

	; HL = INDEX INTO RAINDROP_ROW
	;--------------------------------
	LD			A,(DIV)
	AND			$0F
	LD			B,A
	ADD			A,A		; A *= $02
	ADD			A,B		; A += B
	LD			C,A
	LD			B,$00
	LD			HL,RAINDROP_ROW
	ADD			HL,BC
	
	; A = Y Tile
	;--------------------------------
	LD			A,(HLI)
	LD			B,A
	LD			A,(TILEMAP_YTILE)
	ADD			A,B
	LDFF_A		ACTOR_YTILE
	
	; HL = Index into TILEMAP_YPAD_TABLE
	;--------------------------------
	LD			A,(HLI)		; Index into TILEMAP_YPAD_TABLE
	LD			H,(HL)
	LD			L,A
	
	; DE = Y Pad
	;--------------------------------
	LD			A,(HLI)		; Get the value
	LD			D,(HL)
	LD			E,A
	
	; HL = INDEX INTO RAINDROP_COL
	;--------------------------------
	LD			A,(DIV)
	SWAP		A
	AND			$0F
	LD			C,A
	LD			B,$00
	LD			HL,RAINDROP_COL
	ADD			HL,BC
	
	; A = X Tile
	;--------------------------------
	LD			B,(HL)
	LD			A,(TILEMAP_XTILE)
	ADD			A,B
	LDFF_A		ACTOR_XTILE
	
	; HL = YPad + XTile + TILEMAP_SOURCE
	;--------------------------------
	LD			L,B
	LD			H,$00
	ADD			HL,DE
	GET16		D,E,TILEMAP_SOURCE
	ADD			HL,DE
	
	; RAINDROP_TILE = HL
	;--------------------------------
	SET16		H,L,ACTOR_TILE
	MOVADDR_FF	SCRIPT_WSTATE,?CMD_THISACTORRAINDROPTEST

	RET

;********************************
	END
;********************************