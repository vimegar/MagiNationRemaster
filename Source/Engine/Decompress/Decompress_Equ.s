;********************************
; DECOMPRESS_EQU.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
RLE_CODE_MASK			EQU		%11000000
RLE_CODE_NOTMASK		EQU		%00111111

;********************************
RLECODE_NORM			EQU		%00000000		; 0-63		; 06 Bit span length
RLECODE_NORMGRANDE		EQU		%01000000		; 0-16383	; 14 Bit span length
RLECODE_RLE				EQU		%10000000		; 0-63		; 06 Bit span length
RLECODE_RLEGRANDE		EQU		%11000000		; 0-16383	; 14 Bit span length

;********************************
	END
;********************************