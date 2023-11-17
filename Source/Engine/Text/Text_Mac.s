;********************************
; TEXT_MAC.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
TEXT_SET_MODE		MACRO	mode
	MOVADDR			TEXT_FUNC,mode
	ENDM

;********************************
TEXT_SET_PARAMS		MACRO	params
	MOVADDR			TEXT_PARAMS,params
	ENDM

;********************************
TEXT_SET_STRING		MACRO	string

	LD		A,string!&$00FF
	LD		(TEXT_STRING),A
	LD		A,(string>>$08)!&$00FF
	LD		(TEXT_STRING+$01),A
	ENDM
	
;*******************************
TEXT_SET_STRING_HL	MACRO

	LD		A,L
	LD		(TEXT_STRING),A
	LD		A,H
	LD		(TEXT_STRING+$01),A
	
	ENDM		

;********************************
TEXT_SETUP		MACRO	vramdest,vbk,bgdest,length

	MOVADDR		TEXT_PARAMS,TEXT_PARAM_BUFFER

	LD		A,vbk!&$01
	LD		(VBLANK_VBK),A

	LD		A,vramdest!&$FF
	LD		(VBLANK_DEST),A
	LD		(TEXT_VBLANK_BASE),A

	LD		A,(vramdest>>$08)!&$FF
	LD		(VBLANK_DEST+$01),A
	LD		(TEXT_VBLANK_BASE+$01),A

	LD		A,bgdest!&$00FF
	LD		(TEXT_BG_DEST),A
	LD		A,(bgdest>>$08)!&$FF
	LD		(TEXT_BG_DEST+$01),A

	LD		A,(vramdest>>$04)!&$FF
	LD		(TEXT_CHR_ID),A
	LD		(TEXT_CHR_BASE),A

	LD		A,($80+((vbk!&$01)<<$03)+(TEXT_PAL!&$07))!&$FF
	LD		(TEXT_ATTRIB),A

	LD		A,(((vramdest>>$04)!&$FF)+length)!&$FF
	LD		(TEXT_CHR_LIMIT),A

	ENDM

;********************************
;DE  VRAM DEST
;BC  BG DEST
TEXT_SETUP_REGISTERS	MACRO	vbk,length

	MOVADDR		TEXT_PARAMS,TEXT_PARAM_BUFFER

	LD		A,vbk!&$01
	LD		(VBLANK_VBK),A

	LD		A,E
	LD		(VBLANK_DEST),A
	LD		(TEXT_VBLANK_BASE),A

	LD		A,D
	LD		(VBLANK_DEST+$01),A
	LD		(TEXT_VBLANK_BASE+$01),A

	LD		A,C
	LD		(TEXT_BG_DEST),A
	LD		A,B
	LD		(TEXT_BG_DEST+$01),A

	SRL16	D,E,4
	LD		A,E
	LD		(TEXT_CHR_ID),A
	LD		(TEXT_CHR_BASE),A

	LD		A,$80+((vbk!&$01)<<$03)+(TEXT_PAL!&$07)
	LD		(TEXT_ATTRIB),A

	LD		A,E
	ADD		A,length
	LD		(TEXT_CHR_LIMIT),A

	ENDM

;********************************
TEXT_UPDATE		MACRO
	FGET16		H,L,TEXT_FUNC
	CALL_HL
	ENDM

;********************************
TEXT_WRAP		MACRO
	CALL		?TEXT_WRAP
	ENDM

;********************************
	END
;********************************