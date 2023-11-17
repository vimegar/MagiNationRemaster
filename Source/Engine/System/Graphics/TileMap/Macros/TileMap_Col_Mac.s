;********************************
; TILEMAP_COL_MAC.S
;********************************
;	Author:	Patrick Meehan/Dylan ExoByte Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; BC:	Table of source bytes
; HL:	Table of dest addr
TILEMAP_COL_BYTE_COPY	MACRO

	LD		A,(HLI)		;2
	LD		E,A			;1
	LD		A,(HLI)		;2
	LD		D,A			;1
	LD		A,(BC)		;2
	INC		C			;1	;Table must not cross 256 byte boundary
	LD		(DE),A		;2
						;11
	ENDM

;********************************
; BC:	Dest addr for decode
; DE:	Offset for hi-lo
TILEMAP_COL_DECODE	MACRO	num,off
		
		LD		A,(TILEMAP_COL+num)		;2
		LD		L,A						;1
		XOR		A						;1

		SLA		L						;2
		ADC		A,D						;1
		SLA		L						;2
		RLA								;1
		ADD		A,off					;2
		LD		H,A						;1

		LD		A,L						;1
		ADD		A,E						;1
		LD		L,A						;1

		LD		A,(HLI)					;2
		LD		(BC),A					;2
		INC		BC						;2
		INC		HL						;2

		LD		A,(HL)					;2
		LD		(BC),A					;2
		INC		BC						;2
										;23
		;EXONOTE: NOW 3 FASTER
		ENDM

;********************************
; B:	$00
; C:	Width of map
; HL:	Source addr in WRAM
TILEMAP_COL_INIT	MACRO	num
		LD		A,(HL)					;2
		LD		(num),A					;4
		ADD		HL,BC					;2
										;8
		ENDM

;********************************
; BC:	$0020
; D:	$03
; E:	$98
; HL:	Dest addr in VRAM
TILEMAP_COL_SET		MACRO	num
		LD		A,L						;1
		LD		(num),A					;4
		LD		A,H						;1
		AND		D						;1
		ADD		A,E						;1
		LD		H,A						;1
		LD		(num+1),A				;4
		ADD		HL,BC					;2
		
										;15
		ENDM

;********************************
; BC:	Dest addr for decode
; DE:	Offset for hi-lo
TILEMAP_COL_START	MACRO	label,off
		LD		A,(TILEMAP_COL)			;2
		LD		L,A						;1
		XOR		A						;1

		SLA		L						;2
		ADC		A,D						;1
		SLA		A						;2
		SLA		L						;2
		ADC		A,off					;2
		LD		H,A						;1

		LD		A,L						;1
		ADD		A,E						;1
		LD		L,A						;1

		LD		A,(TILEMAP_COLYTOGG)
		BIT		$03,A
		JR		NZ,_TOGGLE&label

		LD		A,(HL)					;2
		LD		(BC),A					;2
		INC		BC						;2
_TOGGLE&label
		INC		HL						;2
		INC		HL						;2

		LD		A,(HL)					;2
		LD		(BC),A					;2
		INC		BC						;2
										;26
		ENDM

;********************************
	END
;********************************