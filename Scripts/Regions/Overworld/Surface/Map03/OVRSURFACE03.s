;Size:138
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\OVERWORLD\SURFACE\MAP03\OVRSURFACE03.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_OVERSURFACE03_DR_1
	DB	CMD_HEROSETDOOR
		DB	$09
		DB	$13

	DB	CMD_JUMP
		DB	:?_CLDLAVATOWN06
		DW	(?_CLDLAVATOWN06&$FFFF)

;********************************
?_OVERSURFACE03_DR_2
	DB	CMD_HEROSETDOOR
		DB	$01
		DB	$09

	DB	CMD_JUMP
		DB	:?_CLDLAVATOWN13
		DW	(?_CLDLAVATOWN13&$FFFF)

;********************************
?_OVERSURFACE03_DR_3
	DB	CMD_HEROSETDOOR
		DB	$0A
		DB	$3B

	DB	CMD_JUMP
		DB	:?_CLDLAVAVENT07
		DW	(?_CLDLAVAVENT07&$FFFF)

;********************************
?_OVERSURFACE03_DR_4
	DB	CMD_HEROSETDOOR
		DB	$14
		DB	$1D

	DB	CMD_JUMP
		DB	:?_CLDLAVATUBE18
		DW	(?_CLDLAVATUBE18&$FFFF)

;********************************
?_OVERSURFACE03_DR_5
	DB	CMD_HEROSETDOOR
		DB	$05
		DB	$18

	DB	CMD_JUMP
		DB	:?_CLDLAVATUBE01
		DW	(?_CLDLAVATUBE01&$FFFF)

;********************************
?_OVERSURFACE03_DR_6
	DB	CMD_HEROSETDOOR
		DB	$07
		DB	$09

	DB	CMD_JUMP
		DB	:?_UNDTOWN08B
		DW	(?_UNDTOWN08B&$FFFF)

;********************************
?_OVERSURFACE03_DR_7
	DB	CMD_HEROSETDOOR
		DB	$17
		DB	$0E

	DB	CMD_JUMP
		DB	:?_CLDHYRENROOM
		DW	(?_CLDHYRENROOM&$FFFF)

;********************************
?_OVRSURFACE03_LOAD
;********************************
?_OVRSURFACE03
	DB	CMD_FADEOUTSONG
		DB	$1E

	DB	CMD_SCENENEW

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008E)
		DB	$00

	DB	CMD_SETXRAMBYTE
		DW	(MENU_SAVE_ENABLE+$0000)
		DB	$01

	DB	CMD_SETXRAMBYTE
		DW	(XRAM_SAVEVARS+$008D)
		DB	$03

	DB	CMD_LOADMAP
		DW	(MAP_OVRSURFACE03&$FFFF)
		DB	:MAP_OVRSURFACE03

	DB	CMD_LOADHOTSPOTS
		DW	(HS_OVERSURFACE03&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?OVERWORLD_AI&$FFFF)
		DB	$1A
		DB	$0C
		DW	$D1FA
		DB	$00
		DB	:?_HERO_OVER_DOWN_ANIM
		DW	(?_HERO_OVER_DOWN_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)
		DB	$12
		DB	$0E
		DW	$D242
		DB	$00
		DB	:?_OVERWORLD_GEYSER_ANIM
		DW	(?_OVERWORLD_GEYSER_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$07
		DB	:BIT_GEYSEROVER
		DW	(BIT_GEYSEROVER&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_IF
		DB	EXPR_GRTR
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$0F
		DB	:_SKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

;********************************
_SKIP
	DB	CMD_PALCLEARANIM
		DB	$07
		DW	$7FFF

	DB	CMD_SCENEREADY

	DB	CMD_PALFADE
		DB	$20
		DB	$07

	DB	CMD_SONGSTART
		DB	SONGID_overworld

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_CLDLAVATOWN06
	GLOBAL	?_CLDLAVATOWN13
	GLOBAL	?_CLDLAVAVENT07
	GLOBAL	?_CLDLAVATUBE18
	GLOBAL	?_CLDLAVATUBE01
	GLOBAL	?_UNDTOWN08B
	GLOBAL	?_CLDHYRENROOM
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	MENU_SAVE_ENABLE
	GLOBAL	MAP_OVRSURFACE03
	GLOBAL	HS_OVERSURFACE03
	GLOBAL	PAL_HERO
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?OVERWORLD_AI
	GLOBAL	?_HERO_OVER_DOWN_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	ACTOR00
	GLOBAL	?ANIM_AI
	GLOBAL	?_OVERWORLD_GEYSER_ANIM
	GLOBAL	BIT_GEYSEROVER

;********************************
	END
;********************************