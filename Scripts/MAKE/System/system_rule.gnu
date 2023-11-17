################################################################
# INCLUDES
################################################################
include		MAKE\scripts_list.gnu

################################################################
# MAKERULES
################################################################
SYSTEM\SYSTEM.S: SYSTEM\SYSTEM.MGI ${INCLUDES}
	MGIPARSE	SYSTEM\SYSTEM.MGI

################################################################
SYSTEM\BATTLE.S: SYSTEM\BATTLE.MGI SYSTEM\BATTLE_TXT.MGI ${INCLUDES}
	MGIPARSE	SYSTEM\BATTLE.MGI

################################################################
SYSTEM\HISTORIAN.S: SYSTEM\HISTORIAN.MGI ${INCLUDES}
	MGIPARSE	SYSTEM\HISTORIAN.MGI

################################################################
SYSTEM\CREDITS.S: SYSTEM\CREDITS.MGI ${INCLUDES}
	MGIPARSE	SYSTEM\CREDITS.MGI

################################################################
SYSTEM\ITEM.S: SYSTEM\ITEM.MGI ${INCLUDES}
	MGIPARSE	SYSTEM\ITEM.MGI

################################################################
SYSTEM\RAINDROP.S: SYSTEM\RAINDROP.MGI ${INCLUDES}
	MGIPARSE	SYSTEM\RAINDROP.MGI
	