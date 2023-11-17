;********************************
; ITEM_TABLE.S
;********************************
;	Author:	Patrick Meehan/Dylan "YakimaIsASuburbOfSeattle" Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
;table interface functions
;********************************
;********************************
?INV_GET_ITEM_COST
	FGET16	B,C,INV_ADDR
	FGET16	H,L,INV_OBJ_PTR
	
	LD_BCI_HLI
	LD_BCI_HLI	 
	
	RET
	
;********************************
?INV_COPY_ITEM_ARRAY
?INV_COPY_SPELL_ARRAY
	
	FGET16	B,C,INV_ADDR
	FGET16	H,L,INV_OBJ_PTR
	LD		D,ITEM_SIZE
	
_RELUPE
	LD_BCI_HLI
	DEC			D
	JR	NZ,_RELUPE
	
	RET

	
;********************************
?INV_COPY_ITEM_INDEX
	
	LD		A,(INV_OBJ_INDEX)
	LD		C,A
	LD		B,ITEM_SIZE
	CALL	?MULT
	LD		BC,ITEM_TABLE
	ADD		HL,BC
	
	GET16	B,C,INV_ADDR
	LD		D,ITEM_SIZE
	
_RELUPE
	LD_BCI_HLI
	DEC			D
	JR	NZ,_RELUPE
	
	RET
	
;********************************
?INV_COPY_SPELL_INDEX
	
	LD		A,(INV_OBJ_INDEX)
	LD		C,A
	LD		B,ITEM_SIZE
	CALL	?MULT
	LD		BC,SPELL_TABLE
	ADD		HL,BC
	
	GET16	B,C,INV_ADDR
	LD		D,ITEM_SIZE
	
_RELUPE
	LD_BCI_HLI
	DEC			D
	JR	NZ,_RELUPE
	
	RET
	

;********************************

ITEM_TABLE


;0
ITEM_BLANK			ITEM_TEMPLATE1		ITEM_BLANK,$00,$00,$00,$00
					ITEM_TEMPLATE2		ITEM_BLANK,$00,$00,$00,$00
					ITEM_TEMPLATE3		ITEM_BLANK,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE		
					ITEM_TEMPLATE4		ITEM_BLANK,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE

;********************************************************************************************************************************																			
;1
ITEM_BALOO_LEAF		ITEM_TEMPLATE1		ITEM_BALOO_LEAF,?ITEM_CMD_BASIC_RAISE,ITEM_BASIC_ENERGY+10,BTL_TARGET_ANY,8
					ITEM_TEMPLATE2		ITEM_BALOO_LEAF,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,8
					ITEM_TEMPLATE3		ITEM_BALOO_LEAF,?LEAF,?BU,?AL,?LL,?OL,?OL,?SPCE,?LU,?EL,?AL,?FL,?SPCE,?SPCE
					ITEM_TEMPLATE4		ITEM_BALOO_LEAF,?_BTL_HEAL_MSG,?_ITEM_BALOO_LEAF,?_ATK_MELEE

;2					
ITEM_BALOO_SAP		ITEM_TEMPLATE1		ITEM_BALOO_SAP,?ITEM_CMD_BASIC_RAISE,ITEM_BASIC_ENERGY+30,BTL_TARGET_ANY,5
					ITEM_TEMPLATE2		ITEM_BALOO_SAP,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,18
					ITEM_TEMPLATE3		ITEM_BALOO_SAP,?POTION,?BU,?AL,?LL,?OL,?OL,?SPCE,?SU,?AL,?PL,?SPCE,?SPCE,?SPCE
					ITEM_TEMPLATE4		ITEM_BALOO_SAP,?_BTL_HEAL_MSG,?_ITEM_BALOO_SAP,?_ATK_MELEE

;3					
ITEM_BALOO_ROOT		ITEM_TEMPLATE1		ITEM_BALOO_ROOT,?ITEM_CMD_BASIC_RAISE,ITEM_BASIC_ENERGY+65,BTL_TARGET_ANY,5
					ITEM_TEMPLATE2		ITEM_BALOO_ROOT,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,30
					ITEM_TEMPLATE3		ITEM_BALOO_ROOT,?FROND,?BU,?AL,?LL,?OL,?OL,?SPCE,?RU,?OL,?OL,?TL,?SPCE,?SPCE
					ITEM_TEMPLATE4		ITEM_BALOO_ROOT,?_BTL_HEAL_MSG,?_ITEM_BALOO_ROOT,?_ATK_MELEE

