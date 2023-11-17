;********************************
; MENU_EQU.S
;********************************
;	Author:	ExoByte
;	(c)2000	Interactive Imagination
;	All rights reserved

;********************************
;MENU MODE
;*BLINK MODE
MENU_CURSOR_BLINK		EQU		$01
MENU_CURSOR_NOBLINK		EQU		$00
;*CURSOR MODE
MENU_CURSOR_SPRITE		EQU		$00
MENU_CURSOR_BG			EQU		$01
MENU_CURSOR_ACTOR		EQU		$02

;********************************
MENU_BANK			EQU		$03
MENU_VRAM_BANK		EQU		$01
MENU_VRAM_TILES		EQU		$8860
MENU_DUMMY			EQU		$0000	;COMPILE DUMMY!
MENU_VRAM_BLANK		EQU		$80		;VRAM TILE OF BLANK
MENU_VRAM_0			EQU		$A1		;VRAM TILE OF THE "0"
MENU_BG_QUAN		EQU		$9C61	;FIRST BG TILE FOR QUAN/COSTS ON ITEM ETC
MENU_BG_QUAN_DIST	EQU		$20		;DISTANCE BETWEEN ABOVE
MENU_RIGHT_EDGE		EQU		$01
MENU_LEFT_EDGE		EQU		$02
MENU_VRAM_ABILITY0	EQU		$8B90
MENU_VRAM_ABILDIST	EQU		$F0
MENU_BG_ABILCOST0	EQU		$9C90
MENU_BG_ABCOSTDIST	EQU		$40
MENU_BG_INFUSE0		EQU		$9C66
MENU_BG_INFUSEDIST	EQU		$20
MENU_BG_ABIL0		EQU		$9C82
MENU_BG_ABILDIST	EQU		$40
MENU_BG_ABIL_SIZE	EQU		$07

;MAINMENU EQUS
;********************************
MAINMENU_VRAM_ARROW		EQU		$7F
MAINMENU_RELIC0_CUR		EQU		28

;SHOP EQUS
;********************************
MENU_SHOP_TABLE_SIZE		EQU		$D000		;where in memory the size of the table is located
MENU_SHOP_MONEY_POSITION	EQU		$9DCE		; 1ae offset for where in bg dump money goes	
MENU_SHOP_ITEM_AMOUNT_POS	EQU		$9C6F		;where in bg dump the item costs start at
MENU_SHOP_XITEM_AMOUNT_POS	EQU		$9E0E		;where in bg dump item cost/amount is put on screen for selected item

MENU_SHOP_SELL				EQU		$01			;the items selection option
MENU_SHOP_BUY				EQU		$00			;the spells selection option
MENU_SHOP_DONE				EQU		$02			;the relics selection option
MENU_SHOP_ITEM1				EQU		$03			;item1 selection option
MENU_SHOP_ITEM2				EQU		$04			;item2 selection option
MENU_SHOP_ITEM3				EQU		$05			;item3 selection option
MENU_SHOP_ITEM4				EQU		$06			;item4 selection option
MENU_SHOP_ITEM5				EQU		$07			;item5 selection option
MENU_SHOP_ITEM6				EQU		$08			;item6 selection option
MENU_SHOP_ITEM7				EQU		$09			;item7 selection option
MENU_SHOP_ITEM8				EQU		$0A			;item8 selection option
MENU_SHOP_SCROLLBACK		EQU		$0B			;the scroll back selection option
MENU_SHOP_SCROLLFORWARD		EQU		$0C			;the scroll forward selection option

MENU_SHOP_NUMBER_ON_SCREEN	EQU		$08			;the number of items visible on the screen
MENU_SHOP_VRAM_NUMBER_POS	EQU		$EE			;starting position of where in vram the numbers were loaded
MENU_SHOP_VRAM_ANIMITE_POS	EQU		$FE			;the position in vram of the animite symbol
MENU_SHOP_VRAM_BLANK_POS	EQU		$80			;the position in vram of the blank space
MENU_SHOP_VRAM_HAND_POS		EQU		$82			;the position in vram of the hand symbol which indicates the mode
MENU_SHOP_TABLE_ADDRESS		EQU		$D001		;the address of the shop table
MENU_SHOP_BUY_MODE			EQU		$00			;the buy mode of the shop menu
MENU_SHOP_SELL_MODE			EQU		$01			;the sell mode of the menu
MENU_SHOP_BUY_HAND_ADDRESS	EQU		$9DE1		;the address of the placement of the hand in buy mode
MENU_SHOP_SELL_HAND_ADDRESS	EQU		$9DC1		;the address of the placement of the hand in sell mode

