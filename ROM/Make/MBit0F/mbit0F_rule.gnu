################################################################
# INCLUDES
################################################################
include		ROM\MAKE\MBIT0F\mbit0F_list.gnu

################################################################
# MAKERULES
################################################################
spornk:

${MBIT0F_OFILE}: spornk
	ISAS32 -w3 -us -nologo -t -isdmg -o ${MBIT0F_OFILE} ROM\MBIT0F\MBIT0F.S

