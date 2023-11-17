;********************************
; GRAPHICS_MAC.S
;********************************
;	Author:	Patrick Meehan/Dylan ExoByte Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved
		
;********************************
	LIB		SOURCE\ENGINE\SYSTEM\GRAPHICS\FRAME\FRAME_MAC.S
	LIB		SOURCE\ENGINE\SYSTEM\GRAPHICS\PALETTE\PALETTE_MAC.S
	LIB		SOURCE\ENGINE\SYSTEM\GRAPHICS\TILEMAP\TILEMAP_MAC.S

;********************************
PALETTE_DEFINE		MACRO	path, name, num_colors_times2
name
					BINSET	0,num_colors_times2			;color = 2bytes
					LIBBIN	path&name&.BIN
					BINSET	$0000
	ENDM	
		
;********************************
GRAPHICS_CLOSE		MACRO
	FRAME_READY
	ENDM

;********************************
GRAPHICS_OPEN		MACRO
	TILEMAP_READY
	ENDM

;********************************
GRAPHICS_VBLANK		MACRO

	LDA_FF			VBLANK_CONTROL
	BIT				$00,A
	JR				Z,_SKIP_GFX

	LD				A,%11100011
	LD				(LCDC),A
	CALL			DMASUB				; DMA transfer
	TILEMAP_DRAW

_SKIP_GFX
	LDA_FF			VBLANK_CONTROL
	BIT				$01,A
	JR				Z,_SKIP_VFUNC

	SWITCH_ROM_BANK	(VBLANK_BANK)
	GET16			H,L,VBLANK_FUNC		; FX VBlank for Palettes and GFX
	CALL_HL
_SKIP_VFUNC

	ENDM

;********************************
	END
;********************************