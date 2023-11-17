;Size:64
                       
;********************************
; C:\Work\Patrick's Project\scripts\CHARACTERS\SPARK\SPARK_ANIM.s
;********************************
;	Author:	MGI PARSE
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?_SPARK_ANIM
	DB	CMD_FRAMEBLOCK
		DB	$06
		DB	$04
		DB	$00
		DB	$00
		DW	(?SPARK01&$FFFF)
		DW	(?SPARK02&$FFFF)
		DW	(?SPARK03&$FFFF)

	DB	CMD_JUMPLOCAL
		DW	(?_SPARK_ANIM&$FFFF)

;********************************
?_SPARK_FUSE_1
	DB	CMD_FRAME
		DB	$01
		DB	$FC
		DB	$FC
		DW	(?SPARK01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_SPARK_ANIM&$FFFF)

;********************************
?_SPARK_FUSE_2
	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$FE
		DW	(?SPARK01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_SPARK_ANIM&$FFFF)

;********************************
?_SPARK_FUSE_3
	DB	CMD_FRAME
		DB	$01
		DB	$00
		DB	$FE
		DW	(?SPARK01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_SPARK_ANIM&$FFFF)

;********************************
?_SPARK_FUSE_4
	DB	CMD_FRAME
		DB	$01
		DB	$02
		DB	$00
		DW	(?SPARK01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_SPARK_ANIM&$FFFF)

;********************************
?_SPARK_FUSE_5
	DB	CMD_FRAME
		DB	$01
		DB	$01
		DB	$01
		DW	(?SPARK01&$FFFF)
		DB	$00

	DB	CMD_JUMPLOCAL
		DW	(?_SPARK_ANIM&$FFFF)

;********************************
; 	GLOBALS
;********************************
	GLOBAL	?SPARK01
	GLOBAL	?SPARK02
	GLOBAL	?SPARK03

;********************************
	END
;********************************