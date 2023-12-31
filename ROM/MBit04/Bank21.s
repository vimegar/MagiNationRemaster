;********************************
; BANK21.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
BANK21	GROUP	$21				; Specify bank group.
		ORG		$4000

		LIB		SCRIPTS\FILES\HS.S

;********************************
; Character palettes

PAL_HERO	LIBBIN		MANUAL\BIN\PAL_TONYJONES.BIN

		PALETTE_DEFINE		MANUAL\ARENA\PALETTES\,PAL_ARDERIAL_TOP,16
		PALETTE_DEFINE		MANUAL\ARENA\PALETTES\,PAL_ARDGEYSER_TOP,16
		PALETTE_DEFINE		MANUAL\ARENA\PALETTES\,PAL_CALD_TOP,16
		PALETTE_DEFINE		MANUAL\ARENA\PALETTES\,PAL_CAVERNS_TOP,16
		PALETTE_DEFINE		MANUAL\ARENA\PALETTES\,PAL_CLDGEYSER_TOP,16
		PALETTE_DEFINE		MANUAL\ARENA\PALETTES\,PAL_CORE_TOP,16
		PALETTE_DEFINE		MANUAL\ARENA\PALETTES\,PAL_NAROOM_TOP,16
		PALETTE_DEFINE		MANUAL\ARENA\PALETTES\,PAL_NRMGEYSER_TOP,16
		PALETTE_DEFINE		MANUAL\ARENA\PALETTES\,PAL_OROGEYSER1_TOP,16
		PALETTE_DEFINE		MANUAL\ARENA\PALETTES\,PAL_OROGEYSER2_TOP,16
		PALETTE_DEFINE		MANUAL\ARENA\PALETTES\,PAL_OROTHE_TOP,16
		PALETTE_DEFINE		MANUAL\ARENA\PALETTES\,PAL_OROTUNNEL_TOP,16
		PALETTE_DEFINE		MANUAL\ARENA\PALETTES\,PAL_SHADOWHOLD_TOP,16		
		PALETTE_DEFINE		MANUAL\ARENA\PALETTES\,PAL_UNDERNEATH_TOP,16
		
		
		
		
		
		
		
		;load the PAL creature data
		
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_GORATH,24
		
			; naroom 14
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_ARBOLL,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_BHATAR,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_EEBIT,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_FUROK,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_LEAF_HYREN,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_PLITH,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_RUDWOT,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_TIMBERHYRN,24		
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_TWEE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_VINOC,24		
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_WEEBO,24
		
		;orothe 10
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_ABAQUIST,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_BWILL,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_CORALHYREN,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_DEEP_HYREN,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_KARAK,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_MEGATHAN,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_ORPUS,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_PARALIT,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_PLATHEUS,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_SPHOR,24
		
		;underneath 11
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_AGOVO,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_BISIWOG,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_BRUB,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_CAVERUDWOT,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_GIANTKORIT,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_GUM_GUM,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_MUSH_HYREN,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_PARMALAG,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_CAVE_HYREN,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_VULBOR,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_ORMAGON,24
		
		;cald 10
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_ARBOLIT,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_DIOBOR,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_DRAKAN,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_FLAMEHYREN,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_KELTHET,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_LAVA_AQ,24	
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_LAVAARBOLL,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_LAVABALMNT,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_MAGMAHYREN,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_QUOR,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_RAXIS,24
		
		;arderial 11
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_ALABAN,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_AYEBAW,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_EPIK,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_BOLT_HYREN,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_ORATHAN_F,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_ORISH,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_THUNDRHYRN,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_VASHP,24			;THUNDERV
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_VELLUP,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_XYX,24
		
		;core 16
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_BLACKAGOVO,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_CHAOS_JILE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_CORE_GRAG,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_CORE_HYREN,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_DRYTEFIEND,24	;DFIEND
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_GRAX,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_KOIL,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_SHADWKARAK,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_SHADWVINOC,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_SHRYQUE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_YVOHCNA,24
		

		;new creatures
		;core
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_DARKAYEBAW,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_DARKVELLUP,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_HOOK_WING,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_JINGJACK,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_KAZOR,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_KLETCH,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_SARBIL,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_SPINDLE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_VILE_YOGU,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_BORGOR,24 
		;underneath
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_GHOSTBWISP,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_PORKUSLIME,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_TUSK_BWISP,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_WEEBAT,24
		;cald
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_GRAW,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_SABREBACK,24
		;naroom
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_LEAF_CHOGO,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_RABBAGE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_TREEBIT,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_WASPERINE,24	
		;orothe
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_SEA_JILE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_SHARBLOOT,24
		
		;**MAGI
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_TONY_BATTLE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_TOGOTH_BATTLE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_OGAR_BATTLE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_KORREMAR_BATTLE,24	
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_WARRADA_BATTLE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_KORG_BATTLE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_ZET_BATTLE,24	
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_MORAG_BATTLE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_AGRAMV1_BATTLE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_AGRAMV2_BATTLE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_AGRAMV3_BATTLE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_CORE01_BATTLE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_CORE02_BATTLE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_CORE03_BATTLE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_CORE04_BATTLE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_CORE05_BATTLE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_CORE06_BATTLE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_CORE07_BATTLE,24
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_CORE08_BATTLE,24 
		PALETTE_DEFINE		MANUAL\FIGHTSCENE\PALETTES\,PAL_SALAFY_BATTLE,24 

;********************************
; Naroom - Lake
;********************************
		LIB		SCRIPTS\REGIONS\NAROOM\LAKE\MAP01\NRMLAKE01.S
		LIB		SCRIPTS\REGIONS\NAROOM\LAKE\MAP02\NRMLAKE02.S
		LIB		SCRIPTS\REGIONS\NAROOM\LAKE\MAP03\NRMLAKE03.S
		LIB		SCRIPTS\REGIONS\NAROOM\LAKE\MAP04\NRMLAKE04.S
		LIB		SCRIPTS\REGIONS\NAROOM\LAKE\MAP05\NRMLAKE05.S
		LIB		SCRIPTS\REGIONS\NAROOM\LAKE\MAP06\NRMLAKE06.S

;********************************
	END
;********************************