;********************************************************************************************************************************																			
;4
ITEM_3_HEADEDCOIN		ITEM_TEMPLATE1		ITEM_3_HEADEDCOIN,?ITEM_CMD_BASIC_RAISE_PERM,ITEM_BASIC_LUCK+1,BTL_TARGET_ANYCREATURE,20
						ITEM_TEMPLATE2		ITEM_3_HEADEDCOIN,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,5
						ITEM_TEMPLATE3		ITEM_3_HEADEDCOIN,?FLOWER,?3,?DASH,?HU,?EL,?AL,?DL,?EL,?DL,?CU,?OL,?IL,?NL
						ITEM_TEMPLATE4		ITEM_3_HEADEDCOIN,?_BTL_LUCK_UP,?ZERO,?_ATK_MELEE

;5
ITEM_BALANCESCALE		ITEM_TEMPLATE1		ITEM_BALANCESCALE,?ITEM_CMD_BASIC_LOWER_PERM,ITEM_BASIC_LUCK+1,BTL_TARGET_ANYCREATURE,20
						ITEM_TEMPLATE2		ITEM_BALANCESCALE,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,5
						ITEM_TEMPLATE3		ITEM_BALANCESCALE,?FLOWER,?BU,?AL,?LL,?AL,?NL,?CL,?EL,?SU,?CL,?AL,?LL,?EL
						ITEM_TEMPLATE4		ITEM_BALANCESCALE,?_BTL_LUCK_DOWN,?ZERO,?_ATK_MELEE
						
ITEM_BUCKETOPINK		ITEM_TEMPLATE1		ITEM_BUCKETOPINK,?ITEM_CMD_BASIC_LOWER_PERM,ITEM_BASIC_LUCK+10,BTL_TARGET_ANYCREATURE,20
						ITEM_TEMPLATE2		ITEM_BUCKETOPINK,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,5
						ITEM_TEMPLATE3		ITEM_BUCKETOPINK,?BU,?UL,?CL,?KL,?EL,?TL,?SPCE,?OU,?APST,?PL,?IL,?NL,?KL
						ITEM_TEMPLATE4		ITEM_BUCKETOPINK,?_BTL_LUCK_UP,?ZERO,?_ATK_MELEE

;5
ITEM_PLOD_SPNEW			ITEM_TEMPLATE1		ITEM_PLOD_SPNEW,?ITEM_CMD_BASIC_RAISE_PERM,ITEM_BASIC_LUCK+10,BTL_TARGET_ANYCREATURE,20
						ITEM_TEMPLATE2		ITEM_PLOD_SPNEW,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,5
						ITEM_TEMPLATE3		ITEM_PLOD_SPNEW,?MUSHROOM,?PU,?LL,?OL,?DL,?SPCE,?SU,?PL,?NL,?EL,?WL,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_PLOD_SPNEW,?_BTL_LUCK_DOWN,?ZERO,?_ATK_MELEE

;********************************************************************************************************************************																			
;6
ITEM_HASTE_GEM			ITEM_TEMPLATE1		ITEM_HASTE_GEM,?ITEM_CMD_BASIC_RAISE,ITEM_BASIC_SPEED+5,BTL_TARGET_ANYCREATURE,20	;no max listed
						ITEM_TEMPLATE2		ITEM_HASTE_GEM,BTL_CMD_RATING_HEAL4,$00,USE_BATTLE,18
						ITEM_TEMPLATE3		ITEM_HASTE_GEM,?EGG,?HU,?AL,?SL,?TL,?EL,?SPCE,?GU,?EL,?ML,?SPCE,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_HASTE_GEM,?_BTL_RAISE_SPEED_MSG,?ZERO,?_ATK_MELEE

