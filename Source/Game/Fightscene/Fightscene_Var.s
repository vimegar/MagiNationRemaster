;********************************
; FIGHTSCENE_VAR.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
FIGHTSCN_SCX		DS		$01
FIGHTSCN_SCY		DS		$01

;********************************
FIGHTSCN_BORDSPD0	DS		$01
FIGHTSCN_BORDSPD1	DS		$01

;********************************
FIGHTSCN_BORDX0		DS		$01
FIGHTSCN_BORDX1		DS		$01

;********************************
FIGHTSCN_WX			DS		$01
FIGHTSCN_WY			DS		$01
FIGHTSCN_WX_DELTA	DS		$01

;********************************
FIGHTSCN_START		DS		$01
FIGHTSCN_DONE		DS		$01
FIGHTSCN_PAUSE		DS		$01
FIGHTSCN_OPTIONS	DS		$01
FIGHTSCN_COUNT		DS		$01
FIGHTSCN_SCRIPT		DS		$02
FIGHTSCN_SCRIPT_BANK DS		$01

;********************************
	CREATURE_GFX_STRUCT	TEMP
CREATURE_INDEX		DS		$02
CREATURE_TRANS		DS		$02
ARENA_INDEX			DS		$01
ARENA_COLOR			DS		$02

;********************************
SCROLL_TABLE_PTR	DS		$02
SCROLL_DELTA		DS		$01
SCROLL_DIRECTION	DS		$01

;********************************
MOVE_DELTA_INDEX		DS	$01
MOVE_DELTA_MAXINDEX		DS	$01
MOVE_DELTA_LOOPCOUNT	DS	$01
MOVE_DELAY_COUNT		DS	$01
MOVE_DELAY_MAXCOUNT		DS	$01
MOVE_TABLE_PTR			DS	$02

;********************************
TILEFX_DESTROY_BLANK_FUNC		DS	$02
TILEFX_DESTROY_TABLE_PTR		DS	$02
TILEFX_DESTROY_DEST				DS	$02
TILEFX_DESTROY_DEST_BANK		DS	$01
TILEFX_DESTROY_ITERATION		DS	$01
TILEFX_DESTROY_ITERATION_MAX	DS	$01
TILEFX_DESTROY_COUNT			DS	$01

;********************************
	END
;********************************
