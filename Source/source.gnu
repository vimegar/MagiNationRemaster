################################################################
# INCLUDES
################################################################
include		SOURCE\MAKE\source_list.gnu
include		SOURCE\MAKE\source_rule.gnu

################################################################
# MAKERULES
################################################################
main: all
	@echo	SOURCE > SOURCE\SOURCE.TCH

all: ${SOURCE_OFILES}

clobber:
	DEL ${SOURCE_OFILES}




	