;HISTORIAN EQUS
;********************************
MENU_HISTORIAN_ITEMS				EQU		$00			;the items selection option
MENU_HISTORIAN_SPELLS				EQU		$01			;the spells selection option
MENU_HISTORIAN_RELICS				EQU		$02			;the relics selection option
MENU_HISTORIAN_ITEM1				EQU		$03			;item1 selection option
MENU_HISTORIAN_ITEM2				EQU		$04			;item2 selection option
MENU_HISTORIAN_ITEM3				EQU		$05			;item3 selection option
MENU_HISTORIAN_ITEM4				EQU		$06			;item4 selection option
MENU_HISTORIAN_ITEM5				EQU		$07			;item5 selection option
MENU_HISTORIAN_ITEM6				EQU		$08			;item6 selection option
MENU_HISTORIAN_ITEM7				EQU		$09			;item7 selection option
MENU_HISTORIAN_ITEM8				EQU		$0A			;item8 selection option
MENU_HISTORIAN_SCROLLBACK			EQU		$0B			;the scroll back selection option
MENU_HISTORIAN_SCROLLFORWARD		EQU		$0C			;the scroll forward selection option
MENU_HISTORIAN_DONE					EQU		$0D			;the DONE value

MENU_HISTORIAN_VRAM_BLANK_POS		EQU		$80			;the position in vram of the blank space
MENU_HISTORIAN_NUMBER_ON_SCREEN		EQU		$08
MENU_HISTORIAN_RELICS_HAND_ADD		EQU		$9E01		;the address of the hand indicator placement

;RINGSMITH_UP EQUS
;********************************
MENU_RINGUP_COST_SIZE				EQU		$03			;size of passed in cost sizes... creature/animite cost/infused cost
MENU_RINGUP_TOTAL					EQU		$D000		;address to the total number of ring types that a ringsmith can level up
MENU_RINGUP_COST0					EQU		$D001		;address to the first cost/creature set passed into menu	
MENU_RINGUP_COST_POS				EQU		$9DE2		;address in BG dump where the cost of leveling in animite goes
MENU_RINGUP_INFUSED_COST_POS		EQU		$9E02		;address in BG dump where the cost of leveling in infused animite goes
MENU_RINGUP_MONEY_POS				EQU		$9DEF		;address in BG dump where tonys money goes
MENU_RINGUP_INFUSED_POS				EQU		$9E0E		;address in BG dump where tonys infused animite for that creature type goes
MENU_RINGUP_NUMBERS_VRAM			EQU		$DE			;the starting address in vram of the numbers 0-9
MENU_RINGUP_INFUSED_VRAM			EQU		$F1			;the address in vram of the infused animite tile
MENU_RINGUP_ANIMITE_VRAM			EQU		$F2			;the address in vram of the animite tile
MENU_RINGUP_CHECK_VRAM				EQU		$F7			;the address in vram of the 'X' used as a level check
MENU_RINGUP_ARROW_VRAM				EQU		$F3			;the position of the arrow tile in vram
MENU_RINGUP_ADD_LEVEL				EQU		$02			;the amount of levels to increase +1  (level func requires this amount to be one more than what you actually want)
MENU_RINGUP_LEVEL_POS				EQU		$9C6E		;address in BG of where level info of creature starts
MENU_RINGUP_MAX_LEVEL				EQU		$63			;the max level that a creature can have...no more leveling from here
MENU_RINGUP_EQUIPPED_POS			EQU		$9C71		;address in BG where a check for equipped is put

