################################################################
# INCLUDES
################################################################
include		ROM\MAKE\MBIT00\mbit00_list.gnu

################################################################
# MAKERULES
################################################################
spornk:

${MBIT00_OFILE}: spornk
	@echo MADE MBIT00
	ISAS32 -w3 -us -nologo -t -isdmg -o ${MBIT00_OFILE} ROM\MBIT00\MBIT00.S

