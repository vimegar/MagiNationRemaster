;********************************
; RELIC_TABLE.S
;********************************
;	Author:	Patrick Meehan/Dylan "YakimaIsASuburbOfSeattle" Mayo/Erik "TheManWhoLivesInTheBurbs" Hutchinson
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
;table interface functions
;********************************
;********************************
?INV_COPY_RELIC_ARRAY
	
	
	FGET16	B,C,INV_ADDR
	GET16	H,L,INV_OBJ_PTR
	LD		D,RELIC_SIZE
	
	
_RELUPE
	LD_BCI_HLI
	DEC			D
	JR	NZ,_RELUPE
	
	RET
	
;********************************
?INV_COPY_RELIC_INDEX
	
	LD		A,(INV_OBJ_INDEX)
	LD		C,A
	LD		B,RELIC_SIZE
	CALL	?MULT
	LD		BC,RELIC_TABLE
	ADD		HL,BC
	
	GET16	B,C,INV_ADDR
	LD		D,RELIC_SIZE
	
_RELUPE
	LD_BCI_HLI
	DEC			D
	JR	NZ,_RELUPE
	
	RET


RELIC_TABLE

;********************************************************************************************************************************

RELIC_BlANK_RELIC		RELIC_TEMPLATE1		RELIC_BLANK_RELIC,?RELIC_CMD_NOTHING,?RELIC_CMD_NOTHING,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_BLANKE_RELIC,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE		

RELIC_ARCHAIC_LEAF		RELIC_TEMPLATE1		RELIC_ARCHAIC_LEAF,?RELIC_CMD_NOTHING,?RELIC_CMD_ARCHAIC_LEAF,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_ARCHAIC_LEAF,?RELIC,?AU,?RL,?CL,?HL,?AL,?IL,?CL,?SPCE,?LU,?EL,?AL,?FL

RELIC_ARMOR_ORB			RELIC_TEMPLATE1		RELIC_ARMOR_ORB,?RELIC_CMD_NOTHING,?RELIC_CMD_ARMOR_ORB,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_ARMOR_ORB,?RELIC,?AU,?RL,?ML,?OL,?RL,?SPCE,?OU,?RL,?BL,?SPCE,?SPCE,?SPCE

RELIC_BAG_OF_BONES		RELIC_TEMPLATE1		RELIC_BAG_OF_BONES,?RELIC_CMD_NOTHING,?RELIC_CMD_BAG_OF_BONES,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_BAG_OF_BONES,?RELIC,?BU,?AL,?GL,?SPCE,?OL,?FL,?SPCE,?BU,?OL,?NL,?EL,?SL

RELIC_BARK_THIMBLE		RELIC_TEMPLATE1		RELIC_BARK_THIMBLE,?RELIC_CMD_NOTHING,?RELIC_CMD_BARK_THIMBLE,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_BARK_THIMBLE,?RELIC,?BU,?AL,?RL,?KL,?SPCE,?TU,?HL,?IL,?ML,?BL,?LL,?EL

RELIC_CHANNELEDGEM		RELIC_TEMPLATE1		RELIC_CHANNELEDGEM,?RELIC_CMD_NOTHING,?RELIC_CMD_CHANNELEDGEM,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_CHANNELEDGEM,?RELIC,?CU,?HL,?AL,?NL,?NL,?EL,?LL,?EL,?DL,?GU,?EL,?ML

RELIC_CORF_PEARL		RELIC_TEMPLATE1		RELIC_CORF_PEARL,?RELIC_CMD_NOTHING,?RELIC_CMD_CORF_PEARL,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_CORF_PEARL,?RELIC,?CU,?OL,?RL,?FL,?SPCE,?PU,?EL,?AL,?RL,?LL,?SPCE,?SPCE

RELIC_CRIMSON_VOID		RELIC_TEMPLATE1		RELIC_CRIMSON_VOID,?RELIC_CMD_NOTHING,?RELIC_CMD_CRIMSON_VOID,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_CRIMSON_VOID,?RELIC,?CU,?RL,?IL,?ML,?SL,?OL,?NL,?SPCE,?VU,?OL,?IL,?DL
						
