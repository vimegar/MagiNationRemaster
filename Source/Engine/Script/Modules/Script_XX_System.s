;********************************
; SCRIPT_XX_SYSTEM.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
?CMD_NEWGAME_XX

	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON

	LD					HL,XRAM_CLEAR_NEWGAME
	LD					BC,(XRAM_CLEAR_END-XRAM_CLEAR_NEWGAME)&$FFFF
	LD					E,$00

	CALL				?MEM_SET
	MEM_SET				XRAM_INVENTORY_RINGS,$000A,$FF
	
	BATTERY_SET_BANK	RAMB_CREATURES

	MEM_SET				CREATURE00,XRAM_RINGBANK_SIZE*CREATURE_XRAM_SIZE,$FF

	BATTERY_OFF

	CALL_FOREIGN		?BATTLE_XRAM_SETUP

	RET

;********************************
?CMD_NEWGAMEPLUS_XX

	BATTERY_SET_BANK	RAMB_GAMESTATE
	BATTERY_ON

	LD					HL,XRAM_CLEAR_NEWGAMEPLUS
	LD					BC,(XRAM_CLEAR_END-XRAM_CLEAR_NEWGAMEPLUS)&$FFFF
	LD					E,$00

	CALL				?MEM_SET

	BATTERY_OFF
	RET

;********************************
	END
;********************************