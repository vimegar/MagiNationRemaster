################################################################
# INCLUDES
################################################################
include		ROM\MAKE\MBIT0C\mbit0C_list.gnu

################################################################
# MAKERULES
################################################################
spornk:

${MBIT0C_OFILE}: spornk
	ISAS32 -w3 -us -nologo -t -isdmg -o ${MBIT0C_OFILE} ROM\MBIT0C\MBIT0C.S