RELIC_EARTH_S_AURA		RELIC_TEMPLATE1		RELIC_EARTH_S_AURA,?RELIC_CMD_NOTHING,?RELIC_CMD_EARTH_S_AURA,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_EARTH_S_AURA,?RELIC,?EU,?AL,?RL,?TL,?HL,?APST,?SL,?SPCE,?AU,?UL,?RL,?AL							

RELIC_END_BRINGER		RELIC_TEMPLATE1		RELIC_END_BRINGER,?RELIC_CMD_NOTHING,?RELIC_CMD_END_BRINGER,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_END_BRINGER,?RELIC,?EU,?NL,?DL,?SPCE,?BU,?RL,?IL,?NL,?GL,?EL,?RL,?SPCE
										
RELIC_ENERGY_GEM		RELIC_TEMPLATE1		RELIC_ENERGY_GEM,?RELIC_CMD_NOTHING,?RELIC_CMD_ENERGY_GEM,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_ENERGY_GEM,?RELIC,?EU,?NL,?EL,?RL,?GL,?YL,?SPCE,?GU,?EL,?ML,?SPCE,?SPCE

RELIC_FLAME_AURA		RELIC_TEMPLATE1		RELIC_FLAME_AURA,?RELIC_CMD_NOTHING,?RELIC_CMD_FLAME_AURA,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_FLAME_AURA,?RELIC,?FU,?LL,?AL,?ML,?EL,?SPCE,?AU,?UL,?RL,?AL,?SPCE,?SPCE

RELIC_FLAMEESSENCE		RELIC_TEMPLATE1		RELIC_FLAMEESSENCE,?RELIC_CMD_NOTHING,?RELIC_CMD_FLAMEESSENCE,?RELIC_CMD_FLAME_ESSENCE_EXTRA
						RELIC_TEMPLATE2		RELIC_FLAMEESSENCE,?RELIC,?FU,?LL,?AL,?ML,?EL,?EU,?SL,?SL,?EL,?NL,?CL,?EL
										
RELIC_GEMOFNAROOM		RELIC_TEMPLATE1		RELIC_GEMOFNAROOM,?RELIC_CMD_NOTHING,?RELIC_CMD_GEMOFNAROOM,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_GEMOFNAROOM,?RELIC,?GU,?EL,?ML,?OU,?FL,?NU,?AL,?RL,?OL,?OL,?ML,?SPCE

RELIC_GOLDENCLOVER		RELIC_TEMPLATE1		RELIC_GOLDENCLOVER,?RELIC_CMD_NOTHING,?RELIC_CMD_GOLDENCLOVER,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_GOLDENCLOVER,?RELIC,?GU,?OL,?LL,?DL,?EL,?NL,?CU,?LL,?OL,?VL,?EL,?RL

RELIC_GRAILOFLIFE		RELIC_TEMPLATE1		RELIC_GRAILOFLIFE,?RELIC_CMD_NOTHING,?RELIC_CMD_GRAILOFLIFE,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_GRAILOFLIFE,?RELIC,?GU,?RL,?AL,?IL,?LL,?OU,?FL,?LU,?IL,?FL,?EL,?SPCE

RELIC_HYREN_S_CLAW		RELIC_TEMPLATE1		RELIC_HYREN_S_CLAW,?RELIC_CMD_NOTHING,?RELIC_CMD_HYREN_S_CLAW,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_HYREN_S_CLAW,?RELIC,?HU,?YL,?RL,?EL,?NL,?APST,?SL,?SPCE,?CU,?LL,?AL,?WL

