################################################################
# INCLUDES
################################################################
include		ROM\MAKE\MBIT08\mbit08_list.gnu

################################################################
# MAKERULES
################################################################
spornk:

${MBIT08_OFILE}: spornk
	ISAS32 -w3 -us -nologo -t -isdmg -o ${MBIT08_OFILE} ROM\MBIT08\MBIT08.S


