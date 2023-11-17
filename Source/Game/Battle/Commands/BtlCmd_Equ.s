;********************************
; BTLCMD_EQU.S
;********************************
;	Author:	Patrick Meehan/Dylan "IWillUseCCFBeforeYou" Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
BTL_ATK_STANDARD		EQU		00
BTL_CMD_SUMMON			EQU		01
BTL_CMD_SUMMON_MAGI		EQU		02
BTL_CMD_ITEM			EQU		03
BTL_CMD_RUN				EQU		04
BTL_CMD_SPELL			EQU		05
BTL_CMD_FOCUS			EQU		06

BTL_ATK_BARRAGE			EQU		07
BTL_ATK_BEAM			EQU		08
BTL_ATK_BITE			EQU		09
BTL_ATK_BLAST			EQU		10
BTL_ATK_BLAZE			EQU		11
BTL_ATK_BOOST			EQU		12
BTL_ATK_BRAMBLE			EQU		13
BTL_ATK_BURROW			EQU		14
BTL_ATK_CARNAGE			EQU		15
BTL_ATK_CHARGE			EQU		16
BTL_ATK_CHOKE			EQU		17
BTL_ATK_CLAW			EQU		18
BTL_ATK_COIL			EQU		19
BTL_ATK_CONSUME			EQU		20
BTL_ATK_CRACK			EQU		21
BTL_ATK_CREMATE			EQU		22
BTL_ATK_CRUMBLE			EQU		23
BTL_ATK_CRUSH			EQU		24
BTL_ATK_CURSE			EQU		25
BTL_ATK_CUTE			EQU		26
BTL_ATK_CYCLONE			EQU		27
BTL_ATK_DEVOUR			EQU		28
BTL_ATK_DREAM			EQU		29
BTL_ATK_DROWN			EQU		30
BTL_ATK_FANG			EQU		31
BTL_ATK_FLAME			EQU		32
BTL_ATK_FLASH			EQU		33
BTL_ATK_FLOCK			EQU		34
BTL_ATK_FORTUNE			EQU		35
BTL_ATK_FRENZY			EQU		36
BTL_ATK_GALE			EQU		37
BTL_ATK_GOO				EQU		38
BTL_ATK_GRAVITY			EQU		39
BTL_ATK_GUST			EQU		40
BTL_ATK_HAUNT			EQU		41
BTL_ATK_HEAL			EQU		42
BTL_ATK_IGNITE			EQU		43
BTL_ATK_IMPALE			EQU		44
BTL_ATK_INFECT			EQU		45
BTL_ATK_INFERNO			EQU		46
BTL_ATK_INK				EQU		47
BTL_ATK_JIGGLE			EQU		48
BTL_ATK_JOLT			EQU		49
BTL_ATK_LAMP			EQU		50
BTL_ATK_LEAF			EQU		51
BTL_ATK_MAGMA			EQU		52
BTL_ATK_MAUL			EQU		53
BTL_ATK_MELODY			EQU		54
BTL_ATK_MEND			EQU		55
BTL_ATK_MIST			EQU		56
BTL_ATK_MUNCH			EQU		57
BTL_ATK_PACK			EQU		58
BTL_ATK_PETRIFY			EQU		59
BTL_ATK_PINCH			EQU		60
BTL_ATK_POLLEN			EQU		61
BTL_ATK_PRISM			EQU		62
BTL_ATK_PUMMEL			EQU		63
BTL_ATK_PUNCH			EQU		64
BTL_ATK_QUAKE			EQU		65
BTL_ATK_ROAR			EQU		66
BTL_ATK_ROOTS			EQU		67
BTL_ATK_SCRATCH			EQU		68
BTL_ATK_SEVER			EQU		69
BTL_ATK_SHADE			EQU		70
BTL_ATK_SHAKE			EQU		71
BTL_ATK_SHIELD			EQU		72
BTL_ATK_SHOCK			EQU		73
BTL_ATK_SHRED			EQU		74
BTL_ATK_SLIDE			EQU		75
BTL_ATK_SOAR			EQU		76
BTL_ATK_SONIC			EQU		77
BTL_ATK_SPARK			EQU		78
BTL_ATK_SPONGE			EQU		79
BTL_ATK_SPORE			EQU		80
BTL_ATK_SQUIRT			EQU		81
BTL_ATK_STING			EQU		82
BTL_ATK_STORM			EQU		83
BTL_ATK_SWARM			EQU		84
BTL_ATK_SWING			EQU		85
BTL_ATK_SYPHON			EQU		86
BTL_ATK_TACKLE			EQU		87
BTL_ATK_TANGLE			EQU		88
BTL_ATK_TEMPEST			EQU		89
BTL_ATK_TERROR			EQU		90
BTL_ATK_THORNS			EQU		91
BTL_ATK_THRUST			EQU		92
BTL_ATK_THUNDER			EQU		93
BTL_ATK_TIC_TOC			EQU		94
BTL_ATK_TIDE			EQU		95
BTL_ATK_TIMBER			EQU		96
BTL_ATK_TSUNAMI			EQU		97
BTL_ATK_TURTLE			EQU		98
BTL_ATK_VAMPIRE			EQU		99
BTL_ATK_VORTEX			EQU		100
BTL_ATK_WHIRL			EQU		101
BTL_ATK_WRECK			EQU		102