RELIC_LEAF_ESSENCE		RELIC_TEMPLATE1		RELIC_LEAF_ESSENCE,?RELIC_CMD_NOTHING,?RELIC_CMD_LEAF_ESSENCE,?RELIC_CMD_LEAF_ESSENCE_EXTRA
						RELIC_TEMPLATE2		RELIC_LEAF_ESSENCE,?RELIC,?LU,?EL,?AL,?FL,?SPCE,?EU,?SL,?SL,?EL,?NL,?CL,?EL	
																					
RELIC_LUCENT_BELT		RELIC_TEMPLATE1		RELIC_LUCENT_BELT,?RELIC_CMD_NOTHING,?RELIC_CMD_LUCENT_BELT,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_LUCENT_BELT,?RELIC,?LU,?UL,?CL,?EL,?NL,?TL,?SPCE,?BU,?EL,?LL,?TL,?SPCE

RELIC_MAELSTROM			RELIC_TEMPLATE1		RELIC_MAELSTROM,?RELIC_CMD_NOTHING,?RELIC_CMD_MAELSTROM,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_MAELSTROM,?RELIC,?MU,?AL,?EL,?LL,?SL,?TL,?RL,?OL,?ML,?SPCE,?SPCE,?SPCE
						
RELIC_OMBORSAMULET		RELIC_TEMPLATE1		RELIC_OMBORSAMULET,?RELIC_CMD_NOTHING,?RELIC_CMD_OMBORSAMULET,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_OMBORSAMULET,?RELIC,?OU,?ML,?BL,?OL,?RL,?SL,?AU,?ML,?UL,?LL,?EL,?TL

RELIC_PHANTOM_WIND		RELIC_TEMPLATE1		RELIC_PHANTOM_WIND,?RELIC_CMD_NOTHING,?RELIC_CMD_PHANTOM_WIND,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_PHANTOM_WIND,?RELIC,?PU,?HL,?AL,?NL,?TL,?OL,?ML,?SPCE,?WU,?IL,?NL,?DL

RELIC_PINCHOFLIFE		RELIC_TEMPLATE1		RELIC_PINCHOFLIFE,?RELIC_CMD_NOTHING,?RELIC_CMD_PINCHOFLIFE,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_PINCHOFLIFE,?RELIC,?PU,?IL,?NL,?CL,?HL,?OU,?FL,?LU,?IL,?FL,?EL,?SPCE

RELIC_RABBAGE_FOOT		RELIC_TEMPLATE1		RELIC_RABBAGE_FOOT,?RELIC_CMD_NOTHING,?RELIC_CMD_RABBAGE_FOOT,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_RABBAGE_FOOT,?RELIC,?RU,?AL,?BL,?BL,?AL,?GL,?EL,?SPCE,?FU,?OL,?OL,?TL

RELIC_RAGE_STONE		RELIC_TEMPLATE1		RELIC_RAGE_STONE,?RELIC_CMD_NOTHING,?RELIC_CMD_RAGE_STONE,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_RAGE_STONE,?RELIC,?RU,?AL,?GL,?EL,?SPCE,?SU,?TL,?OL,?NL,?EL,?SPCE,?SPCE

RELIC_SHADOW_VEIL		RELIC_TEMPLATE1		RELIC_SHADOW_VEIL,?RELIC_CMD_NOTHING,?RELIC_CMD_SHADOW_VEIL,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_SHADOW_VEIL,?RELIC,?SU,?HL,?AL,?DL,?OL,?WL,?SPCE,?VU,?EL,?IL,?LL,?SPCE

RELIC_SHIELD_ORB		RELIC_TEMPLATE1		RELIC_SHIELD_ORB,?RELIC_CMD_NOTHING,?RELIC_CMD_SHIELD_ORB,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_SHIELD_ORB,?RELIC,?SU,?HL,?IL,?EL,?LL,?DL,?SPCE,?OU,?RL,?BL,?SPCE,?SPCE

RELIC_SKY_ESSENCE		RELIC_TEMPLATE1		RELIC_SKY_ESSENCE,?RELIC_CMD_NOTHING,?RELIC_CMD_SKY_ESSENCE,?RELIC_CMD_SKY_ESSENCE_EXTRA
						RELIC_TEMPLATE2		RELIC_SKY_ESSENCE,?RELIC,?SU,?KL,?YL,?SPCE,?EU,?SL,?SL,?EL,?NL,?CL,?EL,?SPCE
															
