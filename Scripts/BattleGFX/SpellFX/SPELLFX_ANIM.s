;Size:525
                      
;********************************
; C:\Work\Patrick's Project\scripts\BATTLEGFX\SPELLFX\SPELLFX_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_BOX_ANIM
	DB	CMD_FRAME
		DB	$FF
		DB	$00
		DB	$00
		DW	(?BOX&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_BOX_ANIM&$FFFF)

;********************************
?_STATUS_CONFUSED_ANIM
	DB	CMD_FRAME
		DB	$0F
		DB	$00
		DB	$00
		DW	(?CONFUSED01&$FFFF)
		DB	$01
		DB	$00
		DB	$01
		DW	(?CONFUSED01&$FFFF)
		DB	$0F
		DB	$00
		DB	$00
		DW	(?CONFUSED01&$FFFF)
		DB	$01
		DB	$00
		DB	$FF
		DW	(?CONFUSED01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_STATUS_CONFUSED_ANIM&$FFFF)

;********************************
?_STATUS_DIVERT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$08
		DB	$08
		DB	$00
		DB	$00
		DW	(?DIVERT01&$FFFF)
		DW	(?DIVERT02&$FFFF)
		DW	(?DIVERT03&$FFFF)
		DW	(?DIVERT02&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_STATUS_DIVERT_ANIM&$FFFF)

;********************************
?_STATUS_ERRUPT_ANIM
	DB	CMD_FRAME
		DB	$10
		DB	$00
		DB	$00
		DW	(?ERRUPT01&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?ERRUPT02&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?ERRUPT03&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?ERRUPT02&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?ERRUPT03&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?ERRUPT02&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?ERRUPT03&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?ERRUPT02&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?ERRUPT03&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?ERRUPT02&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?ERRUPT03&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?ERRUPT02&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?ERRUPT03&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?ERRUPT02&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?ERRUPT03&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?ERRUPT02&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?ERRUPT03&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?ERRUPT02&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?ERRUPT03&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?ERRUPT02&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_STATUS_ERRUPT_ANIM&$FFFF)

;********************************
?_FLAME_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$20
		DB	$04
		DB	$00
		DB	$00
		DW	(?FLAME01&$FFFF)
		DW	(?FLAME02&$FFFF)
		DW	(?FLAME03&$FFFF)
		DW	(?FLAME04&$FFFF)
		DW	(?FLAME05&$FFFF)
		DW	(?FLAME06&$FFFF)
		DW	(?FLAME07&$FFFF)
		DW	(?FLAME08&$FFFF)
		DW	(?FLAME09&$FFFF)
		DW	(?FLAME10&$FFFF)
		DW	(?FLAME11&$FFFF)
		DW	(?FLAME12&$FFFF)
		DW	(?FLAME13&$FFFF)
		DW	(?FLAME14&$FFFF)
		DW	(?FLAME15&$FFFF)
		DW	(?FLAME16&$FFFF)

	DB	CMD_SETXRAMBYTE
		DW	(BTL_ANIM_DONE+$0000)
		DB	$01

	DB	CMD_END

;********************************
?_HAND_OF_FATE_ANIM
	DB	CMD_OVERLAYFRAME
		DB	$01
		DB	$00
		DB	$FC
		DW	(?HAND01&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?HAND01&$FFFF)
		DB	$01
		DB	$00
		DB	$FD
		DW	(?HAND01&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?HAND01&$FFFF)
		DB	$01
		DB	$00
		DB	$FE
		DW	(?HAND01&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?HAND01&$FFFF)
		DB	$01
		DB	$00
		DB	$FF
		DW	(?HAND01&$FFFF)
		DB	$03
		DB	$00
		DB	$00
		DW	(?HAND01&$FFFF)
		DB	$01
		DB	$00
		DB	$01
		DW	(?HAND01&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?HAND01&$FFFF)
		DB	$01
		DB	$00
		DB	$02
		DW	(?HAND01&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?HAND01&$FFFF)
		DB	$01
		DB	$00
		DB	$03
		DW	(?HAND01&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?HAND01&$FFFF)
		DB	$01
		DB	$00
		DB	$04
		DW	(?HAND01&$FFFF)
		DB	$01
		DB	$00
		DB	$00
		DW	(?HAND01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_HAND_OF_FATE_ANIM&$FFFF)

