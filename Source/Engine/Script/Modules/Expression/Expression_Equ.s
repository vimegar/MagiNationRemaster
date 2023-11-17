;********************************
; EXPRESSION_EQU.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
EXPR_XRAMBIT	EQU			$00
EXPR_XRAMBYTE	EQU			$01
EXPR_XRAMWORD	EQU			$02

;********************************
EXPR_FACEHERO	EQU			$03
EXPR_GAMECOUNT	EQU			$04

;********************************
EXPR_BYTECONST	EQU			$05
EXPR_WORDCONST	EQU			$06

;********************************
EXPR_BITAND		EQU			$07
EXPR_AND		EQU			$08
EXPR_OR			EQU			$09
EXPR_NOT		EQU			$0A
EXPR_ADD		EQU			$0B
EXPR_SUB		EQU			$0C
EXPR_INC		EQU			$0D
EXPR_DEC		EQU			$0E
EXPR_EQU		EQU			$0F
EXPR_NOTEQU		EQU			$10
EXPR_GRTR		EQU			$11
EXPR_GRTREQU	EQU			$12
EXPR_LESS		EQU			$13
EXPR_LESSEQU	EQU			$14
EXPR_RND		EQU			$15
EXPR_WBANK		EQU			$16

;********************************
;DIR CODES
FACEUP			EQU			$00
FACELEFT		EQU			$01
FACERIGHT		EQU			$02
FACEDOWN		EQU			$03

;********************************
	END
;********************************