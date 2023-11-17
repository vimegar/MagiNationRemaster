################################################################
# INCLUDES
################################################################
include		MAKE\scripts_list.gnu

################################################################
# MAKERULES
################################################################
REGIONS\NAROOM\GLADE\MAP01\NRMGLADE01.S: ${NRMGLADE01_MGIFILES} ${SCRIPTS_INCFILES}
	MGIPARSE	REGIONS\NAROOM\GLADE\MAP01\NRMGLADE01.MGI

