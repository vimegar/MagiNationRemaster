;********************************
; CARDSCENE_VAR.S
;********************************
;	Author:	EmG, Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
CARDSCN_START		DS		$01
CARDSCN_DONE		DS		$01

CARDSCN_SCX			DS		$01
CARDSCN_SCY			DS		$01
CARDSCN_PAL_OFFSET	DS		$01
CARDSCN_PAL_SLOT	DS		$01
CARD_CREATURE_DECK	DS		$08   ;8 CREATURES IN EACH SLOTS
CARD_ARCHIVE_FLAG	DS		$01




;********************************
	END
;********************************