MENU_RINGUP_ITEM1					EQU		$03			;item1 selection option
MENU_RINGUP_ITEM2					EQU		$04			;item2 selection option
MENU_RINGUP_ITEM3					EQU		$05			;item3 selection option
MENU_RINGUP_ITEM4					EQU		$06			;item4 selection option
MENU_RINGUP_ITEM5					EQU		$07			;item5 selection option
MENU_RINGUP_ITEM6					EQU		$08			;item6 selection option
MENU_RINGUP_ITEM7					EQU		$09			;item7 selection option
MENU_RINGUP_ITEM8					EQU		$0A			;item8 selection option
MENU_RINGUP_SCROLLBACK				EQU		$0B			;the scroll back selection option
MENU_RINGUP_SCROLLFORWARD			EQU		$0C			;the scroll forward selection option

;MUSIC EQUS
;********************************
MENU_MUSIC_SONGLIST			EQU		$00			;the items selection option
MENU_MUSIC_STOP				EQU		$01			;the spells selection option
MENU_MUSIC_PAUSE			EQU		$02			;the relics selection option
MENU_MUSIC_ITEM1			EQU		$03			;item1 selection option
MENU_MUSIC_ITEM2			EQU		$04			;item2 selection option
MENU_MUSIC_ITEM3			EQU		$05			;item3 selection option
MENU_MUSIC_ITEM4			EQU		$06			;item4 selection option
MENU_MUSIC_ITEM5			EQU		$07			;item5 selection option
MENU_MUSIC_ITEM6			EQU		$08			;item6 selection option
MENU_MUSIC_ITEM7			EQU		$09			;item7 selection option
MENU_MUSIC_ITEM8			EQU		$0A			;item8 selection option
MENU_MUSIC_SCROLLBACK		EQU		$0B			;the scroll back selection option
MENU_MUSIC_SCROLLFORWARD	EQU		$0C			;the scroll forward selection option
MENU_MUSIC_DONE				EQU		$0D			;the DONE value

MENU_MUSIC_PLAYING			EQU		$00			;the song is currently playing
MENU_MUSIC_TABLE_SIZE		EQU		$D000		;where in memory the size of the table is located
MENU_MUSIC_TABLE_ADDRESS	EQU		$D001		;the address of the shop table
MENU_MUSIC_NAME_SIZE		EQU		$0D			;the size of names for each song
MENU_MUSIC_SONG_SIZE		EQU		$0E			;the size of the song...including byte and name
MENU_MUSIC_TYPE_OFFSET		EQU		$01			;the offset to the name portion in the table
MENU_MUSIC_NUMBER_ON_SCREEN	EQU		$08			;the number of songs that can be on screen at once

MENU_MUSIC_VRAM_CHOOSE_POS	EQU		$EE			;the position in vram of the song text
MENU_MUSIC_VRAM_A_POS		EQU		$FB			;the position in vram of the starting pos of the stop text
MENU_MUSIC_VRAM_B_POS		EQU		$04			;the position in vram of the starting pos of the pause text
MENU_MUSIC_VRAM_DONE_POS	EQU		$09			;the position in vram of the starting pos of the done text
MENU_MUSIC_VRAM_BLANK_POS	EQU		$80			;the position in vram of the blank space
MENU_MUSIC_BG_CHOOS_ADDRESS	EQU		$9DC2		;the address of the song list text in the dump
MENU_MUSIC_BG_A_ADDRESS		EQU		$9DE2		;the address of the stop text in the bg dump
MENU_MUSIC_BG_B_ADDRESS		EQU		$9E02		;the address of the pause text in the bg dump
MENU_MUSIC_BG_DONE_ADDRESS	EQU		$9DEE		;the address of the done text in the bg dump

;SPECIAL EQUS
;********************************
MENU_SPECIAL_FORWARD_ADDRESS	EQU		$9D89		;the address of the scroll forward arrow in the dump
MENU_SPECIAL_BACK_ADDRESS		EQU		$9C29		;the address of the scroll back arrow in the dump
MENU_SPECIAL_NUMBER_ON_SCREEN	EQU		$08			;the number of items visible on the screen
MENU_SPECIAL_VRAM_BLANK_POS		EQU		$80			;the address in vram of the blank tile

