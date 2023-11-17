;Size:238
                      
;********************************
; C:\Work\Patrick's Project\scripts\CHARACTERS\ARBOLL\ARBOLL_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_ARBOLL_SIT_LEFT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$06
		DB	$04
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT01_LEFT&$FFFF)
		DW	(?ARBOL_FLOAT02_LEFT&$FFFF)
		DW	(?ARBOL_FLOAT03_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_ARBOLL_SIT_LEFT_ANIM&$FFFF)

;********************************
?_ARBOLL_SIT_RIGHT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$06
		DB	$04
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT01_RIGHT&$FFFF)
		DW	(?ARBOL_FLOAT02_RIGHT&$FFFF)
		DW	(?ARBOL_FLOAT03_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_ARBOLL_SIT_RIGHT_ANIM&$FFFF)

;********************************
?_ARBOLL_MOVE_LEFT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$06
		DB	$04
		DB	$FF
		DB	$00
		DW	(?ARBOL_FLY01_LEFT&$FFFF)
		DW	(?ARBOL_FLY02_LEFT&$FFFF)
		DW	(?ARBOL_FLY03_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_ARBOLL_MOVE_LEFT_ANIM&$FFFF)

;********************************
?_ARBOLL_MOVE_RIGHT_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$06
		DB	$04
		DB	$01
		DB	$00
		DW	(?ARBOL_FLY01_RIGHT&$FFFF)
		DW	(?ARBOL_FLY02_RIGHT&$FFFF)
		DW	(?ARBOL_FLY03_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_ARBOLL_MOVE_RIGHT_ANIM&$FFFF)

;********************************
?_ARBOLL_MOVE_DOWN_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$06
		DB	$04
		DB	$00
		DB	$01
		DW	(?ARBOL_FLY01_RIGHT&$FFFF)
		DW	(?ARBOL_FLY02_RIGHT&$FFFF)
		DW	(?ARBOL_FLY03_RIGHT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_ARBOLL_MOVE_DOWN_ANIM&$FFFF)

;********************************
?_ARBOLL_MOVE_UP_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$06
		DB	$04
		DB	$00
		DB	$FF
		DW	(?ARBOL_FLY01_LEFT&$FFFF)
		DW	(?ARBOL_FLY02_LEFT&$FFFF)
		DW	(?ARBOL_FLY03_LEFT&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_ARBOLL_MOVE_UP_ANIM&$FFFF)

;********************************
?_ARBOLL_VANISH_LEFT_ANIM
	DB	CMD_FRAME
		DB	$04
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT01_LEFT&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT02_LEFT&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT03_LEFT&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT03_LEFT&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT01_LEFT&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT01_LEFT&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT02_LEFT&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT02_LEFT&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT03_LEFT&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT03_LEFT&$FFFF)
		DB	$00

	DB	CMD_END

;********************************
?_ARBOLL_VANISH_RIGHT_ANIM
	DB	CMD_FRAME
		DB	$04
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT01_RIGHT&$FFFF)
		DB	$04
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT02_RIGHT&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT03_RIGHT&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT03_RIGHT&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT01_RIGHT&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT01_RIGHT&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT02_RIGHT&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT02_RIGHT&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT03_RIGHT&$FFFF)
		DB	$00

	DB	CMD_PASS

	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$00
		DW	(?ARBOL_FLOAT03_RIGHT&$FFFF)
		DB	$00

	DB	CMD_END

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?ARBOL_FLOAT01_LEFT
	GLOBAL	?ARBOL_FLOAT02_LEFT
	GLOBAL	?ARBOL_FLOAT03_LEFT
	GLOBAL	?ARBOL_FLOAT01_RIGHT
	GLOBAL	?ARBOL_FLOAT02_RIGHT
	GLOBAL	?ARBOL_FLOAT03_RIGHT
	GLOBAL	?ARBOL_FLY01_LEFT
	GLOBAL	?ARBOL_FLY02_LEFT
	GLOBAL	?ARBOL_FLY03_LEFT
	GLOBAL	?ARBOL_FLY01_RIGHT
	GLOBAL	?ARBOL_FLY02_RIGHT
	GLOBAL	?ARBOL_FLY03_RIGHT

;********************************
	END
;********************************