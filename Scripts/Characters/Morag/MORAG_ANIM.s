;Size:716
                      
;********************************
; C:\Work\Patrick's Project\scripts\CHARACTERS\MORAG\MORAG_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_MORAG_HOVER_DOWN_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_FLOAT01_FRONT&$FFFF)
		DW	(?MORAG_FLOAT02_FRONT&$FFFF)
		DW	(?MORAG_FLOAT03_FRONT&$FFFF)
		DW	(?MORAG_FLOAT02_FRONT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_HOVER_DOWN_ANIM&$FFFF)

;********************************
?_MORAG_HOVER_DOWN_STILL
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?MORAG_FLOAT01_FRONT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_HOVER_DOWN_STILL&$FFFF)

;********************************
?_MORAG_HOVER_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_FLOAT01_BACK&$FFFF)
		DW	(?MORAG_FLOAT02_BACK&$FFFF)
		DW	(?MORAG_FLOAT03_BACK&$FFFF)
		DW	(?MORAG_FLOAT02_BACK&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_HOVER_UP_ANIM&$FFFF)

;********************************
?_MORAG_HOVER_DL_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_FLOAT01_LEFT&$FFFF)
		DW	(?MORAG_FLOAT02_LEFT&$FFFF)
		DW	(?MORAG_FLOAT03_LEFT&$FFFF)
		DW	(?MORAG_FLOAT02_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_HOVER_DL_ANIM&$FFFF)

;********************************
?_MORAG_HOVER_DR_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_FLOAT01_RIGHT&$FFFF)
		DW	(?MORAG_FLOAT02_RIGHT&$FFFF)
		DW	(?MORAG_FLOAT03_RIGHT&$FFFF)
		DW	(?MORAG_FLOAT02_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_HOVER_DR_ANIM&$FFFF)

;********************************
?_MORAG_HOVER_UL_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_FLOAT01_BACKLEFT&$FFFF)
		DW	(?MORAG_FLOAT02_BACKLEFT&$FFFF)
		DW	(?MORAG_FLOAT03_BACKLEFT&$FFFF)
		DW	(?MORAG_FLOAT02_BACKLEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_HOVER_UL_ANIM&$FFFF)

;********************************
?_MORAG_HOVER_UR_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_FLOAT01_BACKRIGHT&$FFFF)
		DW	(?MORAG_FLOAT02_BACKRIGHT&$FFFF)
		DW	(?MORAG_FLOAT03_BACKRIGHT&$FFFF)
		DW	(?MORAG_FLOAT02_BACKRIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_HOVER_UR_ANIM&$FFFF)

;********************************
?_MORAG_FLOAT_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$FF
		DW	(?MORAG_FLOAT01_BACK&$FFFF)
		DW	(?MORAG_FLOAT02_BACK&$FFFF)
		DW	(?MORAG_FLOAT03_BACK&$FFFF)
		DW	(?MORAG_FLOAT02_BACK&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_FLOAT_UP_ANIM&$FFFF)

;********************************
?_MORAG_FLOAT_DOWN_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$01
		DW	(?MORAG_FLOAT01_FRONT&$FFFF)
		DW	(?MORAG_FLOAT02_FRONT&$FFFF)
		DW	(?MORAG_FLOAT03_FRONT&$FFFF)
		DW	(?MORAG_FLOAT02_FRONT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_FLOAT_DOWN_ANIM&$FFFF)

;********************************
?_MORAG_FLOAT_RIGHT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$01
		DB	$00
		DW	(?MORAG_FLOAT01_RIGHT&$FFFF)
		DW	(?MORAG_FLOAT02_RIGHT&$FFFF)
		DW	(?MORAG_FLOAT03_RIGHT&$FFFF)
		DW	(?MORAG_FLOAT02_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_FLOAT_RIGHT_ANIM&$FFFF)

;********************************
?_MORAG_FLOAT_LEFT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$FF
		DB	$00
		DW	(?MORAG_FLOAT01_LEFT&$FFFF)
		DW	(?MORAG_FLOAT02_LEFT&$FFFF)
		DW	(?MORAG_FLOAT03_LEFT&$FFFF)
		DW	(?MORAG_FLOAT02_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_FLOAT_LEFT_ANIM&$FFFF)

;********************************
?_MORAG_FLOAT_DL_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$FF
		DB	$01
		DW	(?MORAG_FLOAT01_LEFT&$FFFF)
		DW	(?MORAG_FLOAT02_LEFT&$FFFF)
		DW	(?MORAG_FLOAT03_LEFT&$FFFF)
		DW	(?MORAG_FLOAT02_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_FLOAT_DL_ANIM&$FFFF)

