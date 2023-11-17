;Size:96
                       
;********************************
; C:\Work\Patrick's Project\scripts\SYSTEM\RAINDROP.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_CLD_LAVABUBBLE
	DB	CMD_THISACTORSETANIM
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_THISACTORRAINDROP
		DB	COLLCODE_ITEM01

	DB	CMD_JUMPRANDOM
		DB	$02
		DB	:_BUBBLE01
		DW	(_BUBBLE01&$FFFF)
		DB	:_BUBBLE02
		DW	(_BUBBLE02&$FFFF)

;********************************
_BUBBLE01
	DB	CMD_THISACTORSETANIM
		DB	:?_LAVABUBBLE1_ANIM
		DW	(?_LAVABUBBLE1_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$20

	DB	CMD_JUMPLOCAL
		DW	(?_CLD_LAVABUBBLE&$FFFF)

;********************************
_BUBBLE02
	DB	CMD_THISACTORSETANIM
		DB	:?_LAVABUBBLE2_ANIM
		DW	(?_LAVABUBBLE2_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$20

	DB	CMD_JUMPLOCAL
		DW	(?_CLD_LAVABUBBLE&$FFFF)

;********************************
?_SHIMMER
	DB	CMD_THISACTORSETANIM
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_THISACTORRAINDROP
		DB	COLLCODE_WATER

	DB	CMD_JUMPRANDOM
		DB	$02
		DB	:_BUBBLE01
		DW	(_BUBBLE01&$FFFF)
		DB	:_BUBBLE02
		DW	(_BUBBLE02&$FFFF)

;********************************
_BUBBLE01
	DB	CMD_THISACTORSETANIM
		DB	:?_WATER_SHIMMER1_ANIM
		DW	(?_WATER_SHIMMER1_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$29

	DB	CMD_JUMPLOCAL
		DW	(?_SHIMMER&$FFFF)

;********************************
_BUBBLE02
	DB	CMD_THISACTORSETANIM
		DB	:?_WATER_SHIMMER2_ANIM
		DW	(?_WATER_SHIMMER2_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$1B

	DB	CMD_JUMPLOCAL
		DW	(?_SHIMMER&$FFFF)

;********************************
?_ARD_SPARKLE
	DB	CMD_THISACTORSETANIM
		DB	:?_END
		DW	(?_END&$FFFF)

	DB	CMD_THISACTORRAINDROP
		DB	COLLCODE_JUMP

	DB	CMD_JUMPRANDOM
		DB	$02
		DB	:_SPARKLE01
		DW	(_SPARKLE01&$FFFF)
		DB	:_SPARKLE02
		DW	(_SPARKLE02&$FFFF)

;********************************
_SPARKLE01
	DB	CMD_THISACTORSETANIM
		DB	:?_STAR_SPARKLE_ANIM
		DW	(?_STAR_SPARKLE_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$20

	DB	CMD_JUMPLOCAL
		DW	(?_ARD_SPARKLE&$FFFF)

;********************************
_SPARKLE02
	DB	CMD_THISACTORSETANIM
		DB	:?_STAR_SPARKLE_ANIM
		DW	(?_STAR_SPARKLE_ANIM&$FFFF)

	DB	CMD_DELAY
		DB	$20

	DB	CMD_JUMPLOCAL
		DW	(?_ARD_SPARKLE&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?_END
	GLOBAL	?_LAVABUBBLE1_ANIM
	GLOBAL	?_LAVABUBBLE2_ANIM
	GLOBAL	?_WATER_SHIMMER1_ANIM
	GLOBAL	?_WATER_SHIMMER2_ANIM
	GLOBAL	?_STAR_SPARKLE_ANIM

;********************************
	END
;********************************