;********************************
; TILEMAP_VAR.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
TILEMAP_FLAGS			DS		$01		; 0,YMIN,YMAX,YMOVE,0,XMIN,XMAX,XMOVE
TILEMAP_XDELTA			DS		$01
TILEMAP_YDELTA			DS		$01

;********************************
TILEMAP_HSTOP			DS		$01
TILEMAP_VSTOP			DS		$01
TILEMAP_WIDTH			DS		$01
TILEMAP_HEIGHT			DS		$01
TILEMAP_YMAPPAD			DS		$02
TILEMAP_YPAD_TABLE		DS		$12

;********************************
TILEMAP_XTILEOFF		DS		$01
TILEMAP_YTILEOFF		DS		$01
TILEMAP_XTILE			DS		$01
TILEMAP_YTILE			DS		$01

;********************************
TILEMAP_SOURCE			DS		$02
TILEMAP_DEST			DS		$02

;********************************
TILEMAP_ROW_SRC			DS		$02
TILEMAP_ROW_DEST		DS		$02

TILEMAP_ROWPHASE		DS		$01
TILEMAP_ROWTRIG			DS		$01

TILEMAP_ROWXTOGG		DS		$01
TILEMAP_ROWYTOGG		DS		$01

TILEMAP_ROW				DS		$0B
TILEMAP_VRAM_ROW		DS		$15

;********************************
TILEMAP_COL_SRC			DS		$02
TILEMAP_COL_DEST		DS		$02

TILEMAP_COLPHASE		DS		$01
TILEMAP_COLTRIG			DS		$01

TILEMAP_COLXTOGG		DS		$01
TILEMAP_COLYTOGG		DS		$01

TILEMAP_COL				DS		$0A
TILEMAP_VRAM_COL		DS		$26
						
;********************************
TILEMAP_VBLANK_SRC		DS		$02
TILEMAP_VBLANK_DST		DS		$02

;********************************
	END
;********************************