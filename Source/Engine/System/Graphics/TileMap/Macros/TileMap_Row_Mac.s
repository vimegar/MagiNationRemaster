;********************************
; TILEMAP_ROW_MAC.S
;********************************
;	Author:	Patrick Meehan/Dylan ExoByte Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; BC:	Table of source bytes
; DE:	Row start addr in VRAM
; HL:	Table of dest addr lower bytes
TILEMAP_ROW_BYTE_COPY	MACRO

	LD		A,(HLI)		;2
	LD		E,A			;1
	LD		A,(BC)		;2
	INC		C			;1	;Table must not cross 256 byte boundary
	LD		(DE),A		;2
						;8
	ENDM

;********************************
; BC:	Dest addr for decode
; DE:	Offset for hi-lo
TILEMAP_ROW_DECODE	MACRO	num,off
		LD		A,(TILEMAP_ROW+num)			;2
		LD		L,A							;1
		XOR		A							;1

		SLA		L							;2
		ADC		A,D							;1
		SLA		L							;2
		RLA									;1
		ADD		A,off						;2
		LD		H,A							;1

		LD		A,L							;1
		ADD		A,E							;1
		LD		L,A							;1

		LD		A,(HLI)						;2
		LD		(BC),A						;2
		INC		BC							;2

		LD		A,(HL)						;2
		LD		(BC),A						;2
		INC		BC							;2
											;23
		ENDM

;********************************
; HL:	Source addr in WRAM
TILEMAP_ROW_INIT	MACRO	num
		LD		A,(HLI)						;2
		LD		(num),A						;4
											;6
		ENDM

;********************************
; A:	Dest addr in VRAM low byte
; D:	$1F
; E:	Dest addr low byte && $E0
; HL:	Table of dest addresses
TILEMAP_ROW_SET		MACRO
		LD		(HLI),A						;2
		INC		A							;1
		AND		D							;1
		ADD		A,E							;1
											;5
		ENDM

;********************************
; BC:	Dest addr for decode
; DE:	Offset for hi-lo
TILEMAP_ROW_START	MACRO	label,off
		LD		A,(TILEMAP_ROW)				;2
		LD		L,A							;1
		XOR		A							;1

		SLA		L							;2
		ADC		A,D							;1
		SLA		A							;2
		SLA		L							;2
		ADC		A,off						;2
		LD		H,A							;1

		LD		A,L							;1
		ADD		A,E							;1
		LD		L,A							;1

		LD		A,(TILEMAP_ROWXTOGG)
		BIT		$03,A
		JR		NZ,_TOGGLE&label

		LD		A,(HL)						;2
		LD		(BC),A						;2
		INC		BC							;2
_TOGGLE&label
		INC		HL							;2

		LD		A,(HL)						;2
		LD		(BC),A						;2
		INC		BC							;2
											;26
		ENDM

;********************************
	END
;********************************
