;********************************
; UNPACK_MAC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
UNPACK_VAR	MACRO	bank,addr,func

	PUSH_ROM_BANK
	SWITCH_ROM_BANK	bank
	LD		BC,addr
	CALL	func
	POP_ROM_BANK

	ENDM

;********************************
UNPACK	MACRO	addr,func

		PUSH_ROM_BANK
		SWITCH_ROM_BANK	:addr
		LD		BC,addr
		CALL	func
		POP_ROM_BANK
		
		ENDM

;********************************
FILE_BIT	MACRO	fileName,totalTiles

		BINSET	0,totalTiles*$10
		LIBBIN	fileName	
		BINSET	$0000

		ENDM

;********************************
FILE_MAP	MACRO	pal,vram,pattern,tilemap,coll

		DEFW		(pal!&$FFFF)
		DB			:pal
		DEFW		(vram!&$FFFF)
		DB			:vram
		DEFW		(pattern!&$FFFF)
		DB			:pattern
		DEFW		(tilemap!&$FFFF)
		DB			:tilemap
		DEFW		(coll!&$FFFF)
		DB			:coll
		
		ENDM

;********************************
; dest:		Dest addr in VRAM
; vram:		Addr of bitmap
; width:	Width in 8x8 tiles
; height:	Height in 8x8 tiles
FILE_VRM_BIT	MACRO	dest,bit,width,height

		DEFW	dest
		DEFW	(bit)!&$FFFF
		DB		width*$08
		DB		height
		DB		:bit

		ENDM

;********************************
;	HL:		ROM file counter
ROM_READ8	MACRO	dest
		LD		A,(HLI)
		LD		(dest),A
		ENDM

;********************************
;	HL:		ROM file counter
ROM_READ16	MACRO	dest
		LD		A,(HLI)
		LD		(dest),A
		LD		A,(HLI)
		LD		(dest+1),A
		ENDM

;********************************
	END
;********************************