;7
ITEM_GUARD_GEM			ITEM_TEMPLATE1		ITEM_GUARD_GEM,?ITEM_CMD_BASIC_RAISE,ITEM_BASIC_DEFENSE+5,BTL_TARGET_ANYCREATURE,20	;no max listed
						ITEM_TEMPLATE2		ITEM_GUARD_GEM,BTL_CMD_RATING_HEAL4,$00,USE_BATTLE,18
						ITEM_TEMPLATE3		ITEM_GUARD_GEM,?EGG,?GU,?UL,?AL,?RL,?DL,?SPCE,?GU,?EL,?ML,?SPCE,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_GUARD_GEM,?_BTL_RAISE_DEF_MSG,?ZERO,?_ATK_MELEE

;8
ITEM_POWER_GEM			ITEM_TEMPLATE1		ITEM_POWER_GEM,?ITEM_CMD_BASIC_RAISE,ITEM_BASIC_SKILL+5,BTL_TARGET_ANYCREATURE,20	;no max listed
						ITEM_TEMPLATE2		ITEM_POWER_GEM,BTL_CMD_RATING_HEAL4,$00,USE_BATTLE,18
						ITEM_TEMPLATE3		ITEM_POWER_GEM,?EGG,?PU,?OL,?WL,?EL,?RL,?SPCE,?GU,?EL,?ML,?SPCE,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_POWER_GEM,?_BTL_RAISE_SKILL_MSG,?ZERO,?_ATK_MELEE

;9
ITEM_STRENGTH_GEM		ITEM_TEMPLATE1		ITEM_STRENGTH_GEM,?ITEM_CMD_BASIC_RAISE,ITEM_BASIC_STRENGTH+5,BTL_TARGET_ANYCREATURE,20	;no max listed
						ITEM_TEMPLATE2		ITEM_STRENGTH_GEM,BTL_CMD_RATING_HEAL4,$00,USE_BATTLE,18
						ITEM_TEMPLATE3		ITEM_STRENGTH_GEM,?EGG,?SU,?TL,?RL,?EL,?NL,?GL,?TL,?HL,?SPCE,?GU,?EL,?ML
						ITEM_TEMPLATE4		ITEM_STRENGTH_GEM,?_BTL_RAISE_STR_MSG,?ZERO,?_ATK_MELEE

;A
ITEM_DEFLECT_GEM		ITEM_TEMPLATE1		ITEM_DEFLECT_GEM,?ITEM_CMD_BASIC_RAISE,ITEM_BASIC_RESIST+5,BTL_TARGET_ANYCREATURE,20	;no max listed
						ITEM_TEMPLATE2		ITEM_DEFLECT_GEM,BTL_CMD_RATING_HEAL4,$00,USE_BATTLE,18
						ITEM_TEMPLATE3		ITEM_DEFLECT_GEM,?EGG,?DU,?EL,?FL,?LL,?EL,?CL,?TL,?SPCE,?GU,?EL,?ML,?SPCE
						ITEM_TEMPLATE4		ITEM_DEFLECT_GEM,?_BTL_RAISE_RES_MSG,?ZERO,?_ATK_MELEE

;B
ITEM_REMEDY_DRINK		ITEM_TEMPLATE1		ITEM_REMEDY_DRINK,?ITEM_CMD_CURE_STATUS_ALL,$FF,BTL_TARGET_ANYCREATURE,20	;no max listed
						ITEM_TEMPLATE2		ITEM_REMEDY_DRINK,BTL_CMD_RATING_HEAL4,$00,USE_BATTLE,10
						ITEM_TEMPLATE3		ITEM_REMEDY_DRINK,?POTION,?RU,?EL,?ML,?EL,?DL,?YL,?SPCE,?DU,?RL,?IL,?NL,?KL
						ITEM_TEMPLATE4		ITEM_REMEDY_DRINK,?_BTL_STATUS_ALL_GONE,?ZERO,?_ATK_MELEE