;********************************
?_MORAG_FLOAT_DR_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$01
		DB	$01
		DW	(?MORAG_FLOAT01_RIGHT&$FFFF)
		DW	(?MORAG_FLOAT02_RIGHT&$FFFF)
		DW	(?MORAG_FLOAT03_RIGHT&$FFFF)
		DW	(?MORAG_FLOAT02_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_FLOAT_DR_ANIM&$FFFF)

;********************************
?_MORAG_FLOAT_UL_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$FF
		DB	$FF
		DW	(?MORAG_FLOAT01_BACKLEFT&$FFFF)
		DW	(?MORAG_FLOAT02_BACKLEFT&$FFFF)
		DW	(?MORAG_FLOAT03_BACKLEFT&$FFFF)
		DW	(?MORAG_FLOAT02_BACKLEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_FLOAT_UL_ANIM&$FFFF)

;********************************
?_MORAG_FLOAT_UR_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$01
		DB	$FF
		DW	(?MORAG_FLOAT01_BACKRIGHT&$FFFF)
		DW	(?MORAG_FLOAT02_BACKRIGHT&$FFFF)
		DW	(?MORAG_FLOAT03_BACKRIGHT&$FFFF)
		DW	(?MORAG_FLOAT02_BACKRIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_FLOAT_UR_ANIM&$FFFF)

;********************************
?_MORAG_THROW1_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_THROW01A&$FFFF)
		DW	(?MORAG_THROW01B&$FFFF)
		DW	(?MORAG_THROW01C&$FFFF)
		DW	(?MORAG_THROW01B&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_THROW1_ANIM&$FFFF)

;********************************
?_MORAG_THROW1_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$FF
		DW	(?MORAG_THROW01A&$FFFF)
		DW	(?MORAG_THROW01B&$FFFF)
		DW	(?MORAG_THROW01C&$FFFF)
		DW	(?MORAG_THROW01B&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_THROW1_UP_ANIM&$FFFF)

;********************************
?_MORAG_THROW2_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_THROW02A&$FFFF)
		DW	(?MORAG_THROW02B&$FFFF)
		DW	(?MORAG_THROW02C&$FFFF)
		DW	(?MORAG_THROW02B&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_THROW2_ANIM&$FFFF)

;********************************
?_MORAG_THROW2_STILL
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?MORAG_THROW02B&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_THROW2_STILL&$FFFF)

;********************************
?_MORAG_THROW3_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?MORAG_THROW03&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_THROW3_ANIM&$FFFF)

;********************************
?_MORAG_FLICKER
	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?MORAG_FLOAT02_FRONT&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_FLICKER&$FFFF)

;********************************
?_MORAG_HURT_LEFT
	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?MORAG_HURT_LEFT&$FFFF)
		DB	$01
		DB	$00
		DB	$FF
		DW	(?MORAG_HURT_LEFT&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?MORAG_HURT_LEFT&$FFFF)
		DB	$01
		DB	$00
		DB	$01
		DW	(?MORAG_HURT_LEFT&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?MORAG_HURT_LEFT&$FFFF)
		DB	$01
		DB	$00
		DB	$FF
		DW	(?MORAG_HURT_LEFT&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?MORAG_HURT_LEFT&$FFFF)
		DB	$01
		DB	$00
		DB	$01
		DW	(?MORAG_HURT_LEFT&$FFFF)
		DB	$00

;********************************
?_MORAG_HURTING_LEFT
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?MORAG_HURT_LEFT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_HURTING_LEFT&$FFFF)

;********************************
?_MORAG_HURT_RIGHT
	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?MORAG_HURT_RIGHT&$FFFF)
		DB	$01
		DB	$00
		DB	$FF
		DW	(?MORAG_HURT_RIGHT&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?MORAG_HURT_RIGHT&$FFFF)
		DB	$01
		DB	$00
		DB	$01
		DW	(?MORAG_HURT_RIGHT&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?MORAG_HURT_RIGHT&$FFFF)
		DB	$01
		DB	$00
		DB	$FF
		DW	(?MORAG_HURT_RIGHT&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?MORAG_HURT_RIGHT&$FFFF)
		DB	$01
		DB	$00
		DB	$01
		DW	(?MORAG_HURT_RIGHT&$FFFF)
		DB	$00

;********************************
?_MORAG_HURTING_RIGHT
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?MORAG_HURT_RIGHT&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_HURTING_RIGHT&$FFFF)

