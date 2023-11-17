;********************************
; SCRIPT_VAR.S
;********************************
;	Author: Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\ENGINE\SCRIPT\MODULES\TEXTBOX\TEXTBOX_VAR.S

;********************************
SCRIPT_DONE					DS		$01

;********************************
SCRIPT_SYNC_NEXT			DS		$01
SCRIPT_SYNC					DS		$01
SCRIPT_SYNC_COUNT			DS		$01

;********************************
SCRIPT_EVENTS
MASTER_EVENT_NEXT			DS		$01
MASTER_EVENT				DS		$01
SCROLL_EVENT_NEXT			DS		$01
SCROLL_EVENT				DS		$01
TEXT_EVENT_NEXT				DS		$01
TEXT_EVENT					DS		$01

;********************************
COPYTILES_SOURCE			DS		$02
COPYTILES_DEST				DS		$02
COPYTILES_YX
COPYTILES_Y					DS		$01
COPYTILES_X					DS		$01
COPYTILES_HEIGHT			DS		$01

;********************************
SCRIPT_SCENE_READY			DS		$01

;********************************
; SYSTEM SCRIPTS
;********************************
SCRIPT_RAM	SCRIPT	MASTER_SCRIPT
			SCRIPT	SCROLL_SCRIPT
			SCRIPT	SYSTEM_SCRIPT
			SCRIPT	TEXT_SCRIPT

;********************************
; BATTLE SCRIPT VARS
;********************************			
BTL_ANIM_DONE			DS		$01		;ANIM FLAG

;********************************
;OVERWORLD USE ITEM/SPELL VARS
;********************************	
SCRIPT_USED_TYPE		DS		$01
SCRIPT_USED_ID			DS		$01
SCRIPT_COLLISION_CODE	DS		$01

;********************************
;RINGSMITH VARS
;********************************	
SCRIPT_RINGMADE			DS		$01

;********************************
	END
;********************************