RELIC_SPICEOFLIFE		RELIC_TEMPLATE1		RELIC_SPICEOFLIFE,?RELIC_CMD_NOTHING,?RELIC_CMD_SPICEOFLIFE,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_SPICEOFLIFE,?RELIC,?SU,?PL,?IL,?CL,?EL,?OU,?FL,?LU,?IL,?FL,?EL,?SPCE

RELIC_STONEESSENCE		RELIC_TEMPLATE1		RELIC_STONEESSENCE,?RELIC_CMD_NOTHING,?RELIC_CMD_STONEESSENCE,?RELIC_CMD_STONEESSENCE_EXTRA
						RELIC_TEMPLATE2		RELIC_STONEESSENCE,?RELIC,?SU,?TL,?OL,?NL,?EL,?EU,?SL,?SL,?EL,?NL,?CL,?EL				
				
RELIC_STONEOFDOOM		RELIC_TEMPLATE1		RELIC_STONEOFDOOM,?RELIC_CMD_NOTHING,?RELIC_CMD_STONEOFDOOM,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_STONEOFDOOM,?RELIC,?SU,?TL,?OL,?NL,?EL,?OU,?FL,?DU,?OL,?OL,?ML,?SPCE
						
RELIC_STONEOFLIFE		RELIC_TEMPLATE1		RELIC_STONEOFLIFE,?RELIC_CMD_NOTHING,?RELIC_CMD_STONEOFLIFE,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_STONEOFLIFE,?RELIC,?SU,?TL,?OL,?NL,?EL,?OU,?FL,?LU,?IL,?FL,?EL,?SPCE
				
RELIC_SWORDOFWIND		RELIC_TEMPLATE1		RELIC_SWORDOFWIND,?RELIC_CMD_NOTHING,?RELIC_CMD_SWORDOFWIND,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_SWORDOFWIND,?RELIC,?SU,?WL,?OL,?RL,?DL,?OU,?FL,?WU,?IL,?NL,?DL,?SPCE

RELIC_TIDE_ESSENCE		RELIC_TEMPLATE1		RELIC_TIDE_ESSENCE,?RELIC_CMD_NOTHING,?RELIC_CMD_TIDE_ESSENCE,?RELIC_CMD_TIDE_ESSENCE_EXTRA
						RELIC_TEMPLATE2		RELIC_TIDE_ESSENCE,?RELIC,?TU,?IL,?DL,?EL,?SPCE,?EU,?SL,?SL,?EL,?NL,?CL,?EL
								
RELIC_TITAN_RING		RELIC_TEMPLATE1		RELIC_TITAN_RING,?RELIC_CMD_NOTHING,?RELIC_CMD_TITAN_RING,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_TITAN_RING,?RELIC,?TU,?IL,?TL,?AL,?NL,?SPCE,?RU,?IL,?NL,?GL,?SPCE,?SPCE
					
RELIC_WATER_ORB			RELIC_TEMPLATE1		RELIC_WATER_ORB,?RELIC_CMD_NOTHING,?RELIC_CMD_WATER_ORB,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_WATER_ORB,?RELIC,?WU,?AL,?TL,?EL,?RL,?SPCE,?OU,?RL,?BL,?SPCE,?SPCE,?SPCE
						
RELIC_WISHBONE			RELIC_TEMPLATE1		RELIC_WISHBONE,?RELIC_CMD_NOTHING,?RELIC_CMD_WISHBONE,?RELIC_CMD_NOTHING
						RELIC_TEMPLATE2		RELIC_WISHBONE,?RELIC,?WU,?IL,?SL,?HL,?BL,?OL,?NL,?EL,?SPCE,?SPCE,?SPCE,?SPCE
					
;********************************
	END
;********************************
