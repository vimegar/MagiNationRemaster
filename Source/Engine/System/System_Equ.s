;********************************
; SYSTEM_EQU.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\ENGINE\SYSTEM\BATTERY\BATTERY_EQU.S
	LIB		SOURCE\ENGINE\SYSTEM\GRAPHICS\GRAPHICS_EQU.S
	LIB		SOURCE\ENGINE\SYSTEM\SOUND\SOUND_EQU.S

;********************************
CGBFLAG		EQU	$FFFE	; Do not clear upon software reset

;********************************
; Object attribute data
OAM		EQU	$FE00

;********************************
;	Control registers
P1		EQU	$FF00		; Key port
SB		EQU	$FF01		; Serial transfer data
SC		EQU	$FF02		; Serial control
DIV		EQU	$FF04		; Divider
TIMA	EQU	$FF05		; Timer register
TMA		EQU	$FF06		; Modulo register
TAC		EQU	$FF07		; Timer control
IF		EQU	$FF0F		; Interrupt request flag
IE		EQU	$FFFF		; Interrupt enable flag
LCDC	EQU	$FF40		; LCD control
STAT	EQU	$FF41		; LCDC status
SCY		EQU	$FF42		; Scroll X
SCX		EQU	$FF43		; Scroll Y
LY		EQU	$FF44		; LCDC Y coordinate
LYC		EQU	$FF45		; LY compare register
DMA		EQU	$FF46		; DMA transfer
BGP		EQU	$FF47		; BG palette
OBP0	EQU	$FF48		; OBJ palette 0
OBP1	EQU	$FF49		; OBJ palette 1
WY		EQU	$FF4A		; Window X coordinate
WX		EQU	$FF4B		; Window Y coordinate

;********************************
;	CGB specific control registers
KEY1	EQU	$FF4D	; CPU speed switch
VBK		EQU	$FF4F	; VRAM bank specification
HDMA1	EQU	$FF51	; New (H-BLANK, general-use) DMA transfer origin specification (high order)
HDMA2	EQU	$FF52	; New (H-BLANK, general-use) DMA transfer origin specification (low order)
HDMA3	EQU	$FF53	; New (H-BLANK, general-use) DMA transfer destination specification (high order)
HDMA4	EQU	$FF54	; New (H-BLANK, general-use) DMA transfer destination specification (low order)
HDMA5	EQU	$FF55	; New (H-BLANK, general-use) DMA transfer start and transfer size
RP		EQU	$FF56	; Infrared communications port
BCPS	EQU	$FF68	; BG-side write specification
BCPD	EQU	$FF69	; BG-side write data
OCPS	EQU	$FF6A	; OBJ-side write specification
OCPD	EQU	$FF6B	; OBJ-side write data
SVBK	EQU	$FF70	; WRAM bank specification

;********************************
DMASUB	EQU	$FF80		; DMA transfer sub-routine (~$FF89)

;********************************
;	MBC5 bank switching register (write only)
RAMG	EQU	$0000		; External expansion memory setting register (anywhere between 0000~1FFF)
						; $00: Disable RAM access (data protection), $0A: Enable
ROMB0	EQU	$2000		; ROM bank low-order register (anywhere between 2000~2FFF)
ROMB1	EQU	$3000		; ROM bank high-order register (anywhere between 3000~3FFF)
RAMB	EQU	$4000		; RAM bank register (anywhere between 4000~5FFF)

;********************************
Space	EQU	$A4 	; Clear character code

;********************************
; Defined as shown below.  There is no need to memorize which bit rises when A is pressed.
BitA		EQU	$00
BitB		EQU	$01
BitSelect	EQU	$02
BitStart	EQU	$03
BitRight	EQU	$04
BitLeft		EQU	$05
BitUp		EQU	$06
BitDown		EQU	$07

	END
