;********************************
; BANK04.S
;********************************
;	Author:	Patrick Meehan
;	(c)2000	Interactive Imagination
;	All rights reserved


;********************************
BANK04	GROUP	$04			; Specify bank group.
		ORG		$4000

;*****************************************************		
;       the following needs to be placed in 1 particular bank 
		; load the PAL card type data

PAL_CARD_TABLE:		
		PALETTE_DEFINE		MANUAL\CARDSCENE\PALETTES\,PAL_CARD_GREEN,8
		PALETTE_DEFINE		MANUAL\CARDSCENE\PALETTES\,PAL_CARD_RED,8			
		PALETTE_DEFINE		MANUAL\CARDSCENE\PALETTES\,PAL_CARD_LBLUE,8			
		PALETTE_DEFINE		MANUAL\CARDSCENE\PALETTES\,PAL_CARD_PURPLE,8			
		PALETTE_DEFINE		MANUAL\CARDSCENE\PALETTES\,PAL_CARD_CURSOR,8
		PALETTE_DEFINE		MANUAL\CARDSCENE\PALETTES\,PAL_ERASE_CARD,8			
		         
PAL_TEXTMENU:		
		DW	$0000
		DW	$1C4D
		DW	$2E17
		DW	$7FFF

		; load the PAL effect data
		PALETTE_DEFINE		MANUAL\BIN\,PAL_WHITE_EFFECT,64			
		PALETTE_DEFINE		MANUAL\BIN\,PAL_BLACK_EFFECT,64
		PALETTE_DEFINE		MANUAL\BIN\,PAL_FIRE_EFFECT,24			
		PALETTE_DEFINE		MANUAL\BIN\,PAL_ICE_EFFECT,24			
		
PAL_EFFECT_TABLE:		
		DW		(PAL_WHITE_EFFECT 	 & $FFFF)
		DW		(PAL_BLACK_EFFECT	 & $FFFF)
		DW		(PAL_FIRE_EFFECT 	 & $FFFF)
		DW		(PAL_ICE_EFFECT		 & $FFFF)
;***********************************************************


;********************************
		LIB		SOURCE\GAME\BATTLE\BATTLE_04.S
		LIB		SOURCE\GAME\MENU\SPECIALTY\MENU_RINGSMITH.S

;********************************
		LIB		SOURCE\GAME\CARDSC~1\CARDSCENE.S
		LIB		SOURCE\GAME\FIGHTS~1\FIGHTSCENE.S
		LIB		SOURCE\GAME\TITLE\TITLE.S
		
;********************************
;BATTLE_VRAMS

		LIB		MANUAL\CARDSCENE\S\VRM_AGRAMBATTLE.s
		LIB		MANUAL\CARDSCENE\S\VRM_COREMAGIBATTLE01.s
		LIB		MANUAL\CARDSCENE\S\VRM_COREMAGIBATTLE02.s
		LIB		MANUAL\CARDSCENE\S\VRM_COREMAGIBATTLE03.s
		LIB		MANUAL\CARDSCENE\S\VRM_COREMAGIBATTLE04.s
		LIB		MANUAL\CARDSCENE\S\VRM_COREMAGIBATTLE05.s
		LIB		MANUAL\CARDSCENE\S\VRM_COREMAGIBATTLE06.s
		LIB		MANUAL\CARDSCENE\S\VRM_COREMAGIBATTLE07.s
		LIB		MANUAL\CARDSCENE\S\VRM_COREMAGIBATTLE08.s
		LIB		MANUAL\CARDSCENE\S\VRM_KORGBATTLE.s
		LIB		MANUAL\CARDSCENE\S\VRM_KORREMARBATTLE.s
		LIB		MANUAL\CARDSCENE\S\VRM_MORAGBATTLE.s
		LIB		MANUAL\CARDSCENE\S\VRM_OGARBATTLE.s
		LIB		MANUAL\CARDSCENE\S\VRM_SALAFYBATTLE.s
		LIB		MANUAL\CARDSCENE\S\VRM_TOGOTHBATTLE.s
		LIB		MANUAL\CARDSCENE\S\VRM_WARRADABATTLE.s
		LIB		MANUAL\CARDSCENE\S\VRM_ZETBATTLE.s		

;********************************
	END
;********************************