;********************************
; REGISTRY.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

	; 100H: BOOT VECTOR
	;--------------------------------
	NOP
	JP		?HARD_RESET	; Boot vector

	; 104H: NINTENDO LOGO CHR DATA
	;--------------------------------
	DEFB	$CE, $ED, $66, $66
	DEFB	$CC, $0D, $00, $0B
	DEFB	$03, $73, $00, $83
	DEFB	$00, $0C, $00, $0D
	DEFB	$00, $08, $11, $1F
	DEFB	$88, $89, $00, $0E
	DEFB	$DC, $CC, $6E, $E6
	DEFB	$DD, $DD, $D9, $99
	DEFB	$BB, $BB, $67, $63
	DEFB	$6E, $0E, $EC, $CC
	DEFB	$DD, $DC, $99, $9F
	DEFB	$BB, $B9, $33, $3E

	; 134H: 11-BYTE GAME TITLE REGISTRY
	;--------------------------------
	DEFB	$4D, $41, $47, $49, $2D, $4E, $41, $54, $49, $4F, $4E		; MAGI-NATION

	; 13FH: 4-BYTE GAME CODE
	;--------------------------------
	DEFB	$42, $4E, $4E, $45		; BNNE

	; 143H: COLOR COMPATIBLE CODE
	;--------------------------------
	DEFB	$C0		; 00: CGB-Incompatible
					; 80: CGB-Compatible
					; C0: CGB-Exclusive

	; 144H: COMPANY CODE
	;--------------------------------
	DEFB	$36, $54				; 6T

	; 146H: SUPER GAMEBOY FUNCTION
	;--------------------------------
	DEFB	$00		; 0:GAMEBOY (Also runs on SUPER GAMEBOY)
					; 3:Uses SUPER GAMEBOY function

	; 147H: PAK TYPE
	;--------------------------------
	DEFB	$1B		; 0:ONLY ROM					; 1:ROM+MBC1
					; 2:ROM+MBC1+SRAM				; 3:ROM+MBC1+SRAM(Btry)
					; 5:ROM+MBC2					; 6:ROM+MBC2(Btry)
					; 8:ROM+SRAM					; 9:ROM+SRAM(Btry)
					; B:ROM+MMM01					; C:ROM+MMM01+SRAM
					; D:ROM+MMM01+SRAM(Battery)		; F:ROM+MBC3(Clk, Btry)
					; 10:ROM+MBC3(Clk)+SRAM(Btry)	; 11:ROM+MBC3
					; 12:ROM+MBC3+SRAM				; 13:ROM+MBC3+SRAM(Btry)
					; 15:ROM+MBC4					; 16:ROM+MBC4+SRAM
					; 17:ROM+MBC4+SRAM(Btry)		; 19:ROM+MBC5
					; 1A:ROM+MBC5+SRAM				; 1B:ROM+MBC5+SRAM(Btry)
					; 1C:ROM+MBC5(Rmbl)				; 1D:ROM+MBC5(Rmbl)+SRAM
					; 1E:ROM+MBC5(Rmbl)+SRAM(Btry)
					
					; Parts configuration no concern for following:
					; FC: Pocket camera				; FD: Bandai TAMA5
					; FE: Hudson HuC-3				; FF: Hudson HuC-1

	; 148H: ROM SIZE
	;--------------------------------
	DEFB	$06		; 0:	256K
					; 1:	512K
					; 2:	1M
					; 3:	2M
					; 4:	4M
					; 5:	8M
					; 6:	16M
					; 7		32M
					; 8		64M
					
	; 149H: RAM SIZE
	;--------------------------------
	DEFB	$03		; 0:	Nothing or MBC2
					; 2:	64K
					; 3:	256K
					; 4:	1M

	; 14AH:	DESTINATION
	;--------------------------------
	DEFB	$01		; 0:	Japan
					; 1:	Others


	; 14BH:	FIXED VALUE
	;--------------------------------
	DEFB	$33

	; 14CH:	VERSION NUMBER
	;--------------------------------
	DEFB	$00

	; 14DH:	COMPLEMENT CHECK
	;--------------------------------
	DEFB	$0E				; Complement of registration data (134H-14CH) sum + 25
							; $E7 is for development

	; 14EH:	CHECK SUM
	;--------------------------------
	DB		$46,$8D			; Game Pak ROM check sum


;********************************
	END
;********************************