;********************************
?_MORAG_BATTLE_STAND_ANIM
;********************************
_FLOATDOWN
	DB	CMD_FRAMEBLOCK
		DB	$18
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_FLOAT02FRONT&$FFFF)
		DW	(?MORAG_FLOAT01FRONT&$FFFF)
		DW	(?MORAG_TAUNT01&$FFFF)
		DW	(?MORAG_FLOAT01FRONT&$FFFF)
		DW	(?MORAG_FLOAT02FRONT&$FFFF)
		DW	(?MORAG_FLOAT01FRONT&$FFFF)
		DW	(?MORAG_TAUNT01&$FFFF)
		DW	(?MORAG_FLOAT01FRONT&$FFFF)
		DW	(?MORAG_FLOAT02FRONT&$FFFF)
		DW	(?MORAG_FLOAT01FRONT&$FFFF)
		DW	(?MORAG_TAUNT01&$FFFF)
		DW	(?MORAG_FLOAT01FRONT&$FFFF)

	DB	CMD_JUMPRANDOM
		DB	$02
		DB	:_FLOATLEFT
		DW	(_FLOATLEFT&$FFFF)
		DB	:_FLOATRIGHT
		DW	(_FLOATRIGHT&$FFFF)

;********************************
_FLOATLEFT
	DB	CMD_FRAMEBLOCK
		DB	$18
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_FLOAT01LEFT&$FFFF)
		DW	(?MORAG_FLOAT02LEFT&$FFFF)
		DW	(?MORAG_FLOAT03LEFT&$FFFF)
		DW	(?MORAG_FLOAT02LEFT&$FFFF)
		DW	(?MORAG_FLOAT01LEFT&$FFFF)
		DW	(?MORAG_FLOAT02LEFT&$FFFF)
		DW	(?MORAG_FLOAT03LEFT&$FFFF)
		DW	(?MORAG_FLOAT02LEFT&$FFFF)
		DW	(?MORAG_FLOAT01LEFT&$FFFF)
		DW	(?MORAG_FLOAT02LEFT&$FFFF)
		DW	(?MORAG_FLOAT03LEFT&$FFFF)
		DW	(?MORAG_FLOAT02LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(_FLOATDOWN&$FFFF)

;********************************
_FLOATRIGHT
	DB	CMD_FRAMEBLOCK
		DB	$18
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_FLOAT01RIGHT&$FFFF)
		DW	(?MORAG_FLOAT02RIGHT&$FFFF)
		DW	(?MORAG_FLOAT03RIGHT&$FFFF)
		DW	(?MORAG_FLOAT02RIGHT&$FFFF)
		DW	(?MORAG_FLOAT01RIGHT&$FFFF)
		DW	(?MORAG_FLOAT02RIGHT&$FFFF)
		DW	(?MORAG_FLOAT03RIGHT&$FFFF)
		DW	(?MORAG_FLOAT02RIGHT&$FFFF)
		DW	(?MORAG_FLOAT01RIGHT&$FFFF)
		DW	(?MORAG_FLOAT02RIGHT&$FFFF)
		DW	(?MORAG_FLOAT03RIGHT&$FFFF)
		DW	(?MORAG_FLOAT02RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(_FLOATDOWN&$FFFF)

;********************************
?_MORAG_BATTLE_TAUNT_ANIM
	DB	CMD_FRAME
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_TAUNT01&$FFFF)
		DB	$20
		DB	$00
		DB	$00
		DW	(?MORAG_TAUNT02&$FFFF)
		DB	$20
		DB	$00
		DB	$00
		DW	(?MORAG_TAUNT03&$FFFF)
		DB	$20
		DB	$00
		DB	$00
		DW	(?MORAG_TAUNT04&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_BATTLE_STAND_ANIM&$FFFF)

;********************************
?_MORAG_BATTLE_SUMMON_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$20
		DB	$04
		DB	$00
		DB	$00
		DW	(?MORAG_SUMMON01&$FFFF)
		DW	(?MORAG_SUMMON02&$FFFF)
		DW	(?MORAG_SUMMON03&$FFFF)
		DW	(?MORAG_SUMMON02&$FFFF)
		DW	(?MORAG_SUMMON01&$FFFF)
		DW	(?MORAG_SUMMON02&$FFFF)
		DW	(?MORAG_SUMMON03&$FFFF)
		DW	(?MORAG_SUMMON02&$FFFF)
		DW	(?MORAG_SUMMON01&$FFFF)
		DW	(?MORAG_SUMMON02&$FFFF)
		DW	(?MORAG_SUMMON03&$FFFF)
		DW	(?MORAG_SUMMON02&$FFFF)
		DW	(?MORAG_SUMMON01&$FFFF)
		DW	(?MORAG_SUMMON02&$FFFF)
		DW	(?MORAG_SUMMON03&$FFFF)
		DW	(?MORAG_SUMMON02&$FFFF)

	DB	CMD_FRAME
		DB	$20
		DB	$00
		DB	$00
		DW	(?MORAG_SUMMON01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_MORAG_BATTLE_STAND_ANIM&$FFFF)

