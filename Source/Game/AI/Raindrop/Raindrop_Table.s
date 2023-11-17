;********************************
; RAINDROP_TABLE.S
;********************************
;	Author: Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
RAINDROP_COL		DB		$00,$00,$01,$01,$02,$02,$03,$04,$05,$06,$07,$07,$08,$08,$09,$09
RAINDROP_ROW		DB		$00
					DW		(TILEMAP_YPAD_TABLE+$00)&$FFFF
					DB		$00
					DW		(TILEMAP_YPAD_TABLE+$00)&$FFFF
					DB		$01
					DW		(TILEMAP_YPAD_TABLE+$02)&$FFFF
					DB		$01
					DW		(TILEMAP_YPAD_TABLE+$02)&$FFFF
					DB		$01
					DW		(TILEMAP_YPAD_TABLE+$02)&$FFFF
					DB		$02
					DW		(TILEMAP_YPAD_TABLE+$04)&$FFFF
					DB		$02
					DW		(TILEMAP_YPAD_TABLE+$04)&$FFFF
					DB		$03
					DW		(TILEMAP_YPAD_TABLE+$06)&$FFFF
					DB		$04
					DW		(TILEMAP_YPAD_TABLE+$08)&$FFFF
					DB		$05
					DW		(TILEMAP_YPAD_TABLE+$0A)&$FFFF
					DB		$06
					DW		(TILEMAP_YPAD_TABLE+$0C)&$FFFF
					DB		$06
					DW		(TILEMAP_YPAD_TABLE+$0C)&$FFFF
					DB		$07
					DW		(TILEMAP_YPAD_TABLE+$0E)&$FFFF
					DB		$07
					DW		(TILEMAP_YPAD_TABLE+$0E)&$FFFF
					DB		$08
					DW		(TILEMAP_YPAD_TABLE+$10)&$FFFF
					DB		$08
					DW		(TILEMAP_YPAD_TABLE+$10)&$FFFF

;********************************
	END
;********************************