;********************************
; BATTLE TARGET FORMAT

;********************************
BTL_TARGET_ME					EQU		$0A
BTL_TARGET_NONE					EQU		$0B		;RUN, ETC
BTL_TARGET_ALLYEMPTY			EQU		$0C		;LIKE FOR SUMMONS
BTL_TARGET_ENEMYEMPTY			EQU		$0D		;LIKE FOR SUMMONS
BTL_TARGET_ANYCREATURE			EQU		$0E		;DOES NOT INCLUDE MAGI
BTL_TARGET_ALLYMAGI				EQU		$0F
BTL_TARGET_ENEMYMAGI			EQU		$10		;THIS IS JUST MAGI
BTL_TARGET_ENEMYMAGI_EVASION	EQU		$11		;CAN GET MAGI W/ BLOCKERS
BTL_TARGET_ANY					EQU		$12		;THIS INCLUDES ANYMAGI
BTL_TARGET_ANY_EVASION			EQU		$13
;Any above this line should never exist besides me or none
;------------------------------------------
BTL_TARGET_ALLENEMY				EQU		$14
BTL_TARGET_ALLENEMY_MAGI		EQU		$15
BTL_TARGET_ALLALLY				EQU		$16
BTL_TARGET_ALLALLY_ME			EQU		$17
BTL_TARGET_ALLALLY_MAGI			EQU		$18
BTL_TARGET_ALLALLY_MAGI_ME		EQU		$19
BTL_TARGET_ALL					EQU		$1A
BTL_TARGET_ALL_ME				EQU		$1B
BTL_TARGET_ALL_MAGI				EQU		$1C
BTL_TARGET_ALL_MAGI_ME			EQU		$1D
BTL_TARGET_DEPENDANT			EQU		$1E

;AFTER THE TARGET IS CHOSEN, IF NOT ONE OF THE "ALL"
;USE THE BTL_IDs FROM BATTLE_EQU.S

;********************************
BTL_CMD_RATING_ATK0		EQU		$00
BTL_CMD_RATING_ATK1		EQU		$01
BTL_CMD_RATING_ATK2		EQU		$02
BTL_CMD_RATING_ATK3		EQU		$03
BTL_CMD_RATING_ATK4		EQU		$04
BTL_CMD_RATING_HEAL0	EQU		$05
BTL_CMD_RATING_HEAL1	EQU		$06
BTL_CMD_RATING_HEAL2	EQU		$07
BTL_CMD_RATING_HEAL3	EQU		$08
BTL_CMD_RATING_HEAL4	EQU		$09
BTL_CMD_RATING_NONE		EQU		$0A

BTL_CMD_RATING_PHYS		EQU		%10000000
BTL_CMD_RATING_SKILL	EQU		%00000000

;********************************
BTL_CMD_MENU_NONE		EQU		$00
BTL_CMD_MENU_RING		EQU		$01
BTL_CMD_MENU_ITEM		EQU		$02
BTL_CMD_MENU_SPELL		EQU		$03

;********************************
BTL_CMD_SIZE			EQU		$10	
BTL_CMD_NAME_SIZE		EQU		$07
BTL_CMD_NAME_OFFSET		EQU		BTL_CMD_SIZE - BTL_CMD_NAME_SIZE

;********************************
	END
;********************************