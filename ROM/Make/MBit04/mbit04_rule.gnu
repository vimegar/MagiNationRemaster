################################################################
# INCLUDES
################################################################
include		ROM\MAKE\MBIT04\mbit04_list.gnu

################################################################
# MAKERULES
################################################################
spronk:

${MBIT04_OFILE}: spronk
	ISAS32 -w3 -us -nologo -t -isdmg -o ${MBIT04_OFILE} ROM\MBIT04\MBIT04.S