;C
ITEM_CRESCENT_GEM		ITEM_TEMPLATE1		ITEM_CRESCENT_GEM,?ITEM_CMD_SHIFT_LEFT_STAT_BYTE,?ITEM_CMD_SHIFT_LEFT_STAT_BYTE,BTL_TARGET_ANYCREATURE,20	;no max listed
						ITEM_TEMPLATE2		ITEM_CRESCENT_GEM,BTL_CMD_RATING_HEAL4,$00,USE_BATTLE,18
						ITEM_TEMPLATE3		ITEM_CRESCENT_GEM,?EGG,?CU,?RL,?EL,?SL,?CL,?EL,?NL,?TL,?SPCE,?GU,?EL,?ML
						ITEM_TEMPLATE4		ITEM_CRESCENT_GEM,?_BTL_STATUS_ROTATE,?ZERO,?_ATK_MELEE

;D
ITEM_GIBBOUS_GEM		ITEM_TEMPLATE1		ITEM_GIBBOUS_GEM,?ITEM_CMD_SHIFT_RIGHT_STAT_BYTE,?ITEM_CMD_SHIFT_RIGHT_STAT_BYTE,BTL_TARGET_ANYCREATURE,20	;no max listed
						ITEM_TEMPLATE2		ITEM_GIBBOUS_GEM,BTL_CMD_RATING_HEAL4,$00,USE_BATTLE,18
						ITEM_TEMPLATE3		ITEM_GIBBOUS_GEM,?EGG,?GU,?IL,?BL,?BL,?OL,?UL,?SL,?SPCE,?GU,?EL,?ML,?SPCE
						ITEM_TEMPLATE4		ITEM_GIBBOUS_GEM,?_BTL_STATUS_ROTATE,?ZERO,?_ATK_MELEE

;********************************************************************************************************************************																			
;E
ITEM_RUNEOFMIGHT		ITEM_TEMPLATE1		ITEM_RUNEOFMIGHT,?ITEM_CMD_BASIC_RAISE_PERM,ITEM_BASIC_STRENGTH+2,BTL_TARGET_ANYCREATURE,20	; no max listed
						ITEM_TEMPLATE2		ITEM_RUNEOFMIGHT,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,15
						ITEM_TEMPLATE3		ITEM_RUNEOFMIGHT,?BOOK,?RU,?UL,?NL,?EL,?OU,?FL,?MU,?IL,?GL,?HL,?TL,?SPCE
						ITEM_TEMPLATE4		ITEM_RUNEOFMIGHT,?_BTL_RAISE_STR_PERM_MSG,?ZERO,?_ATK_MELEE

;F
ITEM_RUNEOFHOPE			ITEM_TEMPLATE1		ITEM_RUNEOFHOPE,?ITEM_CMD_BASIC_RAISE_PERM,ITEM_BASIC_DEFENSE+2,BTL_TARGET_ANYCREATURE,20	; no max listed
						ITEM_TEMPLATE2		ITEM_RUNEOFHOPE,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,15
						ITEM_TEMPLATE3		ITEM_RUNEOFHOPE,?BOOK,?RU,?UL,?NL,?EL,?OU,?FL,?HU,?OL,?PL,?EL,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_RUNEOFHOPE,?_BTL_RAISE_DEF_PERM_MSG,?ZERO,?_ATK_MELEE
														
;10
ITEM_RUNEOFPOWER		ITEM_TEMPLATE1		ITEM_RUNEOFPOWER,?ITEM_CMD_BASIC_RAISE_PERM,ITEM_BASIC_SKILL+2,BTL_TARGET_ANYCREATURE,20	;no max listed
						ITEM_TEMPLATE2		ITEM_RUNEOFPOWER,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,15
						ITEM_TEMPLATE3		ITEM_RUNEOFPOWER,?BOOK,?RU,?UL,?NL,?EL,?OU,?FL,?PU,?OL,?WL,?EL,?RL,?SPCE
						ITEM_TEMPLATE4		ITEM_RUNEOFPOWER,?_BTL_RAISE_SKILL_PERM_MSG,?ZERO,?_ATK_MELEE
						
