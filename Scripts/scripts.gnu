################################################################
# INCLUDES
################################################################
include		MAKE\scripts_list.gnu MAKE\scripts_rule.gnu

################################################################
# MAIN MAKERULE
################################################################
main: all
	@echo	SCRIPTS > SCRIPTS.TCH

################################################################
# MINI MAKERULES
################################################################
all: ${SCRIPTS_SFILES}

characters: ${CHARACTERS_SFILES}

files: ${FILES_SFILES}

arderial: ${ARDERIAL_SFILES}
cald: ${CALD_SFILES}
hometown: ${HOMETOWN_SFILES}
naroom: ${NAROOM_SFILES}
orothe: ${OROTHE_SFILES}
underneath: ${UNDERNEATH_SFILES}
shadowhold: ${SHADOWHOLD_SFILES}
weave: ${WEAVE_SFILES}
