;********************************
; PALETTE.S
;********************************
;	Author:	Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\ENGINE\SYSTEM\GRAPHICS\PALETTE\PALETTE_FX.S
	LIB		SOURCE\ENGINE\SYSTEM\GRAPHICS\PALETTE\PALETTE_VBLANK.S

;---------------------------------------------------------------------------------------
;  A FOLLOWING FUNCTIONS BE GENERAL PURPOSE GENERIC FUNCTIONS USED AS BUILDING BLOCKS! ARRR!!
;---------------------------------------------------------------------------------------
;  HERE BE A LIST AND THERE PARAMS . . .
;********************************

;********************************
;----------------------------
;	?CYCLE_PALETTE_RAM			HL:	RAM buffer base address, E:"palette" offset in RAM!,A: CYCLE equate  
;	?FADE_PALETTE_RAM   		HL:	RAM buffer base address,BC: # of colors to fade,DE: R-G-B "fade"color, (TEMP_MISC4) fade speed        
;	?SET_COLOR_PALETTE_RAM 		HL:	RAM buffer base address, E:"color" offset in RAM!,A:# of palettes(base1),BC:R-G-B "set"color 
;	?SWAP_PALETTE_RAM			HL:	RAM buffer base address,BC: # of colors to swap,E: R-G-B swap equate
;----------------------------
;	?PALFX_REFRESH_ANIMBUFFER	(TEMP_MISC1)  PACKED BYTE :  [4bit palette base|4bit total palettes to work] -# are base0-
;	?PALFX_CLEAR_ANIMBUFFER		(TEMP_MISC1)  PACKED BYTE | (TEMP_MISC3)  color to set palette to
;	?PALFX_CLEAR_BASEBUFFER		(TEMP_MISC1)  PACKED BYTE | (TEMP_MISC3)  color to set palette to
;	?PALFX_CYCLE_PALETTE		(TEMP_MISC1)  PACKED BYTE :  [4bit palette base|4bit color cycle technique] (see EQU)
;	?PALFX_FADE_ANIM_TO_BASE	(TEMP_MISC1)  PACKED BYTE | (TEMP_MISC4)  fade speed (see EQU)
;	?PALFX_XOR_PALETTE 			(TEMP_MISC1)  PACKED BYTE 		(palette base|# of palettes)
;********************************

;********************************

;--------------------------------------------
; input:
;   B = high byte, C = low byte (actual color content)
; output:
;   D = Blue, E = Green, A = Red
?CONVERTCOLOR_15TO24:
        LD      A,C

        SRL     B
        RR	    C
        SRL     B
        RR      C
        LD	    D,B
				
        SRL     C
        SRL     C
        SRL     C
        LD	    E,C

        AND     $1F
        RET
     
;--------------------------------------------
; input:
;   D = Blue, E = Green, A = Red
; output:
;   B = high byte, C = low byte
?CONVERTCOLOR_24TO15:
        RLCA
        RLCA
        RLCA
        LD      C,A
        SRL     E
        RR      C
        SRL     E
        RR      C
        SRL     E
        RR      C

        LD      A,D
        ADD     A,A
        ADD     A,A
        ADD     A,E
        AND		$7F
        LD      B,A
        RET

;********************************
; HL:	RAM buffer base address 
;  E: 	"palette" offset in RAM!   
;  A:   2,3,4 == to cycle a palette's last 2,3,4 colors          
?CYCLE_PALETTE_RAM
	CP			4
	JR			Z,_DO4	
	CP			3
	JR			Z,_DO3	
_DO2		
	LD			D,0
	SLA			E
	SLA			E
	SLA			E

	ADD			HL,DE		; get base pointer
	LD			E,6			; get last color pointer
	ADD			HL,DE		; HL = BP+6
	PUSH		HL			
	POP			BC
	DEC			BC
	DEC			BC			; BC = BP+4
	PUSH		BC
	
	LD			A,(HLI)		; DE = (BP+6)				<-------
	LD			E,A	
	LD			A,(HLD)
	LD			D,A
			
	LD_HLI_BCI				;(BP+6) = (BP+4)			<-------
	LD_HLI_BCI
	POP			HL			; HL = BP+4
	
	LD			A,E			;(BP+4) = DE				<-------
	LD			(HLI),A
	LD			(HL),D		
	RET
_DO3	
	LD			D,0
	SLA			E
	SLA			E
	SLA			E
	ADD			HL,DE		; get base pointer
	
	LD			E,4			; get last color pointer
	ADD			HL,DE		; HL = BP+4
	PUSH		HL			
	POP			BC
	DEC			BC
	DEC			BC			; BC = BP+2
	
	LD			A,(HLI)		; DE = (BP+4)		    	<-------
	LD			E,A	
	LD			A,(HLD)
	LD			D,A
				
	LD_HLI_BCI				;(BP+4) = (BP+2)         	<-------
	LD			A,(BC)
	LD			(HLI),A
	DEC			BC			; BC = BP+2 , HL = BP+6
	PUSH		HL
	
	LD_BCI_HLI				;(BP+2) = (BP+6) 			<-------
	LD_BCI_HLI			
	POP			HL			; HL = BP+6
	
	LD			A,E			;(BP+6) = DE				<-------
	LD			(HLI),A
	LD			(HL),D		
	RET
	
_DO4	
	LD			D,0
	SLA			E
	SLA			E
	SLA			E
	ADD			HL,DE		; get base pointer
	LD			E,6			; get last color pointer
	ADD			HL,DE		; HL = BP+6
	PUSH		HL			
	POP			BC
	DEC			BC
	DEC			BC			; BC = BP+4
	PUSH		BC			; save BP+4
	
	LD			A,(HLI)		; DE = (BP+6)		    	<-------
	LD			E,A	
	LD			A,(HLD)
	LD			D,A
			
	LD_HLI_BCI				;(BP+6) = (BP+4)         	<-------
	LD			A,(BC)
	LD			(HLI),A
	DEC			BC			; BC = BP+4 
	
	POP			HL			; HL = BP+4
	DEC			HL
	DEC			HL			; HL = BP+2
	PUSH		HL			; save BP+2 
	
	LD_BCI_HLI				;(BP+4) = (BP+2) 			<-------
	LD			A,(HLI)
	LD			(BC),A
	DEC			BC		
	DEC			BC
	DEC			BC			; BC = BP +2		
	POP			HL		
	DEC			HL
	DEC 		HL			; HL = BP
	
	LD			A,(HLI)		;(BP+2) = (BP) 				<-------
	LD			(BC),A
	INC			BC
	LD			A,(HLD)
	LD			(BC),A		; HL = BP
	
	LD			A,E			;(BP) = DE					<-------
	LD			(HLI),A
	LD			(HL),D		
	RET

;--------------------------------------------
; input:
;   D = Blue, E = Green, A = Red
; output:
;   D = Blue, E = Green, A = Red
?MAKECOLOR
		PUSH	HL
		LD      B,A
		
		LD		A,(PALETTE_RGB+2)   ; get RED
		LD		H,A
		LD		A,(PALETTE_RGB+1) 	; get GREEN
		LD		L,A
		LD		A,(PALETTE_RGB) 	; get BLUE    ;BLUE,GREEN,RED : +0,+1,+2
		LD		C,A
		
		;red - is it less than max
        LD      A,B
        CP      H
        JR		Z,_DO_GREEN
        JR		NC,_DEC_RED
        ADC     A,0
        LD      B,A
		JR		_DO_GREEN
_DEC_RED
		DEC		A
		LD      B,A
		
_DO_GREEN
		;green 
        LD      A,E
        CP      L
        JR		Z,_DO_BLUE
        JR		NC,_DEC_GREEN
        ADC     A,0
        LD      E,A
		JR		_DO_BLUE
_DEC_GREEN
		DEC		A
		LD		E,A
_DO_BLUE
		;blue
        LD      A,D
        CP      C
        JR		Z,_CHECK_DONE
        JR		NC,_DEC_BLUE
        ADC     A,0
        LD      D,A
        JR		_CHECK_DONE
_DEC_BLUE
		DEC		A
		LD		D,A
		
_CHECK_DONE
        LD 		A,(PALETTE_FADE_SPEED)
		DEC		A
		JR		Z,_DONE
		LD 		(PALETTE_FADE_SPEED),A
_SET_RED		
		LD      A,B
       	POP		HL
		JR		?MAKECOLOR
_DONE				
		LD		A,(TEMP_MISC4)
		LD 		(PALETTE_FADE_SPEED),A
		LD      A,B
       	POP		HL
		RET
		
;--------------------------------------------
; input:
;   D-(H) = Blue, E-(L) = Green, A = Red
; output:
;   D = Blue, E = Green, A = Red      
?MAKEDARKER
        OR      A
        JR      Z,_SKIP1
        DEC     A
_SKIP1
        LD      B,A

        XOR     A
        CP      E
        JR      Z,_SKIP2
        DEC     E
_SKIP2
		XOR		A
        CP      D
        JR      Z,_SKIP3
        DEC     D
_SKIP3
        ;LD      A,B
        ;RET
_CHECK_DONE
        LD 		A,(PALETTE_FADE_SPEED)
		DEC		A
		JR		Z,_DONE
		LD 		(PALETTE_FADE_SPEED),A
_SET_RED		
		LD      A,B
       	JR		?MAKEDARKER
_DONE				
		LD		A,(TEMP_MISC4)
		LD 		(PALETTE_FADE_SPEED),A
		LD      A,B
       	RET         
;--------------------------------------------
; input:
;   D = Blue, E = Green, A = Red
; output:
;   D = Blue, E = Green, A = Red
?MAKELIGHTER
        ;red - is it less than max
        CP      31
        ADC     A,0
        LD      B,A

		;green 
        LD      A,E
        CP      31
        ADC     A,0
        LD      E,A

		;blue
        LD      A,D
        CP      31
        ADC     A,0
        LD      D,A

        ;LD      A,B
        ;RET        
_CHECK_DONE
        LD 		A,(PALETTE_FADE_SPEED)
		DEC		A
		JR		Z,_DONE
		LD 		(PALETTE_FADE_SPEED),A
_SET_RED		
		LD      A,B
       	JR		?MAKELIGHTER
_DONE				
		LD		A,(TEMP_MISC4)
		LD 		(PALETTE_FADE_SPEED),A
		LD      A,B
       	RET

;********************************
; input:
;   B = high byte, C = low byte (actual color content)
; output:
;   D = Blue, E = Green, A = Red
?FADE_PALETTE_COLOR_BLACK
	CALL    	?CONVERTCOLOR_15TO24
    CALL    	?MAKEDARKER
    CALL    	?CONVERTCOLOR_24TO15
	RET 	

;********************************
; input:
;   B = high byte, C = low byte (actual color content)
; output:
;   D = Blue, E = Green, A = Red
?FADE_PALETTE_COLOR_DELTACOLOR
	CALL    	?CONVERTCOLOR_15TO24
    CALL    	?MAKECOLOR
    CALL    	?CONVERTCOLOR_24TO15
	RET 
	
;********************************
; input:
;   B = high byte, C = low byte (actual color content)
; output:
;   D = Blue, E = Green, A = Red
?FADE_PALETTE_COLOR_WHITE
	CALL    	?CONVERTCOLOR_15TO24
    CALL    	?MAKELIGHTER
    CALL    	?CONVERTCOLOR_24TO15
	RET 		

;********************************
; HL:	RAM buffer base address 
; BC:   number of colors to fade
; DE:   color to fade to
; (TEMP_MISC4) fade speed
?FADE_PALETTE_RAM
	PUSH		DE					;SAVE FADE_COLOR
	PUSH		HL
	LD			A,D
	OR			$80   				;set the 16th bit
	CP			$FF
	JR			Z,CP_LOW_WHITE
	
	AND			$7F   				;clear the 16th bit
	CP			$00
	JR			Z,CP_LOW_BLACK
FADE_BY_COLOR
	PUSH		BC
	LD			B,D
	LD			C,E	
	;set rgb values
	CALL		?CONVERTCOLOR_15TO24
	LD			(PALETTE_RGB+2),A
	LD			A,E
	LD			(PALETTE_RGB+1),A
	LD			A,D
	LD			(PALETTE_RGB),A
	POP			BC
	; we fade to a color
	LD			HL,?FADE_PALETTE_COLOR_DELTACOLOR
	MOV16_REG	H,L,PALETTE_FADE_FUNC
	JR			START_FADER_LOOP
CP_LOW_WHITE	
	CP			E					
	JR			NZ,FADE_BY_COLOR
	;check if we fade to white
	LD			HL,?FADE_PALETTE_COLOR_WHITE
	MOV16_REG	H,L,PALETTE_FADE_FUNC
	JR			START_FADER_LOOP
CP_LOW_BLACK		
	CP			E					
	JR			NZ,FADE_BY_COLOR
	;check if we fade to black
	LD			HL,?FADE_PALETTE_COLOR_BLACK
	MOV16_REG	H,L,PALETTE_FADE_FUNC

START_FADER_LOOP
	POP			HL
	
FADE_PALRAM_LOOP:
	PUSH		BC
	
	; load (HL) into BC (stored high-low)
	LD			A,(HLI)		
	LD			C,A	
	LD			A,(HLD)		
	LD			B,A	
			
	PUSH		HL					; save HL pointer (PAL_RAM pointer)
	
	; get the fader func_pointer
	GET16		H,L, PALETTE_FADE_FUNC
	CALL		?CALL_HL
		
 	POP			HL					; restore HL (PAL_RAM pointer)
 	
 	LD			A,C
 	LD			(HLI),A		
	LD			A,B
	LD			(HLI),A				; HL pointer is advanced to next color
		
 	POP			BC
 	DEC16_LOOP	B,C,FADE_PALRAM_LOOP
 
 	POP			DE					; RESTORE FADE_COLOR
 	RET       


;************************************************
; DETERMINES IF YOU NEED TO UPDATE PALETTES,
; IF NOT SETS VBLANK TO ?VBLANK_IDLE
;************************************************
?DETERMINE_UPDATE_PALETTE_VFUNC
	; RULE - SET    "PALETTE_SAFE" AFTER  YOU COMPLETE  'PALETTE' OPERATION
	;        CLEAR  "PALETTE_SAFE" BEFORE YOU START A   'PALETTE' OPERATION
	LD			A,(PALETTE_SAFE)
	AND			A
	JR			Z,SET_IDLE
	XOR			A  									; CLEAR THE PALETTE FLAG
	LD			(PALETTE_SAFE),A	
	
	; set the VBLANK to update the palette
	LD		A,:?VBLANK_UPDATE_PALETTES
	LD		(VBLANK_BANK),A
	MOVADDR	VBLANK_FUNC,?VBLANK_UPDATE_PALETTES
	RET
SET_IDLE
	MOVADDR		VBLANK_FUNC,?VBLANK_IDLE
	RET
;************************************************	
	
;********************************
; HL:	RAM buffer base address 
;  E: 	"color" offset in RAM!   (base0)
;  A:	number of palettes       (base1)
; BC:   "set_color" value 
?SET_COLOR_PALETTE_RAM
	;step1 get base pointer (add the color offset)
	LD			D,0
	SLA			E
	ADD			HL,DE		; get base pointer
	;step2 set palette offset (add the color offset)
	LD			DE,8        ; OFFSET BY 4 COLORS*2BYTES			
_LOOP_CPY	
	PUSH		AF			; save the number of palettes
	
	LD			A,C			;(HL) = BC				<-------
	LD			(HLI),A
	LD			(HL),B
	DEC			 HL		
	
	;ADVANCE THE POINTER TO NEXT PALETTE
	ADD			HL,DE
	POP			AF
	DEC			A
	JR			NZ,_LOOP_CPY
	RET


;********************************
; HL:	RAM buffer base address 
; BC:   number of colors to fade
;  E:   R-G-B swap (1 rb 2 bg 3 rg)
?SWAP_PALETTE_RAM
SWAP_PALRAM_LOOP:
	PUSH		BC

	; load (HL) into BC (stored high-low)
	LD			A,(HLI)		
	LD			C,A	
	LD			A,(HLD)		
	LD			B,A	
			
	PUSH		HL					; save HL pointer (PAL_RAM pointer)
	PUSH		DE
	LD			A,E
	CP			1
	JR			Z,_SWAP_RB
	CP			2
	JR			Z,_SWAP_BG
	CP			3
	JR			Z,_SWAP_RG
	;----------------------
	;ELSE       we SWAP RGB...
_SWAP_RGB	
	SWAP_PALETTE_COLOR_RGB
	JR			_DONE_SWAP
_SWAP_BG
	SWAP_PALETTE_COLOR_BG
	JR			_DONE_SWAP
_SWAP_RG	
	SWAP_PALETTE_COLOR_RG	
_SWAP_RB
	SWAP_PALETTE_COLOR_RB
_DONE_SWAP		
	POP			DE	
 	POP			HL					; restore HL (PAL_RAM pointer)
 	
 	LD			A,C
 	LD			(HLI),A		
	LD			A,B
	LD			(HLI),A				; HL pointer is advanced to next color
		
 	POP			BC
 	DEC16_LOOP	B,C,SWAP_PALRAM_LOOP
 	RET       


;********************************
; HL:	RAM buffer base address 
; BC:   number of colors to XOR
?XOR_PALETTE_RAM
	; load (HL) into BC (stored high-low)
	LD			A,(HL)
	CPL
	LD			(HLI),A
				
	LD			A,(HL)
	CPL
	LD			(HLI),A
		
 	DEC16_LOOP	B,C,?XOR_PALETTE_RAM
 	RET       


;--------------------------------------------------------------------------------------


;************************************ 
; INPUT
;  (TEMP_MISC1)  PACKED BYTE (palette base|total palettes to work on)
; OUTPUT
; HL: SETS A BASE ADDRESS 
?DECODE_PALNIBBLE_BASE_ADDRESS
	; upper nibble is pal_base, lower nibble is # of palettes to affect
	LD			HL,BASE_PAL_BUFFERS
	LD			A,(TEMP_MISC1)
	SWAP		A
	AND			$0F
	LD			B,0                
	LD			C,A
	SLA			C      ;*2
	RL 			B
	SLA			C      ;*4  
	RL 			B
	SLA			C      ;*8
	RL 			B   	
	ADD			HL,BC		;HL = BASE PALETTE
	RET
	
;************************************ 
; INPUT
;  (TEMP_MISC1)  PACKED BYTE (palette base|total palettes to work on)
; OUTPUT
;  A: NUMBER OF COLORS
?DECODE_PALNIBBLE_NUM_COLORS
	LD			A,(TEMP_MISC1)
	AND			$0F
	INC			A			;0 BECOMES 1 palette, 15 becomes all 16 palettes
								
	LD			D,0
	LD			E,A
	SLA			E      ;*2
	RL 			D
	SLA			E      ;*4
	RL 			D
	;SLA			E      ;*8
	;RL 			D			
	LD			A,E
	LD			E,D 
	RET

;************************************ 
; INPUT
;  (TEMP_MISC1)  PACKED BYTE (palette base|total palettes to work on)
; OUTPUT
;  (TEMP_MISC2)  NUMBER OF COLORS
;  (TEMP_MISC3)  POINTER TO BASE
?DECODE_PALNIBBLE
	CALL		?DECODE_PALNIBBLE_BASE_ADDRESS		
	SET16		H,L,TEMP_MISC3			
	CALL		?DECODE_PALNIBBLE_NUM_COLORS
	LD			(TEMP_MISC2),A
	RET
			
;************************************ 
; INPUT
;  (TEMP_MISC1)  PACKED BYTE (palette base|total palettes to work on)
?PALFX_REFRESH_ANIMBUFFER
	XOR			A
	LD			(PALETTE_SAFE),A
	
	CALL		?DECODE_PALNIBBLE_BASE_ADDRESS	
	PUSH		HL								; save the BASE palette address
	LD			BC,ANIM_PAL_BUFFER_OFFSET												
	ADD			HL,BC							; get the offset buffer to unpack to
	POP			BC								; restore the BASE palette address
	CALL		?DECODE_PALNIBBLE_NUM_COLORS
	; BC IS SOURCE / HL IS DEST / A # OF COLORS
	CALL		?UNPACK_PALETTE_RAM
	
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET

;********************************
;  (TEMP_MISC1)  PACKED BYTE (palette base|total palettes to work on)
;  (TEMP_MISC3)  color to set palette to
?PALFX_CLEAR_ANIMBUFFER
	XOR			A
	LD			(PALETTE_SAFE),A
	
	; GET BASE 									-> HL
	CALL		?DECODE_PALNIBBLE_BASE_ADDRESS	
	LD			BC,ANIM_PAL_BUFFER_OFFSET									
	ADD			HL,BC									; get the ANIM palette address
	; GET #_OF_COLORS 							-> A
	CALL		?DECODE_PALNIBBLE_NUM_COLORS
	LD			E,A
	; GET COLOR VALUE 							-> BC
	GET16		B,C,TEMP_MISC3
	JR			?CLEAR_LOOP_CPY
	
;********************************
;  (TEMP_MISC1)  PACKED BYTE (palette base|total palettes to work on)
;  (TEMP_MISC3)  color to set palette to
?PALFX_CLEAR_BASEBUFFER
	XOR			A
	LD			(PALETTE_SAFE),A
	
	; GET BASE 									-> HL
	CALL		?DECODE_PALNIBBLE_BASE_ADDRESS	
	; GET #_OF_COLORS 							-> A
	CALL		?DECODE_PALNIBBLE_NUM_COLORS
	LD			E,A
	; GET COLOR VALUE 							-> BC
	GET16		B,C,TEMP_MISC3

;--------------------------------
?CLEAR_LOOP_CPY	
	LD			A,C			;(HL) = BC				<-------
	LD			(HLI),A
	LD			(HL),B
	INC			HL
	DEC			E
	JR			NZ,?CLEAR_LOOP_CPY	
	
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET

;********************************
;  (TEMP_MISC1)  PACKED BYTE 		(palette base|# of palettes)
;  (TEMP_MISC2)  COLORCYCLE TYPE	(color cycle technique)
?PALFX_CYCLE_PALETTE
	XOR			A
	LD			(PALETTE_SAFE),A
	
	; GET BASE 									-> HL
	CALL		?DECODE_PALNIBBLE_BASE_ADDRESS	
	LD			BC,ANIM_PAL_BUFFER_OFFSET									
	ADD			HL,BC	
	
	; GET COUNTER OFFSET	
	LD			A,(TEMP_MISC1)
	AND			$0F
	INC			A	
	LD			(TEMP_MISC3),A
	
	; HL is set to base, A is set to offset+1 
_CYCLE_LOOP	
	PUSH		HL
	
	; SET THE OFFSET
	DEC			A	; assumes offset set to (offset+1)
	LD			E,A									
	
	; GET CYCLE TYPE
	LD			A,(TEMP_MISC2)
	CALL		?CYCLE_PALETTE_RAM		
	POP			HL
	
	LD			A,(TEMP_MISC3)
	DEC			A
	LD			(TEMP_MISC3),A
	JR			NZ,_CYCLE_LOOP	
	
_DONE_CYCLE	
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET


;************************************ 
; INPUT
;  (TEMP_MISC1)  PACKED BYTE (palette base|total palettes to work on)
;  (TEMP_MISC4)  <fade speed>
?PALFX_FADE_ANIM_TO_BASE
	XOR			A
	LD			(PALETTE_SAFE),A
	
	LD			A,(TEMP_MISC4)
	LD			(PALETTE_FADE_SPEED),A
	
	; GET BASE
	CALL		?DECODE_PALNIBBLE_BASE_ADDRESS	
	PUSH		HL								; save the BASE palette address
	LD			BC,ANIM_PAL_BUFFER_OFFSET									
	ADD			HL,BC							; get the ANIM palette address
	POP			BC								; restore the BASE palette address (into BC)
	CALL		?DECODE_PALNIBBLE_NUM_COLORS
	LD			(TEMP_WIDTH),A
		
?PALFX_FADE_ANIM_TO_BASE_LOOP
	;           SAVE ANIM_PALETTE_BUFFER
	PUSH		HL
	;			SAVE BASE_PALETTE_BUFFER
	PUSH		BC
		
	; COPY INTO DE THE COLOR REFERENCE FROM BC (--OBJ--)
	LD			A,(BC)
	INC			BC
	LD			E,A
	LD			A,(BC)
	INC			BC
	LD			D,A
	
	LD			BC,01
	CALL		?FADE_PALETTE_RAM
	
	POP			BC
	INC			BC
	INC			BC
	POP			HL
	INC			HL
	INC			HL
	
	LD			A,(TEMP_WIDTH)
	DEC			A
	JR			Z,_DONE
	LD			(TEMP_WIDTH),A
	JR			?PALFX_FADE_ANIM_TO_BASE_LOOP		
_DONE
		
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET
	RET			;<--- AVOID CPU GLITCH! (temp_misc1 = $F099) ????
	
	
;********************************
;  (TEMP_MISC1)  PACKED BYTE 		(palette base|# of palettes)
?PALFX_XOR_PALETTE
	XOR			A
	LD			(PALETTE_SAFE),A
	
	; GET BASE 									-> HL
	CALL		?DECODE_PALNIBBLE_BASE_ADDRESS	
	LD			BC,ANIM_PAL_BUFFER_OFFSET									
	ADD			HL,BC	
	
	; GET COUNTER OFFSET	
	LD			A,(TEMP_MISC1)
	AND			$0F
	INC			A	
	SLA			A	
	SLA			A			
	LD			C,A
	LD			B,0
	; XOR THE COLORS
	CALL		?XOR_PALETTE_RAM		
		
_DONE_CYCLE	
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET

	
	
;************************************ 
; INPUT
;  (TEMP_MISC1)  PACKED BYTE (palette base|total palettes to work on)
;  (TEMP_MISC3)  <COLOR>
;  (TEMP_MISC4)  <fade speed>
?PALFX_FADE_ANIM_TO_COLOR
	XOR			A
	LD			(PALETTE_SAFE),A
	
	; GET BASE 									-> HL
	CALL		?DECODE_PALNIBBLE_BASE_ADDRESS	
	LD			BC,ANIM_PAL_BUFFER_OFFSET									
	ADD			HL,BC									; get the ANIM palette address
	; GET #_OF_COLORS 							-> BC
	CALL		?DECODE_PALNIBBLE_NUM_COLORS
	LD			B,0
	LD			C,A
	; GET COLOR VALUE 							-> DE
	GET16		D,E,TEMP_MISC3
	
	CALL	?FADE_PALETTE_RAM
	
	LD			A,1
	LD			(PALETTE_SAFE),A
	RET
	
	
;********************************
	END
;********************************