;11
ITEM_RUNEOFWILL			ITEM_TEMPLATE1		ITEM_RUNEOFWILL,?ITEM_CMD_BASIC_RAISE_PERM,ITEM_BASIC_RESIST+2,BTL_TARGET_ANYCREATURE,20	;no max listed
						ITEM_TEMPLATE2		ITEM_RUNEOFWILL,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,15
						ITEM_TEMPLATE3		ITEM_RUNEOFWILL,?BOOK,?RU,?UL,?NL,?EL,?OU,?FL,?WU,?IL,?LL,?LL,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_RUNEOFWILL,?_BTL_RAISE_RES_PERM_MSG,?ZERO,?_ATK_MELEE
						
;12
ITEM_RUNEOFFURY			ITEM_TEMPLATE1		ITEM_RUNEOFFURY,?ITEM_CMD_BASIC_RAISE_PERM,ITEM_BASIC_SPEED+2,BTL_TARGET_ANYCREATURE,20	;no max listed
						ITEM_TEMPLATE2		ITEM_RUNEOFFURY,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,15
						ITEM_TEMPLATE3		ITEM_RUNEOFFURY,?BOOK,?RU,?UL,?NL,?EL,?OU,?FL,?FU,?UL,?RL,?YL,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_RUNEOFFURY,?_BTL_RAISE_SPEED_PERM_MSG,?ZERO,?_ATK_MELEE
						
;13
ITEM_MASTER_RUNE		ITEM_TEMPLATE1		ITEM_MASTER_RUNE,?ITEM_CMD_PERM_ALL_INCREASE,?ITEM_CMD_PERM_ALL_INCREASE,BTL_TARGET_ANYCREATURE,20	;no max listed
						ITEM_TEMPLATE2		ITEM_MASTER_RUNE,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,30
						ITEM_TEMPLATE3		ITEM_MASTER_RUNE,?BOOK,?MU,?AL,?SL,?TL,?EL,?RL,?SPCE,?RU,?UL,?NL,?EL,?SPCE
						ITEM_TEMPLATE4		ITEM_MASTER_RUNE,?_BTL_RAISE_ALL_PERM_MSG,?ZERO,?_ATK_MELEE

;********************************************************************************************************************************																			
;14
ITEM_KARMIC_MIGHT		ITEM_TEMPLATE1		ITEM_KARMIC_MIGHT,?ITEM_CMD_KARMIC_RAISE,ITEM_BASIC_STRENGTH+3,BTL_TARGET_ANYCREATURE,20	; no max listed
						ITEM_TEMPLATE2		ITEM_KARMIC_MIGHT,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,15
						ITEM_TEMPLATE3		ITEM_KARMIC_MIGHT,?BOOK,?KU,?AL,?RL,?ML,?IL,?CL,?SPCE,?MU,?IL,?GL,?HL,?TL
						ITEM_TEMPLATE4		ITEM_KARMIC_MIGHT,?_BTL_KARMIC_RAISE_STR_MSG,?ZERO,?_ATK_MELEE
						
;15
ITEM_KARMIC_HOPE		ITEM_TEMPLATE1		ITEM_KARMIC_HOPE,?ITEM_CMD_KARMIC_RAISE,ITEM_BASIC_DEFENSE+3,BTL_TARGET_ANYCREATURE,20	; no max listed
						ITEM_TEMPLATE2		ITEM_KARMIC_HOPE,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,15
						ITEM_TEMPLATE3		ITEM_KARMIC_HOPE,?BOOK,?KU,?AL,?RL,?ML,?IL,?CL,?SPCE,?HU,?OL,?PL,?EL,?SPCE					
						ITEM_TEMPLATE4		ITEM_KARMIC_HOPE,?_BTL_KARMIC_RAISE_DEF_MSG,?ZERO,?_ATK_MELEE

;16
ITEM_KARMIC_POWER		ITEM_TEMPLATE1		ITEM_KARMIC_POWER,?ITEM_CMD_KARMIC_RAISE,ITEM_BASIC_SKILL+3,BTL_TARGET_ANYCREATURE,20	; no max listed
						ITEM_TEMPLATE2		ITEM_KARMIC_POWER,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,15
						ITEM_TEMPLATE3		ITEM_KARMIC_POWER,?BOOK,?KU,?AL,?RL,?ML,?IL,?CL,?SPCE,?PU,?OL,?WL,?EL,?RL
						ITEM_TEMPLATE4		ITEM_KARMIC_POWER,?_BTL_KARMIC_RAISE_ATK_MSG,?ZERO,?_ATK_MELEE
						
