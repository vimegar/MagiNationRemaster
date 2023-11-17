;********************************
; CREATURENAME_TABLE.S
;********************************
;	Author:	Patrick Meehan/Dylan "Eldritch" Mayo
;	(c)2000	Interactive Imagination
;	All rights reserved
; THIS FILE IS IN THE MENU BANK.


;********************************
?BTL_PRINT_CREATURE_NAMES

	SWITCH_RAM_BANK		WRAM_BATTLE

	LD		A,(MENU_NAME_INDEX)
	LD		HL,BTL_RING_PTR
	
	LD		(HL),A
	LD		C,A
	LD		B,0
	LD		HL,BTL_HERO_USED_RINGS
	ADD		HL,BC
	LD		A,(HL)
	CP		2
	JP		Z,_INDENT1
	
	MENU_NAME_SETUP	$8860,$01,$9C03,10,BTL_RING_PTR
	JP		_UPDATER1

_INDENT1
	MENU_NAME_SETUP	$8860,$01,$9C04,10,BTL_RING_PTR
	
_UPDATER1
	MENU_TEXTUPDATE		_UPDATE1
	
	LD		HL,BTL_RING_PTR
	INC		(HL)
	
	LD		A,(HL)
	LD		C,A
	LD		B,0
	LD		HL,BTL_HERO_USED_RINGS
	ADD		HL,BC
	LD		A,(HL)
	CP		2
	JP		Z,_INDENT2
	
	MENU_NAME_SETUP	$8900,$01,$9C23,10,BTL_RING_PTR
	JP		_UPDATER2

_INDENT2
	MENU_NAME_SETUP	$8900,$01,$9C24,10,BTL_RING_PTR
	
_UPDATER2
	MENU_TEXTUPDATE		_UPDATE2
	
	LD		HL,BTL_RING_PTR
	INC		(HL)
	
	LD		A,(HL)
	LD		C,A
	LD		B,0
	LD		HL,BTL_HERO_USED_RINGS
	ADD		HL,BC
	LD		A,(HL)
	CP		2
	JP		Z,_INDENT3
	
	MENU_NAME_SETUP	$89A0,$01,$9C43,10,BTL_RING_PTR
	JP		_UPDATER3
	
_INDENT3
	MENU_NAME_SETUP	$89A0,$01,$9C44,10,BTL_RING_PTR
	
_UPDATER3
	MENU_TEXTUPDATE		_UPDATE3
	
	LD		HL,BTL_RING_PTR
	INC		(HL)
	
	LD		A,(HL)
	LD		C,A
	LD		B,0
	LD		HL,BTL_HERO_USED_RINGS
	ADD		HL,BC
	LD		A,(HL)
	CP		2
	JP		Z,_INDENT4
	
	MENU_NAME_SETUP	$8A40,$01,$9C63,10,BTL_RING_PTR
	JP		_UPDATER4
	
_INDENT4
	MENU_NAME_SETUP	$8A40,$01,$9C64,10,BTL_RING_PTR
	
_UPDATER4
	MENU_TEXTUPDATE		_UPDATE4
	
	LD		HL,BTL_RING_PTR
	INC		(HL)
	
	LD		A,(HL)
	LD		C,A
	LD		B,0
	LD		HL,BTL_HERO_USED_RINGS
	ADD		HL,BC
	LD		A,(HL)
	CP		2
	JP		Z,_INDENT5
	
	MENU_NAME_SETUP	$8AE0,$01,$9C83,10,BTL_RING_PTR
	JP		_UPDATER5
	
_INDENT5
	MENU_NAME_SETUP	$8AE0,$01,$9C84,10,BTL_RING_PTR
	
_UPDATER5
	MENU_TEXTUPDATE		_UPDATE5
			
_PRINTED
		
	RET
	
;*********************************
?BTL_COPY_CREATURE_NAME

	LD		A,(BTL_NAME_INDEX)
	LD		B,A
	CP		$FF
	JR		NZ,_NORMAL
	LD		HL,CREATURE_EMPTYNAME
	JR		_CONT
	
_NORMAL
	LD		C,CREATURE_NAME_SIZE
	CALL	?MULT
	LD		BC,CREATURE_NAMETABLE
	ADD		HL,BC
	
_CONT
	GET16	B,C,BTL_TABLE_COPY_TO
	LD		D,CREATURE_NAME_SIZE
	
_LUPE
	LD_BCI_HLI
	DEC		D
	JR		NZ,_LUPE

	RET

;********************************
?BTL_COPY_CREATURE_ARRAY
	
	FGET16	B,C,INV_ADDR
	FGET16	H,L,INV_OBJ_PTR
	LD		D,ITEM_SIZE
	
_RELUPE
	LD_BCI_HLI
	DEC			D
	JR	NZ,_RELUPE
	
	RET
	
;*********************************
CREATURE_EMPTYNAME
	DB	?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE

