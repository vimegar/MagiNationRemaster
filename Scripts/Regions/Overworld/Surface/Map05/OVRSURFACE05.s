;Size:737
                      
;********************************
; C:\Work\Patrick's Project\scripts\REGIONS\OVERWORLD\SURFACE\MAP05\OVRSURFACE05.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_OVERSURFACE05_DR_1
	DB	CMD_SWITCH
		DB	EXPR_FACEHERO
		DB	:_RIGHT
		DW	$0002
		DW	(_RIGHT&$FFFF)
		DB	:_LEFT
		DW	$0001
		DW	(_LEFT&$FFFF)
		DB	:_DOWN
		DW	$0003
		DW	(_DOWN&$FFFF)
		DB	$FF

	DB	CMD_HEROSETDOOR
		DB	$3B
		DB	$00

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_DOWN&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_DOWN_ANIM
		DW	(?_HERO_FLY_DOWN_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCITY01
		DW	(?_ARDCITY01&$FFFF)

;********************************
_RIGHT
	DB	CMD_HEROSETDOOR
		DB	$3F
		DB	$1C

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_LEFT&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_LEFT_ANIM
		DW	(?_HERO_FLY_LEFT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCITY01
		DW	(?_ARDCITY01&$FFFF)

;********************************
_LEFT
	DB	CMD_HEROSETDOOR
		DB	$00
		DB	$1B

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_RIGHT&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_RIGHT_ANIM
		DW	(?_HERO_FLY_RIGHT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCITY01
		DW	(?_ARDCITY01&$FFFF)

;********************************
_DOWN
	DB	CMD_HEROSETDOOR
		DB	$1F
		DB	$27

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_UP&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_UP_ANIM
		DW	(?_HERO_FLY_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCITY01
		DW	(?_ARDCITY01&$FFFF)

;********************************
?_OVERSURFACE05_DR_2
	DB	CMD_HEROSETDOOR
		DB	$06
		DB	$01

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_DOWN&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_DOWN_ANIM
		DW	(?_HERO_FLY_DOWN_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS14
		DW	(?_ARDCLOUDS14&$FFFF)

;********************************
?_OVERSURFACE05_DR_3
	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_DOWN&$FFFF)
		DB	$05
		DB	$05
		DW	$D145
		DB	$00
		DB	:?_HERO_FLY_DOWN_ANIM
		DW	(?_HERO_FLY_DOWN_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_HEROSETDOOR
		DB	$1B
		DB	$01

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS15
		DW	(?_ARDCLOUDS15&$FFFF)

;********************************
?_OVERSURFACE05_DR_4
	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_UP&$FFFF)
		DB	$05
		DB	$05
		DW	$D09B
		DB	$00
		DB	:?_HERO_FLY_UP_ANIM
		DW	(?_HERO_FLY_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_HEROSETDOOR
		DB	$12
		DB	$3A

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS16
		DW	(?_ARDCLOUDS16&$FFFF)

;********************************
?_OVERSURFACE05_DR_5
	DB	CMD_SWITCH
		DB	EXPR_FACEHERO
		DB	:_RIGHT
		DW	$0002
		DW	(_RIGHT&$FFFF)
		DB	:_LEFT
		DW	$0001
		DW	(_LEFT&$FFFF)
		DB	:_DOWN
		DW	$0003
		DW	(_DOWN&$FFFF)
		DB	$FF

	DB	CMD_HEROSETDOOR
		DB	$12
		DB	$00

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_DOWN&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_DOWN_ANIM
		DW	(?_HERO_FLY_DOWN_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCITY02
		DW	(?_ARDCITY02&$FFFF)

;********************************
_RIGHT
	DB	CMD_HEROSETDOOR
		DB	$13
		DB	$0A

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_LEFT&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_LEFT_ANIM
		DW	(?_HERO_FLY_LEFT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCITY02
		DW	(?_ARDCITY02&$FFFF)

;********************************
_LEFT
	DB	CMD_HEROSETDOOR
		DB	$00
		DB	$0A

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_RIGHT&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_RIGHT_ANIM
		DW	(?_HERO_FLY_RIGHT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCITY02
		DW	(?_ARDCITY02&$FFFF)

;********************************
_DOWN
	DB	CMD_HEROSETDOOR
		DB	$0A
		DB	$13

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_UP&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_UP_ANIM
		DW	(?_HERO_FLY_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCITY02
		DW	(?_ARDCITY02&$FFFF)

;********************************
?_OVERSURFACE05_DR_6
	DB	CMD_HEROSETDOOR
		DB	$08
		DB	$1E

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_UP&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_UP_ANIM
		DW	(?_HERO_FLY_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS01
		DW	(?_ARDCLOUDS01&$FFFF)

;********************************
?_OVERSURFACE05_DR_7
	DB	CMD_HEROSETDOOR
		DB	$1A
		DB	$01

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_STAND_DOWN_ANIM
		DW	(?_HERO_STAND_DOWN_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS06
		DW	(?_ARDCLOUDS06&$FFFF)

;********************************
?_OVERSURFACE05_DR_8
	DB	CMD_SWITCH
		DB	EXPR_FACEHERO
		DB	:_RIGHT
		DW	$0002
		DW	(_RIGHT&$FFFF)
		DB	:_LEFT
		DW	$0001
		DW	(_LEFT&$FFFF)
		DB	:_DOWN
		DW	$0003
		DW	(_DOWN&$FFFF)
		DB	$FF

	DB	CMD_HEROSETDOOR
		DB	$0A
		DB	$00

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_DOWN&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_DOWN_ANIM
		DW	(?_HERO_FLY_DOWN_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCITY04
		DW	(?_ARDCITY04&$FFFF)

;********************************
_RIGHT
	DB	CMD_HEROSETDOOR
		DB	$13
		DB	$0A

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_LEFT&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_LEFT_ANIM
		DW	(?_HERO_FLY_LEFT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCITY04
		DW	(?_ARDCITY04&$FFFF)

;********************************
_LEFT
	DB	CMD_HEROSETDOOR
		DB	$00
		DB	$0A

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_RIGHT&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_RIGHT_ANIM
		DW	(?_HERO_FLY_RIGHT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCITY04
		DW	(?_ARDCITY04&$FFFF)

;********************************
_DOWN
	DB	CMD_HEROSETDOOR
		DB	$0A
		DB	$13

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_UP&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_UP_ANIM
		DW	(?_HERO_FLY_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCITY04
		DW	(?_ARDCITY04&$FFFF)

;********************************
?_OVERSURFACE05_DR_9
	DB	CMD_SWITCH
		DB	EXPR_FACEHERO
		DB	:_RIGHT
		DW	$0002
		DW	(_RIGHT&$FFFF)
		DB	:_LEFT
		DW	$0001
		DW	(_LEFT&$FFFF)
		DB	:_DOWN
		DW	$0003
		DW	(_DOWN&$FFFF)
		DB	$FF

	DB	CMD_HEROSETDOOR
		DB	$0A
		DB	$00

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_DOWN&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_DOWN_ANIM
		DW	(?_HERO_FLY_DOWN_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCITY03
		DW	(?_ARDCITY03&$FFFF)

;********************************
_RIGHT
	DB	CMD_HEROSETDOOR
		DB	$23
		DB	$0A

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_LEFT&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_LEFT_ANIM
		DW	(?_HERO_FLY_LEFT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCITY03
		DW	(?_ARDCITY03&$FFFF)

;********************************
_LEFT
	DB	CMD_HEROSETDOOR
		DB	$00
		DB	$16

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_RIGHT&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_RIGHT_ANIM
		DW	(?_HERO_FLY_RIGHT_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCITY03
		DW	(?_ARDCITY03&$FFFF)

;********************************
_DOWN
	DB	CMD_HEROSETDOOR
		DB	$14
		DB	$23

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_UP&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_UP_ANIM
		DW	(?_HERO_FLY_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCITY03
		DW	(?_ARDCITY03&$FFFF)

;********************************
?_OVERSURFACE05_DR_10
	DB	CMD_HEROSETDOOR
		DB	$20
		DB	$27

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_STAND_UP_ANIM
		DW	(?_HERO_STAND_UP_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS07
		DW	(?_ARDCLOUDS07&$FFFF)

;********************************
?_OVERSURFACE05_DR_11
	DB	CMD_HEROSETDOOR
		DB	$0E
		DB	$00

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?HERO_AI_FLY_DOWN&$FFFF)
		DB	$05
		DB	$05
		DW	$D0A5
		DB	$00
		DB	:?_HERO_FLY_DOWN_ANIM
		DW	(?_HERO_FLY_DOWN_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_JUMP
		DB	:?_ARDCLOUDS13
		DW	(?_ARDCLOUDS13&$FFFF)

;********************************
?_OVERSURFACE05_DR_12
	DB	CMD_HEROSETDOOR
		DB	$09
		DB	$26

	DB	CMD_JUMP
		DB	:?_HDNFORT04
		DW	(?_HDNFORT04&$FFFF)

;********************************
?_OVRSURFACE05_LOAD
;********************************
?_OVRSURFACE05
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
		DB	$05

	DB	CMD_SETENCOUNTER
		DB	:?_OROFLYER_RNDBAT
		DW	(?_OROFLYER_RNDBAT&$FFFF)
		DW	(ENCOUNTER_FRQ_SLOW&$FFFF)

	DB	CMD_SETBTLRETURN
		DB	:?_OVRSURFACE05
		DW	(?_OVRSURFACE05&$FFFF)
		DB	(:?_BATTLE_LOST&$FF)
		DW	(?_BATTLE_LOST&$FFFF)

	DB	CMD_LOADMAP
		DW	(MAP_OVRSURFACE05&$FFFF)
		DB	:MAP_OVRSURFACE05

	DB	CMD_LOADHOTSPOTS
		DW	(HS_OVERSURFACE05&$FFFF)

	DB	CMD_LOADPALETTE
		DW	(PAL_HERO&$FFFF)
		DB	:PAL_HERO

	DB	CMD_THATACTORINIT
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?OVERWORLD_AI&$FFFF)
		DB	$1A
		DB	$0C
		DW	$D1BE
		DB	$00
		DB	:?_HERO_OVER_DOWN_ANIM
		DW	(?_HERO_OVER_DOWN_ANIM&$FFFF)
		DB	:?_DONT_TALK
		DW	(?_DONT_TALK&$FFFF)

	DB	CMD_THATACTORINIT
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)
		DW	(?TRAP_AI&$FFFF)
		DB	$10
		DB	$08
		DW	$D128
		DB	$00
		DB	:?_OVERWORLD_GEYSER_ANIM
		DW	(?_OVERWORLD_GEYSER_ANIM&$FFFF)
		DB	:?_ARD_GEYSER_ENTER
		DW	(?_ARD_GEYSER_ENTER&$FFFF)

	DB	CMD_LOADVRAMTILES
		DB	$07
		DB	:BIT_GEYSEROVER
		DW	(BIT_GEYSEROVER&$FFFF)
		DW	$8000
		DB	$00

	DB	CMD_THATACTORSTART
		DB	(((HEROACTOR-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

	DB	CMD_IF
		DB	EXPR_NOTEQU
		DB	EXPR_GAMECOUNT
		DB	EXPR_BYTECONST,$17
		DB	:_SKIP
		DW	(_SKIP&$FFFF)

	DB	CMD_THATACTORSTART
		DB	(((ACTOR00-ACTOR_RAM)/ACTOR_STRUCT_SIZE)&$FF)

;********************************
_SKIP
	DB	CMD_HEROFROMDOOR

	DB	CMD_HEROSETCAMERA

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
?_ARD_GEYSER_ENTER
	DB	CMD_SETLOADSCRIPT
		DB	:?_ARD_GEYSER_ENTER
		DW	(?_ARD_GEYSER_ENTER&$FFFF)

	DB	CMD_HEROSETDOOR
		DB	$0B
		DB	$17

	DB	CMD_JUMP
		DB	:?_ARDGEYSER01
		DW	(?_ARDGEYSER01&$FFFF)

;********************************
?_OROFLYER_RNDBAT
	DB	CMD_JUMPRANDOM
		DB	$04
		DB	:_BTL1
		DW	(_BTL1&$FFFF)
		DB	:_BTL2
		DW	(_BTL2&$FFFF)
		DB	:_BTL3
		DW	(_BTL3&$FFFF)
		DB	:_BTL4
		DW	(_BTL4&$FFFF)

;********************************
_BTL1
	DB	CMD_HEROTODOOR
		DB	$00
		DB	$00
		DB	$00
		DB	$00

	DB	CMD_SCREENWIPE
		DW	(?DO_SCREENFX_SWIRL&$FFFF)
		DB	SONGID_lavavents

	DB	CMD_BTLNEW
		DB	ARDERIAL_ARENA1
		DB	MAGI_RND1
		DB	$2B
		DB	:?_BATTLE_FADE_IN
		DW	(?_BATTLE_FADE_IN&$FFFF)

	DB	CMD_BTLSUMMONDELAY
		DB	BTL_ID_MAGI
		DB	ORATHAN_F
		DB	$3C
		DB	$FF
		DB	$01

	DB	CMD_BTLAUTO

;********************************
_BTL2
;********************************
_BTL3
;********************************
_BTL4
	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	HEROACTOR
	GLOBAL	ACTOR_RAM
	GLOBAL	?HERO_AI_FLY_DOWN
	GLOBAL	?_HERO_FLY_DOWN_ANIM
	GLOBAL	?_DONT_TALK
	GLOBAL	?_ARDCITY01
	GLOBAL	?HERO_AI_FLY_LEFT
	GLOBAL	?_HERO_FLY_LEFT_ANIM
	GLOBAL	?HERO_AI_FLY_RIGHT
	GLOBAL	?_HERO_FLY_RIGHT_ANIM
	GLOBAL	?HERO_AI_FLY_UP
	GLOBAL	?_HERO_FLY_UP_ANIM
	GLOBAL	?_ARDCLOUDS14
	GLOBAL	?_ARDCLOUDS15
	GLOBAL	?_ARDCLOUDS16
	GLOBAL	?_ARDCITY02
	GLOBAL	?_ARDCLOUDS01
	GLOBAL	?HERO_AI
	GLOBAL	?_HERO_STAND_DOWN_ANIM
	GLOBAL	?_ARDCLOUDS06
	GLOBAL	?_ARDCITY04
	GLOBAL	?_ARDCITY03
	GLOBAL	?_HERO_STAND_UP_ANIM
	GLOBAL	?_ARDCLOUDS07
	GLOBAL	?_ARDCLOUDS13
	GLOBAL	?_HDNFORT04
	GLOBAL	XRAM_SAVEVARS
	GLOBAL	MENU_SAVE_ENABLE
	GLOBAL	ENCOUNTER_FRQ_SLOW
	GLOBAL	?_BATTLE_LOST
	GLOBAL	MAP_OVRSURFACE05
	GLOBAL	HS_OVERSURFACE05
	GLOBAL	PAL_HERO
	GLOBAL	?OVERWORLD_AI
	GLOBAL	?_HERO_OVER_DOWN_ANIM
	GLOBAL	ACTOR00
	GLOBAL	?TRAP_AI
	GLOBAL	?_OVERWORLD_GEYSER_ANIM
	GLOBAL	BIT_GEYSEROVER
	GLOBAL	?_ARDGEYSER01
	GLOBAL	?DO_SCREENFX_SWIRL
	GLOBAL	?_BATTLE_FADE_IN

;********************************
	END
;********************************