;17
ITEM_KARMIC_WILL		ITEM_TEMPLATE1		ITEM_KARMIC_WILL,?ITEM_CMD_KARMIC_RAISE,ITEM_BASIC_RESIST+3,BTL_TARGET_ANYCREATURE,20	; no max listed
						ITEM_TEMPLATE2		ITEM_KARMIC_WILL,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,15
						ITEM_TEMPLATE3		ITEM_KARMIC_WILL,?BOOK,?KU,?AL,?RL,?ML,?IL,?CL,?SPCE,?WU,?IL,?LL,?LL,?SPCE						
						ITEM_TEMPLATE4		ITEM_KARMIC_WILL,?_BTL_KARMIC_RAISE_RES_MSG,?ZERO,?_ATK_MELEE
						
;18
ITEM_KARMIC_FURY		ITEM_TEMPLATE1		ITEM_KARMIC_FURY,?ITEM_CMD_KARMIC_RAISE,ITEM_BASIC_SPEED+3,BTL_TARGET_ANYCREATURE,20	; no max listed
						ITEM_TEMPLATE2		ITEM_KARMIC_FURY,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,15
						ITEM_TEMPLATE3		ITEM_KARMIC_FURY,?BOOK,?KU,?AL,?RL,?ML,?IL,?CL,?SPCE,?FU,?UL,?RL,?YL,?SPCE						
						ITEM_TEMPLATE4		ITEM_KARMIC_FURY,?_BTL_KARMIC_RAISE_SPEED_MSG,?ZERO,?_ATK_MELEE
						
;********************************************************************************************************************************										
;19	
ITEM_CLOUD_FROND		ITEM_TEMPLATE1		ITEM_CLOUD_FROND,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANY,1
						ITEM_TEMPLATE2		ITEM_CLOUD_FROND,BTL_CMD_RATING_HEAL4,$00,USE_EITHER,200
						ITEM_TEMPLATE3		ITEM_CLOUD_FROND,?FROND,?CU,?LL,?OL,?UL,?DL,?SPCE,?FU,?RL,?OL,?NL,?DL,?SPCE		
						ITEM_TEMPLATE4		ITEM_CLOUD_FROND,?_BTL_FULL_HEAL_MSG,?ZERO,?_ATK_MELEE
	
;1A
ITEM_SHADOW_KEY			ITEM_TEMPLATE1		ITEM_SHADOW_KEY,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_SHADOW_KEY,BTL_CMD_RATING_HEAL4,$00,USE_MAP,5
						ITEM_TEMPLATE3		ITEM_SHADOW_KEY,?KEY,?SU,?HL,?AL,?DL,?OL,?WL,?SPCE,?KU,?EL,?YL,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_SHADOW_KEY,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE
		
;1B
ITEM_ASHGARS_KEY		ITEM_TEMPLATE1		ITEM_ASHGARS_KEY,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_ASHGARS_KEY,BTL_CMD_RATING_HEAL4,$00,USE_MAP,0
						ITEM_TEMPLATE3		ITEM_ASHGARS_KEY,?KEY,?AU,?SL,?HL,?GL,?AL,?RL,?APST,?SL,?SPCE,?KU,?EL,?YL
						ITEM_TEMPLATE4		ITEM_ASHGARS_KEY,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE
						
;1C
ITEM_BLUS_HORN			ITEM_TEMPLATE1		ITEM_BLUS_HORN,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_BLUS_HORN,BTL_CMD_RATING_HEAL4,$00,USE_MAP,0
						ITEM_TEMPLATE3		ITEM_BLUS_HORN,?BU,?LL,?UL,?APST,?SL,?SPCE,?HU,?OL,?RL,?NL,?SPCE,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_BLUS_HORN,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE
						
;1D
ITEM_WENCES_ARROW		ITEM_TEMPLATE1		ITEM_WENCES_ARROW,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_WENCES_ARROW,BTL_CMD_RATING_HEAL4,$00,USE_MAP,0
						ITEM_TEMPLATE3		ITEM_WENCES_ARROW,?WU,?EL,?NL,?CL,?EL,?APST,?SL,?SPCE,?AU,?RL,?RL,?OL,?WL
						ITEM_TEMPLATE4		ITEM_WENCES_ARROW,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE
						