;********************************
?_MORAG_BATTLE_WIN_ANIM
	DB	CMD_FRAME
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_TAUNT01&$FFFF)
		DB	$20
		DB	$00
		DB	$00
		DW	(?MORAG_WIN02&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_WIN01&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_WIN02&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_WIN01&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_WIN02&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_WIN01&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_WIN02&$FFFF)
		DB	$00

;********************************
_LAUGHING
	DB	CMD_FRAMEBLOCK
		DB	$04
		DB	$08
		DB	$00
		DB	$00
		DW	(?MORAG_WIN03&$FFFF)
		DW	(?MORAG_WIN02&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(_LAUGHING&$FFFF)

;********************************
?_MORAG_BATTLE_LOSE_ANIM
	DB	CMD_FRAME
		DB	$40
		DB	$00
		DB	$00
		DW	(?MORAG_DEFEAT01&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?MORAG_DEFEAT01&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?MORAG_DEFEAT01&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?MORAG_DEFEAT01&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?MORAG_DEFEAT01&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?MORAG_DEFEAT01&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?MORAG_DEFEAT01&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?MORAG_DEFEAT01&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?MORAG_DEFEAT01&$FFFF)
		DB	$00

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?MORAG_FLOAT01_FRONT
	GLOBAL	?MORAG_FLOAT02_FRONT
	GLOBAL	?MORAG_FLOAT03_FRONT
	GLOBAL	?MORAG_FLOAT01_BACK
	GLOBAL	?MORAG_FLOAT02_BACK
	GLOBAL	?MORAG_FLOAT03_BACK
	GLOBAL	?MORAG_FLOAT01_LEFT
	GLOBAL	?MORAG_FLOAT02_LEFT
	GLOBAL	?MORAG_FLOAT03_LEFT
	GLOBAL	?MORAG_FLOAT01_RIGHT
	GLOBAL	?MORAG_FLOAT02_RIGHT
	GLOBAL	?MORAG_FLOAT03_RIGHT
	GLOBAL	?MORAG_FLOAT01_BACKLEFT
	GLOBAL	?MORAG_FLOAT02_BACKLEFT
	GLOBAL	?MORAG_FLOAT03_BACKLEFT
	GLOBAL	?MORAG_FLOAT01_BACKRIGHT
	GLOBAL	?MORAG_FLOAT02_BACKRIGHT
	GLOBAL	?MORAG_FLOAT03_BACKRIGHT
	GLOBAL	?MORAG_THROW01A
	GLOBAL	?MORAG_THROW01B
	GLOBAL	?MORAG_THROW01C
	GLOBAL	?MORAG_THROW02A
	GLOBAL	?MORAG_THROW02B
	GLOBAL	?MORAG_THROW02C
	GLOBAL	?MORAG_THROW03
	GLOBAL	?MORAG_HURT_LEFT
	GLOBAL	?MORAG_HURT_RIGHT
	GLOBAL	?MORAG_FLOAT02FRONT
	GLOBAL	?MORAG_FLOAT01FRONT
	GLOBAL	?MORAG_TAUNT01
	GLOBAL	?MORAG_FLOAT01LEFT
	GLOBAL	?MORAG_FLOAT02LEFT
	GLOBAL	?MORAG_FLOAT03LEFT
	GLOBAL	?MORAG_FLOAT01RIGHT
	GLOBAL	?MORAG_FLOAT02RIGHT
	GLOBAL	?MORAG_FLOAT03RIGHT
	GLOBAL	?MORAG_TAUNT02
	GLOBAL	?MORAG_TAUNT03
	GLOBAL	?MORAG_TAUNT04
	GLOBAL	?MORAG_SUMMON01
	GLOBAL	?MORAG_SUMMON02
	GLOBAL	?MORAG_SUMMON03
	GLOBAL	?MORAG_WIN02
	GLOBAL	?MORAG_WIN01
	GLOBAL	?MORAG_WIN03
	GLOBAL	?MORAG_DEFEAT01

;********************************
	END
;********************************