################################################################
# INCLUDES
################################################################
include		MAKE\scripts_list.gnu

################################################################
# MAKERULES
################################################################
REGIONS\NAROOM\GLADE\MAP02\NRMGLADE02.S: ${NRMGLADE02_MGIFILES} ${SCRIPTS_INCFILES}
	MGIPARSE	REGIONS\NAROOM\GLADE\MAP02\NRMGLADE02.MGI

