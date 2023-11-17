;********************************
; ACTOR_EQU.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
	LIB		SOURCE\ENGINE\ACTOR\LIST\ACTORLIST_EQU.S

;********************************
ACTOR_FACING_UP				EQU		$00
ACTOR_FACING_LEFT			EQU		$01
ACTOR_FACING_RIGHT			EQU		$02
ACTOR_FACING_DOWN			EQU		$03

;********************************
ACTOR_FLAGS_COLL			EQU		$05
ACTOR_FLAGS_ACTIVE			EQU		$06
ACTOR_FLAGS_STOP			EQU		$07

;********************************
ACTOR_FLAGS_INITVAL			EQU		%10000000
ACTOR_FLAGS_STARTVAL		EQU		%01000000

;********************************
ACTOR_STRUCT_FLAGS			EQU		$00
ACTOR_STRUCT_STATE			EQU		$01
ACTOR_STRUCT_XOFF			EQU		$03
ACTOR_STRUCT_YOFF			EQU		$04
ACTOR_STRUCT_XTILE			EQU		$05
ACTOR_STRUCT_YTILE			EQU		$06
ACTOR_STRUCT_TILE			EQU		$07
ACTOR_STRUCT_VRAM			EQU		$09
ACTOR_STRUCT_SCRIPT0		EQU		$0A
ACTOR_STRUCT_SCRIPT1		EQU		ACTOR_STRUCT_SCRIPT0+SCRIPT_STRUCT_SIZE
ACTOR_STRUCT_INTERRUPT		EQU		ACTOR_STRUCT_SCRIPT1+SCRIPT_STRUCT_SIZE
ACTOR_STRUCT_SIZE			EQU		ACTOR_STRUCT_INTERRUPT+$03

;********************************
ACTOR_CAST_TOTAL			EQU		$31

;********************************
	END
;********************************