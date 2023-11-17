;********************************
; UNPACK_PALETTE.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved
	
;********************************
; HL:	RAM buffer base address 
; BC:   ROM data   base address
;  E: 	"color" offset in RAM!   
;  A:   number of colors to copy
?UNPACK_PALETTE_RAM
	LD		D,A							;save A
	LD		A,E							;color offset is 16 bit
	ADD		A,A							
	LD		E,A
	LD		A,D							;restore A
	LD		D,0							
	ADD		HL,DE						;calc offset for pointer
	LD		E,A
	CALL	?UNPACK_PALETTE_RAM_2BYTE
	RET


;********************************
; BC:	File base address
?UNPACK_PALETTE_BG
	LD			HL,BASE_PAL_BG_BUFFER
	LD			E, 0
	LD			A, 4*8
	CALL		?UNPACK_PALETTE_RAM
	
	
	LD			A,$07
	LD			(TEMP_MISC1),A
	XCALL		?PALFX_REFRESH_ANIMBUFFER
		
	XCALL		?VBLANK_UPDATE_PALETTE_BG
	RET

;********************************
; BC:	File base address
?UNPACK_PALETTE_OBJ

	LD			HL,BASE_PAL_OBJ_BUFFER
	LD			E, 0
	LD			A, 4*8
	CALL		?UNPACK_PALETTE_RAM
	
	LD			A,$87
	LD			(TEMP_MISC1),A
	XCALL		?PALFX_REFRESH_ANIMBUFFER
	XCALL		?VBLANK_UPDATE_PALETTE_OBJ
	RET

;********************************
?UNPACK_PALETTE_RAM_2BYTE
	LD_HLI_BCI
	LD_HLI_BCI	
	DEC			E
	JR			NZ,?UNPACK_PALETTE_RAM_2BYTE
	RET

;********************************
	END
;********************************