;********************************
?_HEALING_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$14
		DB	$04
		DB	$00
		DB	$00
		DW	(?HEALING01&$FFFF)
		DW	(?HEALING02&$FFFF)
		DW	(?HEALING03&$FFFF)
		DW	(?HEALING04&$FFFF)
		DW	(?HEALING05&$FFFF)
		DW	(?HEALING06&$FFFF)
		DW	(?HEALING07&$FFFF)
		DW	(?HEALING08&$FFFF)
		DW	(?HEALING09&$FFFF)
		DW	(?HEALING10&$FFFF)

	DB	CMD_END

;********************************
?_STATUS_HICCUP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$0E
		DB	$04
		DB	$00
		DB	$00
		DW	(?HICCUP01&$FFFF)
		DW	(?HICCUP02&$FFFF)
		DW	(?HICCUP03&$FFFF)
		DW	(?HICCUP04&$FFFF)
		DW	(?HICCUP05&$FFFF)
		DW	(?HICCUP06&$FFFF)
		DW	(?HICCUP07&$FFFF)

	DB	CMD_FRAME
		DB	$10
		DB	$00
		DB	$00
		DW	(?HICCUP08&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?HICCUP09&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_DELAY
		DB	$40

	DB	CMD_JUMPLOCAL
		DW	(?_STATUS_HICCUP_ANIM&$FFFF)

;********************************
?_STATUS_HIDDEN_ANIM
	DB	CMD_FRAME
		DB	$20
		DB	$00
		DB	$00
		DW	(?HIDDEN01&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?HIDDEN02&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?HIDDEN03&$FFFF)
		DB	$60
		DB	$00
		DB	$00
		DW	(?HIDDEN04&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_STATUS_HIDDEN_ANIM&$FFFF)

;********************************
?_STATUS_MIRROR_ANIM
	DB	CMD_FRAME
		DB	$50
		DB	$00
		DB	$00
		DW	(?MIRROR01&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MIRROR02&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MIRROR03&$FFFF)
		DB	$10
		DB	$00
		DB	$00
		DW	(?MIRROR04&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MIRROR03&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?MIRROR02&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_STATUS_MIRROR_ANIM&$FFFF)

;********************************
?_NUMBERBOUNCE_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$20
		DB	$04
		DB	$00
		DB	$00
		DW	(?BOUNCE01&$FFFF)
		DW	(?BOUNCE02&$FFFF)
		DW	(?BOUNCE03&$FFFF)
		DW	(?BOUNCE04&$FFFF)
		DW	(?BOUNCE05&$FFFF)
		DW	(?BOUNCE06&$FFFF)
		DW	(?BOUNCE07&$FFFF)
		DW	(?BOUNCE08&$FFFF)
		DW	(?BOUNCE09&$FFFF)
		DW	(?BOUNCE10&$FFFF)
		DW	(?BOUNCE11&$FFFF)
		DW	(?BOUNCE12&$FFFF)
		DW	(?BOUNCE13&$FFFF)
		DW	(?BOUNCE14&$FFFF)
		DW	(?BOUNCE15&$FFFF)
		DW	(?BOUNCE16&$FFFF)

	DB	CMD_FRAME
		DB	$40
		DB	$00
		DB	$00
		DW	(?BOUNCE15&$FFFF)
		DB	$00

	DB	CMD_SETXRAMBYTE
		DW	(BTL_ANIM_DONE+$0000)
		DB	$01

	DB	CMD_END

;********************************
?_STATUS_PLAGUE_ANIM
	DB	CMD_FRAME
		DB	$07
		DB	$00
		DB	$00
		DW	(?PLAGUE01&$FFFF)
		DB	$01
		DB	$01
		DB	$00
		DW	(?PLAGUE01&$FFFF)
		DB	$0F
		DB	$00
		DB	$00
		DW	(?PLAGUE01&$FFFF)
		DB	$01
		DB	$FF
		DB	$FF
		DW	(?PLAGUE01&$FFFF)
		DB	$07
		DB	$00
		DB	$00
		DW	(?PLAGUE01&$FFFF)
		DB	$01
		DB	$FF
		DB	$00
		DW	(?PLAGUE01&$FFFF)
		DB	$0F
		DB	$00
		DB	$00
		DW	(?PLAGUE01&$FFFF)
		DB	$01
		DB	$01
		DB	$01
		DW	(?PLAGUE01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_STATUS_PLAGUE_ANIM&$FFFF)

;********************************
?_STATUS_STONED_ANIM
	DB	CMD_FRAME
		DB	$60
		DB	$00
		DB	$00
		DW	(?STONE01&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?STONE02&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?STONE03&$FFFF)
		DB	$08
		DB	$00
		DB	$00
		DW	(?STONE04&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_STATUS_STONED_ANIM&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?BOX
	GLOBAL	?CONFUSED01
	GLOBAL	?DIVERT01
	GLOBAL	?DIVERT02
	GLOBAL	?DIVERT03
	GLOBAL	?ERRUPT01
	GLOBAL	?ERRUPT02
	GLOBAL	?ERRUPT03
	GLOBAL	?FLAME01
	GLOBAL	?FLAME02
	GLOBAL	?FLAME03
	GLOBAL	?FLAME04
	GLOBAL	?FLAME05
	GLOBAL	?FLAME06
	GLOBAL	?FLAME07
	GLOBAL	?FLAME08
	GLOBAL	?FLAME09
	GLOBAL	?FLAME10
	GLOBAL	?FLAME11
	GLOBAL	?FLAME12
	GLOBAL	?FLAME13
	GLOBAL	?FLAME14
	GLOBAL	?FLAME15
	GLOBAL	?FLAME16
	GLOBAL	BTL_ANIM_DONE
	GLOBAL	?HAND01
	GLOBAL	?HEALING01
	GLOBAL	?HEALING02
	GLOBAL	?HEALING03
	GLOBAL	?HEALING04
	GLOBAL	?HEALING05
	GLOBAL	?HEALING06
	GLOBAL	?HEALING07
	GLOBAL	?HEALING08
	GLOBAL	?HEALING09
	GLOBAL	?HEALING10
	GLOBAL	?HICCUP01
	GLOBAL	?HICCUP02
	GLOBAL	?HICCUP03
	GLOBAL	?HICCUP04
	GLOBAL	?HICCUP05
	GLOBAL	?HICCUP06
	GLOBAL	?HICCUP07
	GLOBAL	?HICCUP08
	GLOBAL	?HICCUP09
	GLOBAL	?HIDDEN01
	GLOBAL	?HIDDEN02
	GLOBAL	?HIDDEN03
	GLOBAL	?HIDDEN04
	GLOBAL	?MIRROR01
	GLOBAL	?MIRROR02
	GLOBAL	?MIRROR03
	GLOBAL	?MIRROR04
	GLOBAL	?BOUNCE01
	GLOBAL	?BOUNCE02
	GLOBAL	?BOUNCE03
	GLOBAL	?BOUNCE04
	GLOBAL	?BOUNCE05
	GLOBAL	?BOUNCE06
	GLOBAL	?BOUNCE07
	GLOBAL	?BOUNCE08
	GLOBAL	?BOUNCE09
	GLOBAL	?BOUNCE10
	GLOBAL	?BOUNCE11
	GLOBAL	?BOUNCE12
	GLOBAL	?BOUNCE13
	GLOBAL	?BOUNCE14
	GLOBAL	?BOUNCE15
	GLOBAL	?BOUNCE16
	GLOBAL	?PLAGUE01
	GLOBAL	?STONE01
	GLOBAL	?STONE02
	GLOBAL	?STONE03
	GLOBAL	?STONE04

;********************************
	END
;********************************