CREATURE_NAMETABLE
	DB	"Abaquist  "
	DB	"Agovo     "
	DB	"Alaban    "
	DB	"Arbolit   "
	DB	"Arboll    "
	DB	"Ayebaw    "
	DB	"Bhatar    "
	DB	"Bisiwog   "
	DB	"BlackAgovo"
	DB	"Bolt Hyren"
	DB	"Borgor    "
	DB	"Brub      "
	DB	"Bwill     "
	DB	"Cave Hyren"
	DB	"CaveRudwot"
	DB	"Chaos Jile"
	DB	"CoralHyren"
	DB	"Core Grag "
	DB	"Core Hyren"
	DB	"DarkAyebaw"
	DB	"DarkVellup"
	DB	"Deep Hyren"
	DB	"Diobor    "
	DB	"Drakan    "
	DB	"DryteFiend"
	DB	"Eebit     "
	DB	"Epik      "
	DB	"FlameHyren"
	DB	"Furok     "
	DB	"GhostBwisp"
	DB	"GiantKorit"
	DB	"Graw      "
	DB	"Grax      "
	DB	"Gum Gum   "
	DB	"Hook Wing "
	DB	"Jingjack  "
	DB	"Karak     "
	DB	"Kazor     "
	DB	"Kelthet   "
	DB	"Kletch    "
	DB	"Koil      "
	DB	"Lava Aq   "
	DB	"LavaArboll"
	DB	"LavaBalmnt"
	DB	"Leaf Chogo"
	DB	"Leaf Hyren"
	DB	"MagmaHyren"
	DB	"Megathan  "
	DB	"Mush Hyren"
	DB	"Orathan F "
	DB	"Orish     "
	DB	"Ormagon   "
	DB	"Orpus     "
	DB	"Paralit   "
	DB	"Parmalag  "
	DB	"Platheus  "
	DB	"Plith     "
	DB	"Porkuslime"
	DB	"Quor      "
	DB	"Rabbage   "
	DB	"Raxis     "
	DB	"Rudwot    "
	DB	"Magma Jile"
	DB	"Sarbil    "
	DB	"Sea Jile  "
	DB	"ShadwKarak"
	DB	"ShadwVinoc"
	DB	"Sharbloot "
	DB	"Shryque   "
	DB	"Sphor     "
	DB	"Spindle   "
	DB	"ThundrHyrn"
	DB	"TimberHyrn"
	DB	"Treebit   "
	DB	"Tusk Bwisp"
	DB	"Twee      "
	DB	"Vashp     "
	DB	"Vellup    "
	DB	"Vile Yogu "
	DB	"Vinoc     "
	DB	"Vulbor    "
	DB	"Wasperine "
	DB	"Weebat    "
	DB	"Weebo     "
	DB	"Xyx       "
	DB	"Yvohcna   "

;TBD2
		DB	?PU,?LL,?AU,?CL,?EU,?HL,?OU,?LL,?DU,?RL
;TBD3
		DB	?PU,?LL,?AU,?CL,?EU,?HL,?OU,?LL,?DU,?RL

		
;TONY
		DB	?TU,?OL,?NL,?YL,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE
				
;TOGOTH
		DB	?TU,?OL,?GL,?OL,?TL,?HL,?SPCE,?SPCE,?SPCE,?SPCE
		
;OGAR
		DB	?OU,?GL,?AL,?RL,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE

;KORREMAR
		DB	?KU,?OL,?RL,?RL,?EL,?ML,?AL,?RL,?SPCE,?SPCE
		
;WARRADA
		DB	?WU,?AL,?RL,?RL,?AL,?DL,?AL,?SPCE,?SPCE,?SPCE

;KORG
		DB	?KU,?OL,?RL,?GL,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE

;ZET
		DB	?ZU,?EL,?TL,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE

;MORAG
		DB	?MU,?OL,?RL,?AL,?GL,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE

;AGRAM -1
		DB	?AU,?GL,?RL,?AL,?ML,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE
		
		
;AGRAM -2
		DB	?AU,?GL,?RL,?AL,?ML,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE
		
		
;AGRAM -3
		DB	?AU,?GL,?RL,?AL,?ML,?SPCE,?SPCE,?SPCE,?SPCE,?SPCE
				
;CORE1
		DB	"ShadowMagi"

;CORE2
		DB	"ShadowMagi"
		
;CORE3
		DB	"ShadowMagi"

;CORE4
		DB	"ShadowMagi"
		
;CORE5
		DB	"ShadowMagi"
		
;CORE6
		DB	"ShadowMagi"		
		
;CORE7
		DB	"ShadowMagi"				
				
;CORE8
		DB	"ShadowMagi"
		
;SALAFY
		DB	"Salafy    "
		
;RND1
		DB	"          "
		
	
		

























;********************************
	END
;********************************
