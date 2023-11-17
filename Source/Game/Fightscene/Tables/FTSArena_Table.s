;********************************
; ARENA_TABLE.S
;********************************
;	Author:	Patrick Meehan/Dylan "I'mJustSoFreakingSpecial" Mayo, eM
;	(c)2000	Interactive Imagination
;	All rights reserved

	; *******************************************************************************************************************
	;	LABEL_NAME,BITMAP_TOP,BGDATA_TOP,BITMAP_BOTTOM,BGDATA_BOTTOM,ARENA_PALETTE,TOP_SCROLL_SPEED,BOTTOM_SCROLL_SPEED,ARENA_COLOR
	; *******************************************************************************************************************
ARENA1_TABLE:
	ARENA_GFX_TEMPLATE		ARDERIAL1,BIT_ARDERIAL_TOP,BG_ARDERIAL_TOP,BIT_ARDERIAL_BTM,BG_ARDERIAL_BTM,PAL_ARDERIAL_TOP,1,2,$1C4D

ARENA2_TABLE:
	ARENA_GFX_TEMPLATE		ARDGEYSER,BIT_ARDGEYSER_TOP,BG_ARDGEYSER_TOP,BIT_ARDGEYSER_BTM,BG_ARDGEYSER_BTM,PAL_ARDGEYSER_TOP,1,2,$0000

ARENA3_TABLE:
	ARENA_GFX_TEMPLATE		CALD1,BIT_CALD_TOP,BG_CALD_TOP,BIT_CALD_BTM,BG_CALD_BTM,PAL_CALD_TOP,1,2,$003F
	
ARENA4_TABLE:
	ARENA_GFX_TEMPLATE		UNDERNEATH2,BIT_CAVERNS_TOP,BG_CAVERNS_TOP,BIT_CAVERNS_BTM,BG_CAVERNS_BTM,PAL_CAVERNS_TOP,1,2,$240F
	
ARENA5_TABLE:
	ARENA_GFX_TEMPLATE		CLDGEYSER,BIT_CLDGEYSER_TOP,BG_CLDGEYSER_TOP,BIT_CLDGEYSER_BTM,BG_CLDGEYSER_BTM,PAL_CLDGEYSER_TOP,1,2,$0000
	
ARENA6_TABLE:
	ARENA_GFX_TEMPLATE		CORE1,BIT_CORE_TOP,BG_CORE_TOP,BIT_CORE_BTM,BG_CORE_BTM,PAL_CORE_TOP,1,1,$0000
	
ARENA7_TABLE:
	ARENA_GFX_TEMPLATE		NAROOM1,BIT_NAROOM_TOP,BG_NAROOM_TOP,BIT_NAROOM_BTM,BG_NAROOM_BTM,PAL_NAROOM_TOP,1,2,$03E0 

ARENA8_TABLE:
	ARENA_GFX_TEMPLATE		NRMGEYSER,BIT_NRMGEYSER_TOP,BG_NRMGEYSER_TOP,BIT_NRMGEYSER_BTM,BG_NRMGEYSER_BTM,PAL_NRMGEYSER_TOP,1,2,$0000
	
ARENA9_TABLE:
	ARENA_GFX_TEMPLATE		OROGEYSER1,BIT_OROGEYSER1_TOP,BG_OROGEYSER1_TOP,BIT_OROGEYSER1_BTM,BG_OROGEYSER1_BTM,PAL_OROGEYSER1_TOP,1,2,$0000
	
ARENA10_TABLE:
	ARENA_GFX_TEMPLATE		OROGEYSER2,BIT_OROGEYSER2_TOP,BG_OROGEYSER2_TOP,BIT_OROGEYSER2_BTM,BG_OROGEYSER2_BTM,PAL_OROGEYSER2_TOP,1,2,$0000

ARENA11_TABLE:
	ARENA_GFX_TEMPLATE		OROTHE1,BIT_OROTHE_TOP,BG_OROTHE_TOP,BIT_OROTHE_BTM,BG_OROTHE_BTM,PAL_OROTHE_TOP,1,2,$2400

ARENA12_TABLE:
	ARENA_GFX_TEMPLATE		OROTUNNEL,BIT_OROTUNNEL_TOP,BG_OROTUNNEL_TOP,BIT_OROTUNNEL_BTM,BG_OROTUNNEL_BTM,PAL_OROTUNNEL_TOP,1,2,$2400

ARENA13_TABLE:
	ARENA_GFX_TEMPLATE		SHADOWHOLD,BIT_SHADOWHOLD_TOP,BG_SHADOWHOLD_TOP,BIT_SHADOWHOLD_BTM,BG_SHADOWHOLD_BTM,PAL_SHADOWHOLD_TOP,1,2,$0000	
	
ARENA14_TABLE:
	ARENA_GFX_TEMPLATE		UNDERNEATH1,BIT_UNDERNEATH_TOP,BG_UNDERNEATH_TOP,BIT_UNDERNEATH_BTM,BG_UNDERNEATH_BTM,PAL_UNDERNEATH_TOP,1,2,$3024
	

	

	
		
	
			
ARENA_TABLE:
	DW		(ARENA1_TABLE 	 & $FFFF)
	DW		(ARENA2_TABLE 	 & $FFFF)
	DW		(ARENA3_TABLE 	 & $FFFF)
	DW		(ARENA4_TABLE 	 & $FFFF)
	DW		(ARENA5_TABLE 	 & $FFFF)
	DW		(ARENA6_TABLE 	 & $FFFF)
	DW		(ARENA7_TABLE 	 & $FFFF)
	DW		(ARENA8_TABLE 	 & $FFFF)
	DW		(ARENA9_TABLE 	 & $FFFF)
	DW		(ARENA10_TABLE 	 & $FFFF)
	DW		(ARENA11_TABLE 	 & $FFFF)
	DW		(ARENA12_TABLE 	 & $FFFF)
	DW		(ARENA13_TABLE 	 & $FFFF)
	DW		(ARENA14_TABLE 	 & $FFFF)
	

;********************************

	END
;********************************
