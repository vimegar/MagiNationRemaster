;********************************
; ACTOR_MAC.S
;********************************
;	Author: Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\ENGINE\ACTOR\LIST\ACTORLIST_MAC.S

;********************************
ACTOR					MACRO	name

name
name&_FLAGS			DS	$01		; Last 2: N/W/E/S 0/1/2/3
name&_STATE			DS	$02		; Ptr to state function
name&_XOFF			DS	$01		; X offset in tile
name&_YOFF			DS	$01		; Y offset in tile
name&_XTILE			DS	$01		; X scroll tile loc
name&_YTILE			DS	$01		; Y scroll tile loc
name&_TILE			DS	$02		; Scroll/coll tile
name&_SPRITE_BASE	DS	$01		; Base of frame in VRAM

		SCRIPT		name&_SCRIPT0
		SCRIPT		name&_SCRIPT1

name&_INTERRUPT		DS	$03		; Script used by interrupt?

		ENDM

;********************************
ACTOR_CLOSE			MACRO
		CALL		?ACTOR_CLOSE
		ENDM

;********************************
;	BC:		Address of actor data
ACTOR_OPEN			MACRO
		CALL		?ACTOR_OPEN
		ENDM

;********************************
	END
;********************************