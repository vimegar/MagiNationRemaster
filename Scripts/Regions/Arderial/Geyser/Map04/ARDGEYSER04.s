;Size:392
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\ARDERIAL\GEYSER\MAP04\ARDGEYSER04.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARDGEYSER04_DR_1
	DB	CMD_XRAMBITOR
		DW	(XRAM_SAVEBITS+$0001)
		DB	$40

	DB	CMD_END

;********************************
?_ARDGEYSER04_DR_2
	DB	CMD_HEROTODOOR
		DB	$09
		DB	$08
		DB	$17
		DB	$00

	DB	CMD_JUMP
		DB	:?_ARDGEYSER03
		DW	(?_ARDGEYSER03&$FFFF)

;********************************
?_ARDGEYSER04_DR_3
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$17
		DB	$10
		DB	$0F

	DB	CMD_JUMP
		DB	:?_ARDGEYSER09
		DW	(?_ARDGEYSER09&$FFFF)

;********************************
?_ARDGEYSER04_DR_4
	DB	CMD_HEROTODOOR
		DB	$06
		DB	$0D
		DB	$00
		DB	$17

	DB	CMD_JUMP
		DB	:?_ARDGEYSER08
		DW	(?_ARDGEYSER08&$FFFF)

;********************************
?_ARDGEYSER04_TR_1
	DB	CMD_THATACTORSETAI
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?ANIM_AI&$FFFF)

	DB	CMD_THATACTORSETSCRIPT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)

	DB	CMD_TOGGLEALWAYS
		DW	(XRAM_SAVEBITS+$0000)
		DB	$80
		DB	:_EMPTY
		DW	(_EMPTY&$FFFF)
		DB	$C8
		DB	$B8
		DW	$D10B

	DB	CMD_LOADSPAREMAP
		DW	(SCR_ARDGEYSER04&$FFFF)
		DB	:SCR_ARDGEYSER04
		DW	(COL_ARDGEYSER04&$FFFF)
		DB	:COL_ARDGEYSER04

	DB	CMD_SETSCROLL
		DB	:?_CALD_GEYSER_QUAKE
		DW	(?_CALD_GEYSER_QUAKE&$FFFF)

	DB	CMD_XRAMBITAND
		DW	(XRAM_SAVEBITS+$0001)
		DB	$BF

	DB	CMD_THATACTORDRAWTILESPARE
		DB	(((ACTOR20-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	$0000
		DB	COLLCODE_SPACE
		DB	$E5

	DB	CMD_THATACTORDRAWTILESPARE
		DB	(((ACTOR21-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	$0000
		DB	COLLCODE_SPACE
		DB	$E5

	DB	CMD_THATACTORDRAWTILESPARE
		DB	(((ACTOR22-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	$0000
		DB	COLLCODE_SPACE
		DB	$E5

	DB	CMD_THATACTORDRAWTILESPARE
		DB	(((ACTOR23-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	$0000
		DB	COLLCODE_SPACE
		DB	$E5

	DB	CMD_COPYTILESPARE
		DW	$D0F4
		DB	$07
		DB	$0B
		DW	$D0F4
		DB	$0A
		DB	$04

	DB	CMD_COPYTILESPARE
		DW	$D0FB
		DB	$0B
		DB	$0B
		DW	$D0FB
		DB	$0A
		DB	$0B

	DB	CMD_COPYTILESPARE
		DW	$D0B5
		DB	$05
		DB	$03
		DW	$D0B5
		DB	$07
		DB	$0D

	DB	CMD_JUMP
		DB	:?_CLDGEYSER_HERO_AI_SET
		DW	(?_CLDGEYSER_HERO_AI_SET&$FFFF)

;********************************
_EMPTY
	DB	CMD_LOADSPAREMAP
		DW	(SCR_ARDGEYSER04B&$FFFF)
		DB	:SCR_ARDGEYSER04B
		DW	(COL_ARDGEYSER04B&$FFFF)
		DB	:COL_ARDGEYSER04B

	DB	CMD_SETSCROLL
		DB	:?_CALD_GEYSER_QUAKE
		DW	(?_CALD_GEYSER_QUAKE&$FFFF)

	DB	CMD_IF
		DB	EXPR_NOT
		DB	EXPR_XRAMBIT
		DW	(XRAM_SAVEBITS+$0001)&$FFFF
		DB	$40
		DB	:_SKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR20-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?BOXXLE_AI&$FFFF)
		DB	$0A
		DB	$0D
		DW	$D142
		DB	$00
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR21-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?BOXXLE_AI&$FFFF)
		DB	$0A
		DB	$10
		DW	$D18A
		DB	$00
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR22-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?BOXXLE_AI&$FFFF)
		DB	$0D
		DB	$10
		DW	$D18D
		DB	$00
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR23-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?BOXXLE_AI&$FFFF)
		DB	$0D
		DB	$12
		DW	$D1BD
		DB	$00
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

;********************************
_SKIP
	DB	CMD_THATACTORDRAWTILESPARE
		DB	(((ACTOR20-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	$0000
		DB	COLLCODE_BOXXLE
		DB	$E5

	DB	CMD_THATACTORDRAWTILESPARE
		DB	(((ACTOR21-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	$0000
		DB	COLLCODE_BOXXLE
		DB	$E5

	DB	CMD_THATACTORDRAWTILESPARE
		DB	(((ACTOR22-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	$0000
		DB	COLLCODE_BOXXLE
		DB	$E5

	DB	CMD_THATACTORDRAWTILESPARE
		DB	(((ACTOR23-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	$0000
		DB	COLLCODE_BOXXLE
		DB	$E5

	DB	CMD_COPYTILESPARE
		DW	$D0F4
		DB	$07
		DB	$0B
		DW	$D0F4
		DB	$0A
		DB	$04

	DB	CMD_COPYTILESPARE
		DW	$D0FB
		DB	$0B
		DB	$0B
		DW	$D0FB
		DB	$0A
		DB	$0B

	DB	CMD_COPYTILESPARE
		DW	$D0B5
		DB	$05
		DB	$03
		DW	$D0B5
		DB	$07
		DB	$0D

	DB	CMD_JUMP
		DB	:?_CLDGEYSER_HERO_AI_SET
		DW	(?_CLDGEYSER_HERO_AI_SET&$FFFF)

;********************************
?_ARDGEYSER04_TR_2
	DB	CMD_TRIGGERTREASURE
		DW	(XRAM_TREASURE+$001E)
		DB	$10
		DB	INV_TYPE_ITEM
		DB	INV_STAR_KEY
		DW	$D099

;********************************
?_ARDGEYSER04
	DB	CMD_SCENENEW

	DB	CMD_THATACTORINIT
		DB	(((ACTOR20-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?BOXXLE_AI&$FFFF)
		DB	$0C
		DB	$0F
		DW	$D174
		DB	$00
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR21-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?BOXXLE_AI&$FFFF)
		DB	$0E
		DB	$0F
		DW	$D176
		DB	$00
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR22-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?BOXXLE_AI&$FFFF)
		DB	$10
		DB	$0F
		DW	$D178
		DB	$00
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR23-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?BOXXLE_AI&$FFFF)
		DB	$12
		DB	$0F
		DW	$D17A
		DB	$00
		DB	:?_END
		DW	(?_END&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_LOADMAP
		DW	(MAP_ARDGEYSER04&$FFFF)
		DB	:MAP_ARDGEYSER04

	DB	CMD_LOADHOTSPOTS
		DW	(HS_ARDGEYSER04&$FFFF)

	DB	CMD_LOADTRIGGERS
		DW	(TR_ARDGEYSER04&$FFFF)

;********************************
?_ARDGEYSER04_RETURN
	DB	CMD_LOADVRAM
		DW	(VRM_CLDGEYSER&$FFFF)
		DB	:VRM_CLDGEYSER
		DW	(PAL_CLDGEYSER&$FFFF)
		DB	:PAL_CLDGEYSER

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D07D
		DB	$00
		DB	:?_HERO_STANDL_ANIM
		DW	(?_HERO_STANDL_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SETENCOUNTER
		DB	:?_ARDGEYSER_RNDBAT
		DW	(?_ARDGEYSER_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_ARDGEYSER04_RETURN
		DW	(?_ARDGEYSER04_RETURN&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

	DB	CMD_THATACTORSTART
		DB	(((ACTOR20-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR21-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR22-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR23-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_SCENEREADY

	DB	CMD_SONGSTART
		DB	SONGID_maze

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	XRAM_SAVEBITS
	GLOBAL	?_ARDGEYSER03
	GLOBAL	?_ARDGEYSER09
	GLOBAL	?_ARDGEYSER08
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?ANIM_AI
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	SCR_ARDGEYSER04
	GLOBAL	COL_ARDGEYSER04
	GLOBAL	?_CALD_GEYSER_QUAKE
	GLOBAL	ACTOR20
	GLOBAL	ACTOR21
	GLOBAL	ACTOR22
	GLOBAL	ACTOR23
	GLOBAL	?_CLDGEYSER_HERO_AI_SET
	GLOBAL	SCR_ARDGEYSER04B
	GLOBAL	COL_ARDGEYSER04B
	GLOBAL	?BOXXLE_AI
	GLOBAL	?_END
	GLOBAL	?_DONT_TALK
	GLOBAL	XRAM_TREASURE
	GLOBAL	MAP_ARDGEYSER04
	GLOBAL	HS_ARDGEYSER04
	GLOBAL	TR_ARDGEYSER04
	GLOBAL	VRM_CLDGEYSER
	GLOBAL	PAL_CLDGEYSER
	GLOBAL	PAL_HERO
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STANDL_ANIM
	GLOBAL	?_ARDGEYSER_RNDBAT
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST

;********************************
	END
;********************************