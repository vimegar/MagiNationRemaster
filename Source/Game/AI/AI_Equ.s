;********************************
; AI_EQU.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000 Interactive Imagination
;	All rights reserved

;********************************
AI_BANK					EQU		$01

;********************************
HEROFLAGS_ACTIVE		EQU		$01
HEROFLAGS_ACTION		EQU		$02
HEROFLAGS_BOXXLE		EQU		$03

;********************************
HERO_ABILITY_NONE		EQU		$00
HERO_ABILITY_BOXXLE		EQU		$01
HERO_ABILITY_DIG		EQU		$02
HERO_ABILITY_LONGJUMP	EQU		$03
HERO_ABILITY_SWIM		EQU		$04
HERO_ABILITY_FLY		EQU		$05

;********************************
COLLCODE_SPACE			EQU		$00
COLLCODE_WATER			EQU		$01
COLLCODE_JUMP			EQU		$02
COLLCODE_WALL			EQU		$08
COLLCODE_BOXXLE			EQU		$09
COLLCODE_DIG			EQU		$0B
COLLCODE_BOXSPACE		EQU		$81
COLLCODE_ENCOUNTER		EQU		$82
COLLCODE_UPSTAIRS		EQU		$AC
COLLCODE_DOWNSTAIRS		EQU		$AD

;********************************
COLLCODE_MOVEU			EQU		$A0
COLLCODE_MOVEUR			EQU		$A1
COLLCODE_MOVER			EQU		$A2
COLLCODE_MOVEDR			EQU		$A3
COLLCODE_MOVED			EQU		$A4
COLLCODE_MOVEDL			EQU		$A5
COLLCODE_MOVEL			EQU		$A6
COLLCODE_MOVEUL			EQU		$A7

;********************************
COLLCODE_TR01			EQU		$40
COLLCODE_TR02			EQU		$41
COLLCODE_TR03			EQU		$42
COLLCODE_TR04			EQU		$43
COLLCODE_TR05			EQU		$44
COLLCODE_TR06			EQU		$45
COLLCODE_TR07			EQU		$46
COLLCODE_TR08			EQU		$47
COLLCODE_TR09			EQU		$48
COLLCODE_TR10			EQU		$49
COLLCODE_TR11			EQU		$4A
COLLCODE_TR12			EQU		$4B
COLLCODE_TR13			EQU		$4C
COLLCODE_TR14			EQU		$4D
COLLCODE_TR15			EQU		$4E
COLLCODE_TR16			EQU		$4F

;********************************
COLLCODE_ITEM01			EQU		$B0
COLLCODE_ITEM02			EQU		$B1
COLLCODE_ITEM03			EQU		$B2
COLLCODE_ITEM04			EQU		$B3
COLLCODE_ITEM05			EQU		$B4
COLLCODE_ITEM06			EQU		$B5
COLLCODE_ITEM07			EQU		$B6
COLLCODE_ITEM08			EQU		$B7
COLLCODE_ITEM09			EQU		$B8
COLLCODE_ITEM10			EQU		$B9
COLLCODE_ITEM11			EQU		$BA
COLLCODE_ITEM12			EQU		$BB
COLLCODE_ITEM13			EQU		$BC
COLLCODE_ITEM14			EQU		$BD
COLLCODE_ITEM15			EQU		$BE
COLLCODE_ITEM16			EQU		$BF

;********************************
COLLCODE_HS01			EQU		$C0
COLLCODE_HS02			EQU		$C1
COLLCODE_HS03			EQU		$C2
COLLCODE_HS04			EQU		$C3
COLLCODE_HS05			EQU		$C4
COLLCODE_HS06			EQU		$C5
COLLCODE_HS07			EQU		$C6
COLLCODE_HS08			EQU		$C7
COLLCODE_HS09			EQU		$C8
COLLCODE_HS10			EQU		$C9
COLLCODE_HS11			EQU		$CA
COLLCODE_HS12			EQU		$CB
COLLCODE_HS13			EQU		$CC
COLLCODE_HS14			EQU		$CD
COLLCODE_HS15			EQU		$CE
COLLCODE_HS16			EQU		$CF

;********************************
MAP_TILE_DUG			EQU		$FC
MAP_TILE_BLANK			EQU		$FD

;********************************
CAMERA_LEFT				EQU		$54
CAMERA_TOP				EQU		$58
CAMERA_RIGHT			EQU		$5C
CAMERA_BOTTOM			EQU		$60

;********************************
	END
;********************************