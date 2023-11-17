;********************************
; TILEMAP_VAR_256.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; Arrays must not cross 256 boundary
TILEMAP_ROW_TILES		DS		$16		; Array of decoded tiles
TILEMAP_COL_TILES		DS		$14		; Array of decoded tiles

;********************************
	END
;********************************