;1E
ITEM_FEATHER			ITEM_TEMPLATE1		ITEM_FEATHER,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_FEATHER,BTL_CMD_RATING_HEAL4,$00,USE_MAP,0
						ITEM_TEMPLATE3		ITEM_FEATHER,?FU,?EL,?AL,?TL,?HL,?EL,?RL,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_FEATHER,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE
						
;1F
ITEM_STAR_KEY			ITEM_TEMPLATE1		ITEM_STAR_KEY,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_STAR_KEY,BTL_CMD_RATING_HEAL4,$00,USE_MAP,5
						ITEM_TEMPLATE3		ITEM_STAR_KEY,?KEY,?SU,?TL,?AL,?RL,?SPCE,?KU,?EL,?YL,?SPCE,?SPCE,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_STAR_KEY,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE
						
;20
ITEM_BLURRY_SCROLL		ITEM_TEMPLATE1		ITEM_BLURRY_SCROLL,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_BLURRY_SCROLL,BTL_CMD_RATING_HEAL4,$00,USE_MAP,0
						ITEM_TEMPLATE3		ITEM_BLURRY_SCROLL,?SCROLL,?BU,?LL,?UL,?RL,?RL,?YL,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_BLURRY_SCROLL,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE		
		
;21
ITEM_WATER_OF_LIFE		ITEM_TEMPLATE1		ITEM_WATER_OF_LIFE,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_WATER_OF_LIFE,BTL_CMD_RATING_HEAL4,00,USE_MAP,100
						ITEM_TEMPLATE3		ITEM_WATER_OF_LIFE,?WU,?AL,?TL,?EL,?RL,?SPCE,?OL,?FL,?SPCE,?LU,?IL,?FL,?EL
						ITEM_TEMPLATE4		ITEM_WATER_OF_LIFE,?_BTL_EMPTY_MSG,?_ITEM_WATER_OF_LIFE,?_ATK_MELEE	
		
;22
ITEM_SCREWDRIVER		ITEM_TEMPLATE1		ITEM_SCREWDRIVER,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_SCREWDRIVER,BTL_CMD_RATING_HEAL4,$00,USE_MAP,5
						ITEM_TEMPLATE3		ITEM_SCREWDRIVER,?KEY,?SU,?CL,?RL,?EL,?WL,?DL,?RL,?IL,?VL,?EL,?RL,?SPCE
						ITEM_TEMPLATE4		ITEM_SCREWDRIVER,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE

;23
ITEM_SPECIMEN_JAR		ITEM_TEMPLATE1		ITEM_SPECIMEN_JAR,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_SPECIMEN_JAR,BTL_CMD_RATING_HEAL4,$00,USE_MAP,0
						ITEM_TEMPLATE3		ITEM_SPECIMEN_JAR,?JAR,?SU,?PL,?EL,?CL,?IL,?ML,?EL,?NL,?SPCE,?JU,?AL,?RL
						ITEM_TEMPLATE4		ITEM_SPECIMEN_JAR,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE

;24
ITEM_FUNGUS				ITEM_TEMPLATE1		ITEM_FUNGUS,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_FUNGUS,BTL_CMD_RATING_HEAL4,$00,USE_MAP,5
						ITEM_TEMPLATE3		ITEM_FUNGUS,?JU,?AL,?RL,?OU,?FL,?FU,?UL,?NL,?GL,?UL,?SL,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_FUNGUS,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE
;25
ITEM_ALGAE				ITEM_TEMPLATE1		ITEM_ALGAE,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_ALGAE,BTL_CMD_RATING_HEAL4,$00,USE_MAP,5
						ITEM_TEMPLATE3		ITEM_ALGAE,?AU,?LL,?GL,?AL,?EL,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_ALGAE,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE
