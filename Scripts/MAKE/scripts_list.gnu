.SUFFIXES :

################################################################
# INCLUDES
################################################################
include		MAKE\BATTLEGFX\battlegfx_list.gnu MAKE\CHARACTERS\characters_list.gnu MAKE\FILES\files_list.gnu MAKE\INCLUDES\includes_list.gnu MAKE\REGIONS\regions_list.gnu MAKE\SYSTEM\system_list.gnu

################################################################
# LISTS
################################################################

SCRIPTS_SFILES =	${BATTLEGFX_SFILES} \
					${CHARACTERS_SFILES} \
					${FILES_SFILES} \
					${REGIONS_SFILES} \
					${SYSTEM_SFILES}