;RINGSMITH EQUS
;********************************
RINGSMITH_WRAM_BASE		EQU		$D000
RINGSMITH_TABLE_BASE	EQU		$D001
RINGSMITH_VRAM_0		EQU		$86	;VRAM TILE OF THE "0"
RINGSMITH_VRAM_ANIMITE	EQU		$90
RINGSMITH_VRAM_INFUSED	EQU		$91
RINGSMITH_VRAM_RING		EQU		$92
RINGSMITH_VRAM_ARROW	EQU		$93
RINGSMITH_ENTRY_SIZE	EQU		$08
RINGSMITH_FIRST_ID_OFFSET		EQU		$01
RINGSMITH_FIRST_QUAN_OFFSET		EQU		$02
RINGSMITH_SECOND_ID_OFFSET		EQU		$03
RINGSMITH_SECOND_QUAN_OFFSET	EQU		$04
RINGSMITH_COST_OFFSET			EQU		$05
RINGSMITH_LVL_OFFSET			EQU		$07
RINGSMITH_BANK					EQU		$04
	

;RINGBANK EQUS
;********************************
RINGBANK_VRAM_0			EQU		$86	;VRAM TILE OF THE "0"
RINGBANK_VRAM_RING		EQU		$90
RINGBANK_VRAM_ARROW		EQU		$91
RINGBANK_VRAM_LVL		EQU		$92
RINGBANK_VRAM_E			EQU		$95
RINGBANK_VRAM_X			EQU		$96
RINGBANK_FITS_ONSCREEN	EQU		7
RINGBANK_NAMESTART_VRAM	EQU		$8970
RINGBANK_VRAM_DISTANCE	EQU		$A0
RINGBANK_BG_DISTANCE	EQU		$20
RINGBANK_XSTART_BG		EQU		$9C71
RINGBANK_LVLSTART_BG	EQU		$9C6E
RINGBANK_RINGSTART_BG	EQU		$9C62
RINGBANK_VALID_EQUIPED	EQU		10
RINGBANK_RETURN_NOTHING	EQU		0
RINGBANK_RETURN_EQUIP	EQU		1
RINGBANK_RETURN_DESTROY	EQU		2
RINGBANK_RETURN_CANCEL	EQU		3	
	
;********************************
MENU_ITEM_VRAM1		EQU		$8AB0
MENU_ITEM_VRAM_DIST	EQU		$D0

;********************************
;MENU_TABLE STUFF
MENU_SPEL_CURSOR	EQU		$06
MENU_ITEM_CURSOR	EQU		$0D
MENU_SITM_CURSOR	EQU		$0D
MENU_GLYF_CURSOR	EQU		$24

;********************************
;MENU ID CODES

MENU_ZEROID			EQU		$00
MENU_HEROID			EQU		$01
MENU_RINGID			EQU		$02
MENU_SPELID			EQU		$03
MENU_ITEMID			EQU		$04
MENU_HSTTID			EQU		$05
MENU_SITMID			EQU		$06
MENU_RSTTID			EQU		$07
MENU_SPECID			EQU		$08
MENU_GLYFID			EQU		$09
;DEBUG
MENU_DEBGID			EQU		$0A
MENU_ILSTID			EQU		$0B

;********************************
;MENU_FUNCS			
MAIN_AB				EQU		$00
MENU_A_CONFIRM		EQU		$01
MENU_B_CONFIRM		EQU		$02
MENU_FLASH			EQU		$03
MENU_A_SELECT		EQU		$04
MENU_B_SELECT		EQU		$05
MENU_NOTHING		EQU		$06

;********************************
;MENU_TABLES
BATTLE_CREATURE_4CMD_MENU	EQU		$00
BATTLE_TARGET_MENU_SEL		EQU		$01
BATTLE_DEPENDANT			EQU		$02
SPECIALITY_4_CHOICE			EQU		$03
BATTLE_ITEM					EQU		$04
RINGSMITH_CHOICE			EQU		$05
MENU_SHOP_SEL				EQU		$06
RINGBANK_CHOICE				EQU		$07
MENU_HISTORIAN_SEL			EQU		$08
MENU_MUSIC_SEL				EQU		$08
MENU_RINGUP_SEL				EQU		$08
BATTLE_RINGMENU				EQU		$09
BATTLE_TONY_CMD_MENU		EQU		$0A
;********************************
	END
;********************************