;26
ITEM_FUNGICIDE			ITEM_TEMPLATE1		ITEM_FUNGICIDE,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_FUNGICIDE,BTL_CMD_RATING_HEAL4,$00,USE_MAP,5
						ITEM_TEMPLATE3		ITEM_FUNGICIDE,?FU,?UL,?NL,?GL,?IL,?CL,?IL,?DL,?EL,?SPCE,?SPCE,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_FUNGICIDE,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE
;27
ITEM_HOLLOW_STOOL		ITEM_TEMPLATE1		ITEM_HOLLOW_STOOL,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_HOLLOW_STOOL,BTL_CMD_RATING_HEAL4,$00,USE_MAP,0
						ITEM_TEMPLATE3		ITEM_HOLLOW_STOOL,?STOOL,?HU,?OL,?LL,?LL,?OL,?WL,?SPCE,?SU,?TL,?OL,?OL,?LL
						ITEM_TEMPLATE4		ITEM_HOLLOW_STOOL,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE
;28
ITEM_BLAST_URN			ITEM_TEMPLATE1		ITEM_BOOM_FROND,?SPELL_CMD_DIRECT_DAMAGE,$0A,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_BOOM_FROND,BTL_CMD_RATING_ATK4,$00,USE_EITHER,5
						ITEM_TEMPLATE3		ITEM_BOOM_FROND,?BU,?LL,?AL,?SL,?TL,?SPCE,?UU,?RL,?NL,?SPCE,?SPCE,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_BOOM_FROND,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE
;29
ITEM_TICKET				ITEM_TEMPLATE1		ITEM_TICKET,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_TICKET,BTL_CMD_RATING_HEAL4,$00,USE_MAP,1
						ITEM_TEMPLATE3		ITEM_TICKET,?TU,?IL,?CL,?KL,?EL,?TL,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_TICKET,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE
;2A
ITEM_BIRD_SEED			ITEM_TEMPLATE1		ITEM_BIRD_SEED,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_BIRD_SEED,BTL_CMD_RATING_HEAL4,$00,USE_MAP,1
						ITEM_TEMPLATE3		ITEM_BIRD_SEED,?BU,?IL,?RL,?DL,?SPCE,?SU,?EL,?EL,?DL,?SPCE,?SPCE,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_BIRD_SEED,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE
;2B
ITEM_ELDRITCH_AWL		ITEM_TEMPLATE1		ITEM_ELDRITCH_AWL,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_ELDRITCH_AWL,BTL_CMD_RATING_HEAL4,$00,USE_MAP,0
						ITEM_TEMPLATE3		ITEM_ELDRITCH_AWL,?EU,?LL,?DL,?RL,?IL,?TL,?CL,?HL,?SPCE,?AU,?WL,?LL,?SPCE
						ITEM_TEMPLATE4		ITEM_ELDRITCH_AWL,?_BTL_EMPTY_MSG,?_ITEM_ELDRITCH_AWL,?_ATK_MELEE
;2C
ITEM_ORNATE_AWL			ITEM_TEMPLATE1		ITEM_ORNATE_AWL,?ITEM_CMD_FULL_HEAL,?ITEM_CMD_FULL_HEAL,BTL_TARGET_ANYCREATURE,$FF
						ITEM_TEMPLATE2		ITEM_ORNATE_AWL,BTL_CMD_RATING_HEAL4,$00,USE_MAP,0
						ITEM_TEMPLATE3		ITEM_ORNATE_AWL,?OU,?RL,?NL,?AL,?TL,?EL,?SPCE,?AU,?WL,?LL,?SPCE,?SPCE,?SPCE
						ITEM_TEMPLATE4		ITEM_ORNATE_AWL,?_BTL_EMPTY_MSG,?ZERO,?_ATK_MELEE
		
BTL_STAT_LBLS
	DB		"Strength"
	DB		"Skill   "
	DB		"Speed   "
	DB		"Defense "
	DB		"Resist  "
	DB 		"Luck    "
	
BTL_STATUS_LBLS
	DB		"Plague   "				
	DB		"Stone    "				
	DB		"Hiccups  "				
	DB		"Eruption "
	DB		"Hidden   "
	DB		"Mirror   "
	DB		"Confusion"
	DB		"Diversion"
;********************************
	END
;********************************