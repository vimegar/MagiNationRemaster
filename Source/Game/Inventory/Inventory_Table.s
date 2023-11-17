;********************************
; INVENTORY_TABLE.S
;********************************
;	Author:	Patrick Meehan/Dylan "Marzipan Lathe" Mayo,Emory Georges
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
; INV_ID_TYPE:		Type of item
; INV_ID_TOTAL:		Quantity
; INV_ID:			Item ID
; DE:				Item ID
; INV_ID_SUCCESS:	<-- 1 if OK
INVENTORY_GIVE_FUNCS
	DEFW		?INV_GIVE_ITEM
	DEFW		?INV_GIVE_INFUSED
	DEFW		?INV_GIVE_RELIC
	DEFW		?INV_GIVE_SPELL
	DEFW		?INV_GIVE_ANIMITE
	DEFW		?INV_GIVE_HERO_ENERGY
	DEFW		?INV_GIVE_HERO_ENERGYMAX

;********************************
; INV_ID_TYPE:		Type of item
; INV_ID_TOTAL:		Quantity
; INV_ID:			Item ID
; DE:				Item ID
INVENTORY_TAKE_FUNCS
	DEFW		?INV_TAKE_ITEM
	DEFW		?INV_TAKE_INFUSED
	DEFW		?INV_TAKE_RELIC
	DEFW		?INV_TAKE_SPELL
	DEFW		?INV_TAKE_ANIMITE
	DEFW		?INV_GIVE_TAKE_IDLE
	DEFW		?INV_GIVE_TAKE_IDLE

;********************************
	END
;********************************
