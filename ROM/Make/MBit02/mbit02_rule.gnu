################################################################
# INCLUDES
################################################################
include		ROM\MAKE\MBIT02\mbit02_list.gnu

################################################################
# MAKERULES
################################################################
spornk:

${MBIT02_OFILE}: spornk
	ISAS32 -w3 -us -nologo -t -isdmg -o ${MBIT02_OFILE} ROM\MBIT02\MBIT02.S


