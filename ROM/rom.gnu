################################################################
# INCLUDES
################################################################
include		ROM\MAKE\rom_list.gnu
include		ROM\MAKE\rom_rule.gnu

################################################################
# MAKERULES
################################################################
main: all
	@echo	ROM > ROM\ROM.TCH

all: ${ROM_OFILES}

clobber:
	DEL ${ROM_OFILES}




	